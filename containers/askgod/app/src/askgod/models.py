"""
    Below are defined SQL-Alchemy objects/tables

    Refer to the wiki for more information
"""

from flask import url_for
from flask.ext.login import UserMixin
from sqlalchemy.ext.declarative import declarative_base
import os

Base = declarative_base()

user_challenge = db.Table('association', Base.metadata,
    db.Column('user_id', db.Integer, db.ForeignKey('users.id')),
    db.Column('challenge_id', db.Integer, db.ForeignKey('challenge.id'))
)

class User(UserMixin, db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String, unique=True, index=True)
    score = db.Column(db.Integer)
    challenge_status = db.relationship("Challenge", secondary=user_challenge, backref="users")

class Challenge(db.Model):
    __tablename__ = 'challenges'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, unique=True, index=True)
    value = db.Column(db.Integer)

