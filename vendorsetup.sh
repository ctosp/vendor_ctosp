for device in $(python vendor/ctosp/tools/get_official_devices.py)
do
for var in eng user userdebug; do
add_lunch_combo ctosp_$device-$var
done
done
