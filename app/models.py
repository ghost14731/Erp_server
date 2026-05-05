from sqlalchemy import Column, Integer, String, Boolean
from app.database import Base

class ERPUser(Base):
    __tablename__ = "erp_users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False)
    fingerprint_id = Column(Integer, unique=True, nullable=False)
    role = Column(String, default="student")
    fee_paid = Column(Boolean, default=False)