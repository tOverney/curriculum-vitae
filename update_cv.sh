#!/usr/bin/env sh

set -x

readonly REPO="CurriculumVitae"

readonly SRC="build/cv.pdf"
readonly TARGET="dengels.ch/public/doc/cv.pdf"

if [ "$TRAVIS_REPO_SLUG" = "paullepoulpe/$REPO" -a "$TRAVIS_PULL_REQUEST" = "false" -a "$TRAVIS_BRANCH" = "master" ]; then

    # Setup travis info
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "travis-ci"

    # Clone website repository
    git clone --quiet --branch=master https://${GH_TOKEN}@github.com/paullepoulpe/dengels.ch

    # Clear old file
    rm -rf "$TARGET"

    # Copy new file
    cp -v "$SRC" "$TARGET"

    # Step into repo
    cd "${TARGET%%/*}"

    # Mark for add and commit
    git add "${TARGET#*/}"
    git commit -m "Travis #$TRAVIS_BUILD_NUMBER: Update resume commit $TRAVIS_COMMIT"
    git push origin master
else
    echo "Conditions not met to update resume"
fi
