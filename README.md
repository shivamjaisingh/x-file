# Bash Script for User File Management

This bash script provides a basic user interface for managing user files and encryption.

## Features

- **User Interaction:** Prompts for user input to handle file operations.
- **File Checking:** Checks if a specific user's file exists.
- **File Creation:** Allows the user to create a file if it doesn't exist.
- **Editing and Viewing:** Options to edit a user's file with vim and view current users with less.
- **Encryption and Decryption:** Provides options to encrypt and decrypt the user's file using mcrypt.

## Usage

1. **Start the script:**
   Run the script using a bash shell, i.e., `./script_name.sh`.

2. **Enter USER NAME:**
   The script will first ask for a user name. It will check if a file with the name `<username>.txt` exists.

3. **Manage Files:**
   - If the file exists, it moves on to options.
   - If not, it prompts to create a new file. If created, the username is added to `username.list`.

4. **Choose Option:**
   - `1` Edit the file using vim.
   - `2` Print present users listed in `username.list`.
   - `3` End the program.

5. **Encryption:**
   - After choosing an option, it asks if you want to encrypt the file.
   - If yes, enter a passphrase for encryption. The original file will be replaced with an encrypted `.nc` version.

6. **Decryption:**
   - It then asks if you want to decrypt any file. 
   - If yes, provide the filename and passphrase for decryption.

## Requirements

- **Bash Shell**: For running the script.
- **Vim**: For editing files.
- **Less**: For viewing the user list.
- **mcrypt**: For encrypting and decrypting files.

## Script Layout

- The script starts with an aesthetic banner displayed using `echo`.
- A continuous loop (`while true`) handles user interactions for managing files.
- Inside the loop, various conditions check file existence, create files, and handle user choices using `case` statements.

## Notes

- Ensure that `mcrypt` is installed on your system for encryption functionalities.
- The script will continuously run until option `3` is chosen to end the program.
