# GATUNDU_HMIS
Gatundu Hospital Management System
BY: PESSY
## I) Using XAMPP Control Panel
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

## II) Importing gatunduhmisdatabase to http://localhost/phpmyadmin/
# How to Import a Database in phpMyAdmin

## Introduction

phpMyAdmin is a popular tool for managing MySQL databases through a web interface. One of its key features is the ability to import databases in a variety of formats, such as `.sql`, `.csv`, `.xml`, and more. This guide will walk you through the process of importing a database into phpMyAdmin.

## Prerequisites

- You need to have phpMyAdmin installed and running. It typically comes with software like XAMPP or WAMP.
- You need access to the phpMyAdmin interface (usually available at `http://localhost/phpmyadmin`).
- The database file you want to import, typically with a `.sql` extension, but it can also be in `.csv` or `.xml` format.

## Steps to Import a Database into phpMyAdmin

### 1. Open phpMyAdmin

1. Open your web browser and navigate to your phpMyAdmin interface. By default, this can be accessed at:
   - `http://localhost/phpmyadmin` (if you're using XAMPP or WAMP locally).

2. Log in with your MySQL username and password. The default credentials are often:
   - **Username**: `root`
   - **Password**: (leave blank for XAMPP/WAMP default)

### 2. Select the Database

If you want to import the database into an existing database:
1. On the left sidebar, click on the name of the database you want to import your data into. If the database does not exist, you'll need to create it first (see step below).

If you need to **create a new database**:
1. On the home screen of phpMyAdmin, look for the "Databases" tab.
2. Enter the name of the new database in the "Create database" field and click the "Create" button.

### 3. Import the Database File

1. With your target database selected (or newly created), go to the **"Import"** tab located at the top of the page.
2. In the "File to import" section, click the **"Choose File"** button and select the database file you want to import. This can be an `.sql`, `.csv`, or `.xml` file (most commonly `.sql` for full database exports).
3. Under the "Format" section, ensure that the file type is correctly set (typically, it should auto-detect as `.sql`).
4. Optionally, configure the other import settings (like `Partial Import`, `Character Set of the file`, etc.), but the defaults should work for most cases.

### 4. Start the Import

1. After selecting your file and adjusting settings, click the **"Go"** button to begin the import process.

2. phpMyAdmin will process the file and import the data into your selected database. If the file is large, the import may take a few minutes. 

3. Once the import is complete, you will see a confirmation message stating the number of queries executed. You can now view the tables and data in the **Structure** and **Browse** tabs.

### 5. Verify the Imported Data

After the import, verify that the tables and data have been successfully added to your database:
1. Click on the **"Structure"** tab to see a list of the tables in the database.
2. Click on the **"Browse"** tab to view the data in the tables you just imported.

### Troubleshooting

- **File Too Large**: If you encounter the error message **"File is too large"**, this may be due to the PHP configuration limiting the file upload size. You can adjust the `upload_max_filesize` and `post_max_size` settings in the `php.ini` file (usually found in the XAMPP or WAMP installation folder). Alternatively, you can split the large `.sql` file into smaller parts and import them one by one.
- **Timeouts**: Large files might also cause timeouts. If you're running into a timeout error, consider increasing the `max_execution_time` in your `php.ini` file.
- **SQL Errors**: If the database contains errors during import, phpMyAdmin will display error messages. Carefully check the error log to identify and resolve the issue.

## Conclusion

You have successfully imported a database into phpMyAdmin. If you encounter any issues during the import process, review the error messages for possible causes, or consult phpMyAdmin’s documentation for more detailed troubleshooting.

## Additional Resources

- [phpMyAdmin Documentation](https://docs.phpmyadmin.net)
- [MySQL Official Documentation](https://dev.mysql.com/doc/)

![phpmyadmin](https://github.com/user-attachments/assets/df5c1637-b58c-42d3-b60d-52b772ee304e)


## III) Now you can see the signing page of Gatundu, when you use 'http://localhost/GATUNDU_HMIS/GATUNDU_HMIS/' as the url

![image](https://github.com/user-attachments/assets/54d89799-9b1c-4da5-bbde-b222cb291b7f)
