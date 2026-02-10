--Users Table

INSERT INTO Users (FullName, Email, PasswordHash, Role, IsActive)
VALUES
('Admin User', 'admin@tbayhub.ca', 'hashed_admin_password', 'Admin', 1),
('Business Owner', 'owner@tbayhub.ca','hashed_owner_password', 'BusinessOwner',1);


-- Businesss Table

INSERT INTO Businesses (BusinessName, Description, Category, OwnerUserId, Phone, Email, Address, IsVerified)
VALUES
('Northen Roots Crafts','Indigenous-owned handmade crafts and cultural art','Arts & Crafts', 2, '807-123-4567','contact@northernroots.ca','Thunder Bay, ON', 1);

--“I seeded the Businesses table using a valid OwnerUserId that already exists in the Users table. This confirms that my foreign key constraint is working and enforces relational integrity between users and businesses.”--


--Services Table

INSERT INTO Services (ServiceName, Category, Description, ContactInfo, Location, IsActive)
VALUES
('Indigenous Legal Aid', 'Legal Support','Free legal guidance and advocacy services for Indigenous community members', 'legal@tbayhub.ca | 807-555-2222', 'Thunder Bay, ON', 1),
('Youth Cultural Program', 'Education & Culture', 'Cultural learning and mentorship programs for Indigenous youth', 'youth@tbayhub.ca | 807-555-3333', 'Thunder Bay, ON', 1);

--Services table is separate because services are community resources and are not owned by a specific user--


--Events Table

INSERT INTO Events (EventTitle, EventType, Description, EventDate, Location)
VALUES
('Indigenous Arts Festival', 'Cultural Event', 'A celebration of Indigenous art, music, and crafts from local creators.', '2026-03-15 10:00:00', 'Thunder Bay Community Hall'),
('Truth and Reconciliation Workshop', 'Educational', 'An educational workshop focused on Truth and Reconciliation awareness.', '2026-04-02 14:00:00', 'Lakehead University');


--OTP Request Table

INSERT INTO OTPRequests (UserId, OTPCode, ExpiryTime, IsUsed)
VALUES
(1, '123456', DATEADD(MINUTE, 10, GETDATE()), 0),
(2, '564952', DATEADD(MINUTE, 10, GETDATE()), 0);