#!/bin/bash

FILE=/data/options.json
if test -f "$FILE"; then

# Setting Files
config_file="/etc/shairport-sync.conf"
json_file="/data/options.json"

################################################### Name ###################################################

# Get arguments
json_key="airplay_name"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 9th line)
sed -i "9s/.*/        name = $quoted_value/" "$config_file"

################################################### offset ###################################################

# Get arguments
json_key="offset"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')

# Replace line in config file using sed (target 72nd line)
sed -i "72s/.*/        audio_backend_latency_offset_in_seconds = $escaped_value/" "$config_file"

################################################### interpolation ###################################################

# Get arguments
json_key="interpolation"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 18th line)
sed -i "18s/.*/        interpolation =  $quoted_value/" "$config_file"

################################################### ALSA Precision Timing ###################################################

# Get arguments
json_key="use_precision_timing"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 18th line)
sed -i "140s/.*/        use_precision_timing =  $quoted_value/" "$config_file"

################################################### Disable Standby ###################################################

# Get arguments
json_key="disable_standby_mode"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 18th line)
sed -i "142s/.*/        disable_standby_mode =  $quoted_value/" "$config_file"

################################################### Default Airplay Volume ###################################################

# Get arguments
json_key="default_airplay_volume"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 54th line)
sed -i "54s/.*/        default_airplay_volume = $quoted_value;/" "$config_file"

################################################### Maximum Volume ###################################################

# Get arguments
json_key="volume_max_db"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 54th line)
sed -i "39s/.*/        volume_max_db = $quoted_value;/" "$config_file"

################################################### Loud Volume Threshold ###################################################

# Get arguments
json_key="high_threshold_airplay_volume"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 54th line)
sed -i "63s/.*/        high_threshold_airplay_volume = $quoted_value;/" "$config_file"

################################################### Name of the Mixer ###################################################

# Get arguments
json_key="mixer_control_name"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 54th line)
sed -i "126s/.*/        mixer_control_name = $quoted_value;/" "$config_file"

################################################### Output Device Index (Mixer Control) ###################################################

# Get arguments
json_key="mixer_control_index"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 54th line)
sed -i "127s/.*/        mixer_control_index = $quoted_value;/" "$config_file"

################################################### Use Hardware Volume Control ###################################################

# Get arguments
json_key="volume_control_combined_hardware_priority"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 52nd line)
sed -i "52s/.*/        volume_control_combined_hardware_priority = $quoted_value;/" "$config_file"

################################################### Output Backend ###################################################

# Get arguments
json_key="output_backend"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "19s/.*/        output_backend = $quoted_value;/" "$config_file"

################################################### drift_tolerance_in_seconds ###################################################

# Get arguments
json_key="drift_tolerance_in_seconds"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "29s/.*/        drift_tolerance_in_seconds = $quoted_value;/" "$config_file"

################################################### resync_threshold_in_seconds ###################################################

# Get arguments
json_key="resync_threshold_in_seconds"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "30s/.*/        resync_threshold_in_seconds = $quoted_value;/" "$config_file"

################################################### resync_recovery_time_in_seconds ###################################################

# Get arguments
json_key="resync_recovery_time_in_seconds"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "31s/.*/        resync_recovery_time_in_seconds = $quoted_value;/" "$config_file"

################################################### audio_backend_buffer_desired_length_in_seconds ###################################################

# Get arguments
json_key="audio_backend_buffer_desired_length_in_seconds"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "76s/.*/        audio_backend_buffer_desired_length_in_seconds = $quoted_value;/" "$config_file"

################################################### Output Sampling Rate ###################################################

# Get arguments
json_key="output_rate"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "130s/.*/        output_rate = $quoted_value;/" "$config_file"

################################################### Output Bit Depth Format ###################################################

# Get arguments
json_key="output_format"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target line number where output_backend is located)
sed -i "131s/.*/        output_format = $quoted_value;/" "$config_file"

################################################### mqtt setting ###################################################

# Get arguments
json_key="enabled"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 271st line)
sed -i "273s/.*/        enabled = $quoted_value/" "$config_file"

################################################### mqtt hostname ###################################################

# Get arguments
json_key="mqtt_host"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 272nd line)
sed -i "274s/.*/        hostname = $quoted_value/" "$config_file"

################################################### mqtt username ###################################################

# Get arguments
json_key="mqtt_username"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 274th line)
sed -i "276s/.*/        username = $quoted_value/" "$config_file"

################################################### mqtt password ###################################################

# Get arguments
json_key="mqtt_password"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 275th line)
sed -i "277s/.*/        password = $quoted_value/" "$config_file"

################################################### mqtt publish cover ###################################################

# Get arguments
json_key="mqtt_publish_cover"

# Extract value from JSON using jq
value=$(jq -r ".$json_key" "$json_file")

# Check if value extraction was successful
if [ $? -ne 0 ]; then
  echo "Error: Could not extract value from JSON using key '$json_key'."
  exit 1
fi

# Escape backslashes and dollar signs for safe sed usage
escaped_value=$(echo "$value" | sed 's/\\//g' | sed 's/\$/\\\\$/g')
quoted_value="\"$escaped_value\""

# Replace line in config file using sed (target 287th line)
sed -i "289s/.*/        publish_cover = $quoted_value/" "$config_file"

################################################### audio backend ###################################################

# Replace line in config file using sed (target 19th line)
sed -i "19s/.*/        output_backend = \"pa\"/" "$config_file"

##########################
fi
