#!/bin/fish

set rz_critical 10

set rz_charge $(razer-cli --battery print | grep charge | awk '{print $2}')
set rz_charging $(razer-cli --battery print | grep charging | awk '{print $2}')

# checking battery current charge for critical level
if test $rz_charge -le $rz_critical; and test $rz_charging = 'False'
    set rz_status 'critical'
else if test $rz_charging = 'True'
    set rz_status 'Charging'
else
    set rz_status 'Discharging'
end

echo "{\"class\": \"$rz_status\", \"percentage\": $rz_charge}"
