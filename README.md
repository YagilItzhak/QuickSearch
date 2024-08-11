# Quicksearch

## Overview

`Quicksearch` is a cross-platform tool designed to simplify and accelerate your web browsing experience. Whether you want to perform a quick search or open a URL, this script provides an efficient, streamlined way to manage these tasks. The repository currently includes a Windows PowerShell script (`script.ps1`), with plans to support macOS in the future.

## Features

- **Smart Input Detection**: Automatically distinguishes between search queries and URLs.
- **Browser Management**: Opens a new tab in an existing browser session or launches a new browser instance if none is running.
- **Multi-Browser Compatibility**: Supports major browsers including Chrome, Edge, Firefox, Brave, and Opera.
- **Cross-Platform Support**: Currently available for Windows with macOS support planned.
- **User-Friendly Error Handling**: Alerts you if the input is empty or if no compatible browsers are found.

## Installation

### Windows

1. **Clone the Repository**: 
   ```sh
   git clone https://github.com/yourusername/Quicksearch.git
   ```
2. **Navigate to the Directory**:
   ```sh
   cd Quicksearch
   ```
3. **Run the Script**:
   - You can execute the script directly from PowerShell:
     ```sh
     ./script.ps1
     ```

4. **Add a Shortcut with a Hotkey**:
   - **Create a Shortcut**:
     1. Right-click on your Desktop or in a folder where you want to create the shortcut.
     2. Select **New** > **Shortcut**.
     3. In the location field, enter:
        ```sh
        powershell.exe -File "C:\path\to\your\script.ps1"
        ```
        Replace `"C:\path\to\your\script.ps1"` with the actual path to your script file.
     4. Click **Next**, then name the shortcut (e.g., "Browser Search Launcher"), and click **Finish**.

   - **Assign a Hotkey**:
     1. Right-click on the newly created shortcut and select **Properties**.
     2. In the **Shortcut** tab, find the **Shortcut key** field.
     3. Click inside the **Shortcut key** field and press the key combination you want to use (e.g., `Ctrl + G`).
     4. Click **Apply**, then **OK**.

   - **Use the Shortcut**:
     - Press the assigned hotkey (e.g., `Ctrl + G`) to run the script, which will prompt you to enter a search query or URL.

### macOS (Coming Soon)

Stay tuned for the macOS version of the script!

## Usage

1. **Run the Script**: Execute `script.ps1` from your terminal or use the keyboard shortcut you set up.
2. **Enter Input**: A prompt will appear asking you to enter a search query or URL.
3. **Automatic Action**: The script will determine whether to perform a Google search or open a URL and will launch the result in your default browser or an existing browser session.

## Example

- **Search Example**: 
  - Input: `How to learn Python`
  - Action: Opens a Google search for "How to learn Python" in your browser.

- **URL Example**:
  - Input: `https://github.com`
  - Action: Opens the GitHub homepage in your browser.

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to open an issue or contact me at `anagrama.yagil@gmail.com`.