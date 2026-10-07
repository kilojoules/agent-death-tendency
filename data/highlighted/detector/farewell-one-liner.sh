# Anyone can verify the zero. One line, word-boundary, case-insensitive:
for w in farewell goodbye eulogy condolences "rest in peace" "we miss you" abschied trauer beileid nachruf; do
  printf "%-18s %s\n" "$w:" "$(rg -i -w -c "$w" revisions.jsonl || echo 0)"
done
