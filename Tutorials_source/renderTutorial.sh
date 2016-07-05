# Start in tutorials_source

pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css Intro.md  -T "Intro to git" -o ../Tutorials_render/html/Intro.html 

#pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css Intro.md --latex-engine=xelatex -o ../Tutorials_render/pdf/Intro.pdf
wkhtmltopdf --zoom 0.75 ../Tutorials_render/html/Intro.html  ../Tutorials_render/pdf/Intro.pdf


cd tutorial1/
pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css -T "Intro to git" Tutorial1.md  -o ../../Tutorials_render/html/Tutorial1.html 
cp images/*.png ../../Tutorials_render/html/images/

wkhtmltopdf --zoom 0.75 ../../Tutorials_render/html/Tutorial1.html ../../Tutorials_render/pdf/Tutorial1.pdf

cd ../tutorial2/
pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css -T "Intro to git" Tutorial2.md    -o ../../Tutorials_render/html/Tutorial2.html 
cp images/*.png ../../Tutorials_render/html/images/

wkhtmltopdf --zoom 0.75 ../../Tutorials_render/html/Tutorial2.html ../../Tutorials_render/pdf/Tutorial2.pdf

cd ../tutorial3/
pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css  -T "Intro to git" Tutorial3_Collaboration.md -o ../../Tutorials_render/html/Tutorial3.html 
cp images/*.png ../../Tutorials_render/html/images/

wkhtmltopdf --zoom 0.75 ../../Tutorials_render/html/Tutorial3.html ../../Tutorials_render/pdf/Tutorial3.pdf

cd ../tutorial4/
pandoc -s -S --toc --toc-depth 4 -N -c pandoc.css Tutorial4.md  -T "Intro to git" -o ../../Tutorials_render/html/Tutorial4.html 
cp images/*.png ../../Tutorials_render/html/images/

wkhtmltopdf --zoom 0.75 ../../Tutorials_render/html/Tutorial4.html ../../Tutorials_render/pdf/Tutorial4.pdf

cd ..

pdfjoin ../Tutorials_render/pdf/Intro.pdf ../Tutorials_render/pdf/Tutorial1.pdf ../Tutorials_render/pdf/Tutorial2.pdf ../Tutorials_render/pdf/Tutorial3.pdf ../Tutorials_render/pdf/Tutorial4.pdf --outfile ../Tutorials_render/pdf/IntroToGit_allTutorials.pdf