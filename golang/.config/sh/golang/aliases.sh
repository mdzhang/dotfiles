# use for ultimate plumber instead of up
# which collides w/ sh/scripts/up.sh for traversing
# directories
alias ulp='up'

gocover () {
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}
