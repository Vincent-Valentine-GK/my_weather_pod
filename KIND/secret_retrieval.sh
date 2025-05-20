# For zsh

# Grabs keystore and past to clipboard
function oc_grab_trustore() {
    oc get secret "$1" -o jsonpath='{.data.trustore}' | base64 --decode | pbcopy }
    kubectl get secret $1 --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode | pbcopy # For MAC
    kubectl get secret $1 --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode | xclip -selection clipboard # For Linux
    
}

# Grabs keystore and past to clibboard  (Converts to binary)
function oc_grab_trustore() {
    oc get secret "$1" -o jsonpath='{.data.trustore}' | base64 | pbcopy }
}
