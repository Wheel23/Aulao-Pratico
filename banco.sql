CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    profile VARCHAR (50) DEFAULT 'customer'
)

CREATE TABLE chamados(
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'open',
    observations VARCHAR(255),
    responsible int references users(id)

)