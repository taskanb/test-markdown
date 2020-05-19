
FILES=*.md
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.docx"
  `pandoc $f markdown -t docx -o $filename.docx $filename.md`
  # uncomment this line to delete the source file.
  # rm $f
done
