from pydantic import BaseModel

class UserCreate(BaseModel):
    name: str
    fingerprint_id: int
    role: str = "student"
    fee_paid: bool = False


class UserResponse(BaseModel):
    id: int
    name: str
    fingerprint_id: int
    role: str
    fee_paid: bool

    class Config:
        from_attributes = True