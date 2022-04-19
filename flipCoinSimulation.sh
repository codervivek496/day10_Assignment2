# Flip Coin Simulation
h=0
t=0

function flipcoin() {

while [ $h -le 21 ] || [ $t -le 21 ]
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 0 ]
	then
		h=$((h+1))
	else
		t=$((t+1))
	fi
if [ $h -eq 21 ] || [ $t -eq 21 ]
then
break
fi
done
echo "Times head was flipped: " $h
echo "Times tail was flipped: " $t

if [ $h -eq 21 ]
then
diff=`expr $h - $t`
	echo "Head Won by $diff points"
elif [ $t -eq 21 ]
then
diff1=`expr $t - $h`
	echo "Tail Won by $diff1 points"
elif [ $h -eq $t ]
then
	echo "Tie"
fi
}

if [ $h -eq $t ]
then
	flipcoin=(( flipcoin++2 ))
fi
