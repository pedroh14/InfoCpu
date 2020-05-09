#!/bin/bash
#
##########################################################
#descriçao: InforCpu.sh traz uma maneira descomplicada
#de buscar informaçoes uteis que naturalmente precisaria 
#de mais doque um simples comando, buscando assim agilizar
#seu tempo.
#*********************************************************
#
#author: Pedro, email:pedrohenrique45904@gmail.com
#
#*********************************************************
#Uso: ./InforCpu.sh, source InforCpu.sh e . InforCpu.sh
#
#
#
echo " ================================= "
echo "  ======INFORMAÇOES CPU========= "
echo " ================================= "
echo
echo "***********************************"
echo "Relatorio da Maquina: Linux "
echo "Data atual:$(date +%d/%m%thora:%H:%M )"
echo "***********************************"
sleep 3
echo
echo "Nome da Maquina: $(hostname)"
echo "Tempo em atividade:$(uptime -p | sed 's/\up\+/ /' | tr -s " ")"
echo "Versão do Kernel: $(uname -r)"
echo "Numero de Cores: $(lscpu | grep "CPU(s):" | tr -s " ")"
echo "Modelo da CPU: $(lscpu | grep "Nome do modelo" | sed 's/\Nome do modelo:\+/ /' | tr -s " " )"
echo "memoria ram disponivel: $(free -ht | tr -s " " | cut -d' ' -f7 | head -2 | grep "[1-9]")"
echo
echo -e "Partiçoes:\n$(df -H | head -n6)"
echo
echo
sleep 5
               
