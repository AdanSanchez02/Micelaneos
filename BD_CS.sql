CREATE TABLE PELICULAS_CINE(
ID NUMBER PRIMARY KEY NOT NULL,
NOMBRE NVARCHAR2(20),
GENERO NVARCHAR2(20),
DURACION NUMBER,
ACTOR NVARCHAR2(20),
PRECIO NUMBER,
ESTATUS NUMBER --- 1 ACTIVO -  0 INACTIVO
);

INSERT INTO PELICULAS_CINE VALUES(1, 'LA ERA DE HIELO', 'INFANTIL', 720000, 'ALEX', 250, 1);
COMMIT;

SELECT * FROM PELICULAS_CINE;

SELECT * FROM PELICULAS_CINE WHERE ID=1;

UPDATE PELICULAS_CINE SET NOMBRE='LA ERA DE HIELO 2', GENERO = 'INFANTIL2', DURACION = 7200001,ACTOR = 'ALEX2', PRECIO = 252, ESTATUS = 0 WHERE ID = 1;
COMMIT;

DELETE FROM PELICULAS_CINE WHERE ID = 2;
COMMIT;

INSERT INTO PELICULAS_CINE VALUES(3, 'LA ERA DE HIELO', 'INFANTIL', 720000, 'ALEX', 250, 1);
COMMIT;

---------------------------------- EJERCICIO 29/05/2023 --------------------------------------------

CREATE TABLE Herramientas(
ID NUMBER PRIMARY KEY NOT NULL,
TIPO NVARCHAR2(20),
NOMBRE NVARCHAR2(20),
TAMANO NVARCHAR2(20),
PRECIO NUMBER,
CANTIDAD NUMBER,
EXISTENCIA NUMBER
);

INSERT INTO Herramientas VALUES(1, 'Electrica', 'Taladro', 'XRE', 3500, 2, 5);
INSERT INTO Herramientas VALUES(2, 'Hidraulica', 'Gato', 'Grande 20t', 5000, 1, 3);
COMMIT;
INSERT INTO Herramientas VALUES(3, 'Mecanica', 'Rotamartillo', 'Mediana 15 n', 10250, 1, 5);
COMMIT;

UPDATE Herramientas SET TIPO=?, NOMBRE=?, TAMANO=?, PRECIO=?, CANTIDAD=?, EXISTANCIA=? WHERE ID=?;
COMMIT;

INSERT INTO Herramientas VALUES(1, 'Electrica', 'Taladro', 'XRE', 3500, 2, 5);
COMMIT;

DELETE FROM Herramientas WHERE ID = 4;
COMMIT;

SELECT * FROM Herramientas;

DROP TABLE Herramientas;

-----------------------------------------------------  EJERCICIO 2 30/05/2023 --------------------------------------------------------------------------------------

CREATE TABLE ZAPATERIA(
ID NUMBER PRIMARY KEY NOT NULL,
MARCA NVARCHAR2(20),
MODELO NVARCHAR2(20),
COLOR NVARCHAR2(20),
TAMANO NUMBER,
PRECIO NUMBER,
CANTIDAD NUMBER
);

INSERT INTO ZAPATERIA VALUES(1, 'COQUETA', 'ESCOLAR', 'CAFE', 21, 600, 2);
INSERT INTO ZAPATERIA VALUES(2, 'FELXI', 'FRANCES', 'NEGRO', 29, 1200, 1);
COMMIT;

UPDATE ZAPATERIA SET MARCA=?, MODELO=?, COLOR=?, TAMANO=?, PRECIO=?, CANTIDAD=? WHERE ID=?;
COMMIT;

DELETE FROM ZAPATERIA WHERE ID = 3;
COMMIT;

SELECT * FROM ZAPATERIA;

SELECT * FROM ZAPATERIA WHERE ID = 2;

DROP TABLE Herramientas;

 --------------------------------------------------------------- Ejercicio 3 -----------------------------------------
CREATE TABLE DEPARTAMENTOS(
ID NUMBER PRIMARY KEY NOT NULL,
NOMBRE NVARCHAR2(20),
SUELDO NUMBER,
DVACACIONES NUMBER
);

CREATE TABLE EMPLEADO(
ID NUMBER PRIMARY KEY NOT NULL,
NE NVARCHAR2(20),
EDAD NUMBER,
COMISIONES NUMBER,
ID_DEP NUMBER,
FOREIGN KEY(ID_DEP) REFERENCES DEPARTAMENTOS(ID) ON DELETE CASCADE
);
 
INSERT INTO DEPARTAMENTOS VALUES(1, 'VENTAS', 12000, 10);
COMMIT;
INSERT INTO DEPARTAMENTOS VALUES(3, 'TEST', 12000, 10);
COMMIT;

