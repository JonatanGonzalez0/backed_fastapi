# app/models.py
from sqlalchemy import Column, Integer, DECIMAL, TIMESTAMP
from .database import Base
from datetime import datetime

class SensorTemperatura(Base):
    __tablename__ = "sensor_temperatura"

    id = Column(Integer, primary_key=True, index=True)
    valor_temperatura = Column(DECIMAL(5, 2))
    hora = Column(TIMESTAMP, default=datetime.utcnow)

class SensorDistancia(Base):
    __tablename__ = "sensor_distancia"

    id = Column(Integer, primary_key=True, index=True)
    valor_distancia = Column(DECIMAL(6, 2))
    hora = Column(TIMESTAMP, default=datetime.utcnow)
