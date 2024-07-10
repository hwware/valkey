proc restart_killed_instances {} {
    foreach type {valkey sentinel} {
        foreach_${type}_id id {
            if {[get_instance_attrib $type $id pid] == -1} {
                puts -nonewline "$type/$id "
                flush stdout
                restart_instance $type $id
            }
        }
    }
}

proc verify_sentinel_auto_discovery {} {
    set sentinels [llength $::sentinel_instances]
    foreach_sentinel_id id {
        wait_for_condition 1000 50 {
            [dict get [S $id SENTINEL PRIMARY myprimary] num-other-sentinels] == ($sentinels-1)
        } else {
            fail "At least some sentinels can't detect some other sentinels"
        }
    }
}