INSERT INTO EMPLEADO VALUES(1, 'JUAN', 25, 1500, 1);
COMMIT; 
INSERT INTO EMPLEADO VALUES(3, 'APA', 25, 1500, 1);
COMMIT; 

SELECT * FROM DEPARTAMENTOS;
SELECT * FROM EMPLEADO;

SELECT * FROM DEPARTAMENTOS WHERE ID = 1;
SELECT * FROM EMPLEADO WHERE ID = 2;
 
DELETE FROM DEPARTAMENTOS WHERE ID = 3;
COMMIT;
 
DELETE FROM EMPLEADO WHERE ID = 3;
COMMIT; 

UPDATE DEPARTAMENTOS SET NOMBRE=?, SUELDO=?, DVACACIONES=? WHERE ID=?;
COMMIT;

UPDATE EMPLEADO SET NE=?, EDAD=?, COMISIONES=?, ID_DEP=? WHERE ID=?;
COMMIT;

------------------------------------------------------- EJERCICIO 31/05/2023

CREATE TABLE EMPLEADOS_OX(
ID NUMBER PRIMARY KEY,
NOMBRE NVARCHAR2(50),
APP NVARCHAR2(50),
APM NVARCHAR2(50),
NSS NUMBER,
NUM_CEL NUMBER,
SUELDO NUMBER,
CORREO NVARCHAR2(50)
);

INSERT INTO EMPLEADOS_OX VALUES(2, 'PEDRO', 'MORENO', 'NAVA', 587874545, 88963258, 20000, 'pedro@gmail.com');
INSERT INTO EMPLEADOS_OX VALUES(3, 'LEON', 'GUTIERREZ', 'GUTIERREZ', 589562536, 32569852, 21000, 'leon@gmail.com');
INSERT INTO EMPLEADOS_OX VALUES(4, 'MARIA', 'DE LA ROSA', 'JUAREZ', 98896332, 7563689101, 15000, 'maria@gmail.com');
COMMIT;

INSERT INTO EMPLEADOS_OX VALUES(5, 'PEDRO', 'PEREZ', 'NAVA', 587874545, 88963258, 20000, 'pedro@gmail.com');
INSERT INTO EMPLEADOS_OX VALUES(6, 'PEDRO', 'GARCIA', 'NAVA', 587874545, 88963258, 20000, 'pedro@gmail.com');
COMMIT;

SELECT * FROM EMPLEADOS_OX;

-------------------------------------- EJERCICIO 1/06/2023

CREATE TABLE TRABAJADOR(
ID NUMBER PRIMARY KEY NOT NULL,
NOMBRE NVARCHAR2(20),
APS NVARCHAR2(20),
CEL NUMBER,
SALARIO NUMBER,
COMISIONES NUMBER
);

INSERT INTO TRABAJADOR VALUES(578, 'TONY', 'PEREZ', 2457896325, 2000,5800);
INSERT INTO TRABAJADOR VALUES(579, 'JAVIER', 'GUZMAN', 256314856, 2500,3600);
INSERT INTO TRABAJADOR VALUES(601, 'ANGIE', 'PEREZ', 7892101001, 2200,6000);
INSERT INTO TRABAJADOR VALUES(632, 'KARLA', 'SAMORANO', 2481755859, 2000,3400);
COMMIT;

SELECT * FROM TRABAJADOR;

DROP TABLE TRABAJADOR;


----------------------------------- EJERCICIO 06/06/2023

CREATE TABLE TRANSPORTE(
ID NVARCHAR2(50) PRIMARY KEY NOT NULL,
VEHICULO NVARCHAR2(50) NOT NULL,
NUM_ASIENTOS NUMBER NOT NULL,
COMBUSTIBLE NVARCHAR2(20) NOT NULL,
DISPONIBILIDAD NVARCHAR2(10)NOT NULL
);

DROP TABLE TRANSPORTE;
INSERT INTO TRANSPORTE VALUES('ASD0021', 'COMBI VW', 20, 'GASOLINA', 'SI');
COMMIT;

SELECT* FROM TRANSPORTE WHERE ID='ASD0021';

CREATE TABLE VIAJES(
ID NUMBER PRIMARY KEY NOT NULL,
ORIGEN NVARCHAR2(50) NOT NULL,
DESTINO NVARCHAR2(50) NOT NULL,
INICIO DATE NOT NULL,
FIN DATE NOT NULL,
PASAJEROS NUMBER NOT NULL,
COSTO NUMBER NOT NULL,
ID_VEHICULO NVARCHAR2(50) NOT NULL,
FOREIGN KEY(ID_VEHICULO) REFERENCES TRANSPORTE(ID) ON DELETE CASCADE
);

