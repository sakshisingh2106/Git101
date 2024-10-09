# Define the upstream repository URL
$upstreamRepo = "https://github.com/justushar/Git101.git"

# Change to the directory where the script is located (assumed to be in the root of their cloned repository)
Set-Location $PSScriptRoot

# Check if the upstream remote is already set
$upstreamRemote = git remote -v | Select-String "upstream"

if (-not $upstreamRemote) {
    # Add upstream remote if it doesn't exist
    git remote add upstream $upstreamRepo
    Write-Host "Upstream remote added."
} else {
    Write-Host "Upstream remote already exists."
}

# Fetch changes from the upstream
git fetch upstream

# Checkout the main branch
git checkout main

# Merge the changes from upstream into their local main branch
git merge upstream/main

if ($LASTEXITCODE -ne 0) {
    Write-Host "Merge conflicts detected. Please resolve conflicts and commit the changes."
    exit
} else {
    Write-Host "Successfully merged changes from upstream."
}

# Automatically stage all changes
git add .

# Check if there are changes to commit
if (-not [string]::IsNullOrWhiteSpace((git status --porcelain))) {
    # Commit changes with a message
    $commitMessage = "Auto-commit: Merged changes from upstream on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMessage
    Write-Host "Changes committed with message: $commitMessage"
    
    # Push the changes to their fork
    git push origin master
    Write-Host "Changes pushed to the remote repository."
} else {
    Write-Host "No changes to commit."
}
