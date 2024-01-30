DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
);

CREATE TABLE illnesses (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    symptoms TEXT,
    treatments TEXT
);

CREATE TABLE doctor_to_patient(
    id SERIAL PRIMARY KEY,
    doc_id INTEGER REFERENCES doctors(id) NOT NULL ON DELETE CASCADE
    patient_id INTEGER REFERENCES patients(id) NOT NULL ON DELETE CASCADE
);


CREATE TABLE diagnoses (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(id) NOT NULL,
    illness_id INTEGER REFERENCES illnesses(id) NOT NULL
);