# app/database.py
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Reemplaza con tus credenciales de MySQL
SQLALCHEMY_DATABASE_URL = "mysql+mysqlconnector://root:Ne59481739#@localhost/reactdb"
# SQLALCHEMY_DATABASE_URL = "mysql+mysqlconnector://user:password#@localhost/reactdb"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

# Dependencia para obtener la sesión de la base de datos
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
