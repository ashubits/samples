while read p; do
  echo $p | tr '\n' ','
  
done </home/mallab/Desktop/opcode.txt
echo "Class"

for filename in /home/mallab/Desktop/binary/*
do
objdump -d $filename >output.txt
while read p; do
  grep -cow "$p" output.txt | tr '\n' ','
  
done </home/mallab/Desktop/opcode.txt
echo $1
rm output.txt
done








#grep -cow "$word" "$filename"

#The -c option specifies to report a count.

#The -o option specifies to count each occurrence, not just the number of matching lines.

#The -w option specifies to count word matches only, i.e. not partial matches such as "files" or "profiles".
