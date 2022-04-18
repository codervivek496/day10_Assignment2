# Flip Coin Simulation
flipCion=$(( RANDOM%2 ))
if [ $flipCoin -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
