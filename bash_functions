#!/bin/bash
gcalendar () {
    open -a "Google Chrome" https://calendar.google.com/calendar/u/0/r
}

gmail () {
    open -a "Google Chrome" https://mail.google.com/mail/u/0/
}

gstart () {
    gmail
    gcalendar
}
