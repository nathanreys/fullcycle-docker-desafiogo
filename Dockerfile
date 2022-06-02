# Imagem inicial - ponto de partida
# Definir um "nome" para uso de multistage
FROM golang:1.18-alpine as builder 
#D iretório de trabalho
WORKDIR /usr/src/app
# Copiar o o arquivo "hello.go" para diretório de trabalho
COPY hello.go /usr/src/app
# Comando para compilar o arquivo go que será usada na camada seguinte
RUN go mod init example/hello && \
    go build

# Imagem inicial - uma imagem em branco
FROM scratch
# Definir o mesmo diretório de trabalho
WORKDIR /usr/src/app
# Copiar o arquivo compilado da imagem gerada anteriormente
COPY --from=builder /usr/src/app/hello ./
# Comando inicial para a imagem, executando o arquivo 'GO' compilado 
CMD [ "./hello" ]