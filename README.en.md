[🇫🇷 Français](README.md) | [🇬🇧 English](README.en.md)

# ☕ Kofeo – Online Coffee Store

Welcome to **Kofeo**, an online store dedicated to the world of coffee:
coffee machines, beans, capsules, and accessories. This project is a **complete e-commerce website** developed with **Spring Boot (backend)** and **React (frontend)**, simulating the user experience of a real online store.

---

## 📍 Main Features

* **Home**: presentation of the brand and featured categories.
* **Catalog**: browsing by categories (machines, capsules, beans, accessories).
* **Shopping Cart**: adding, removing, and updating products.
* **Simulated Payment**: delivery and payment forms (no real payment is processed).
* **Product Reviews**: users can leave a review only after a validated purchase.
* **Website Reviews**: users are invited to rate their experience after confirming an order.
* **User Profile**: management of personal information and order tracking.
* **Authentication**: secure registration and login.

---

## 🖥️ Project Preview

### 🏠 Home Page

![Home](https://drive.google.com/uc?id=1wj3VSpzVuDId8lzSXPB_Hu8z2f225UeS)

### 🔐 Authentication

![Authentication Choice](https://drive.google.com/uc?id=1etlGNz4NXJjzc8c5zncW1xh_thMQb13T)
![Login](https://drive.google.com/uc?id=1oc3KplNsnwD6XoCRaM4QXW04kfMz42Xc)
![Registration](https://drive.google.com/uc?id=1vowVuwZlqk9ctQRx-Y9u-vyQdHW3hqLw)

### 🛍️ Catalog & Products

![Catalog](https://drive.google.com/uc?id=1Rqa2OtZbLbA_oWAf9qTeXB4iU1ommOoW)
![Product](https://drive.google.com/uc?id=1M9nvWRSz3khMfOpzuZCjS0vQ7BxdDXVA)

### 🛒 Shopping Cart

![Empty Cart](https://drive.google.com/uc?id=1M6oWTGO4IEMrVu66UJzQNOlZ4EphMmxI)
![Full Cart](https://drive.google.com/uc?id=1amxSSvpy6o7YPRp8qtDwzVa6F5L6-62l)

### 💳 Payment

![Delivery Address](https://drive.google.com/uc?id=1w2KqM_8HAIObFJVoi_QIoT_Sc0U5EPDV)
![Payment Form](https://drive.google.com/uc?id=1Ryu4jOENF0BI7jR0mUB5S3ssGtcfMyT1)

### 📦 Order Confirmation

![Confirmation](https://drive.google.com/uc?id=1ITJEL4--F39rn1Q906a-l_yGroa443ST)

### ⭐ Reviews

![Written Review](https://drive.google.com/uc?id=1AA-4C5ozxvHuoevdzwEWF8VSuRx6rQwm)
![Review Display](https://drive.google.com/uc?id=17MOcz5Hwe0s0KUojsDU8CTuHTlf0Y6rs)

### 👤 User Profile

![Profile](https://drive.google.com/uc?id=1EuNGgNl4PvzIcJBfYrmR95kcSb23AV-r)

---

## 🔧 Technologies Used

* **Backend**: Spring Boot (REST API, management of entities: customers, products, orders, reviews)
* **Frontend**: React (SPA, modular components, Context API for state management)
* **Database**: MySQL (products, users, orders, reviews)
* **Architecture**: clear separation between frontend and backend through a REST API

---

## 👥 Team

This project was developed as a team project by:

* 👩‍💻 [Safaa Mounkid](https://github.com/SafaaM1234)
* 👨‍💻 [Marwa Maqsousi](https://github.com/Marwa-Maqsousi)

---

## 📂 Full Project Access

The project is also available on Google Drive:
👉 [Access the complete project](https://drive.google.com/uc?export=download&id=1olFv2bevJfNfbICweKj2APibXSm-3jcI)

---

## ⚙️ Installation

### Prerequisites

Before running the project, make sure you have installed:

* **Java JDK**
* **Maven**
* **Node.js and npm**
* **MySQL**
* **Git**

### 1. Clone the Repository

Clone the repository:

```bash
git clone https://github.com/SafaaM1234/estore-kofeo.git
```

Navigate to the project directory:

```bash
cd estore-kofeo
```

### 2. Frontend Installation

Navigate to the frontend directory:

```bash
cd estore_frontend
```

Install the dependencies:

```bash
npm install
```

Start the React application:

```bash
npm start
```

The frontend should normally be available at:

```text
http://localhost:3000
```

### 3. Backend Installation

Open the `estore_backend` project with **IntelliJ IDEA** or another Java-compatible IDE.

Make sure that:

* Java JDK is installed.
* Maven is available.
* MySQL is installed and running.
* The database configuration is correctly defined.

Configure the MySQL database according to the Spring Boot project configuration.

Then, start the Spring Boot application.

The backend should normally be available at:

```text
http://localhost:8080
```

### 4. Database Setup

Kofeo uses a MySQL database to store product information, categories, inventory, user accounts, shopping carts, orders, profiles, and reviews.

#### ▣ Requirements
- MySQL 8.0 or later
- phpMyAdmin (optional, for easier database management)

#### ▣ Installation

1. Start MySQL using your local environment (e.g., WampServer).
2. Open phpMyAdmin at `http://localhost/phpmyadmin`.
3. Create a database named `estore`.
4. Select the `estore` database and open the **Import** tab.
5. Import the SQL file located at `database/estore_kofeo.sql`.

#### ▣ Database Configuration

Configure your database connection in the Spring Boot backend using your local MySQL credentials. Keep your credentials in a local configuration file or environment variables and do not commit private credentials to GitHub.

The SQL dump includes the database schema and sample data for demonstration purposes.
