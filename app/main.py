from fastapi import FastAPI
from app.database import engine, Base
from app.routes import user

Base.metadata.create_all(bind=engine)

app = FastAPI(title="College ERP API")

app.include_router(user.router, prefix="/users", tags=["Users"])