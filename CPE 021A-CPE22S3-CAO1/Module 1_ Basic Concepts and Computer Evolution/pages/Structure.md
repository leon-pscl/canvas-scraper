SINGLE-PROCESSOR COMPUTER

We now look in a general way at the internal structure of a computer. We begin with a traditional computer with a single processor that employs a microprogrammed control unit, then examine a typical multicore structure.

■ Central processing unit (CPU): Controls the operation of the computer and performs its data processing functions; often simply referred to as processor.

■ Main memory: Stores data.

■ I/O: Moves data between the computer and its external environment.

■ System interconnection: Some mechanism that provides for communication among CPU, main memory, and I/O. A common example of system interconnection is by means of a system bus, consisting of a number of conducting wires to which all the other components attach.

There may be one or more of each of the aforementioned components. Traditionally, there has been just a single processor. In recent years, there has been increasing use of multiple processors in a single computer. The most complex component is the CPU. Its major structural components are as follows:

■ Control unit: Controls the operation of the CPU and hence the computer.

■ Arithmetic and logic unit (ALU): Performs the computer’s data processing functions.

■ Registers: Provides storage internal to the CPU.

■ CPU interconnection: Some mechanism that provides for communication among the control unit, ALU, and registers.

MULTICORE COMPUTER

Contemporary computers generally have multiple processors. When these processors all reside on a single chip, the term multicore computer is used, and each processing unit (consisting of a control unit, ALU, registers, and perhaps cache) is called a core. To clarify the terminology, this text will use the following definitions.

■ Central processing unit (CPU): That portion of a computer that fetches and executes instructions. It consists of an ALU, a control unit, and registers. In a system with a single processing unit, it is often simply referred to as a processor.

■ Core: An individual processing unit on a processor chip. A core may be equivalent in functionality to a CPU on a single- CPU system. Other specialized processing units, such as one optimized for vector and matrix operations, are also referred to as cores.

■ Processor: A physical piece of silicon containing one or more cores. The processor is the computer component that interprets and executes instructions. If a processor contains multiple cores, it is referred to as a multicore processor.

Another prominent feature of contemporary computers is the use of multiple layers of memory, called cache memory, between the processor and main memory.

INSIDE THE MOTHERBOARD

Most computers, including embedded computers in smartphones and tablets, plus personal computers, laptops, and workstations, are housed on a motherboard, made of a printed circuit board.

A printed circuit board (PCB) is a rigid, flat board that holds and interconnects chips and other electronic components. The board is made of layers, typically two to ten, that interconnect components via copper pathways that are etched into the board. The main printed circuit board in a computer is called a system board or motherboard, while smaller ones that plug into the slots in the main board are called expansion boards.

The most prominent elements on the motherboard are the chips. A chip is a single piece of semiconducting material, typically silicon, upon which electronic circuits and logic gates are fabricated. The resulting product is referred to as an integrated circuit.

Figure above is a simplified view of the principal components of a typical multicore computer. The motherboard contains a slot or socket for the processor chip, which typically contains multiple individual cores, in what is known as a multicore processor. There are also slots for memory chips, I/O controller chips, and other key computer components. For desktop computers, expansion slots enable the inclusion of more components on expansion boards. Thus, a modern motherboard connects only a few individual chip components, with each chip containing from a few thousand up to hundreds of millions of transistors.

CORE STRUCTURE

■ Instruction logic: This includes the tasks involved in fetching instructions, and decoding each instruction to determine the instruction operation and the memory locations of any operands.

■ Arithmetic and logic unit (ALU): Performs the operation specified by an instruction.

■ Load/store logic: Manages the transfer of data to and from main memory via cache.

The core also contains an L1 cache, split between an instruction cache  ( I- cache) that is used for the transfer of instructions to and from main memory, and an L1 data cache, for the transfer of operands and results. Typically, today’s processor chips also include an L2 cache as part of the core. In many cases, this cache is also split between instruction and data caches, although a combined, single L2 cache is also used.