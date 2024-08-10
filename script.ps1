# Function to check if a string is a URL
function Is-URL($string) {
    return $string -match '^https?://'
}

# Prompt user for input with an input box
$input = [Microsoft.VisualBasic.Interaction]::InputBox("Enter a search query or URL", "Search", "")

# Trim the input to remove leading/trailing whitespace
$input = $input.Trim()

# Check if the input is empty
if (-not $input) {
    [System.Windows.Forms.MessageBox]::Show("Input cannot be empty", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

# Determine if input is a URL or a search query
if (-not (Is-URL $input)) {
    $input = "https://www.google.com/search?q=" + [System.Web.HttpUtility]::UrlEncode($input)
}

# List of supported browsers
$browsers = @("chrome", "msedge", "firefox", "brave", "opera")

# Check if any of the browsers are running
$browserProcesses = @()
foreach ($browser in $browsers) {
    $process = Get-Process -Name $browser -ErrorAction SilentlyContinue
    if ($process) {
        $browserProcesses += $process
    }
}

try {
    if ($browserProcesses) {
        # If a browser is already running, open a new tab in the first detected browser
        $browser = $browserProcesses[0].ProcessName
        $newTabCommand = "start $browser $input"
        Invoke-Expression $newTabCommand
    } else {
        # If no browser is running, attempt to start the first available browser
        foreach ($browser in $browsers) {
            try {
                Start-Process $browser $input -ErrorAction Stop
                break
            } catch {
                continue
            }
        }

        # If no specified browsers are available, fall back to the default system browser
        if (-not $browserProcesses) {
            Start-Process $input
        }
    }
} catch {
    [System.Windows.Forms.MessageBox]::Show("No supported browsers are installed or available.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
}
