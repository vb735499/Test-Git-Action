FROM golang:1.22

WORKDIR /app

COPY . /app

RUN go clean --modcache

RUN go build -o main .

CMD ["./main"]