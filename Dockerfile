# Imagem de contêiner que executa seu código
FROM ubuntu    

RUN apt-get update -qq && apt-get install -yqq texlive-full texlive-full make  && apt-get autoremove -yqq && apt-get clean

# Copia o arquivo de código do repositório de ação para o caminho do sistema de arquivos `/` do contêiner
COPY entrypoint-docker.sh /entrypoint.sh

# Arquivo de código a ser executado quando o contêiner do docker é iniciado (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]