INSERT INTO VIAJES(ORIGEN, DESTINO, INICIO, FIN, PASAJEROS, COSTO, ID_VEHICULO) VALUES('PUEBLA', 'CUERNAVACA', '19/06/2023', '21/06/2023', 18, 6000, 'ASD0021' );
COMMIT;

SELECT * FROM VIAJES;

-- CREAR LA SECUENCIA
CREATE SEQUENCE SEC_VIAJES
START WITH 1
INCREMENT BY 1;

-- GENERAR EL TRIGGER
CREATE TRIGGER TRIGGER_VIAJES
BEFORE INSERT
ON VIAJES
FOR EACH ROW
BEGIN
    SELECT SEC_VIAJES.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

----------------------------------------------------- EJERCICIO 07/06/2023 -----------------------------------

CREATE TABLE JOBS(
ID NUMBER PRIMARY KEY NOT NULL,
NAME NVARCHAR2(255) NOT NULL,
SALARY NUMBER NOT NULL
);

INSERT INTO JOBS VALUES(1, 'DESPACHADOR', 15000);
INSERT INTO JOBS VALUES(2, 'CARGADOR', 8000);
COMMIT;

SELECT * FROM JOBS;

CREATE TABLE GENDERS(
ID NUMBER PRIMARY KEY NOT NULL,
NAME NVARCHAR2(255) NOT NULL
);

INSERT INTO GENDERS VALUES(1,'HOMBRE');
INSERT INTO GENDERS VALUES(2,'MUJER');
COMMIT;

SELECT * FROM GENDERS;

CREATE TABLE EMPLOYEES(
ID NUMBER PRIMARY KEY NOT NULL,
GENDER_ID NUMBER NOT NULL,
JOB_ID NUMBER NOT NULL,
NAME NVARCHAR2(255) NOT NULL,
LAST_NAME NVARCHAR2(255) NOT NULL,
BIRTHDATE DATE NOT NULL,
FOREIGN KEY(GENDER_ID) REFERENCES GENDERS(ID) ON DELETE CASCADE,
FOREIGN KEY(JOB_ID) REFERENCES JOBS(ID) ON DELETE CASCADE
);

INSERT INTO EMPLOYEES VALUES(1, 1, 2, 'JUAN', 'PEREZ', '25-08-1992');
INSERT INTO EMPLOYEES VALUES(2, 2, 1, 'ANITA', 'MARTINEZ', '02-02-1996');
COMMIT;

SELECT * FROM EMPLOYEES;

CREATE TABLE EMPLOYEE_WORKED_HOURS(
ID NUMBER PRIMARY KEY NOT NULL,
EMPLOYEE_ID NUMBER NOT NULL,
WORKED_HOURS NUMBER NOT NULL,
WORKED_DATE DATE NOT NULL,
FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEES(ID) ON DELETE CASCADE
);

INSERT INTO EMPLOYEE_WORKED_HOURS VALUES(1, 1, 8, '07-06-2023');
INSERT INTO EMPLOYEE_WORKED_HOURS VALUES(2, 2, 10, '07-06-2023');
COMMIT;

SELECT * FROM EMPLOYEE_WORKED_HOURS;


--------------------------------------------------------------- EJERCICIO 12-06-23 -- CONTACTO ----------------

CREATE TABLE CONTACTO(
ID NUMBER PRIMARY KEY NOT NULL,
NOMBRE NVARCHAR2(50) NOT NULL,
APS NVARCHAR2(50) NOT NULL,
FECHA DATE NOT NULL,
CORREO NVARCHAR2(50) NOT NULL,
COMENTARIO NVARCHAR2(250) NOT NULL
);

INSERT INTO CONTACTO(NOMBRE, APS, FECHA, CORREO, COMENTARIO) VALUES('ANDRE', 'CUEVAS', '19/06/2023', 'andrea@gmail.com', 'SOLICITUD DE INFORMACION DE PUESTO');
INSERT INTO CONTACTO(NOMBRE, APS, FECHA, CORREO, COMENTARIO) VALUES('JAVIER', 'MARTINEZ', '20/06/2023', 'javivi@gmail.com', 'INFO');
COMMIT;

SELECT * FROM CONTACTO;

-- CREAR LA SECUENCIA
CREATE SEQUENCE SEC_CONTACTO
START WITH 1
INCREMENT BY 1;

-- GENERAR EL TRIGGER
CREATE TRIGGER TRIGGER_CONTACTO
BEFORE INSERT
ON CONTACTO
FOR EACH ROW
BEGIN
    SELECT SEC_CONTACTO.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

