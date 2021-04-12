while IFS= read -r line; do
    printf '%s' "$line" | jq -c -r ".character"
    printf '%s' "$line" | jq -c "{strokes: .strokes, medians: .medians}" > data/`printf '%s' "$line" | jq -r ".character"`.json
done < animCJK/graphicsJa.txt
