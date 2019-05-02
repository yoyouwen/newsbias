while [1]
do
	$sleep(1000)
	$python3 main.py -i in.txt -o out.json
	$bq --location=US load --autodetect --noreplace --source_format=NEWLINE_DELIMITED_JSON mydataset.mytable ./out.json
done
