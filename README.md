# hugo-github-deploy

# Initial steps
1. Build once
   ```sh
   hugo -t <theme>
   ```
2. cd to `public` directory, initialise a git repository, commit and push to master
   ```sh
   cd public
   git init
   git remote add origin <remote-link>
   git add .
   git commit -m "Initial commit :rocket:"
   git push -u origin master
   ```
3. create a gitignore file and add public/ directory to it
   ```sh
   touch .gitignore && echo "public/" >> .gitignore
   ```
4. Initialise git repository in root repo, commit and push to src branch.
   ```sh
   git init
   git remote add origin <remote-link>
   git checkout -b src
   git add .
   git commit -m "Initial commit :rocket:"
   git push -u origin src
   ```
5. copy the `deploy.sh` file to the root of the repository
6. Copy the pre-push hook to `.git/hooks/pre-push` and change mode to executable
   `chmod +x pre-push`

Now, we are done.

From now on every change that we commit and push in the hugo src will be:
- Built and deployed to master branch.
- hugo source will be pushed to `src` branch.

This way, we have hugo src in `src` branch and built website in `master` branch.
