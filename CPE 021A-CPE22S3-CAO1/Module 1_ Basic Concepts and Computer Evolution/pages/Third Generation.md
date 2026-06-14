The Third Generation: Integrated Circuits

A single, self- contained transistor is called a discrete component. Throughout  the 1950s and early 1960s, electronic equipment was composed largely of discrete  components— transistors, resistors, capacitors, and so on. Discrete components were manufactured separately, packaged in their own containers, and soldered or wired together onto Masonite- like circuit boards, which were then installed in computers, oscilloscopes, and other electronic equipment. Whenever an electronic device called for a transistor, a little tube of metal containing a pinhead- sized piece of silicon had to be soldered to a circuit board. The entire manufacturing process, from transistor to circuit board, was expensive and cumbersome.

These facts of life were beginning to create problems in the computer industry. Early second- generation computers contained about 10,000 transistors. This figure grew to the hundreds of thousands, making the manufacture of newer, more powerful machines increasingly difficult. In 1958 came the achievement that revolutionized electronics and started the era of microelectronics: the invention of the integrated circuit. It is the integrated circuit that defines the third generation of computers. In this section, we provide a brief introduction to the technology of integrated circuits. Then we look at perhaps the two most important members of the third generation, both of which were introduced at the beginning of that era: the IBM System/360 and the DEC PDP- 8.

MICROELECTRONICS

Microelectronics means, literally, “small electronics.” Since the beginnings of digital electronics and the computer industry, there has been a persistent and consistent trend toward the reduction in size of digital electronic circuits. Before examining the implications and benefits of this trend, we need to say something about the nature of digital electronics.

The basic elements of a digital computer, as we know, must perform data storage, movement, processing, and control functions. Only two fundamental types of components are required : gates and memory cells.

A gate is a device that implements a simple Boolean or logical function. For example, an AND gate with inputs A and B and output C implements the expression IF A AND B ARE TRUE THEN C IS TRUE. Such devices are called gates because they control data flow in much the same way that canal gates control the flow of water. The memory cell is a device that can store 1 bit of data; that is, the device can be in one of two stable states at any time. By interconnecting large numbers of these fundamental devices, we can construct a computer. We can relate this to our four basic functions as follows:

■ Data storage: Provided by memory cells.

■ Data processing: Provided by gates.

■ Data movement: The paths among components are used to move data from memory to memory and from memory through gates to memory.

■ Control: The paths among components can carry control signals. For example, a gate will have one or two data inputs plus a control signal input that activates the gate. When the control signal is ON, the gate performs its function on the data inputs and produces a data output. Conversely, when the control signal is OFF, the output line is null, such as the one produced by a high impedance state. Similarly, the memory cell will store the bit that is on its input lead when the WRITE control signal is ON and will place the bit that is in the cell on its output lead when the READ control signal is ON.

Thus, a computer consists of gates, memory cells, and interconnections among these elements. The gates and memory cells are, in turn, constructed of simple electronic components, such as transistors and capacitors. The integrated circuit exploits the fact that such components as transistors, resistors, and conductors can be fabricated from a semiconductor such as silicon. It is merely an extension of the solid- state art to fabricate an entire circuit in a tiny piece of silicon rather than assemble discrete components made from separate pieces of silicon into the same circuit. Many transistors can be produced at the same time on a single wafer of silicon. Equally important, these transistors can be connected with a process of metallization to form circuits.

Figure above depicts the key concepts in an integrated circuit. A thin wafer of silicon is divided into a matrix of small areas, each a few millimeters square. The identical circuit pattern is fabricated in each area, and the wafer is broken up into chips. Each chip consists of many gates and/or memory cells plus a number of input and output attachment points. This chip is then packaged in housing that protects it and provides pins for attachment to devices beyond the chip. A number of these packages can then be interconnected on a printed circuit board to produce larger and more complex circuits.

Small Scale Integration

Initially, only a few gates or memory cells could be reliably manufactured and packaged together. These early integrated circuits are referred to as small- scale integration (SSI). As time went on, it became possible to pack more and more components on the same chip. This growth in density is illustrated in the next figure; it is one of the most remarkable technological trends ever recorded.

This figure reflects the famous Moore’s law, which was propounded by Gordon Moore, cofounder of Intel, in 1965 . Moore observed that the number of transistors that could be put on a single chip was doubling every year, and correctly predicted that this pace would continue into the near future. To the surprise of many, including Moore, the pace continued year after year and decade after decade. The pace slowed to a doubling every 18 months in the 1970s but has sustained that rate ever since. The consequences of Moore’s law are profound:

