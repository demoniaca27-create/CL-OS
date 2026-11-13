#!/bin/bash
# CL OS - Um arquivo, duas versões

echo "Qual versão você quer, pai?"
echo "1 - LITE (Notebook/computador 4GB)"
echo "2 - GAMER (PC 16GB)"
read -p "Digite 1 ou 2: " opcao

# BASE LEVE - serve pros dois
echo "Instalando base leve..."
sudo apt update
sudo apt install -y xfce4 google-chrome-stable

if [ "$opcao" = "1" ]; then
  echo "Instalando CL OS LITE..."
  sudo apt install -y firefox-esr
  echo "LITE pronto, pai!"

elif [ "$opcao" = "2" ]; then
  echo "Instalando CL OS GAMER..."
  sudo apt install -y steam lutris wine
  mkdir -p ~/Jogos
  echo "GAMER pronto! Abra a Steam e instale o GTA V"
fi

echo "CL OS instalado!"