FROM public.ecr.aws/docker/library/golang:1.21.0

WORKDIR /app

COPY . .

RUN go install server

RUN go build -v -o server

CMD ["/app/server"]

