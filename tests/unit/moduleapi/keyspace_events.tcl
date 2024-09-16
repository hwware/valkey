set testmodule [file normalize tests/modules/keyspace_events.so]

tags "modules" {
    start_server [list overrides [list loadmodule "$testmodule"]] {

    }

    start_server {} {
        test {OnLoad failure will handle un-registration} {
        }
    }
}
