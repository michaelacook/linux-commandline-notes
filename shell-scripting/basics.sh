#! /usr/bin/bash

# by default the script may not have executable persmissions, so change with chmod 
# to set universal read/write/execute permissions do chmod 777 [file]

# echo command 
echo "hi world, from bash!"


# variables 
# uppercase by convention 
# letters, numbers, underscores 
# prepend with $ when using the variable
# use curly braces when you want to add the variable where you can't put spaces 
NAME="Michael"
echo $NAME
echo "Hello, my name is $NAME"
echo "/home/users/${NAME}"


## USER INPUT 
-p option for prompting user
read -p "What is your age? " AGE 
echo "You are $AGE years old"


## LOGIC 
if [ "$AGE" > 30 ]
then 
    echo "Wow you're one old fuck $NAME"
elif [ "$AGE" > 20 ]
then
    echo "You are an adult now $NAME"
else 
    echo "You're still young $NAME"
fi


## COMPARISONS

NUM1=31
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

## comparison operators 
# -eq returns true if values are equal 
# -ne returns true if values are not equal 
# -gt returns true if first val greater than second val 
# -ge returns true if first val is greater than or equal to second val 
# -lt returns true if first val is less than second val 
# -le returns true if first val is less than or equal to second val 


## FILE CONDITIONS

FILE="test.txt"

if [ -e "$FILE" ]
then 
    "$FILE is a file"
else 
    echo "$FILE is not a file. Making now..."
    touch test.txt
fi

if [ -u "$FILE" ]
then 
    echo "user id set on file"
else 
    echo "user id NOT set on file"
fi

# ####
# # -d file   true if the file is a directory  
# # -e file   true if the file exists (note that this is not particularly portable, thus -f is generally used)
# # -f file   true if the provided string is a file 
# # -g file   true if the group id is set on a file 
# # -r file   true if the file is readable
# # -s file   true if the file has a non-zero size 
# # -u file   true if the user id is set on a file 
# # -w file   true if the file is writable 
# # -x file   true if the file is an executable 
# #### 


# # CASE STATEMENT

# read -p "Are you 19 or over? Y/N " ANSWER 

# # demonstrate switch syntax
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "You can't have a beer, loser :P"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac


# # LOOPS 

# ## for-loop 

NAMES="Michael Yuni"

for NAME in $NAMES 
    do 
        echo "Do you like me ${NAME}?"
done

# ### more interesting example 

touch 1.txt 2.txt 3.txt 
FILES=$(ls *.txt) #basically an array of the text files 

for FILE in $FILES 
    do 
        echo "Renaming $FILE to new-$FILE"
        mv $FILE "new-$FILE"
done

## while-loop

### read a file line by line
touch lorem.txt
lorem -p 5 > lorem.txt 

LINE=1 
while read -r CURRENT_LINE 
    do 
        echo "$LINE: $CURRENT_LINE"
        (( LINE++ ))
done < "./lorem.txt"


# FUNCTIONS 

## without params
function sayHello() {
    echo "Hello world"
}

sayHello

## with params 
function greet() {
    echo "Hello, I am $1 and I am $2"
}

greet "Michael" 31
