gssg --productionDomain https://davisxching.github.io  

cp -R /Users/davisching/Documents/ghost/static/* /Users/davisching/Documents/github/davisxching.github.io
cp -R /Users/davisching/Documents/ghost/content/images/* /Users/davisching/Documents/github/davisxching-static.github.io/content/images

find . -type f -name '*.html' | xargs sed -i -e 's#http://localhost:2368#https://davisxching.github.io#g'
find . -type f -name '*.html' | xargs sed -i -e 's#"/content/images#"https://davisxching-static.github.io/content/images#g'
