#!/bin/bash
unset -f adhoc
adhoc () {
    open -a "Google Chrome" https://meet.google.com/pox-wdvm-itz
}
export adhoc

unset -f cfa
cfa () {
    open -a "Google Chrome" https://bandwidth-jira.atlassian.net/browse/CFA-$1
}
export cfa
