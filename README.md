# **🚀 GitHub CLI - A Command Line Interface for GitHub**

GitHub CLI is a **Swift-based command-line application** that allows users to interact with GitHub repositories, fetch user details, view starred repositories, and read file contents from repositories.

---

## **📌 Features**
✔️ Search for GitHub users and display profile details  
✔️ List all repositories of a GitHub user  
✔️ List all files inside a repository  
✔️ View and print file contents from a repository  
✔️ Sort repositories by star count in descending order  
✔️ Calculate the total number of stars a user has received across all repositories  

---

## **📥 Installation**
To install and run this project, follow these steps:

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/DimitarDTsonev/GitHub_CLI.git
cd ./GitHub_CLI
```
### **2️⃣ Build the Project**
```sh
swift build
```

### **3️⃣ Run the CLI**
```sh
swift run
```
---

## **🛠 Available Commands**
| Command | Description | Example |
|---------|------------|---------|
| `search-user <username>` | Fetch GitHub user details | `search-user DimitarDTsonev` |
| `list-repos <username>` | List all repositories of a user | `list-repos DimitarDTsonev` |
| `list-files <username> <repo>` | Show all files in a repository | `list-files DimitarDTsonev 2048` |
| `view-file <username> <repo> <file_path>` | Display the content of a file | `view-file DimitarDTsonev 2048 README.md` |
| `list-starred <username>` | List all repositories a user has starred | `list-starred DimitarDTsonev` |
| `sort-repos <username>` | Sort repositories by stars (descending) | `sort-repos DimitarDTsonev` |
| `total-stars <username>` | Show the total number of stars a user has received | `total-stars DimitarDTsonev` |
| `help` | Show available commands | `help` |
| `exit` | Exit the program | `exit` |

---

## **Output of the functions**

### **search-user <username>**


![search-user](https://github.com/user-attachments/assets/4fc23f07-454e-4bda-981c-d5c810a48299)



### **list-repos <username>**

![list-repos](https://github.com/user-attachments/assets/f81ec37a-42cf-461c-9310-863695489de5)

### **sort-repos <username>**

![sorted-repos](https://github.com/user-attachments/assets/0b37042d-2e81-4c3b-ae0c-f85c6864af06)

### **total-stars <username>**

![total-stars](https://github.com/user-attachments/assets/376d07dd-11f7-4be5-9035-d9d399cc2c6f)

### **list-file <username> <repo>**

![list-files](https://github.com/user-attachments/assets/3d79f154-7f6c-4449-8569-153846ed0adf)

### **list-starred <username>**

![list-starred](https://github.com/user-attachments/assets/c6c3eb16-9751-4e96-a9c7-61ba964b91a8)

### **view-file <username> <repo> <path>**

![view-file](https://github.com/user-attachments/assets/6bfa1ea8-f5ac-4925-8fc4-d2528964c04b)

#### ****Note, the path of the file you want to see is without the name of the repository.***
