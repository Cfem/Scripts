#!/bin/bash
clear
Parabirimikisa="NON"
Parabirimiuzun="None"
Link="https://www.none.com"
Komutcalis=0
Durum="None"



while :
do
echo 'Made by Cfem'
echo
echo '1. Doviz kurlari'
echo '2. Altin'
echo '3. Uygulamadan Cikma'
echo
read -n 1 -p "Lutfen secmek istediginizin basindaki numararyi yaziniz:" input1 && sleep 0.2 && clear
	if [ $input1 = 1 ]; then
	Link="https://canlidoviz.com/doviz/serbest-piyasa"
	Komutcalis=1 	
	echo 	
	echo "1. USD (Dolar)"
	echo "2. EUR (Euro)"
	echo "3. GBP (Ingiliz Sterlini)"
	echo "4. CAD (Kanada Dolari)"
	echo "5. DKK (Danimarka Kronu)"
	echo "6. SEK (Isvec Kronu)"
	echo "7. CHF (Isvicre Frangi)"
	echo "8. JPY (100 Japon Yeni)"
	echo "9. SAR (Suudi Arabistan Riyali)"
	echo
	read  -n 1 -p "Lutfen secmek istediginizin basindaki numararyi yaziniz:" input3 && sleep 0.2 && clear
	echo
	 
		if [ $input3 = 1 ]; then
		Parabirimikisa="USD"
		Parabirimiuzun="Dolar"
		elif [ $input3 = 2 ]; then
		Parabirimikisa="EUR"
		Parabirimiuzun="Euro"
		elif [ $input3 = 3 ]; then
		Parabirimikisa="GBP"
		Parabirimiuzun="Ingiliz Sterlini"
		elif [ $input3 = 4 ]; then
		Parabirimikisa="CAD"
		Parabirimiuzun="Kanada Dolari"
		elif [ $input3 = 5 ]; then
		Parabirimikisa="DKK"
		Parabirimiuzun="Danimarka Kronu"
		elif [ $input3 = 6 ]; then
		Parabirimikisa="SEK"
		Parabirimiuzun="Isvec Kronu"
		elif [ $input3 = 7 ]; then
		Parabirimikisa="CHF"
		Parabirimiuzun="Isvicre Frangi"
		elif [ $input3 = 8 ]; then
		Parabirimikisa="JPY"
		Parabirimiuzun="100 Japon Yeni"
		elif [ $input3 = 9 ]; then
		Parabirimikisa="SAR"
		Parabirimiuzun="(Suudi Arabistan Riyali)"
	fi
	fi
	
	if [ $input1 = 2 ]; then
	Link="https://canlidoviz.com/altin-fiyatlari"
	Komutcalis=1
	echo 
	echo "1. Gram Altin"
	echo "2. Ceyrek Altin"
	echo "3. Yarim Altin"
	echo "4. Tam Altin"
	echo "5. Cumhuriyet Altini"
	echo "6. 14 Ayar Altin"
	echo "7. 18 Ayar Altin"
	echo "8. Gremse Altin"
	echo "9. Resat Altin"
	echo
	read  -n 1 -p "Lutfen secmek istediginizin basindaki numararyi yaziniz:" input4 && sleep 0.2 && clear
	echo
		if [ $input4 = 1 ]; then
		Parabirimikisa="GA"
		Parabirimiuzun="Gram Altin"
		elif [ $input4 = 2 ]; then
		Parabirimikisa="C"
		Parabirimiuzun="Ceyrek Altin"
		elif [ $input4 = 3 ]; then
		Parabirimikisa="Y_"
		Parabirimiuzun="Yarim Altin"
		elif [ $input4 = 4 ]; then
		Parabirimikisa="T"
		Parabirimiuzun="Tam Altin"
		elif [ $input4 = 5 ]; then
		Parabirimikisa="_A"
		Parabirimiuzun="Cunhuriyet Altini"
		elif [ $input4 = 6 ]; then
		Parabirimikisa="Y14"
		Parabirimiuzun="14 Ayar Altin"
		elif [ $input4 = 7 ]; then
		Parabirimikisa="Y18"
		Parabirimiuzun="18 Ayar Altin"
		elif [ $input4 = 8 ]; then
		Parabirimikisa="G"
		Parabirimiuzun="Gremse Altin"
		elif [ $input4 = 9 ]; then
		Parabirimikisa="R"
		Parabirimiuzun="Resat Altin"
		fi
		fi
	if [ $input1 = 3 ]; then
	echo
	clear	
	exit
	fi
if [ $Komutcalis = 1 ]; then 
clear
Durum=$(curl -s $Link | grep '<span id='  | grep $Parabirimikisa | grep listdivul2li2 | awk -F '"' '{print $6}' | awk '{gsub(/yuksek/,"Y")}1' | awk '{gsub(/alcak/,"A")}1')
	if [ $Durum = "A" ]; then
	printf "$Parabirimiuzun Alis: " && curl -s $Link | grep "<span id=" | grep $Parabirimikisa | grep "alis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}' && printf " \u25bc"
	printf "$Parabirimiuzun Satis: " && curl -s $Link | grep "<span id=" | grep $Parabirimikisa | grep "satis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}' && printf " \u25bc"
	Komutcalis=0
	fi
	
	if [ $Durum = "Y" ]; then
	printf "$Parabirimiuzun Alis: " && curl -s $Link | grep "<span id=" | grep $Parabirimikisa | grep "alis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}' && printf " \u25b2"
	printf "$Parabirimiuzun Satis: " && curl -s $Link | grep "<span id=" | grep $Parabirimikisa | grep "satis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}' && printf " \u25b2"
	Komutcalis=0
	fi
echo
fi
done

#Dolar satış
#curl -s https://canlidoviz.com/doviz/serbest-piyasa | grep "<span id=" | grep USD | grep "satis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}'
#Reşat Altın alış
#curl -s https://canlidoviz.com/altin-fiyatlari | grep "<span id=" | grep R | grep "alis" | awk -F ">" '{print $3}' | awk -F "<" '{print $1}'

#Gram Altın        = GA
#Çeyrek Altın      = C
#Yarım Altın       = Y_
#Tam Altın         = T
#Cumhuriyet Altını = _A
#14 Ayar Altın     = Y14
#18 Ayar Altin     = Y18
#Gremse Altin      = G
#Resat Altin       = R


#Yüzde
#	sleep $f.$c
#	echo -ne '#         (10%)\r'
#	sleep $f.$c
#	echo -ne '##        (20%)\r'
#	sleep $f.$c
#	echo -ne '###       (30%)\r'
#	sleep $f.$c
#	echo -ne '####      (40%)\r'
#	sleep $f.$c
#	echo -ne '#####     (50%)\r'
#	sleep $f.$c
#	echo -ne '######    (60%)\r'
#	sleep $f.$c
#	echo -ne '#######   (70%)\r'
#	sleep $f.$c
#	echo -ne '########  (80%)\r'
#	sleep $f.$c
#	echo -ne '######### (90%)\r'
#	sleep $f.$c
#	echo -ne '##########(100%)\r' && clear 
