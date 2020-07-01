# Deployment

1. In the root of your repository, create the two following files:


.gitpod.Dockerfile  
.gitpod.yml  

Fill out these files based on the contents of the files of the same name in this repo

2. Update your Gemfile to match the Gemfile in this repo

3. Update your config/database.rb file to match the database.rb file in this repo

4. Run bundle install in the terminal

5. Commit the changes, and push to the master branch of the repository

```
git add .
git commit -m "changes for deployment"
git push origin master
```

6. Access the workspace again to force the dockerfile changes and install heroku

URL should match the following pattern:  
https://gitpod.io/#https:github.com/[my_github_username_here]/finstagram

7. check that heroku has been properly installed with the command in your terminal:

```
heroku --version
```

8. create a heroku account on heroku.com

9. in the terminal of gitpod, run the following command and log in to heroku with your credentials

```
heroku login
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
