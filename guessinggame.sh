function calculateFiles {
  let numfiles=$(ls -1 | grep -v $'~' | wc -l)
  echo $numfiles
}

count=0
while [[ $count -ne 1 ]]
do
   echo "Quess how many files are in the current directory, and then press Enter:"
   read response
   numfiles=$(calculateFiles)
   if [[ $response -gt $numfiles ]]
   then
       echo "Your guess is too high!"
   elif [[ $response -lt $numfiles ]]
   then
       echo "Your guess is too low!"
   else
       let count=1
       echo "You have guessed correctly! Congrats!"
   fi
done
