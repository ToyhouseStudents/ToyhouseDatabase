# How to run code locally?

1. Install `xampp`
  * If you have installed `xampp`, just ignore this step.
  * Get the newest`xampp` here: http://www.apachefriends.org/en/xampp.html

2. Update your repository
  * Use `git pull git@github.com/ToyhouseChina/ToyhouseDatabase.git` to update your local repository.
  * If your organization's repository has been updated, you only need to click `sync` button on the top left of github client. But `pull` from ToyhouseChina is recommended. 
  * `pull` = `fectch` + `merge`. 

3. Run `xampp`
  * Create a database named `toyhouse`.
  * Add a user named `iedb` with password `iedb`.
  * Import `mysql.sql` to database `toyhouse`.
  
  `mysql.sql` can be found in the `database` folder.
4. Use `htdocs`
  * Use command `MKLINK` in Windows.
  * Go to `xampp` installation folder and delete `htdocs`.
  * Open command line at `xampp` installation folder.
  * Run command `MKLINK`.
    Maybe your command is like the following. The only parameter that maybe changed is the last parameter. Change it
    to the place you have your github files in.

  ``` powershell
    mklink /D htdocs "C:\Users\Administrator\Documents\GitHub\ToyhouseChina\ToyhouseDatabase\htdocs"
  ```

  The above command guarantee synchronization between 
  `"[Your GitHub Folder]\ToyhouseDatabase\htdocs\"`
  and `xampp\htdocs`.
5. Visit [localhost](http://localhost/)

  Now `Mediawiki` and `q2a` are ready to run. Just test them.
6. Configure `Elgg`
  * Modify `move.php`. You can find the file at `elgg/engine/` mainly the path:
  
  ```powershell
  "C:/xampp/htdocs/elgg/"
  "C:/xampp/htdocs/data/"
  ```
  * Change them to your places.
  * There are three places needed be changed in total.
  * Visit [move script](http://localhost/elgg/engine/move.php): `http://localhost/elgg/engine/move.php`
  * [Upgrade](http://localhost/elgg/upgrade.php): `http://localhost/elgg/upgrade.php`
  * Visit [elgg](http://localhost/elgg/). It is ready now!
7. Configure `PHProjekt`
  * Maybe you don't need to use phprojekt ^-^
  * Setup PHProjekt. `http://localhost/phprojekt/htdocs/setup.php`
  * **Parameters:** Databasename: toyhouse; Database username: iedb; Database password: iedb; And the private file
    path must be `../../phprojekt_private/`

Power by [Toyhouse](http://toyhouse.cc)