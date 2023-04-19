function convert_temperature() {
    read -p "Enter temperature: " temp
    read -p "Select conversion type (C to F or F to C): " conv_type

    case $conv_type in
        [Cc])
            if (( temp < 0 || temp > 100 )); then
                echo "Error: Temperature must be between 0°C and 100°C"
            else
                degF=$(awk "BEGIN {print ($temp * 9/5) + 32}")
                echo "$temp°C is $degF°F"
            fi
            ;;
        [Ff])
            if (( temp < 32 || temp > 212 )); then
                echo "Error: Temperature must be between 32°F and 212°F"
            else
                degC=$(awk "BEGIN {print ($temp - 32) * 5/9}")
                echo "$temp°F is $degC°C"
            fi
            ;;
        *)
            echo "Error: Invalid conversion type"
            ;;
    esac
}

convert_temperature
