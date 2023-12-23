FROM golang:1.19

# Set destination for COPY
WORKDIR /var/www/app

# Download Go modules
COPY app/* ./
RUN go mod download

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /go-service

# Run
CMD [ "/go-service" ]
