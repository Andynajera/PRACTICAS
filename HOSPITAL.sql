--CREACI�N TABLAS Y RELACIONES--

CREATE TABLE MEDICOS (
    ID_MEDICO number(5) CONSTRAINT PK_ID_MEDICO PRIMARY KEY,
    NOMBRE_MEDICO varchar(20),
    APELLIDOS_MEDICO varchar(20),
    EMAIL_MEDICO varchar(50),
    DNI char(9)
    );
    
CREATE TABLE INGRESOS (
    ID_INGRESO number(5)CONSTRAINT PK_ID_INGRESO PRIMARY KEY,
    FECHA_DE_INGRESO date
);

CREATE TABLE PACIENTES (
    ID_PACIENTE number(5) CONSTRAINT PK_ID_PACIENTE PRIMARY KEY,
    NOMBRE_PACIENTE varchar(20),
    APELLIDOS_PACIENTE varchar(20),
    DNI char(9)
);

CREATE TABLE HABITACIONES(
    ID_HABITACION number(5) CONSTRAINT PK_ID_HABITACION PRIMARY KEY,
    NUMERO_HABITACION number(5),
    NUMERO_CAMAS number(3) 
);

CREATE TABLE ESPECIALIDADES(
    ID_ESPECIALIDAD number(5) CONSTRAINT PK_ID_ESPECIALIDAD PRIMARY KEY,
    NOMBRE_ESPECIALIDAD varchar(20),
    JEFE_ESPECIALIDAD varchar(50)
);



ALTER TABLE INGRESOS ADD(
    ID_MEDICO number(5) CONSTRAINT FK_ID_MEDICO REFERENCES MEDICOS(ID_MEDICO),
    ID_PACIENTE number(5) CONSTRAINT FK_ID_PACIENTE REFERENCES PACIENTES(ID_PACIENTE),
    ID_HABITACION number(5) CONSTRAINT FK_ID_HABITACION REFERENCES HABITACIONES(ID_HABITACION)
);

ALTER TABLE ESPECIALIDADES ADD(
    ID_MEDICO number(5) CONSTRAINT FK_ID_MEDICO_ESPECIALIDAD REFERENCES MEDICOS(ID_MEDICO)
);