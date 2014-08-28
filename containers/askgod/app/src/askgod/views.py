import os

from flask import Flask, request, session, g, redirect, url_for, abort, \
render_template, flash

from askgod import my_app

@app.route('/', methods=["GET"])
def index():
    return render_template('index.html')

@app.route('/', methods=["POST"])
def submit():
    pass
