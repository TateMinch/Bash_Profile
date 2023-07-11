#!/bin/bash
unset -f gcalendar 
gcalendar () {
    open -a "Google Chrome" https://calendar.google.com/calendar/u/0/r
}
export gcalendar

unset -f gmail
gmail () {
    open -a "Google Chrome" https://mail.google.com/mail/u/0/
}
export gmail

unset -f gstart
gstart () {
    gmail
    gcalendar
}
