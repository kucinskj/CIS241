echo ""
lscpu | sed -nE "/^CPU\(s\)/ p"
echo "====="
echo "		total		used		free		shared		buff/cache		available"
free -h | sed -nE "s/Gi/ Gigabytes/g; /Mem\:/ p"
echo ""
echo "Disks:"
echo "====="
df -h | sed -n "/T/ p"
echo ""
echo "Date:"
echo "====="
date | sed -E "s/Mon/Monday\,/;
	s/Tue/Tuesday\,/;
	s/Wed/Wednesday\,/;
	s/Thu/Thursday\,/;
	s/Fri/Friday\,/;
	s/Sat/Saturday\,/;
	s/Sun/Sunday\,/;
	s/Jan/January/;
	s/Feb/February/;
	s/Mar/March/;
	s/Apr/April/;
	s/Jun/June/;
	s/Jul/July/;
	s/Aug/August/;
	s/Sep/September/;
	s/Oct/October/;
	s/Nov/November/;
	s/Dec/December/;
	s/2021 /2021\./;
	s/AM/a\.m\./;
	s/PM/p\.m\./;
	s/EST/Eastern Standard/"
echo ""
