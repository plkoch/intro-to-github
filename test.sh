#!/bin/bash
usage() { echo "Usage: $0 [-a <ISIR filename>]" 1>&2; exit 1; }
[ $# -eq 0 ] && usage
# getopts:
while getopts :a:w:o: _OPT 2>/dev/null
do
{
  case $_OPT in
	a) ISIR="$OPTARG" ;;
    *) usage ;;
  esac
}
done
# now, remove the options from the positional parameters
shift $((OPTIND-1))
unset _OPT OPTARG OPTIND

SPACE=" "

cat "${ISIR}" | awk -v replace=$SPACE -v start=3869 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v replace=$SPACE -v start=3991 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v replace=$SPACE -v start=4113 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v replace=$SPACE -v start=4235 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v replace=$SPACE -v start=4357 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v replace=$SPACE -v start=4479 -v len=121 '{if (substr($0,1,1) != " ") {code=substr($0,start,1); if (code != " ") {printf("%s%121s%s", substr($0, 1, start-1), replace, substr($0, start+len))} else {print $0}}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
cat "${ISIR}_updated" | awk -v start=13 -v len=2 '{if (substr($0,1,1) != " ") {txnnum=substr($0,start,len); txnnum=txnnum+1; txnnum=sprintf("%02d",txnnum); print substr($0, 1, start-1) txnnum substr($0, start+len)}}' > tmp.dat
mv tmp.dat "${ISIR}_updated"
exit 0;
