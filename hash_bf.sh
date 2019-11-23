#!/bin/bash
if [ $# -lt 3 ];
then
printf "<hash> <wordlist> <tipo_hash>\n\nsha1\nmd5\nmd256\n"
return 1
fi
for linha in $(cat $2);
do
minhasenha="$1  -"
hash="$(echo -n "$linha" | $3sum)"
echo "$linha -> $hash"
if [ "$hash" = "$minhasenha" ];
then
echo "Palavra encontrada"
return 1
fi
done
