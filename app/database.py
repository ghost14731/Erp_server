from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base

# Connect to the PostgreSQL database that holds 'erp_users'
DATABASE_URL = "postgresql://erp_user:1234@localhost/erp_db"

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine, autoflush=False, autocommit=False)
Base = declarative_base()