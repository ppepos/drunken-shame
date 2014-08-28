# Nest Static Web

This app is meant to run server-side.


# To setup and get into the pyvenv:

* Execute `./strap_env.sh` in the `backend/src` forder.
* Execute `source env/bin/activate` still in the `backend/src` folder



## If you add new dependencies
Don't forget to update the `requirements.txt` with the new dependencies you've just added
            `$ pip freeze > requirements.txt`
            

# Starting fresh
## Build the DB
* Execute `python app/run.py shell`
* In the shell
    * Execute `db.create_all(app=app)

## To run the server
* Start the server with 
            `python run.py runserver`
* The server is now started at http://localhost:5000/