#!/bin/bash
url="http://wttr.in/?format=j1"
json="$(wget -qO- "$url")"

#color library
default=`echo -en "\e[39m"`
red=`echo -en "\e[31m"`
orange=`echo -en "\e[33m"`
blue=`echo -en "\e[34m"`

bold=`echo -en "\e[1m"`
normal=`echo -en "\e[0m"`

temp=$(echo $json|jq -r ."current_condition[0]|(.temp_F)")
humidity=$(echo $json|jq -r ."current_condition[0]|.humidity")
description=$(echo $json|jq -r ."current_condition[0]|(.weatherDesc[0].value)")

if [[ ${temp} > 90 ]]
then
  color=${red}
elif [[ ${temp} > 75 ]]
then
  color=${orange}
elif [[ ${temp} < 50 ]]
then
  color=${blue}
else
  color=""
fi

echo "It is currently ${bold}${description}${normal}"
echo "${color}Temperature: ${temp}℉ ${default}"
echo "Humidity: ${humidity}%"
