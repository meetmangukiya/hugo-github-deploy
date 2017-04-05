echo "[building]"
hugo -t <theme> # Replace with name of the theme
echo "[Pushing to master]"
cd public/
git checkout master
git add *
git commit -m "Website Update $(date -u)"
git push
