{
  Delphi / Kylix open source DbExpress driver for ODBC

  Copyright (c) 2001-2012 Edward Benson

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU Lesser General Public License for more details.
  
  VendorLib can reference:
  32bit: HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\ODBCINST.INI
  64bit: HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBCINST.INI
}

The Open-dbExpress project is a home for Open Source dbExpress drivers.

dbExpress as cross-platform data access technology developed by Borland for its Kylix, Delphi and
C++ Builder products. It takes the best ideas from the BDE (Borland Database Engine), Borland
ADOExpress, and other technologies such as Microsoft ADO.

Note -- dbExpress drivers can only be used with Borland products, specifically: Borland Kylix (for
Linux); Borland Delphi version 6 and above (for Microsoft Windows); Borland C++ Builder version 6
and above (for Microsoft Windows).

The latest version is only available from the project CVS repository.

Home page:
  http://open-dbexpress.sourceforge.net/

Project Home Page:
  https://sourceforge.net/projects/open-dbexpress/

Download page:
  http://sourceforge.net/projects/open-dbexpress/files/

What to do at occurrence of problems:
*************************************

English:
========

Use:
  1) Uninstall old package PkgDbxXXDrv{%DelphiVersion%}.bpl and remove old search path

  2) Install the package into the IDE
       dbxoodbc\lib\{%DelphiVersion%}\dbxoodbc*.bpl
     or
       dbxoodbc\lib\{%DelphiVersion%}\dbxoodbc*_emb.bpl
     The second option does not require an external "dbxoodbc.dll"

  3) Copy files
      "dbxoodbc\lib\dbxoodbc_driver\(%Platform%)\release\*dbxoodbc*"
      to one from system "%path%" directories (ie "{%DELPHI}\Bin").

  4) Add the module to your project:
       uses
         ..., DbxXXDrv;

     To embed a "dbxoodbc.dll" in your project add to a project module:
       uses
         ..., DbxOpenOdbcStatic;

If you have problems with the driver it is necessary for you to make the following steps:

1) If it is possible to switch on in your project next units:
       uses
         ..., DbxOpenOdbcStatic, DbxXXDrv;

2) If debugging with included DbxOpenOdbc.pas does not decide your problem you need to
   switch on the mode of journalizing.

3) For inclusion on of the mode of journalizing, you need to switch on in "DbxOpenOdbc_options.inc" unit
   of an option {$DEFINE _DEBUG_} and {$DEFINE _TRACE_CALLS_}; and to switch off an
   option {.$DEFINE _RELEASE_}. After that you need to rebuild your project or
   OpenODBC the driver.

4) Debug messages can be seen in Delphi IDE, in the window "Event Log". But it is accessible
   only in an event of start of the application from the environment of development.
   Otherwise it is necessary to take advantage of the special program "Debug View":
   http://technet.microsoft.com/en-us/sysinternals/bb896647
   More in detail about it is indicated in "DbxOpenOdbcTrace.pas unit.

5) In the debug window versions of the Database, ODBC the driver, OpenODBC, parameters of
   connection are indicated. If you want to ask connected with your problem necessarily indicate
   this information. It will allow to find faster a key to your problem.
   In the journal the history of calls of methods ...

6) Some files (*.7z) are packed by archiver "7-Zip":
     http://www.7-zip.org
     http://sourceforge.net/projects/sevenzip/

RUSSIAN CP:Win1251:
===================

�������������:
  1) ������� ������ ������ PkgDbxXXDrv{%DelphiVersion%}.bpl � ���� ������ �������� ������� � ���������� IDE (���������� � ��� �������)

  2) ���������� � IDE �����
       dbxoodbc\lib\{%DelphiVersion%}\dbxoodbc*.bpl
     ���
       dbxoodbc\lib\{%DelphiVersion%}\dbxoodbc*_emb.bpl
     ������ �������� �� ��������� ������� "dbxoodbc.dll"

  3) ����������� ����(�) 
      "dbxoodbc\lib\dbxoodbc_driver\(%Platform%)\release\*dbxoodbc*"
      � ���� �� ����� �� ��������� ����� "%path%" (��� ����� ���� � ����� � IDE "{%DELPHI}\Bin").

  4) �������� � ��� ������ ������:
       uses
         ..., DbxXXDrv;
     ��� ����������� "dbxoodbc.dll" � ��� ������ �������� � ������� ������:
       uses
         ..., DbxOpenOdbcStatic;

���� �� ������ �������� � ���������, �� ��� ���������� ������� ��������� ����:

1) ���� ��� ��������, �� �������� � ��� ������ ������:
       uses
         ..., DbxOpenOdbcStatic, DbxXXDrv;

2) ���� ������� � ������������ DbxOpenOdbc.pas �� ������ ���� ��������, �� ��� �����
   �������� ����� ��������������.

3) ��� ��������� ������ ��������������, ��� ����� �������� � ������ "DbxOpenOdbc_options.inc" �����
   {$DEFINE _DEBUG_} � {$DEFINE _TRACE_CALLS_}; � ��������� ����� {.$DEFINE _RELEASE_}.
   ����� ����� ��� ����� ����������� ��� ������ ��� OpenODBC �������.

4) ���������� ��������� ����� ������� � Delphi IDE, � ���� "Event Log", ��� ������ �������
   ���������� �� ����� ����������. ����� ����� ��������������� ����������� ���������� "Debug View":
   http://technet.microsoft.com/en-us/sysinternals/bb896647
   ��������� ��� �� ������� � ������ "DbxOpenOdbcTrace.pas".

5) � ���������� ���� ������� ������ ���� ������, ODBC ��������, OpenODBC, ��������� ����������.
   ���� �� �������� ������ ������� ��������� � ����� ���������, �� ����������� ������� ��� ����������.
   ��� �������� ������� ����� ���� � ����� ��������.
   ����� ����� � ������� ������ ������� ������� � ��������� ������...

----
.EOF
