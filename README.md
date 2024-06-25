깃허브 2024 1학기 영화예매 웹 페이지 공유 리포지토리
https://projects.animaapp.com/team/my-team-yxhlpp1/project/LKDpEbn/screen/u4370u4457u4535-u4370u4458u4358u4455u4523/omniview?mode=code&platform=figma&traceId=197cb061d41a4aac83c812e0acabd82f&popup=next&framework=html&modal=export


CREATE TABLE users (
   id VARCHAR(20) PRIMARY KEY,
   email VARCHAR(50) NOT NULL,
   username VARCHAR(30) NOT NULL,
   password VARCHAR(30) NOT NULL
);

CREATE TABLE nboard (
    id INT PRIMARY KEY,
    author VARCHAR(30) NOT null,
    title VARCHAR(200) NOT null,
    detail VARCHAR(3000) NOT null,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE qaboard (
    id INT PRIMARY KEY,
    author VARCHAR(30) NOT null,
    title VARCHAR(200) NOT null,
    detail VARCHAR(3000) NOT null,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE evboard (
    id INT PRIMARY KEY,
    author VARCHAR(30) NOT null,
    title VARCHAR(200) NOT null,
    detail VARCHAR(3000) NOT null,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

    CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    summary TEXT NOT NULL,
    release_date DATE NOT NULL,
    rating VARCHAR(50) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    runtime INT NOT NULL,
    file_name VARCHAR(50) NOT NULL
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    reservation_date DATE NOT NULL, 
    reservation_time TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
    );
