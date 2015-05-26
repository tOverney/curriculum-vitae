#!/usr/bin/env sh
# Continuos compile script

# Waiting time in seconds
readonly WAIT_TIME=2
readonly BUILD=build
readonly TOKEN="$BUILD/.token"
readonly OBJ="$BUILD/cv.pdf"

compile() {
    # Register new time of compilation
    touch "$TOKEN"

    # Remove old pdf files
    rm "$OBJ"

    # Build with error message in red
    make "$OBJ" 2>&1 | egrep -i --color=always '[^:]*error.*|$'

    echo "[build] Waiting for source changes ..."
}

# Launch clean and compile when run for the first time
make veryclean
compile

while true; do
    # Check if anything has changed since last compile
    CHANGED_FILES=$(find . -name '*.tex' -newer $TOKEN)

    if [ ! -z "$CHANGED_FILES" ]; then
        # If anything changed, rebuild
        echo "[build] Change detected, recompiling ..."
        compile
    fi

    # Wait for a bit ...
    sleep $WAIT_TIME
done