The cost of a chip has remained virtually unchanged during this period of rapid growth in density. This means that the cost of computer logic and memory circuitry has fallen at a dramatic rate.

Because logic and memory elements are placed closer together on more densely packed chips, the electrical path length is shortened, increasing operating speed.

The computer becomes smaller, making it more convenient to place in a variety of environments.

There is a reduction in power requirements.

The interconnections on the integrated circuit are much more reliable than solder connections. With more circuitry on each chip, there are fewer interchip connections

EXAMPLE: IBM SYSTEM/360

IBM had a firm grip on the computer market with its 7000 series of machines. In that year, IBM announced the System/360, a new family of computer products. Although the announcement itself was no surprise, it contained some unpleasant news for current IBM customers: the 360 product line was incompatible with older IBM machines. Thus, the transition to the 360 would be difficult for the current customer base, but IBM felt this was necessary to break out of some of the constraints of the 7000 architecture and to produce a system capable of evolving with the new integrated circuit technology.

The strategy paid off both financially and technically. The 360 was the success of the decade and cemented IBM as the overwhelmingly dominant computer vendor, with a market share above 70%. And, with some modifications and extensions, the architecture of the 360 remains to this day the architecture of IBM’s mainframe9 computers. Examples using this architecture can be found throughout this text.

The System/360 was the industry’s first planned family of computers. The family covered a wide range of performance and cost. The models were compatible in the sense that a program written for one model should be capable of being executed by another model in the series, with only a difference in the time it takes to execute. The concept of a family of compatible computers was both novel and extremely successful. A customer with modest requirements and a budget to match could start with the relatively inexpensive Model 30. Later, if the customer’s needs grew, it was possible to upgrade to a faster machine with more memory without sacrificing the investment in already- developed software. The characteristics of a family are as follows:

■ Similar or identical instruction set: In many cases, the exact same set of machine instructions is supported on all members of the family. Thus, a program that executes on one machine will also execute on any other. In some cases, the lower end of the family has an instruction set that is a subset of that of the top end of the family. This means that programs can move up but not down.

■ Similar or identical operating system: The same basic operating system is available for all family members. In some cases, additional features are added to the higher- end members.

■ Increasing speed: The rate of instruction execution increases in going from lower to higher family members.

■ Increasing number of I/O ports: The number of I/O ports increases in going from lower to higher family members.

■ Increasing memory size: The size of main memory increases in going from lower to higher family members

. ■ Increasing cost: At a given point in time, the cost of a system increases in going from lower to higher family members.

How could such a family concept be implemented? Differences were achieved based on three factors: basic speed,size, and degreeofsimultaneity . For example, greater speed in the execution of a given instruction could be gained by the use of more complex circuitry in the ALU, allowing suboperations to be carried out in parallel. Another way of increasing speed was to increase the width of the data path between main memory and the CPU. On the Model 30, only 1 byte (8 bits) could be fetched from main memory at a time, whereas 8 bytes could be fetched at a time on the Model 75. The System/360 not only dictated the future course of IBM but also had a profound impact on the entire industry. Many of its features have become standard on other large computers.

EXAMPLE: DEC PDP8

In the same year that IBM shipped its first System/360, another momentous first shipment occurred: PDP- 8 from Digital Equipment Corporation (DEC). At a time when the average computer required an air- conditioned room, the PDP- 8 (dubbed a minicomputer by the industry, after the miniskirt of the day) was small enough that it could be placed on top of a lab bench or be built into other equipment. It could not do everything the mainframe could, but at $16,000, it was cheap enough for each lab technician to have one. In contrast, the System/360 series of mainframe computers introduced just a few months before cost hundreds of thousands of dollars.

The low cost and small size of the PDP- 8 enabled another manufacturer to purchase a PDP- 8 and integrate it into a total system for resale. These other manufacturers came to be known as original equipment manufacturers (OEMs), and the OEM market became and remains a major segment of the computer marketplace. In contrast to the central- switched architecture used by IBM on its 700/7000 and 360 systems, later models of the PDP- 8 used a structure that became virtually universal for microcomputers: the bus structure. This is illustrated in the figure below.

The PDP- 8 bus, called the Omnibus, consists of 96 separate signal paths, used to carry control, address, and data signals. Because all system components share a common set of signal paths, their use can be controlled by the CPU. This architecture is highly flexible, allowing modules to be plugged into the bus to create various configurations. It is only in recent years that the bus structure has given way to a structure known as point- to- point interconnect.