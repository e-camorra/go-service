FROM golang:1.19

# Set destination for COPY
WORKDIR /var/www/app

# Download Go modules
COPY app/* ./
RUN go mod download

# Build
RUN go build -o /app

# Run
CMD [ "/app" ]

