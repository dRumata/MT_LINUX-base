#/bin/bash

chat_id=<ask trainer>
BotApi=<ask trainer>

# this 3 checks (if) are not necessary but should be convenient
if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` \"text message\""
  exit 0
fi

if [ -z "$1" ]
  then
    echo "Add message text as second arguments"
    exit 0
fi

if [ "$#" -ne 1 ]; then
    echo "You can pass only one argument. For string with spaces put it on quotes"
    exit 0
fi

#curl https://api.telegram.org/bot6152158990:AAH0irhJZCd_31XunELUyySC794EoedvLh0/sendMessage?chat_id=-1001966452444&text=$(hostnamectl)

curl -s --data "text=$1" --data "chat_id=$chat_id" 'https://api.telegram.org/bot'$BotApi'/sendMessage' > /dev/null