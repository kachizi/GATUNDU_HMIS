# GATUNDU_HMIS
Gatundu Hospital Management System
BY: PESSY

# XAMPP Control Panel Usage Guide

## Introduction

XAMPP is a free and open-source cross-platform web server solution stack package. It includes Apache, MySQL, PHP, and Perl. The XAMPP Control Panel is a graphical user interface (GUI) that allows you to easily manage the services such as Apache, MySQL, FileZilla, and others provided by the XAMPP stack.

This guide will help you get started with XAMPP and explain how to use the XAMPP Control Panel effectively.

## Prerequisites

- XAMPP must be installed on your system. You can download it from [https://www.apachefriends.org/index.html](https://www.apachefriends.org/index.html).
- Basic knowledge of web servers (Apache, MySQL) and databases (MySQL).

## Installation

1. **Download XAMPP**: Go to the official [XAMPP download page](https://www.apachefriends.org/index.html) and choose the correct version for your operating system (Windows, macOS, or Linux).
2. **Install XAMPP**: Run the downloaded installer and follow the installation prompts.
3. **Launch the XAMPP Control Panel**: After installation, open the XAMPP Control Panel. On Windows, you can find it by searching for "XAMPP Control Panel" in the Start menu.

## Using the XAMPP Control Panel

Once you've opened the XAMPP Control Panel, you'll see several buttons for controlling the different services.

### 1. Starting Apache and MySQL

To run a local web server and MySQL database server, you need to start both Apache and MySQL:

- **Start Apache**: 
  - Click the "Start" button next to **Apache**. If successful, the status will change to **Running** and you should be able to access `http://localhost/` in your web browser.
- **Start MySQL**: 
  - Click the "Start" button next to **MySQL**. If successful, its status will change to **Running**, allowing you to access your local MySQL database.
 
    ![xaamp control panel](https://github.com/user-attachments/assets/cda0da64-726f-4c20-82f5-de834115d4e4)


### 2. Configuring XAMPP

If you want to configure the services, you can use the following options:

- **Config**: Click the "Config" button next to each service (Apache, MySQL, etc.) to access configuration files. Commonly used config files include `httpd.conf` for Apache and `my.ini` for MySQL.
- **Logs**: The "Logs" button opens logs for the respective services. This is useful for troubleshooting if something isn't working correctly.

### 3. Stopping Services

To stop any running service, click the "Stop" button next to the service:

- Click "Stop" next to **Apache** to stop the web server.
- Click "Stop" next to **MySQL** to stop the database server.

### 4. Additional Features

- **Shell**: The "Shell" button opens a command-line interface where you can run commands directly on your XAMPP setup.
- **Explorer**: The "Explorer" button opens the XAMPP installation directory where you can find your web files in the `htdocs` folder and MySQL database files.
- **Netstat**: The "Netstat" button allows you to view the network ports being used by the services.

### 5. Troubleshooting

If you encounter issues such as a service not starting, here are a few things to check:

- **Port Conflicts**: XAMPP's Apache web server uses port 80 by default, and MySQL uses port 3306. If these ports are already being used by another application, you will need to either stop the other application or change the ports XAMPP uses.
- **Firewall/Antivirus**: Make sure your firewall or antivirus software is not blocking Apache or MySQL. You may need to allow access for these services.

### 6. Stopping XAMPP

When you are done, you can completely stop all services by clicking "Stop" on all active services. Then, simply close the XAMPP Control Panel.

## File Locations

- **Apache Web Root**: `C:\xampp\htdocs\`
  - This is the folder where you can store your website files.
- **MySQL Data Folder**: `C:\xampp\mysql\data\`
  - This folder contains your MySQL database files.

## Conclusion

The XAMPP Control Panel is an easy way to manage the services that power your local web server. By following the steps above, you should be able to start, stop, and configure Apache, MySQL, and other services effectively.

If you run into any issues, refer to the XAMPP [documentation](https://www.apachefriends.org/support.html) or consult the XAMPP user community for further assistance.
