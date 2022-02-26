# git status short
gs() {
    git status -s
}

# git status full
gsf() {
    git status
}

# git add
ga() {
    files=( "$@" )
    git add "${files[@]}"
}

# git add all
gaa() {
    git add -A
}

# git commit
gc() {
    message="$1"
    git commit -m "$message"
}

# git commit all
gca() {
    message="$1"
    git add -A && git commit -m "$message"
}

# git commit amend
gcm() {
    message="$1"
    git commit --amend -m "$message"
}

# git push
gp() {
    git push --tags origin HEAD
}

# git tag
gt() {
    version="$1"
    git commit -m "Release v$version" && git tag -a "v$version" -m "Version $version"
}

# git checkout
gco() {
    ref="$1"
    git checkout "$ref"
}

# git checkout branch
gcob() {
    branch="$1"
    git checkout -b "$branch"
}

# git branch
gb() {
    git branch
}

# git branch all
gba() {
    git branch -a
}

# git delete branches
gbd() {
    branches=( "$@" )
    git branch -d "${branches[@]}"
}

# git branch set upstream
gbu() {
    branch="$1"
    git branch --set-upstream-to="origin/$branch" "$branch"
}

# git checkout branch and set upstream
gcobu() {
    branch="$1"
    gcob "$branch"
    gbu "$branch"
}
