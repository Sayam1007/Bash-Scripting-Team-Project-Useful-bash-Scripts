  GNU nano 5.2                                                                        rainbow.sh                                                                                  
#!/usr/bin/bash
echo "COLORS AND BACKGROUNDS"
echo 
echo -e "\033[0;30m\033[4;107m Normal: (0;30); \033[1;30m BOLD: (1;30) \033[4;30m Underline: (4;30);\033[m";
for (( i = 31; i < 38; i++ )); do
         echo -e "\033[0;"$i"m Normal: (0;$i); \033[1;"$i"m BOLD: (1;$i) \033[4;"$i"m Underline: (4;$i);\033[m";
done
for (( i = 40; i < 47; i++ )); do
         echo -e "\033[0;"$i"m background: (0;$i);\033[m";
done
        echo -e "\033[0;47m\033[1;90m background: (0;47);\033[m";
for (( i = 90; i<98 ;i++ )); do
        echo -e "\033[0;"$i"m High Intensity: (0;$i);\033[m \033[1;"$i"m Bold high Intensity: (1;$i);\033[m" ;
done
for (( i=100 ;i<108 ;i++ )) do
        echo -e "\033[4;"$i"m \033[1:30m High Intensity BackGround: (0;$i);\033[m";
done
echo 
echo "TEXT FORMATTING"
echo
 echo -e "Normal \e[1mBold :(1) \033[m"
echo -e "Normal \e[2mDim :(2) \033[m"
echo -e "Normal \e[4mUnderlined :(4) \033[m"
echo -e "Normal \e[5mBlink :(5) \033[m"
echo -e "Normal \e[7minverted :(7) \033[m"
echo -e "Normal \e[8mHidden :\033[m :(8) hidden "
echo
echo "use command: \033[m for the above codes writing them just before 'm' also use echo with -e flag to enable escape characters"
