


# Project Automation Scripts

This directory contains scripts designed to automate the creation of project structures, making it easier to set up and organize your development environment. These scripts help you quickly scaffold new projects with pre-defined directory structures, saving time and effort.

## 🚀 Available Scripts

### 1. **`pyproj.sh`** - Python Project Structure Automation
The `pyproj.sh` script automates the creation of a Python project structure, organizing your project with essential directories and files.

#### Features:
- Creates the following directories:
  - `app/routers`, `app/schemas`, `app/services`, `app/repositories`, `app/models`, `app/middleware`, `app/utils`, `app/config`
  - `tests`, `migrations`, and `docs`
- Adds `__init__.py` files to make directories Python packages.
- Creates a `README.md` file for project documentation.
- Ideal for Python frameworks like FastAPI, Flask, or Django.
- Organizes your project in a standard, easily customizable way.

#### Usage:

1. Clone the repository (if you haven’t already):
   ```bash
   git clone https://github.com/your-username/dev-utils.git
   cd dev-utils
   ```

2. Make the script executable:
   ```bash
   chmod +x project_automation/pyproj.sh
   ```

3. Run the script with your project name as an argument:
   ```bash
   ./project_automation/pyproj.sh my_python_project
   ```

   This will create a directory called `my_python_project` with the following structure:
   ```
   my_python_project/
   ├── app/
   │   ├── routers/
   │   ├── schemas/
   │   ├── services/
   │   ├── repositories/
   │   ├── models/
   │   ├── middleware/
   │   ├── utils/
   │   └── config/
   ├── migrations/
   ├── tests/
   ├── docs/
   └── README.md
   ```

4. The script also creates an `__init__.py` file in each of the subdirectories inside `app/` to make them Python packages, and adds a basic `README.md` file in the root project directory.

#### Example:

If you run:
```bash
./project_automation/pyproj.sh my_new_project
```

It will generate the following structure:
```
my_new_project/
├── app/
│   ├── routers/
│   ├── schemas/
│   ├── services/
│   ├── repositories/
│   ├── models/
│   ├── middleware/
│   ├── utils/
│   └── config/
├── migrations/
├── tests/
├── docs/
└── README.md
```

#### Customization:
- You can modify the script to add or remove directories, depending on the requirements of your project.
- The script can be adapted to suit specific frameworks or project setups by editing the `pyproj.sh` script.

#### Requirements:
- This script should work on both **Linux** and **macOS** systems.
- Make sure you have `bash` installed (which is the default shell on most Linux and macOS systems).

---

### 2. **`sqlproj.sh`** *(Coming Soon)* - SQL Project Structure Automation
The `sqlproj.sh` script will automate the creation of SQL project structures, helping you organize your database schemas, queries, and migrations.

#### Planned Features:
- Create directories for `schemas`, `queries`, `migrations`, and `seeds`.
- Organize SQL files by categories, such as `dml`, `ddl`, `views`, etc.
- Add placeholders for migration scripts and configuration files.
  
More details will be available once the script is completed.

#### Usage (Planned):
1. Clone the repository (if you haven’t already):
   ```bash
   git clone https://github.com/your-username/dev-utils.git
   cd dev-utils
   ```

2. Make the script executable:
   ```bash
   chmod +x project_automation/sqlproj.sh
   ```

3. Run the script with your project name as an argument:
   ```bash
   ./project_automation/sqlproj.sh my_sql_project
   ```

#### Resulting Directory Structure (Planned):
```
my_sql_project/
├── schemas/
│   ├── tables/
│   ├── views/
│   └── functions/
├── queries/
├── migrations/
└── seeds/
```

---

## 🛠️ Customizing the Scripts
Both scripts are designed to be easily customizable:
- You can modify the directories created or adjust the naming conventions to fit your project's needs.
- The scripts are written in bash, so you can easily update or extend them by editing the shell commands inside the script files.

## 🌟 Contribute and Feedback
Feel free to fork the repository, contribute improvements, or suggest new features. If you encounter any issues or have suggestions, please submit them via the [GitHub Issues page](https://github.com/your-username/dev-utils/issues).

---

## 📜 License
This project is licensed under the [MIT License](../LICENSE).


---

