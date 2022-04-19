# Flip Coin Simulation
h=0
t=0


for (( i=0; i<1000; i++ ))
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 0 ]
	then
		h=$((h+1))
	else
		t=$((t+1))
	fi
done
echo "Times head was flipped: " $h
echo "Times tail was flipped: " $t
