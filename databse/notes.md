# Notes for Database Design

##  Users Table

Purpose: Stores admin and Indigineous bisuness Data.

Planned Fields:
 
- UserId(PK)
- FullName
- Email
- PasswordHash
- Role (Admin/BusinessOwner)
- IsActive
- CreatedAt

## Businesses Table 

Purpose: Stores Indigenous-owned business profiles.

Planned Fields:

- BusinessId(PK)
- BusinessName
- Description
- Category
- OwnerUserId (FK → Users)
- Phone
- Email
- Address
- IsVerified
- CreatedAt


## Services Table 

Purpose: Stores community services information.

Planned Fields:

- ServiceId(PK)
- ServiceName
- Category
- Description
- ContactInfo
- Location
- IsActive

## Events Table 

Purpose: Stores cultural and community events

Planned Fields:

- EventId (PK)
- EventTitle
- EventType
- Description
- EventDate
- Location
- CreatedAt

## OTPRequests Table 

Purpose: Handles email OTP verification for registration and sensitive updates.

Planned Fields:

- OTPId (PK)
- UserId (FK → Users)
- OTPCode
- ExpiryTime
- IsUsed




