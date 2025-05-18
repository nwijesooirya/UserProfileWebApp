# StockHive

StockHive is a Java Servlet-based web application that allows users to register, log in, and manage their user profiles. Built with Java EE technologies, it follows a simple MVC architecture and connects to a MySQL database for data persistence.

## 🚀 Features

- User Registration with form validation  
- Secure Login Authentication  
- Display of user profile data (Full name, Date of Birth, Gender, Role, etc.)
- Profile image path storage (no image blobs)
- Responsive UI with transparent forms and styled background

## 🛠 Technologies Used

- Java Servlet (JSP + Servlet API)
- JDBC (MySQL)
- HTML, CSS
- Apache Tomcat 9
- Eclipse IDE (Enterprise Edition)

## 📁 Project Structure

The project follows a basic MVC structure:

```
/src
  └── com.profile
       ├── model/
       ├── controller/
       └── util/
       
/WebContent
  ├── css/
  ├── images/
  ├── jsp/
  └── index.jsp
```

## 🧾 Form Fields (User Registration)

- First Name  
- Last Name  
- Email  
- Password & Confirm Password  
- Date of Birth  
- Gender (Radio Buttons)  
- Role (Dropdown)  

## 🗃 Database Structure

The app connects to a MySQL database named `stock_management` and uses a `user` table with the following schema:

- `user_id` (Primary key)  
- `first_name`  
- `last_name`  
- `email`  
- `password`  
- `dob`  
- `gender`  
- `role`  
- `profile_image_path` (Stores image path as a string)

## 🔧 Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/nwijesooirya/UserProfileWebApp.git
   ```

2. **Import into Eclipse IDE:**
   - As a Maven project or Dynamic Web Project (Java EE).

3. **Set up the database:**
   - Create a MySQL database `stock_management` and a `user` table with the fields listed above.
   - Update database credentials in `ConnectDB.java`:
     ```java
     private static String url = "jdbc:mysql://localhost:3306/stock_management";
     private static String user = "root";
     private static String pass = "your_password_here";
     ```

4. **Run the project:**
   - Deploy the project on Apache Tomcat (v9 or later) using Eclipse.

## 💡 Notes

- The profile page shows the full name by combining first and last names.
- Password confirmation is checked in the backend but not stored.
- Profile image is not uploaded to the database; only the path is stored.
- The background image is dimmed using a 60% opacity overlay.

## 📌 To-Do / Future Improvements

- Enable actual image upload functionality  
- Add session tracking and logout  
- Improve frontend design and responsiveness  
- Implement client-side form validation  
- Show success/error messages after login/signup  

## 📄 License

This project is free to use for learning and experimentation purposes. Licensing terms will be finalized in the production version.
