param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$CliArgs
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command npx -ErrorAction SilentlyContinue)) {
    Write-Error "Error: npx is required but not found on PATH."
    exit 1
}

$hasSessionFlag = $false
foreach ($arg in $CliArgs) {
    if ($arg -eq "--session" -or $arg.StartsWith("--session=")) {
        $hasSessionFlag = $true
        break
    }
}

$cmdArgs = @("--yes", "--package", "@playwright/cli", "playwright-cli")

if (-not $hasSessionFlag -and $env:PLAYWRIGHT_CLI_SESSION) {
    $cmdArgs += @("--session", $env:PLAYWRIGHT_CLI_SESSION)
}

$cmdArgs += $CliArgs

& npx @cmdArgs
exit $LASTEXITCODE
