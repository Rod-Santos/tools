#!/bin/bash

clear

echo "Bem-vindo ao script de instalação e configuração do Ubuntu!"
echo " "

# Mostrar as opções disponíveis
echo "Por favor, selecione o que você deseja instalar:"
echo "1. Atualização de pacotes"
echo "2. Docker"
echo "3. Docker Compose"
echo "4. Git"
echo "5. Gerenciador de Credenciais para Git"
echo "6. Configuração do NTP"
echo "7. Azure CLI"
echo "8. AWS CLI"
echo "9. Tmux"
echo "10. Htop"
echo "11. Limpeza de pacotes desnecessários"
echo "12. Curl"
echo "13. Wget"
echo "0. Sair"
echo " "

# Ler a opção escolhida pelo usuário
read -p "Digite o número da opção desejada: " choice

case $choice in
  1)
    # Atualizar pacotes
    echo "Atualizando pacotes..."
    sudo apt-get update
    sudo apt-get upgrade
    echo "Pacotes atualizados!"
    echo "Para mais informações sobre a atualização de pacotes, acesse o comando 'man apt-get' ou 'apt-get --help'."
    ;;
  2)
    # Docker
    echo "Instalando Docker..."
    sudo apt-get install docker.io
    echo "Docker instalado!"
    echo "Para mais informações sobre o Docker, acesse o comando 'docker --help' ou 'man docker'."
    ;;
  3)
    # Docker Compose
    echo "Instalando Docker Compose..."
    sudo apt-get install docker-compose
    echo "Docker Compose instalado!"
    echo "Para mais informações sobre o Docker Compose, acesse o comando 'docker-compose --help' ou 'man docker-compose'."
    ;;
  4)
    # Git
    echo "Instalando Git..."
    sudo apt-get install git
    echo "Git instalado!"
    echo "Para mais informações sobre o Git, acesse o comando 'git --help' ou 'man git'."
    ;;
  5)
    # Gerenciador de Credenciais para Git
    echo "Instalando Gerenciador de Credenciais para Git..."
    sudo apt-get install libsecret-1-0 libsecret-1-dev
    sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
    echo "Gerenciador de Credenciais para Git instalado!"
    echo "Para mais informações sobre o Gerenciador de Credenciais para Git, consulte a documentação do projeto em 'https://git-scm.com/docs/git-credential' ou 'man git-credential'."
    ;;
  6)
    # Configuração do NTP
    echo "Configurando NTP..."
    sudo timedatectl set-timezone America/Sao_Paulo
    sudo apt-get install ntp
    echo "NTP configurado!"
    echo "Para mais informações sobre o NTP, acesse o comando 'man ntp' ou 'ntp --help'."
    ;;
  7)
    # Azure CLI
    echo "Instalando Azure CLI..."
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    echo "Azure CLI instalado!"
    echo "Para mais informações sobre o Azure CLI, acesse o comando 'az --help' ou consulte a documentação em 'https://docs.microsoft.com/pt-br/cli/azure/'."
    ;;
  8)
    # AWS CLI
    echo "Instalando AWS CLI..."
    sudo apt-get install awscli
    echo "AWS CLI instalado!"
    echo "Para mais informações sobre o AWS CLI, acesse o comando 'aws --help' ou consulte a documentação em 'https://aws.amazon.com/cli/'."
    ;;
  9)
    # Tmux
    echo "Instalando Tmux..."
    sudo apt-get install tmux
    echo "Tmux instalado!"
    echo "Para mais informações sobre o Tmux, acesse o comando 'tmux --help' ou 'man tmux'."
    ;;
  10)
    # Htop
    echo "Instalando Htop..."
    sudo apt-get install htop
    echo "Htop instalado!"
    echo "Para mais informações sobre o Htop, acesse o comando 'htop --help' ou 'man htop'."
    ;;
  11)
    # Limpeza de pacotes desnecessários
    echo "Limpando pacotes desnecessários..."
    sudo apt-get autoremove
    sudo apt-get clean
    sudo apt-get autoclean
    sudo rm -rf /var/lib/apt/lists/*
    echo "Pacotes desnecessários limpos!"
    ;;
  12)
    # Curl
    echo "Instalando Curl..."
    sudo apt-get install curl
    echo "Curl instalado!"
    echo "Para mais informações sobre o Curl, acesse o comando 'curl --help' ou 'man curl'."
    ;;
  13)
    # Wget
    echo "Instalando Wget..."
    sudo apt-get install wget
    echo "Wget instalado!"
    echo "Para mais informações sobre o Wget, acesse o comando 'wget --help' ou 'man wget'."
    ;;
  0)
    # Sair do script
    echo "Saindo do script..."
    exit
    ;;
  *)
    # Opção inválida
    echo "Opção inválida! Por favor, selecione um número de 0 a 13."
    ;;
esac

#Perguntar ao usuário se deseja continuar usando o script
while true; do
  read -p "Deseja instalar mais alguma coisa? (s/n) " answer
  case $answer in
    [Ss]* ) clear; ./tools.sh; exit;;
    [Nn]* ) echo " "; echo "Obrigado por usar o script de instalação e configuração do Ubuntu!"; exit;;
    * ) echo "Por favor, responda s ou n.";;
  esac
done

