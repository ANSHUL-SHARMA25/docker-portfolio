
#!/bin/bash

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ANSHUL-SHARMA25/Docker-Zero-to-Hero/tree/main/examples/python-web-app/devops/demo/templates
git push -u origin main

while sleep 5
do
git diff --quiet; nochanges=$?
if [ $nochanges -eq 0 ]; then
    continue
else
  git add .
	git commit -m "commit"
	git push
	echo "saving"
fi
done
  