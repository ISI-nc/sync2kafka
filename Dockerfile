# ------------------------------------------------------------------------
from mcluseau/golang-builder:1.13.3 as build

# ------------------------------------------------------------------------
from alpine:3.18.6
entrypoint ["sync2kafka"]
copy --from=build /go/bin/* /bin/
