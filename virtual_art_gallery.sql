-- Creation of Database
create database virtual_art_gallery;

--Using the database
use virtual_art_gallery;

-- Creation of Artist table
CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(50),
    Biography TEXT,
    BirthDate DATE,
    Nationality VARCHAR(50),
    Website VARCHAR(255),
    ContactInformation VARCHAR(50)
);

-- Creation of Artwork table
CREATE TABLE Artwork (
    ArtworkID INT PRIMARY KEY,
    Title VARCHAR(70),
    Description TEXT,
    CreationDate DATE,
    Medium VARCHAR(100),
    ImageURL VARCHAR(255),
    ArtistID INT,
    FOREIGN KEY (ArtistID)
        REFERENCES Artist (ArtistID)
);

-- creation of User table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(50),
    Email VARCHAR(255),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ProfilePicture VARCHAR(255)
);

-- creation of User_Favorite_Artwork table(JUNCTIONTABLE)
CREATE TABLE User_Favorite_Artwork (
    UserID INT,
    ArtworkID INT,
    FOREIGN KEY (UserID)
        REFERENCES User (UserID),
    FOREIGN KEY (ArtWorkID)
        REFERENCES Artwork (ArtworkID)
);

-- Creation of gallery table
CREATE TABLE Gallery (
    GalleryID INT PRIMARY KEY,
    Name VARCHAR(50),
    Description TEXT,
    Location VARCHAR(100),
    Curator INT,
    OpeningHours VARCHAR(255),
    FOREIGN KEY (Curator) REFERENCES Artist(ArtistID)
);

-- Creation of Artwork_Gallery junction table
CREATE TABLE Artwork_Gallery (
    ArtworkID INT,
    GalleryID INT,
    FOREIGN KEY (ArtworkID) REFERENCES Artwork (ArtworkID),
    FOREIGN KEY (GalleryID) REFERENCES Gallery (GalleryID)
);
-- Insert data into Artist table
INSERT INTO Artist (ArtistID, Name, Biography, BirthDate, Nationality, Website, ContactInformation)
VALUES
(101, 'Rajesh Kumar', 'Contemporary Indian painter.', '1980-05-15', 'Indian', 'http://www.rajeshkumarart.com', 'contact@rajeshkumarart.com'),
(102, 'Priya Singh', 'Talented Indian sculptor.', '1975-09-22', 'Indian', 'http://www.priyasinghart.com', 'info@priyasinghart.com'),
(103, 'Amit Sharma', 'Landscape artist.', '1992-05-20', 'Indian', 'http://www.amitsharmaart.com', 'amit@sharmaart.com'),
(104, 'Sakshi Gupta', 'Renowned Indian contemporary artist.', '1985-04-10', 'Indian', 'http://www.sakshiguptaart.com', 'sakshi@sakshigupta.com'),
(105, 'Vivek Verma', 'Skilled Indian sculptor.', '1978-09-08', 'Indian', 'http://www.vivekvermaart.com', 'vivek@vermaart.com'),
(106, 'Aisha Khan', 'Emerging Indian artist.', '1995-11-30', 'Indian', 'http://www.aishakhanart.com', 'info@aishakhanart.com'),
(107, 'Liang Wei', 'Renowned Chinese calligrapher.', '1983-03-25', 'Chinese', 'http://www.liangweiart.com', 'liang@weiart.com'),
(108, 'Yuki Tanaka', 'Japanese contemporary artist.', '1976-07-17', 'Japanese', 'http://www.yukitanakaart.com', 'yuki@tanakaart.com'),
(109, 'Sofia Rodriguez', 'Talented Spanish painter.', '1990-01-05', 'Spanish', 'http://www.sofiarodriguezart.com', 'sofia@rodriguezart.com'),
(110, 'Ahmed Hassan', 'Renowned Egyptian sculptor.', '1988-06-12', 'Egyptian', 'http://www.ahmedhassanart.com', 'ahmed@hassanart.com');

-- Insert data into Artwork table
INSERT INTO Artwork (ArtworkID, Title, Description, CreationDate, Medium, ImageURL, ArtistID)
VALUES
(501, 'Eternal Beauty', 'Mesmerizing landscape painting.', '2023-09-20', 'Acrylic on Canvas', 'http://www.example.com/eternalbeauty.jpg', 101),
(502, 'Sculpture of Unity', 'Monumental sculpture.', '2022-12-15', 'Granite', 'http://www.example.com/sculptureofunity.jpg', 102),
(503, 'Golden Sunset', 'Breathtaking sunset painting.', '2024-03-10', 'Oil on Canvas', 'http://www.example.com/goldensunset.jpg', 103),
(504, 'Urban Chaos', 'Mixed-media artwork.', '2023-06-05', 'Mixed Media', 'http://www.example.com/urbanchaos.jpg', 104),
(505, 'Divine Harmony', 'Bronze sculpture.', '2022-08-18', 'Bronze', 'http://www.example.com/divineharmony.jpg', 105),
(506, 'Identity Crisis', 'Evocative painting.', '2024-01-12', 'Watercolor on Paper', 'http://www.example.com/identitycrisis.jpg', 106),
(507, 'Serenity II', 'Tranquil landscape painting.', '2023-04-25', 'Oil on Canvas', 'http://www.example.com/serenity2.jpg', 107),
(508, 'Metamorphosis', 'Captivating sculpture.', '2022-10-30', 'Aluminium', 'http://www.example.com/metamorphosis.jpg', 108),
(509, 'Madhubani Magic', 'Vibrant Madhubani painting.', '2024-02-08', 'Natural Dyes on Paper', 'http://www.example.com/madhubanimagic.jpg', 109),
(510, 'Dynamic Forms', 'Dynamic sculpture.', '2023-07-15', 'Wood', 'http://www.example.com/dynamicforms.jpg', 110),
(511, 'Lotus Bloom', 'Symbolic painting.', '2023-10-05', 'Watercolor on Canvas', 'http://www.example.com/lotusbloom.jpg', 101),
(512, 'Phoenix Rising', 'Sculpture depicting rebirth.', '2022-09-18', 'Clay', 'http://www.example.com/phoenixrising.jpg', 102),
(513, 'Mystic Dance', 'Abstract artwork.', '2024-04-01', 'Oil and Acrylic on Canvas', 'http://www.example.com/mysticdance.jpg', 103),
(514, 'Ocean Symphony', 'Seascape painting.', '2023-02-22', 'Oil on Canvas', 'http://www.example.com/oceansymphony.jpg', 104),
(515, 'Zen Garden', 'Miniature sculpture.', '2022-11-30', 'Stone', 'http://www.example.com/zengarden.jpg', 105);

