# Tournaments Project Hosting Setup on Hostinger

## Prerequisites

Before you begin, ensure you have the following:
- A Hostinger account
- Domain name configured
- SSH password (credentials)

## Step 1: Upload Project Files SSH VIA

1. Log in to your Hostinger account.
2. Navigate to the **Hosting** section and click **Manage** 
<br>
![](./assets//manage.png)
3. On the left menu, click **Advanced**
<br>
![](./assets//Advanced.png)
4. Click **SSH Acess**
<br>
![](./assets//SSHAcess.png)
-SSH (Secure Shell) is a protocol used to securely connect to a remote computer or server over a network. It provides encrypted communication for tasks such as command-line access, file transfers, and remote administration.

5. Under **SSH Status** click **Enable** and wait a moment until it turns on
<br>
![](./assets//Enable.png)
6. If you are **NOT** on **Windows** you can **skip** this step. If you are on **Windows** bruh... you are not cooking,
Follow this:
[Tutorial to setup SSH for windows terminal](https://youtu.be/3hbJZZ4c1io?si=QaRciN6AZXDJHc6a)
7. **Log in to SSH**, copy the **SSH** credentials into this section
<br>
![](./assets//copySSH.png)
8. Open a **Terminal** and paste the **command** recently copied. You will be asked for Hostinger SSH Access  **password**. **Input** the **corresponding** password
You should now be connected to the Hostinger server terminal 
<br>
![](./assets//terminal1.png)
9. Navigate to `public_html`.
- `cd domains`
-  `cd yourdomain.com`
- `cd public_html`
10. Run: `git clone https://github.com/StarEngineer89/ci_tournament_bracket-generator` **Output**: 
<br>
![](./assets//terminal2.png)
This means **Repository** is under **Hostinger's File Manager**.

## Step 2: First part project Setup

1. **Navigate** to the repo directory `cd ci_tournament_bracket-generator/`

2. **Run** `composer update`

3. **Rename** env to .env `mv env .env`

4. Verify it was **successfully**  renamed `ls -a` if you can see your `.env` file then it did.

## Step 3: Configure the Database

1. Go back to your **Hostinger Host Manager** 
2. In the left menu, click **Databases**
<br>
![](./assets//Databases.png)
3. Click **Management**
<br>
![](./assets//dbManagement.png)
4. Create **database**
<br>
![](./assets//createdb.png)
5. Click **Enter phpMyAdmin**
<br>
![](./assets//phpMyAdmin.png)
6. Click **Import**
<br>
![](./assets//Import.png)
7. Download [Tournaments Project Database](./database/sampleNameDB.sql)
8. Choose **.sql database** previously downloaded
<br>
![](./assets//Choose.png)
9. Leave everything as **default** and click **Import**
<br>
![](./assets//import2.png)
10. Go to **Overview** in **Hostinger** and click **File Manager** 
<br>
![](./assets//fileManager.png)
11. Open **public_html**
<br>
![](./assets//public_html.png)
12. Open **ci_tournament_bracket-generator**
<br>
![](./assets//project.png)
13. Open **.env**
<br>
![](./assets//env.png)
14. Uncomment `CI_ENVIRONMENT = production` and comment ` CI_ENVIRONMENT = development`
<br>
![](./assets//environment.png)
15. Type your app baseURL as a string: `'http://example.com/'`
<br>
![](./assets//baseURL.png)
16. **Fill out** database information
- hostname: Hostinger's hostname is **localhost**
- database: **yourdatabasename**
- username: **yourusername**
- password: **yourpassword**
- **Leave** everything else as default
<br>
![](./assets//dbinfo.png)
17. **Save** and **Close**
<br>
![](./assets//save.png)

## Step 4: Second part project Setup

1. **Open** terminal again, remember we are connected to Hostinger Terminal SSH VIA. 
<br>
![](./assets//terminal1.png)

2. **Ensure** you are located **in** project **directory**
<br>
![](./assets//terminal3.png)

3. Run `pwd`
4. Copy the full path to your **directory**
5. Create **Symbolic Link**: `ln -s /path/to/your/directory/ci_tournament_bracket-generator/writable/uploads /path/to/your/directory/ci_tournament_bracket-generator/public/uploads`
6. Run `pwd` once again and save the whole `ci_tournament_bracket-generator` path
7. Run `exit` to quit **SSH** communication
8. Go back to Hostinger Overview, on the left menu click **Advanced**
<br>
![](./assets//Advanced.png)
9. Click **Cron Jobs**
<br>
![](./assets//crob.png)
10. Click **Custom**
<br>
![](./assets//custom.png)
11. **Fill** out data
- Command to run: `/usr/bin/php /home/YOURuser/domains/YOURdomain/public_html/ci_tournament_bracket-generator/spark task:run`
<br>
![](./assets//customCronJob.png)
- Leave the rest as shown and click **Save**

## Conclusion

Your Tournaments project should now be set up and running on Hostinger. For further assistance, refer to Hostinger's [Knowledge Base](https://www.hostinger.com/tutorials/).
