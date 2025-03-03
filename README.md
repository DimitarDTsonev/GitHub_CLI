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

### **🛠 Available Commands**
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



