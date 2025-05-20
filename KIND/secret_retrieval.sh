# For zsh

# Grabs keystore and past to clibboard (Converts to binary)
function oc_grab_trustore() {
    oc get secret "$1" -o jsonpath='{.data.trustore}' | base64 --decode | pbcopy }
}

# Grabs keystore and past to clibboard
function oc_grab_trustore() {
    oc get secret "$1" -o jsonpath='{.data.trustore}' | base64 | pbcopy }
}