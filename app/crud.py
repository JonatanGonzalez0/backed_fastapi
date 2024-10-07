# app/crud.py
from sqlalchemy.orm import Session
from . import models, schemas

def get_temperaturas(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.SensorTemperatura).offset(skip).limit(limit).all()

def get_distancias(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.SensorDistancia).offset(skip).limit(limit).all()

def create_sensor_temperatura(db: Session, sensor_data: schemas.SensorTemperaturaCreate):
    db_sensor = models.SensorTemperatura(valor_temperatura=sensor_data.valor_temperatura)
    db.add(db_sensor)
    db.commit()
    db.refresh(db_sensor)
    return db_sensor

def create_sensor_distancia(db: Session, sensor_data: schemas.SensorDistanciaCreate):
    db_sensor = models.SensorDistancia(valor_distancia=sensor_data.valor_distancia)
    db.add(db_sensor)
    db.commit()
    db.refresh(db_sensor)
    return db_sensor

# Obtener la última temperatura registrada
def get_last_temperature(db: Session):
    return db.query(models.SensorTemperatura).order_by(models.SensorTemperatura.hora.desc()).first()

# Obtener la última distancia registrada
def get_last_distance(db: Session):
    return db.query(models.SensorDistancia).order_by(models.SensorDistancia.hora.desc()).first()
