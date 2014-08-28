# Define the application directory
import os
BASE_DIR = os.path.abspath(os.path.dirname(__file__))


class Config:

    # Application threads. A common general assumption is
    # using 2 per available processor cores - to handle
    # incoming requests using one and performing background
    # operations using the other.
    THREADS_PER_PAGE = 16
    
    # Enable protection agains *Cross-site Request Forgery (CSRF)*
    CSRF_ENABLED = True
    
    # Use a secure, unique and absolutely secret key for
    # signing the data.
    CSRF_SESSION_KEY = "secret"
    
    # Secret key for signing cookies
    SECRET_KEY = "secret"

    @staticmethod
    def init_app(app):
        pass

class DevConfig(Config):

    DEBUG = True

    # Define the database - we are working with
    # SQLite for this example
    SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(BASE_DIR, 'app.db')
    SQLALCHEMY_COMMIT_ON_TEARDOWN = True
    DATABASE_CONNECT_OPTIONS = {}

config = {
    'default': DevConfig,
}
