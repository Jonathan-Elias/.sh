if [ "$1" == "" ]

then
	echo "Script para smb"
	echo "Modo de uso: $0 IP e PORTA"
	echo "Exemplo: $0 192.168.0.1 445"
else
	for smb in {};
	do
		smbclient -L \\$1 -N -p $2 --option='client min protocol=NT1'

	echo ""
	echo ""
	echo "==========================================================="
	echo ""
	echo ""
	echo "Deseja continuar a pesquisa?"

done
fi
	echo ""
	echo ""
	echo "1 = SIM"
	echo "2 = NÃO"

	read resp
	case $resp in
	"1")
;;
	"2")
;;
	esac

	echo ""
	echo ""
	echo "Escolha qual diretório quer ganhar o acesso"
	echo ""
	echo ""

	echo "Entre com o Diretório: "
	read file 
	echo ""
	echo ""
	echo "_______________"
	echo "| Boa sorte!!! |"
	echo "---------------"
	echo ""

	for a in {};
	do
		smbclient //$1/$file -N -p $2 --option='client min protocol=NT1'


done
