ARM Architecture

ARM is a family of RISC- based microprocessors and microcontrollers designed by ARM Holdings, Cambridge, England. The company doesn’t make processors but instead designs microprocessor and multicore architectures and licenses them to manufacturers. Specifically, ARM Holdings has two types of licensable products: processors and processor architectures. For processors, the customer buys the rights to use ARM- supplied design in their own chips. For a processor architecture, the customer buys the rights to design their own processor compliant with ARM’s architecture.

ARM Evolution

ARM chips are high- speed processors that are known for their small die size and low power requirements. They are widely used in smartphones and other handheld devices, including game systems, as well as a large variety of consumer products. ARM chips are the processors in Apple’s popular iPod and iPhone devices, and are used in virtually all Android smartphones as well . ARM is probably the most widely used embedded processor architecture and indeed the most widely used processor architecture of any kind in the world.

The origins of ARM technology can be traced back to the British- based Acorn Computers company. In the early 1980s, Acorn was awarded a contract by the British Broadcasting Corporation (BBC) to develop a new microcomputer architecture for the BBC Computer Literacy Project. The success of this contract enabled Acorn to go on to develop the first commercial RISC processor, the Acorn RISC Machine (ARM). The first version, ARM1, became operational in 1985 and was used for internal research and development as well as being used as a coprocessor in the BBC machine.

In this early stage, Acorn used the company VLSI Technology to do the actual fabrication of the processor chips. VLSI was licensed to market the chip on its own and had some success in getting other companies to use the ARM in their products, particularly as an embedded processor.

The ARM design matched a growing commercial need for a high- performance, low- power- consumption, small- size, and low- cost processor for embedded applications. But further development was beyond the scope of Acorn’s capabilities. Accordingly, a new company was organized, with Acorn, VLSI, and Apple Computer as founding partners, known as ARM Ltd. The Acorn RISC Machine became Advanced RISC Machines.

Instruction Set Architecture

The ARM instruction set is highly regular, designed for efficient implementation of the processor and efficient execution. All instructions are 32 bits long and follow a regular format. This makes the ARM ISA suitable for implementation over a wide range of products. Augmenting the basic ARM ISA is the Thumb instruction set, which is a re- encoded subset of the ARM instruction set. Thumb is designed to increase the performance of ARM implementations that use a 16-bit or narrower memory data bus, and to allow better code density than provided by the ARM instruction set. The Thumb instruction set contains a subset of the ARM 32-bit instruction set recoded into 16-bit instructions. The current defined version is Thumb- 2.

ARM Products

Cortex-A/Cortext-A50

The Cortex- A and Cortex- A50 are application processors, intended for mobile devices such as smartphones and eBook readers, as well as consumer devices such as digital TV and home gateways (e.g., DSL and cable Internet modems). These processors run at higher clock frequency (over 1 GHz), and support a memory management unit (MMU), which is required for full feature OSs such as Linux, Android, MS Windows, and mobile OSs. An MMU is a hardware module that supports virtual memory and paging by translating virtual addresses into physical addresses; this topic is explored in Chapter 8. The two architectures use both the ARM and Thumb- 2 instruction sets; the principal difference is that the Cortex- A is a 32-bit machine, and the Cortex- A50 is a 64-bit machine.

Cortex-R

The Cortex- R is designed to support real- time applications, in which the timing of events needs to be controlled with rapid response to events. They can run at a fairly high clock frequency (e.g., 200MHz to 800MHz) and have very low response latency. The Cortex- R includes enhancements both to the instruction set and to the processor organization to support deeply embedded real- time devices. Most of these processors do not have MMU; the limited data requirements and the limited number of simultaneous processes eliminates the need for elaborate hardware and software support for virtual memory. The Cortex- R does have a Memory Protection Unit (MPU), cache, and other memory features designed for industrial applications. An MPU is a hardware module that prohibits one program in memory from accidentally accessing memory assigned to another active program. Using various methods, a protective boundary is created around the program, and instructions within the program are prohibited from referencing data outside of that boundary. Examples of embedded systems that would use the Cortex- R are automotive braking systems, mass storage controllers, and networking and printing devices.

Cortex-M

Cortex- M series processors have been developed primarily for the microcontroller domain where the need for fast, highly deterministic interrupt management is coupled with the desire for extremely low gate count and lowest possible power consumption. As with the Cortex- R series, the Cortex- M architecture has an MPU but no MMU. The Cortex- M uses only the Thumb- 2 instruction set. The market for the Cortex- M includes IoT devices, wireless sensor/actuator networks used in factories and other enterprises, automotive body electronics, and so on.There are currently four versions of the Cortex- M series:

■ Cortex- M0: Designed for 8- and 16-bit applications, this model emphasizes low cost, ultra low power, and simplicity. It is optimized for small silicon die size (starting from 12k gates) and use in the lowest cost chips.

