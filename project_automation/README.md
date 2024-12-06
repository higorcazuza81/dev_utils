


# Project Automation Scripts

This directory contains scripts designed to automate the creation of project structures, making it easier to set up and organize your development environment. These scripts help you quickly scaffold new projects with pre-defined directory structures, saving time and effort.

## Available Scripts

### 1. **`pyproj.sh`** - Python Project Structure Automation

The **`pyproj.sh`** script automates the creation of Python project structures, saving time and providing a clean, scalable, and standardized organization for your projects. Whether you're using **FastAPI**, **Flask**, or **Django**, this tool adapts to your needs.

---

## **Features**

- Creates a complete project structure, including the following directories:
  ```
  app/
  ├── routers/
  ├── schemas/
  ├── services/
  ├── repositories/
  ├── models/
  ├── middleware/
  ├── utils/
  └── config/
  migrations/
  tests/
  docs/
  ```
- Adds `__init__.py` files to make directories Python packages.
- Generates a `README.md` file for basic project documentation.
- Works out-of-the-box for common Python frameworks.
- Fully customizable for unique project requirements.

---

## **Installation**

### **Option 1: Run Directly from the Cloned Repository**

1. Clone the repository:
   ```bash
   git clone https://github.com/higorcazuza81/dev-utils.git
   cd dev-utils
   ```
2. Make the script executable:
   ```bash
   chmod +x project_automation/pyproj.sh
   ```
3. Run the script:
   ```bash
   ./project_automation/pyproj.sh <project_name>
   ```

### **Option 2: Install for Global Access**

To simplify usage and allow running the script from anywhere:

1. **Move the script to a custom `bin` directory**:
   ```bash
   mkdir -p ~/bin
   cp project_automation/pyproj.sh ~/bin/
   ```
2. **Make the script executable**:
   ```bash
   chmod +x ~/bin/pyproj.sh
   ```
3. **Add `bin` to your PATH**:
   - Open your shell configuration file (`~/.zshrc` or `~/.bashrc`).
   - Add this line:
     ```bash
     export PATH="$HOME/bin:$PATH"
     ```
   - Apply the changes:
     ```bash
     source ~/.zshrc
     ```

4. Rename for convenience (optional):
   ```bash
   mv ~/bin/pyproj.sh ~/bin/pyproj
   ```

Now you can run:
```bash
pyproj <project_name>
```

---

## **Usage**

### **Command**
Run the script with your desired project name:
```bash
pyproj <project_name>
```

### **Example**
```bash
pyproj my_project
```

This will create the following structure:
```
my_project/
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

---

## **Customization**

The script is fully customizable. Edit the `pyproj.sh` file to:
- Add/remove directories.
- Create additional files, like `.gitignore`, `setup.py`, or environment configuration files.
- Adapt the structure for specific frameworks or workflows.

Example: Add a `.gitignore` file or a `main.py` for FastAPI.

---

## **Troubleshooting**

1. **Script not found**:  
   Ensure the `bin` directory is in your PATH:
   ```bash
   echo $PATH
   ```
   If not, recheck your shell configuration file and restart the terminal.

2. **Permission issues**:  
   If you see a "Permission Denied" error, ensure the script is executable:
   ```bash
   chmod +x ~/bin/pyproj
   ```

3. **Incorrect structure**:  
   Check the script content to verify the directories and files being created match your needs.

---

## **Advanced Usage**

1. **Quick Setup with Aliases**:  
   Add an alias for the script in your shell configuration:
   ```bash
   alias pyproj='~/bin/pyproj'
   ```

2. **Default Directory**:  
   Modify the script to always create projects in a specific directory, e.g., `~/projects`.

---

## **Requirements**

- **Operating System**: Linux or macOS.
- **Shell**: Bash or Zsh (default on most systems).  
Ensure `bash` is installed and available.

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

## Customizing the Scripts
Both scripts are designed to be easily customizable:
- You can modify the directories created or adjust the naming conventions to fit your project's needs.
- The scripts are written in bash, so you can easily update or extend them by editing the shell commands inside the script files.

## Contribute and Feedback
Feel free to fork the repository, contribute improvements, or suggest new features. If you encounter any issues or have suggestions, please submit them via the [GitHub Issues page](https://github.com/your-username/dev-utils/issues).

---

## License
This project is licensed under the [MIT License](../LICENSE).


---

