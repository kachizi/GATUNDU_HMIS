# GATUNDU_HMIS
Gatundu Hospital Management System
BY: PESSY
## I) Using XAMPP Control Panel
# XAMPP Control Panel Usage Guide
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


## II) Importing gatunduhmisdatabase to http://localhost/phpmyadmin/
# How to Import a Database in phpMyAdmin

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


![phpmyadmin](https://github.com/user-attachments/assets/df5c1637-b58c-42d3-b60d-52b772ee304e)


# III) Now you can see the signing page of Gatundu, when you use 'http://localhost/GATUNDU_HMIS/GATUNDU_HMIS/' as the url

![image](https://github.com/user-attachments/assets/54d89799-9b1c-4da5-bbde-b222cb291b7f)

after signing in as admin
![Screenshot 2025-01-08 084313](https://github.com/user-attachments/assets/1609402a-a96f-42de-aa75-83eef898e8fd)

