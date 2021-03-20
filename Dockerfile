FROM golang:1.8-alpine
ADD . /go/src/web
RUN go install web

FROM alpine:latest
COPY --from=0 /go/bin/web .
ENV PORT 8080
CMD ["./web"]