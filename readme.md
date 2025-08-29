# Datasheet Template Script

This script provides a template for creating datasheets using LaTeX.

## Overleaf Template

You can find the Overleaf template for this datasheet script at the following link:

https://www.overleaf.com/latex/templates/technical-document-template/mdgftpdfbvbs


## 🚀 在 WSL 下搭建编译环境

### 1. 确认 WSL 环境

- 打开 PowerShell 或 CMD。
- 检查是否已安装 WSL：
    ```sh
    wsl --list --verbose
    ```
- 如果未安装，执行以下命令安装：
    ```sh
    wsl --install
    ```
- 进入 WSL：
    ```sh
    wsl
    ```

### 2. 更新系统

- 进入 WSL（如 Ubuntu）后，更新系统：
    ```sh
    sudo apt update && sudo apt upgrade -y
    ```



### 3. 安装文档编译工具

#### 📖 LaTeX（传统方案，功能最全）

- 在 WSL（Ubuntu）中安装 LaTeX：
    ```sh
    sudo apt install texlive-full -y
    ```

<!-- - Windows 原生环境

- 如果你在 Windows 原生环境下使用 LaTeX，可以参考 [TeX Live for Windows 官方文档](https://tug.org/texlive/windows.html) 进行安装和配置。 -->

### 4. 在 WSL 终端中，使用 `git` 克隆本项目仓库（请将 `<repo-url>` 替换为实际仓库地址）：
- 克隆仓库：
    ```sh
    git clone <repo-url>
    ```
- 进入项目目录：
    ```sh
    cd <repo-name>
    ```
- 运行编译脚本：
    ```sh
    bash run.sh
    ```