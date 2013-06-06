#!/bin/sh

function doQuit() {
	echo
	exit 0;
}

function doInstall() {
	showMainMenu "Instalação concluída com sucesso!";
}

function doUninstall() {
	showMainMenu "Desinstalação concluída com sucesso!";
}

function showMainMenu() {
	clear;
	local msg="$1";
	if [ "$msg" != "" ] ; then
		echo
		echo $msg;
	fi
	echo
	echo "O que você deseja?";
	echo "	1) Instalar";
	echo " 	2) Desinstalar";
	echo " 	S) Sair";
	echo ": \c";
	read option
	if [ "$option" == "1" ] ; then
		doInstall;
	elif [ "$option" == "2" ] ; then
		doUninstall;
	elif [ "$option" == "S" -o "$option" == "s" ] ; then
		doQuit;
	else
		showMainMenu "Digite uma das opções válidas!";
	fi
	return;
}

showMainMenu;

exit 0;