■ Cortex- M0+: An enhanced version of the M0 that is more energy efficient.

■ Cortex- M3: Designed for 16- and 32-bit applications, this model emphasizes performance and energy efficiency. It also has comprehensive debug and trace features to enable software developers to develop their applications quickly.

■ Cortex- M4: This model provides all the features of the Cortex- M3, with additional instructions to support digital signal processing tasks.

We will primarily use the ARM Cortex- M3 as our example embedded system processor. It is the best suited of all ARM models for general- purpose microcontroller use. The Cortex- M3 is used by a variety of manufacturers of microcontroller products. Initial microcontroller devices from lead partners already combine the Cortex- M3 processor with flash, SRAM, and multiple peripherals to provide a competitive offering at the price of just $1. The figure below provides a block diagram of the EFM32 microcontroller from Silicon Labs. The figure also shows detail of the Cortex- M3 processor and core components. We examine each level in turn.

The Cortex- M3 core makes use of separate buses for instructions and data. This arrangement is sometimes referred to as a Harvard architecture, in contrast with the von Neumann architecture, which uses the same signal buses and memory for both instructions and data. By being able to read both an instruction and data from memory at the same time, the Cortex- M3 processor can perform many operations in parallel, speeding application execution. The core contains a decoder for Thumb instructions, an advanced ALU with support for hardware multiply and divide, control logic, and interfaces to the other components of the processor. In particular, there is an interface to the nested vector interrupt controller (NVIC) and the embedded trace macrocell (ETM) module.

The core is part of a module called the Cortex- M3 processor. This term is somewhat misleading, because typically in the literature, the terms core and processor are viewed as equivalent. In addition to the core, the processor includes the following elements:

■ NVIC: Provides configurable interrupt handling abilities to the processor. It facilitates low- latency exception and interrupt handling, and controls power management.

■ ETM: An optional debug component that enables reconstruction of program execution. The ETM is designed to be a high- speed, low- power debug tool that only supports instruction trace.

■ Debug access port (DAP): This provides an interface for external debug access to the processor.

■ Debug logic: Basic debug functionality includes processor halt, single- step, processor core register access, unlimited software breakpoints, and full system memory access.

■ ICode interface: Fetches instructions from the code memory space.

■ SRAM & peripheral interface: Read/write interface to data memory and peripheral devices.

■ Bus matrix: Connects the core and debug interfaces to external buses on the microcontroller.

■ Memory protection unit: Protects critical data used by the operating system from user applications, separating processing tasks by disallowing access to each other’s data, disabling access to memory regions, allowing memory regions to be defined as read- only, and detecting unexpected memory accesses that could potentially break the system.

The upper part of the figure also shows the block diagram of a typical microcontroller built with the Cortex- M3, in this case the EFM32 microcontroller. This microcontroller is marketed for use in a wide variety of devices, including energy, gas, and water metering; alarm and security systems; industrial automation devices; home automation devices; smart accessories; and health and fitness devices. The silicon chip consists of 10 main areas:

■ Core and memory: This region includes the Cortex- M3 processor, static RAM (SRAM) data memory,14 and flash memory15 for storing program instructions and nonvarying application data. Flash memory is nonvolatile (data is not lost when power is shut off) and so is ideal for this purpose. The SRAM stores variable data. This area also includes a debug interface, which makes it easy to reprogram and update the system in the field.

■ Parallel I/O ports: Configurable for a variety of parallel I/O schemes.

■ Serial interfaces: Supports various serial I/O schemes.

■ Analog interfaces: Analog- to- digital and digital- to- analog logic to support sensors and actuators.

■ Timers and triggers: Keeps track of timing and counts events, generates output waveforms, and triggers timed actions in other peripherals.

■ Clock management: Controls the clocks and oscillators on the chip. Multiple clocks and oscillators are used to minimize power consumption and provide short startup times.

■ Energy management: Manages the various low- energy modes of operation of the processor and peripherals to provide real- time management of the energy needs so as to minimize energy consumption.

■ Security: The chip includes a hardware implementation of the Advanced Encryption Standard (AES).

■ 32-bit bus: Connects all of the components on the chip. ■ Peripheral bus: A network which lets the different peripheral module communicate directly with each other without involving the processor. This supports  timing- critical operation and reduces software overhead.

You will see many similarities and the same general hierarchical structure. Note, however, that the top level of a microcontroller computer system is a single chip, whereas for a multicore computer, the top level is a motherboard containing a number of chips. Another noteworthy difference is that there is no cache, neither in the Cortex- M3 processor nor in the microcontroller as a whole, which plays an important role if the code or data resides in external memory. Though the number of cycles to read the instruction or data varies depending on cache hit or miss, the cache greatly improves the performance when external memory is used. Such overhead is not needed for a microcontroller.