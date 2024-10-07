# app/schemas.py
from pydantic import BaseModel
from datetime import datetime

class SensorTemperaturaBase(BaseModel):
    valor_temperatura: float

class SensorTemperaturaCreate(SensorTemperaturaBase):
    pass

class SensorTemperatura(SensorTemperaturaBase):
    id: int
    hora: datetime

    class Config:
        from_attributes = True

class SensorDistanciaBase(BaseModel):
    valor_distancia: float

class SensorDistanciaCreate(SensorDistanciaBase):
    pass

class SensorDistancia(SensorDistanciaBase):
    id: int
    hora: datetime

    class Config:
        from_attributes = True
