FROM golang:1.8

WORKDIR /go/src/app

RUN go get -d -v github.com/animated-broccoli/vegetable_patch

RUN go install -v github.com/animated-broccoli/vegetable_patch

CMD ["vegetable_patch"]

