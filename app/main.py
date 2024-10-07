# app/main.py
from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from . import crud, models, schemas
from .database import SessionLocal, engine, get_db

# Crear las tablas en la base de datos
models.Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Bienvenido a la API en FastAPI"}

# Endpoint para obtener el historial de temperaturas
@app.get("/history-temperature/", response_model=list[schemas.SensorTemperatura])
def read_temperaturas(skip: int = 0, limit: int = 1000, db: Session = Depends(get_db)):
    temperaturas = crud.get_temperaturas(db, skip=skip, limit=limit)
    return temperaturas

# Endpoints para obtener historial de distancias
@app.get("/history-distancia/", response_model=list[schemas.SensorDistancia])
def read_distancias(skip: int = 0, limit: int = 1000, db: Session = Depends(get_db)):
    distancias = crud.get_distancias(db, skip=skip, limit=limit)
    return distancias

# Endpoint para obtener la última temperatura registrada
@app.get("/last-temperature/", response_model=schemas.SensorTemperatura)
def get_last_temperature(db: Session = Depends(get_db)):
    last_temp = crud.get_last_temperature(db)
    if not last_temp:
        raise HTTPException(status_code=404, detail="No temperature data found")
    return last_temp

# Endpoint para obtener la última distancia registrada
@app.get("/last-distance/", response_model=schemas.SensorDistancia)
def get_last_distance(db: Session = Depends(get_db)):
    last_dist = crud.get_last_distance(db)
    if not last_dist:
        raise HTTPException(status_code=404, detail="No distance data found")
    return last_dist


# Endpoints para enviar datos de sensores
@app.post("/temperatura/", response_model=schemas.SensorTemperatura)
def create_temperatura(sensor_data: schemas.SensorTemperaturaCreate, db: Session = Depends(get_db)):
    return crud.create_sensor_temperatura(db=db, sensor_data=sensor_data)

@app.post("/distancia/", response_model=schemas.SensorDistancia)
def create_distancia(sensor_data: schemas.SensorDistanciaCreate, db: Session = Depends(get_db)):
    return crud.create_sensor_distancia(db=db, sensor_data=sensor_data)
