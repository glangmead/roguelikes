line=`bash rl.sh`
fname=`echo "$line" | cut -f 1`
card=`echo "$line" | cut -f 2`
card_theme=`echo "$line" | cut -f 3`
category=`echo "$line" | cut -f 4`
prompt=`echo "$line" | cut -f 5`
which imgcat && imgcat --width 40 images/$fname
echo "General: $card_theme"
echo "Specific: $category: $prompt"
