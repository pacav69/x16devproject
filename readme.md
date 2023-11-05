# Commander x16  development tools

This is a development environment for Commander x16 and Commodore 64 computers
It is assumed that you have visual studio code installed


## Tools used

* Visual Studio Code
<img src="https://visualstudio.microsoft.com/wp-content/uploads/2019/09/vs-code-responsive-01-1.png" alt="Visual Studio Code logo" style="height: 50px; width:60px;"/>

Visual Studio Code Editor - [found here](https://visualstudio.microsoft.com/)

* ACME Cross assembler [found here](https://csdb.dk/release/?id=193302)

## Installation

First read the instructions [file](instructions.md)

## Videos and tutorials

* ChibiAkumas  [here](https://www.youtube.com/@ChibiAkumas)
* ChibiAkumas website [here](https://www.assemblytutorial.com/)
* TheRetroDesk [here](https://www.youtube.com/watch?v=gqwIzbT_WFU&ab_channel=TheRetroDesk)
* TheRetroDesk github files  [here](https://github.com/SlithyMatt/x16-assembly-tutorial)
* Commander X16 Assembly Project Setup [here](https://www.youtube.com/watch?v=V2vGiIqDXkA&ab_channel=JestinStoffel)
* Commander X16 6502 Assembly Language Dev Setup [here](https://www.youtube.com/watch?v=oz3E6pGU2KE&ab_channel=Spriteworx)

## Visual Studio Code extensions

VS64 - The C64 Development Environment  [here](https://marketplace.visualstudio.com/items?itemName=rosc.vs64)
 C64 [here](https://marketplace.visualstudio.com/items?itemName=gverduci.c64basicv2)
 kick-assembler [here](https://marketplace.visualstudio.com/items?itemName=paulhocker.kick-assembler-vscode-ext)

## Set up environment

### Commander x16

* reference  manual [here](https://github.com/x16community/x16-docs)
* forum [here](https://www.commanderx16.com/forum)
* Commander x16 emulator [here](https://github.com/x16community/x16-emulator)

## C64 References

from [here](https://github.com/X16Community/x16-docs/issues/83)
cbm docs [here](https://sta.c64.org/cbmdocs.html)
 C64 collections [here](https://www.lyonlabs.org/commodore/onrequest/collections.html)

cbm64krnfunc  [here](http://sta.c64.org/cbm64krnfunc.html)
c64 kernal rom  [here](https://c64os.com/post/c64kernalrom) pretty good writeup with explanations
c64ref  [here](https://www.pagetable.com/c64ref/kernal/)

Here's some more, courtesy of @JimmyDansbo :
 c64 kernal routines [here](https://www1.cx16.dk/c64-kernal-routines/)
 c128-kernal-routines [here](https://www1.cx16.dk/c128-kernal-routines/)

 6502opcodes [here](http://6502.org/tutorials/6502opcodes.html)
 65c02opcodes [here](http://www.6502.org/tutorials/65c02opcodes.html)

Maybe less useful on the x16:
C64disasm [here](https://www.pagetable.com/c64ref/c64disasm/)
mapc6411 [here](https://project64.c64.org/Software/mapc6411.txt)

### Assemblers

* Acme cross assembler for windows [here](https://sourceforge.net/projects/acme-crossass/files/win32/acme0.97win.zip/download)

* cc65 compiler [here](https://cc65.github.io/)
* KickAssembler main page [here]( http://theweb.dk/KickAssembler/Main.html#frontpage)

* KickAssembler zip file [here](http://www.theweb.dk/KickAssembler/KickAssembler.zip)

### Emulators

* SNES emulator (fceux) [here](https://fceux.com/web/home.html)
* BizHawk is a multi-platform emulator  [here](https://tasvideos.org/Bizhawk)

### ca65 Macro Assembler Language Support

Add this extension to VSCode

In VSCode goto extensions
search for ca65
select: ca65 Macro Assembler

Name: ca65 Macro Assembler Language Support (6502/65816)
Id: tlgkccampbell.code-ca65
Description: Provides language support for the ca65 macro assembler.
Version: 1.2.4
Publisher: Cole Campbell
VS Marketplace Link: [here](https://marketplace.visualstudio.com/items?itemName=tlgkccampbell.code-ca65)

select test.asm ffile
press control+shift+p
type
    configure default build task

then enter
select
    ca65: compile and link selected file

this opens a task.json file

to run type

    run default build task

then enter

## Using Acme

select test.asm file
press control+shift+p
type
    configure default build task

then press enter
select
     acme: Compile and Link Current File

this opens a task.json file

to run type

    run default build task
or
    ctrl+shift+b

then press enter

* or open the following file:

    .vscode\tasks.json

under the heading

    acme: Compile and Link Current File

edit the path to acme.exe

    "command": "c://path//to//acme.exe  -o ${fileBasenameNoExtension}.prg ${file}"

* this will compile the current selected file
* the -o is the output file located in the base

DevtipsbyMoH [here](https://www.youtube.com/watch?v=DNf6Bu7z4vw&ab_channel=DevtipsbyMoHo)

retro-code [here](https://gitlab.com/retro-coder/commanderx16)
