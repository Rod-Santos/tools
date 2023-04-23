# Script de Instalação e Configuração do Ubuntu

Este script de instalação e configuração do Ubuntu contém diversas opções para instalar e configurar as seguintes ferramentas e utilitários:

- Atualização de pacotes: Atualiza a lista de pacotes e instala as atualizações disponíveis. Exemplo: `sudo apt-get update && sudo apt-get upgrade`
- Docker: Instala o Docker, uma plataforma para desenvolver, implantar e executar aplicativos em contêineres. Exemplo: `docker run hello-world`
- Docker Compose: Instala o Docker Compose, uma ferramenta para definir e executar aplicativos Docker de vários contêineres usando arquivos de configuração. Exemplo: `docker-compose up`
- Git: Instala o Git, um sistema de controle de versão distribuído. Exemplo: `git clone https://github.com/user/repo.git`
- Gerenciador de Credenciais para Git: Instala o gerenciador de credenciais para Git, que permite armazenar e gerenciar credenciais para autenticação no Git. Exemplo: `git config --global credential.helper cache`
- Configuração do NTP: Configura o NTP (Network Time Protocol) para manter a hora do sistema sincronizada com servidores de tempo na Internet. Exemplo: `sudo timedatectl set-ntp true`
- Azure CLI: Instala o Azure CLI, uma interface de linha de comando para gerenciar recursos do Microsoft Azure. Exemplo: `az login`
- AWS CLI: Instala o AWS CLI, uma interface de linha de comando para gerenciar recursos da Amazon Web Services. Exemplo: `aws configure`
- Tmux: Instala o Tmux, uma ferramenta de terminal multiplexador que permite executar várias sessões de terminal em uma única janela. Exemplo: `tmux new-session -s mysession`
- Htop: Instala o Htop, uma ferramenta interativa para monitorar processos e a utilização do sistema. Exemplo: `htop`
- Limpeza de pacotes desnecessários: Remove pacotes desnecessários e limpa o cache do gerenciador de pacotes. Exemplo: `sudo apt-get autoremove && sudo apt-get clean`
- Curl: Instala o Curl, uma ferramenta de linha de comando para transferir dados usando diversos protocolos de rede. Exemplo: `curl https://example.com`
- Wget: Instala o Wget, uma ferramenta de linha de comando para baixar arquivos da Web usando HTTP, HTTPS e FTP. Exemplo: `wget https://example.com/file.txt`

## Como usar o script

1. Salve o script em um arquivo chamado `tools.sh`.
2. Dê permissão de execução ao arquivo: `chmod +x tools.sh`
3. Execute o script: `./tools.sh`
4. Selecione a opção desejada digitando o número correspondente e pressionando Enter.
