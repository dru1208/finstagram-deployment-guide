# Deployment

1. In the root of your repository, create the two following files:

```
.gitpod.Dockerfile
.gitpod.yml
```

Fill out these files based on the contents of the files of the same name in this repo (the files at the top of this guide)

2. Update your Gemfile to match the Gemfile in this repo (the files at the top of this guide)

3. Update your config/database.rb file to match the database.rb file in this repo (the files at the top of this guide)

4. Copy `bundle install` into the terminal and run it (press Enter).

5. Commit the changes, and push to the master branch of the repository by using the following commands in your terminal window. Copy and paste them each individually.

```
git add .
git commit -m "changes for deployment"
git push origin master
```

Note: if you receive an error after running `git push origin master` (access denied), go to the following url:

https://gitpod.io/access-control/

Select the check box "write public repos", press the update button, and re-run git push origin master in your terminal

6. Access the workspace again to force the dockerfile changes and install heroku

URL should match the following pattern:
https://gitpod.io/#https://github.com/[my_github_username_here]/finstagram

7. Check that heroku has been properly installed with the command in your terminal:

```
heroku --version
```

8. create a heroku account on heroku.com

9. in the terminal of gitpod, run the following command and log in to heroku with your credentials

```
heroku login -i
```

10. run the following command in the terminal to create the heroku project

```
heroku create
```

11. Access the heroku dashboard with the following url:

https://dashboard.heroku.com/apps

12. Click on the newly created project, select the resources tab, and then under Add-ons, use the search bar to add "Heroku Postgres" with the free plan

13. Click on heroku postgres to view the details, under settings tab, click on View Credentials in the row that is for Database Credentials. Copy the URI (should look something like postgres://[some string of text here])

14. Inside the config/database.rb file, paste the copied URI into the database_url string (line 13)

15. Run the following commands in your terminal

```
bundle install
git add .
git commit -m "updated database config"
git push origin master
```

16. Push your app live with the following commands

```
git push heroku
heroku run bundle exec rake db:migrate
```

17. In the dashboard of heroku, you can find the link to your app with the button "Open App" (should be in the top right of the dashboard)

18. After you open your application, you may realize that your posts are missing. This is because the database that we were working with previously was on our Gitpod workspace, but now we're using a brand new database that is linked to heroku. In order to populate your database with data, create a file in the db directory called seeds.rb, and fill it in with the values in the seeds.rb file of this repository (top of the page). Run the following commands in your terminal to populate your database:

```
git add .
git commit -m "created seeds file for db"
git push origin master
git push heroku
heroku run bundle exec rake db:seed
```


# Updating the App

If you've made changes to your code, run the following commands in your terminal

```
git add .
git commit -m "made changes to app"
git push origin master
git push heroku
```

If these involve any changes to the database, run the following command

```
heroku run rake db:migrate
```
