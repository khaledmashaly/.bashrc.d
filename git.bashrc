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
gpoh() {
    git push origin HEAD
}

# pull all
gpl() {
    git pull
}

# git tag
gt() {
    version="$1"
    git commit -m "chore: release $version" && git tag -a "$version" -m "$version"
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

# git checkout branch, set upstream, and pull
gcobu() {
    branch="$1"
    gcob "$branch"
    gbu "$branch"
    git pull
}

# prune origin remote
grpo() {
    git remote prune origin
}
