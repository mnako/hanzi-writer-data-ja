apt-get install -y jq
git clone --depth 1 https://github.com/parsimonhi/animCJK
while IFS= read -r line; do
    printf '%s' "$line" | jq -c -r ".character"
    printf '%s' "$line" | jq -c "{strokes: .strokes, medians: .medians}" > data/`printf '%s' "$line" | jq -r ".character"`.json
done < animCJK/graphicsJA.txt
rm data/.json
rm -rf animCJK
