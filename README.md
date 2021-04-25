# Outside security
combincation of python watchdog (syslog), and node-red to turn on a mqtt enabled tasmota switch which switches on external floodlight

# zoneminder
zoneminder logs all alarms into syslog. I found this the quickest way to know when a motion was being detected in zoneminder

# pi zero watchdog
watches zoneminder server (ubuntu) syslog for an "alarm" entry then run http post to cloud hosted node red

# node red
on reciept of http event, series of flows to determine if its night time and if already triggered and creates mqtt message to turn on local sonoff power switch
