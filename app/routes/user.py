from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.database import SessionLocal
from app.models import ERPUser
from app.schemas import UserCreate

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.post("/")
def add_user(data: UserCreate, db: Session = Depends(get_db)):
    user = ERPUser(**data.dict())
    db.add(user)
    db.commit()
    db.refresh(user)
    return user


@router.get("/")
def get_users(db: Session = Depends(get_db)):
    return db.query(ERPUser).all()