


PNG_DIR=./png_all
SVG_DIR=./svg_all
mkdir -p $PNG_DIR
mkdir -p $SVG_DIR
for i in $(find . -name *.ipe); do

    filename=$(basename $i)
    trunk=${filename%.ipe}
    #    iperender -png  -resolution 200 ${trunk}.ipe $PNG_DIR/${trunk}.png ;

    
    iperender -svg $i $SVG_DIR/${trunk}.svg ;
    iperender -png -resolution 200 $i $PNG_DIR/${trunk}.png ;

done
