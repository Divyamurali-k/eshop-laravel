# eShop

Welcome to the **eShop** project! This comprehensive Laravel-based web application is designed to provide you with practical experience in building a fully functional online store. Whether you're a beginner looking to learn Laravel or an experienced developer aiming to brush up on your skills, this project will help you master the fundamentals and advanced features of Laravel through hands-on experience.

## Key Features

-   **Product Management**:
    -   Admins can easily add, update, and delete products.
-   **User Authentication**:
    -   Secure registration, login, and profile management for users.
-   **Shopping Cart**:
    -   Users can add items to their cart, adjust quantities, and proceed to checkout.
-   **Responsive Design**:
    -   A user-friendly interface that works seamlessly on both desktop and mobile devices.

## Technology Stack

-   **Laravel Framework**: 9.52.16
-   **PHP**: 8.0.30
-   **Composer**: 2.7.4
-   **Node.js**: v16.13.0
-   **npm**: 8.12.1

## Getting Started

To get started with the eShop application, follow these steps:

### Prerequisites

Ensure you have the following installed on your machine:

-   PHP (>= 8.0.30)
-   Composer (>= 2.7.4)
-   Node.js (>= v16.13.0)
-   npm (>= 8.12.1)

### Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/Divyamurali-k/eshop-laravel.git
    cd eshop-laravel

    ```

2. **Install PHP Dependencies:**
    ```bash
    composer install
    ```
3. **Set Up Environment File:**
  - Copy the .env.example file to .env and configure your environment variables:

    ```bash
    cp .env.example .env
    ```
4. **Configure Database:**
  - Open the .env file and set your database connection details:

    ```bash
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=your_database_name
    DB_USERNAME=your_database_user
    DB_PASSWORD=your_database_password

    ```
5. **Generate Application Key:**
    ```bash
    php artisan key:generate
    ```
6. **Import the Database:**
  - Import the database from the provided SQL file:
        1.Locate the SQL file in the dalatabe folder: database/laravel_eshop.sql.
        2.Import it into your MySQL database. You can use a tool like phpMyAdmin 
7. **Install Node.js Dependencies:**
    ```bash
    npm install
    ```
8. **Build Assets:**
    ```bash
    npm run dev
    ```
9. **Start the Development Server:**
    ```bash
    php artisan serve
    ```
- The application will be accessible at http://localhost:8000.

**Admin Access**
- To access the admin panel, use the following credentials:
    Username: admin@admin.com
    Password: admin@123