-- Insert data into User table
INSERT INTO User (UserID, Username, Password, Email, FirstName, LastName, DateOfBirth, ProfilePicture)
VALUES
(1, 'ananya123', 'password123', 'ananya@example.com', 'Ananya', 'Sharma', '1990-03-12', 'http://www.example.com/ananyapic.jpg'),
(2, 'rahul_88', 'rahulpass', 'rahul@example.com', 'Rahul', 'Kumar', '1985-08-25', 'http://www.example.com/rahulpic.jpg'),
(3, 'priya_09', 'priyapass', 'priya@example.com', 'Priya', 'Singh', '1992-11-10', 'http://www.example.com/priyapic.jpg'),
(4, 'vikram_23', 'vikrampass', 'vikram@example.com', 'Vikram', 'Patel', '1988-07-03', 'http://www.example.com/vikrampic.jpg'),
(5, 'divya_45', 'divyapass', 'divya@example.com', 'Divya', 'Gupta', '1995-04-20', 'http://www.example.com/divyapic.jpg'),
(6, 'liang_wei', 'liangpass', 'liang@example.com', 'Liang', 'Wei', '1983-01-15', 'http://www.example.com/liangpic.jpg'),
(7, 'yuki_78', 'yukipass', 'yuki@example.com', 'Yuki', 'Tanaka', '1976-09-28', 'http://www.example.com/yukipic.jpg'),
(8, 'sofia_99', 'sofiapass', 'sofia@example.com', 'Sofia', 'Rodriguez', '1990-12-17', 'http://www.example.com/sofiapic.jpg'),
(9, 'ahmed_12', 'ahmedpass', 'ahmed@example.com', 'Ahmed', 'Hassan', '1988-03-08', 'http://www.example.com/ahmedpic.jpg'),
(10, 'nisha_34', 'nishapass', 'nisha@example.com', 'Nisha', 'Patel', '1987-06-02', 'http://www.example.com/nishapic.jpg');

-- Insert data into Gallery table
INSERT INTO Gallery (GalleryID, Name, Description, Location, Curator, OpeningHours)
VALUES
(601, 'Sunrise Gallery', 'Contemporary art gallery', 'New Delhi, India', 101, 'Mon-Fri: 10am-6pm'),
(602, 'Moonlight Gallery', 'Modern art gallery', 'Mumbai, India', 102, 'Tue-Sat: 11am-7pm'),
(603, 'Starry Night Gallery', 'Art space for emerging artists', 'Bangalore, India', 103, 'Wed-Sun: 12pm-8pm'),
(604, 'Golden Horizon Gallery', 'Fine art gallery', 'Chennai, India', 104, 'Thu-Mon: 9am-5pm'),
(605, 'Oceanic Gallery', 'Art gallery with a focus on marine art', 'Kolkata, India', 105, 'Fri-Sun: 1pm-9pm'),
(606, 'Urban Escape Gallery', 'Showcasing urban-themed art', 'Pune, India', 106, 'Mon-Wed: 11am-5pm'),
(607, 'Ethereal Art Hub', 'Celebrating ethereal artworks', 'Hyderabad, India', 107, 'Thu-Sat: 12pm-6pm'),
(608, 'Rural Reflections Gallery', 'Highlighting rural art forms', 'Jaipur, India', 108, 'Wed-Sun: 10am-8pm'),
(609, 'Mountainside Art Space', 'Featuring mountain-inspired art', 'Shimla, India', 109, 'Fri-Sun: 10am-7pm'),
(610, 'Fusion Art House', 'Exploring fusion of diverse art styles', 'Goa, India', 110, 'Tue-Sun: 11am-6pm');

-- Insert data into User_Favorite_Artwork table
INSERT INTO User_Favorite_Artwork (UserID, ArtworkID)
VALUES
(1, 501),
(2, 502),
(3, 503),
(4, 504),
(5, 505),
(6, 506),
(7, 507),
(8, 508),
(9, 509),
(10, 510),
(1, 507),
(2, 508),
(3, 509),
(4, 510),
(5, 511),
(6, 512),
(7, 513),
(8, 514),
(9, 515),
(10, 501),
(1, 511),
(2, 512),
(3, 513),
(4, 514),
(5, 515);

-- Insert data into Artwork_Gallery table
INSERT INTO Artwork_Gallery (ArtworkID, GalleryID)
VALUES
(501, 601),
(502, 602),
(503, 603),
(504, 604),
(505, 605),
(506, 606),
(507, 607),
(508, 608),
(509, 609),
(510, 610),
(511, 601),
(512, 602),
(513, 603),
(514, 604),
(515, 605);


