#!/usr/bin/env python

import os
from askgod import create_app, db

from askgod.models import *
import askgod.views
from flask.ext.script import Manager, Shell
from flask.ext.script.commands import Server
from flask.ext.migrate import Migrate, MigrateCommand

my_app = create_app(os.getenv('FLASK_CONFIG') or 'default')
manager = Manager(my_app)
migrate = Migrate(my_app, db)


def make_shell_context():
    return dict(app=my_app, 
                db=db,
                User=User,
                Challenge=Challenge,
                )

manager.add_command("shell", Shell(make_context=make_shell_context))
manager.add_command('db', MigrateCommand)
manager.add_command("runserver", Server(threaded=True, use_debugger=True, host="0.0.0.0", port=80))

if __name__ == '__main__':
    manager.run()

# app.run(host='0.0.0.0', port=8080, debug=True)
