CREATE TABLE PROVIDERS (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE JOBS (
  id INT AUTO_INCREMENT PRIMARY KEY,
  provider_id INT,
  FOREIGN KEY (provider_id) REFERENCES providers(id)
);

CREATE TABLE CONTAINERS (
  id INT PRIMARY KEY
);

CREATE TABLE JOBCONTAINER (
  job_id INT,
  container_id INT,
  FOREIGN KEY (job_id) REFERENCES jobs(id),
  FOREIGN KEY (container_id) REFERENCES containers(id)
);