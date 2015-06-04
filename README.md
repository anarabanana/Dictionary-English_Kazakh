Dictionary Eng-Kaz
=============
Simple translation app using http://semes-olla.rhcloud.com/ resource.

Unix shell utility may translate words from English to Kazakh.
Has localization to Kazakh-Russian(mix) languages.
Text and Graphical User Interfaces, networked client-services architectures are implemented based on calc_examples project. 


1) Run make in su mode;
2) Run ./dictionary for TUI, ./dictionary_ui GUI;
3) Run  LC_ALL=ru_RU ./dictionary_ui for Kazakh-Russin(mix) localization;
4) Run in su mode  /etc/init.d/xinetd restart -> nc localhost 1235;
5) Run nc localhost 1235 to test in TUI mode;
6) Run ndictionary_ui for network mode; 


