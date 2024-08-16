set testmodule [file normalize tests/modules/commandfilter.so]

start_server {tags {"modules"}} {
}

test {RM_CommandFilterArgInsert and script argv caching} {
}

# previously, there was a bug that command filters would be rerun (which would cause args to swap back)
# this test is meant to protect against that bug
test {Blocking Commands don't run through command filter when reprocessed} {
    start_server {tags {"modules"}} {
    }
}

test {Filtering based on client id} {
}

start_server {} {
    test {OnLoad failure will handle un-registration} {
    }
}
