It will be instructive to look at some real- world examples that illustrate the hierarchical structure of computers. Figure below is a photograph of the motherboard for a computer built around two Intel Quad- Core Xeon processor chips.

Many of the elements labeled on the photograph are discussed subsequently in this book. Here, we mention the most important, in addition to the processor sockets:

■ PCI- Express slots for a high- end display adapter and for additional peripherals .

■ Ethernet controller and Ethernet ports for network connections.

■ USB sockets for peripheral devices.

■ Serial ATA (SATA) sockets for connection to disk memory.

■ Interfaces for DDR (double data rate) main memory chips.

■ Intel 3420 chipset is an I/O controller for direct memory access operations between peripheral devices and main memory .

Following our top- down strategy, as illustrated in the previous chapters, we can now zoom in and look at the internal structure of a processor chip. For variety, we look at an IBM chip instead of the Intel processor chip. Figure below is a photograph of the processor chip for the IBM zEnterprise EC12 mainframe computer. This chip has 2.75 billion transistors. The superimposed labels indicate how the silicon real estate of the chip is allocated.

We see that this chip has six cores, or processors. In addition, there are two large areas labeled L3 cache, which are shared by all six processors. The L3 control logic controls traffic between the L3 cache and the cores and between the L3 cache and the external environment. Additionally, there is storage control (SC) logic between the cores and the L3 cache. The memory controller (MC) function controls access to memory external to the chip. The GX I/O bus controls the interface to the channel adapters accessing the I/O.

Going down one level deeper, we examine the internal structure of a single core, as shown in the photograph earlier. Keep in mind that this is a portion of the silicon surface area making up a single- processor chip. The main sub- areas within this core area are the following:

■ ISU (instruction sequence unit): Determines the sequence in which instructions are executed in what is referred to as a superscalar architecture.

■ IFU (instruction fetch unit): Logic for fetching instructions.

■ IDU (instruction decode unit): The IDU is fed from the IFU buffers, and is responsible for the parsing and decoding of all z/Architecture operation codes.

■ LSU ( load- store unit): The LSU contains the 96-kB L1 data cache,1 and manages data traffic between the L2 data cache and the functional execution units. It is responsible for handling all types of operand accesses of all lengths, modes, and formats as defined in the z/Architecture.

■ XU (translation unit): This unit translates logical addresses from instructions into physical addresses in main memory. The XU also contains a translation lookaside buffer (TLB) used to speed up memory access. TLBs are discussed in Chapter 8.

■ FXU ( fixed- point unit): The FXU executes fixed- point arithmetic operations.

■ BFU (binary floating- point unit): The BFU handles all binary and hexadecimal floating- point operations, as well as fixed- point multiplication operations.

■ DFU (decimal floating- point unit): The DFU handles both fixed- point and  floating- point operations on numbers that are stored as decimal digits.

■ RU (recovery unit): The RU keeps a copy of the complete state of the system that includes all registers, collects hardware fault signals, and manages the hardware recovery actions.

■ COP (dedicated co- processor): The COP is responsible for data compression and encryption functions for each core.

■ I- cache: This is a 64-kB L1 instruction cache, allowing the IFU to prefetch instructions before they are needed.

■ L2 control: This is the control logic that manages the traffic through the two L2 caches.

■ Data- L2: A 1-MB L2 data cache for all memory traffic other than instructions.

■ Instr- L2: A 1-MB L2 instruction cache.