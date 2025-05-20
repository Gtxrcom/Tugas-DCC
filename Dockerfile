
FROM gcc:12 AS builder
WORKDIR /app
COPY . .
RUN g++ -o app main.cpp


FROM gcc:12
WORKDIR /app
COPY --from=builder /app/app .
CMD ["./app"]
