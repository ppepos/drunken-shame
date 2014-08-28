from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy
from flask.ext.login import LoginManager
from config import config
from models import *

db = SQLAlchemy()
login_manager = LoginManager()
login_manager.session_protection = 'string'

def create_app(app_distribution):
    app = Flask(__name__)
    app.config.from_object(config[app_distribution])
    config[app_distribution].init_app(app)

    db.init_app(app)
    login_manager.init_app(app)

    return app
