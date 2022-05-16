# ------------------------------------------------------------------------
from mcluseau/golang-builder:1.13.3 as build

# ------------------------------------------------------------------------
from alpine:latest
entrypoint ["sync2kafka"]
copy --from=build /go/bin/* /bin/
