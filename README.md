# cloneO

`cloneO` is a bash script for cloning a Git repository and opening it in Visual Studio Code.

## Installation

### Prerequisites
- Bash (usually pre-installed on Unix-like systems)
- Git
- Visual Studio Code (for opening the cloned repository)

### Clone the Repository
```bash
git clone https://github.com/Gideon-D-Adeti/cloneO.git
```

### Make the script available system-wide
```bash
sudo mv cloneO/cloneO.sh /usr/local/bin/cloneO
sudo chmod +x /usr/local/bin/cloneO
```

## Usage
```bash
cloneO <repository_url>
```

### Example
```
cloneO https://github.com/Gideon-D-Adeti/cloneO.git
```

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.