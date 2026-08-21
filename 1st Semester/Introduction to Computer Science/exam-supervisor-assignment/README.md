# Exam Supervisor Assignment

This project is a Python program that automates the allocation and assignment of supervisors to examination courses.

## ⚙️ How It Works

The system extracts course requirements and supervisor availability from the `lessons.csv` and `supervisors.csv` files respectively. It implements a distribution algorithm that adheres to the following rules:
* **Course Requirements:** Assigns the exact number of supervisors required for each exam.
* **Supervisor Availability:** Prioritizes supervisors with the highest number of remaining supervisions available (`no_lessons`).
* **Restrictions:** Dynamically checks if a supervisor is excluded from proctoring specific courses (via a `restrictions` list), preventing their assignment to those specific exams.

## 📄 Output

The final allocation result is automatically exported to the `program output.txt` file. The file contains a clean, formatted list of each course alongside the names and emails of the assigned supervisors.

---

## 🚀 How to Run

### Prerequisites
* **Python 3.x** must be installed on your system.  

1. Open your terminal
2. Navigate to the `src` folder
3. Run the main script using the following command:
```bash
python python_project.py
```

### Folder Structure
Make sure your files are organized correctly before running the script, as the program uses relative paths. The structure should look like this:
```text
project-folder/
│
├── data/
│   ├── lessons.csv
│   └── supervisors.csv
│
|── src/
|   ├── functions.py
|   └── python_project.py
|
├── program output.txt
|
└── README.md