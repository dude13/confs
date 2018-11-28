#/bin/bash


echo
echo
echo Atualizando sistema

echo
sudo apt-get update && sudo apt-get upgrade -y

echo
echo Instalando stress-ng-test

echo
sudo apt-get install stress-ng -y
echo

echo Stress-full_test
echo
#Parametros
#--cpu => faz um fork de processos a serem processados pela CPU
#--cpu-method all => executa um teste de stress em todas as CPUs disponiveis
#--cpu-ops => faz um fork de 10000 processos em cada CPUs disponivel
#--vm => faz um fork de alocacao de memoria para processos
#--vm-bytes => memoria alocado no teste
#--io => processos que farao multiplas chamadas de sync (flush na memoria para o disco)
#--hdd => quantidade de processos de escrita no disco
#--hdd-bytes => tamanho da escrita para cada processo
#--time-out => periodo do teste
#--metrics-brief => mostra a saida das metricas apos execucao

echo
echo 
echo >>>>> STRESS_NG TEST <<<<<<
echo
time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 6 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 240s --metrics-brief
