checksum=$(md5sum --tag animCJK/graphicsJa.txt)
if [[ $(< graphicsJa.md5.txt) == "$checksum" ]]; then
  echo "No new changes in Kanji data to update"
  exit 0
fi

while IFS= read -r line; do
  printf "$line" | jq -c -r ".character"
  printf "$line" | jq -c "{strokes: .strokes, medians: .medians}" > data/$(printf "$line" | jq -r ".character").json
done < animCJK/graphicsJa.txt
echo $checksum > graphicsJa.md5.txt
