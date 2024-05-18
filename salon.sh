#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c "

# ./salon.sh

echo -e "\n~~~~~ MY SALON ~~~~~\n\nWelcome to My Salon, how can I help you?\n"

MAIN_MENU() {
  if [[ $1 ]]; then #Do this so MAIN_MENU "<message>" would work
    echo -e "\n$1"
  fi

  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")
  echo "$SERVICES" | while read SERVICE_ID BAR NAME; do
    echo "$SERVICE_ID) $NAME" #| sed 's/ |/ /' #Using regex without BAR variable
  done
  read SERVICE_ID_SELECTED

  HAVE_SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id='$SERVICE_ID_SELECTED';")
  if [[ -z $HAVE_SERVICE_ID ]]; then
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    HAVE_CUSTOMER_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone = '$CUSTOMER_PHONE';")
    if [[ -z $HAVE_CUSTOMER_PHONE ]]; then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE');")

      echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
      read SERVICE_TIME
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name = '$CUSTOMER_NAME' AND phone = '$CUSTOMER_PHONE';")
      INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) 
        VALUES('$CUSTOMER_ID','$SERVICE_ID_SELECTED','$SERVICE_TIME');")

      SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
      echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
      read SERVICE_TIME
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name = '$CUSTOMER_NAME' AND phone = '$CUSTOMER_PHONE';")
      INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) 
        VALUES('$CUSTOMER_ID','$SERVICE_ID_SELECTED','$SERVICE_TIME');")

      SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
      echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    fi
  fi
}

MAIN_MENU
