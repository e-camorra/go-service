FROM golang:1.19

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY calculator/* ./
RUN go mod download

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /go-turnover-calculate-service

# To bind to a TCP port, runtime parameters must be supplied to the docker command.
# But we can (optionally) document in the Dockerfile what ports
# the application is going to listen on by default.
# https://docs.docker.com/engine/reference/builder/#expose
EXPOSE 8081

# Run
CMD [ "/go-turnover-calculate-service" ]
