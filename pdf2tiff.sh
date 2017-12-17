FILECOUNT=0
TOTALSTARTTIME=$(date +"%s")
#Get all pdfs in process folder
for f in *.pdf
do
	#Catch Process start time to calcuate process length
	STARTTIME=$(date +"%s")
	echo "Converting PDF to TIFF - $f..."
  name=$(echo $f | cut -f 1 -d '.')
	#Use GhostScript to convert pdf to tiff, resolution is 300dpi, file format is TIFFlzw
	gs -dBATCH -dNOPAUSE -sDEVICE=tifflzw -r300 -dCOLORSCREEN=false -dNOINTERPOLATE -sOutputFile=$name.tiff $f
	#Catch process end time
	ENDTIME=$(date +"%s")
	#Calculate time difference and print result
	echo "processed $f to TIFF in $(($ENDTIME - $STARTTIME)) seconds"
	FILECOUNT=$((FILECOUNT + 1))
done
TOTALENDTIME=$(date +"%s")
echo "$FILECOUNT processed in $(($TOTALENDTIME - $TOTALSTARTTIME)) seconds"
