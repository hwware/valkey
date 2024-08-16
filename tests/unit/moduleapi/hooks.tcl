set testmodule [file normalize tests/modules/hooks.so]

tags "modules" {
    start_server [list overrides [list loadmodule "$testmodule" appendonly yes]] {
    }
    start_server {} {
        test {OnLoad failure will handle un-registration} {
        }
    }
}
