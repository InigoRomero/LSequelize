CREATE TABLE IF NOT EXISTS projects(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),
    priority integer NOT NULL,
    description text,
    deliverydate date NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),
    done BOOLEAN,
    projectId INTEGER REFERENCES projects(id)
);

INSERT INTO projects(name, priority, description,deliverydate)
    VALUES('Make a Web App', 1, 'Using JS', '2021/05/30');

INSERT INTO projects(name, priority, description,deliverydate)
    VALUES('Make a Thor', 2, 'with her hummer', '2021/08/30');

INSERT INTO projects(name, priority, description,deliverydate)
    VALUES('Buy air-conditioning', 1, 'necessary to survive', '2021/05/30');

INSERT INTO tasks(name, done, projectId)
    VALUES('Stole the hummer', false, 2);

INSERT INTO tasks(name, done, projectId)
    VALUES('make money', false, 3);

INSERT INTO tasks(name, done, projectId)
    VALUES('Go to store', false, 3);

    INSERT INTO tasks(name, done, projectId)
    VALUES('instalation', false, 3);