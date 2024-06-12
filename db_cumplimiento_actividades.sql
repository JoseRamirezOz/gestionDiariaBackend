CREATE DATABASE CUMPLIMIENTO_ACTIVIDADES;
USE CUMPLIMIENTO_ACTIVIDADES;
CREATE TABLE DIAS_SEMANA (
    ID INT NOT NULL PRIMARY KEY,
    DESCRIPCION VARCHAR(50)
);

CREATE TABLE GESTION_DIARIA (
    ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    DESC_ESTUDIE VARCHAR(250),
    DIA_SEMANA INT,
    FECHA DATE,  
    CUMPLIMIENTO INT,
    CONSTRAINT FK_DIA_SEMANA FOREIGN KEY (DIA_SEMANA) REFERENCES DIAS_SEMANA(ID)
);


INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (1, 'Lunes');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (2, 'Martes');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (3, 'Miércoles');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (4, 'Jueves');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (5, 'Viernes');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (6, 'Sábado');
INSERT INTO DIAS_SEMANA (ID, DESCRIPCION) VALUES (7, 'Domingo');

INSERT INTO `cumplimiento_actividades`.`gestion_diaria` (`DESC_ESTUDIE`, `DIA_SEMANA`, `FECHA`, `CUMPLIMIENTO`
    ) VALUES ('JavaScript', '4', '2024-06-06', '0');

INSERT INTO `cumplimiento_actividades`.`gestion_diaria` (`DESC_ESTUDIE`, `DIA_SEMANA`, `FECHA`, `CUMPLIMIENTO`
) VALUES ('JavaScript', '5', '2024-06-07', '0');

INSERT INTO `cumplimiento_actividades`.`gestion_diaria` (`DESC_ESTUDIE`, `DIA_SEMANA`, `FECHA`, `CUMPLIMIENTO`
) VALUES ('TypeScript', '6', '2024-06-08', '0');

INSERT INTO `cumplimiento_actividades`.`gestion_diaria` (`DESC_ESTUDIE`, `DIA_SEMANA`, `FECHA`, `CUMPLIMIENTO`
) VALUES ('Angular ', '7', '2024-06-09', '0');