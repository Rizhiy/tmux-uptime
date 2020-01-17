#!/usr/bin/env bash

originals=(
  " days"
  " day"
)

replacements=(
  "d"
  "d"
)

nice_uptime() {
  # Select required segment from uptime
	status="$(uptime | cut -d "u" -f 2 | cut -c3- | rev | cut -d "," -f 2- | rev | tr -s " ")"
	for ((i=0; i<${#originals[@]}; i++)); do
	  status=${status/${originals[$i]}/${replacements[$i]}}
	done
	if [ -n "$status" ]; then
		echo "$status"
	else
		echo "Can't determine uptime"
	fi
}

main() {
	nice_uptime
}
main
