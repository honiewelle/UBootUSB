
Boot Disk 4.00 BETA

Features:

Support for CD-ROM, Network, CD & Network, or clean boot
Supports IDE CD-ROM drives (autoloads the correct driver)
Support for user-defined Network Cards and drivers (see the a:\newcard.ini)
Support for random computer names.  Now you can easily use the same boot disk for several PCs and
not run into computer name conflicts. (for use in a lab/multicast environment)
Support for DNS

DOS Utilities Included:
Fdisk, Edit, Format, SmartDrv, Ramdrive, Xcopy, Emm386
ping, dnr

Built in Support for the following network adapters:

PCI Cards:
3COM 3C90x
Linksys 10/100
Intel Pro 10/100
Intel Pro 1000 series*
Compaq NC7770 Gigabit (Broadcom 5701) 10/100/1000 Copper*
Realtek 8139 series 10/100 Ethernet

Cardbus (PCMCIA) Ethernet:
3COM 575 and 556
Xirxom/Realport series Cardbus Ethernet

*Denotes untested, and unverified support.  Your results may vary

Prompt for network options at boot:
Menu based configuration for choice of network card, DHCP/Static options, DNS, logon, domain etc.

Support for custom automatic answer file (see the a:\answers.txt)
Answer file features:
Supply some or all answers for boot process
Optionaly override answer file at boot time
Automatically choose network card.
Automatically choose DHCP or supply predefined IP/SubnetMask/Gateway
Automatically generate random computer name or supply predefined.
Automatic Logon/password
Automatic Drive Mapping
Automaticaly execute up to 100 user-defined commands run after boot process completes

CHANGE LOG:

BD2 (9/29/01)
Original release

BD21 (10/14/01)
Undocumented Fixes

BD23 (1/15/02)
Undocumented Fixes

BD30 (4/6/02)
Now using Windows 98SE DOS version

BD31 (4/7/02)
Added Answer file support
Support for user-defined Network Cards and drivers
Support for DNS
Will parse dotted decimal notation (or spaces) for IP addresses
Support for random computer names.

BD33 (5/2/02)
Added driver support for CARDBUS cards:
3Com Megahertz 57x,556, and Xircom 10/100+56K
first version presented on the Website
linked to from bootdisk.com

BD351 (9/18/02)
Updated the Intel Pro 10/100 driver
added the Intel Pro 1000 (gigabit) card support
added the Compaq gigabit (Q57) card support
Fixed a bug that prevented the Xircom driver from loading properly.

BD353 (10/29/02)
Removed SCSI CD-ROM drive support (still support ATAPI) to make room on the disk
for additional network driver support.
Changed the random name generator to use a 6 digit number to greatly reduce the odds
of duplicate computer names.  generated names will now be: BD######
Now loads emm386 in an attempt to provide more conventional RAM
Fixed memory and load errors with the "network and CD-ROM" menu option
Updated the fdisk.exe (Q263044) to support drives larger than 64GB
Added the ping utility. 
Fixed DNS funtionality.  You must manually run DNR.EXE after boot to enable name resolution.
DNR.EXE may be loaded high.  Example: C:\NET>lh dnr.exe

BD354 (10/29/02)
Due to frequent requests added the Realtek 8139 series 10/100 driver
Downgraded the 3com 3c90x driver to version v5.2.2
version v5.2.4 and 5.2.5 have some problems when using the older 3c905 and 3c905b cards.
v5.2.2 seems to work well with all versions (905, 905b & 905c).

BD355 (12/18/02)
Added TIMER= function in answer file to specify or disable the override timeout
Added commandline option to makeboot.exe to specify location of the answerfile
the default location is A:\
The command line is as follows:
makeboot /n {location of \net folder} /a {location of answerfile}
example: makeboot /n c:\net /a a:\
New version of Intel 10/100/1000 Pro driver
Added advanced configuration of protocol.ini via answer file
Moved LMHOSTS file to A:\ it will be copied to the \NET folder upon boot
this allows for you to have preconfigured name resolution

BD400 Beta (10/21/03)
New support for autodetecting NIC (thanks to Bart for the utility)
the .DOS file must be included for any autodetected NICs
For 3rd party place the driver in a:\netdrv
Using a smaller ramdrive program that loads in autoexec.bat
Completely rewritten MENU program
support to save your answerfile from the menu
support for encrypted password in answerfile
menu option allows for auto drive mapping
added /CDROM command line option for makeboot.exe
Updated NIC drivers - now includes:
[3com 3C90x family Adapter]
[Intel Pro 10/100 Adapter]
[Intel Pro 1000 (Gigabit) Ethernet]
[Linksys NC100 10/100 Fast Ethernet Adapter]
[3Com Megahertz 57x series 10/100 LAN CardBus PC Card]
[3Com 556 10/100 + 56K LAN CardBus PC Card (untested)]
[XIRCOM 10/100 + 56K PC Card]
[Broadcom 57xx Series Gigabit Ethernet]
[RTL8139/810X Family PCI Fast Ethernet NIC]
[FA311 Fast Ethernet Adapter]
[VIA technologies VT6105M/VT86C100A/PCI 10/100 Ethernet]

This began as a personal project to provide myself with an
easy boot disk to use on the job (primarily for ghosting).  It worked well for
me so I figured I may as well publicize it a bit and share this tool.

Thanks to all who have submitted feedback/comments.  Please keep em coming.
The latest version can always be obtained at http://www.tdonline.com/bootdisk.htm
email your comments/questions to teledata@tdonline.com
make sure you use NETWORK BOOT DISK as subject in emails as I get a lot
of spam!