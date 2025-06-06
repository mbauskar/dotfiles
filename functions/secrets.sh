# generate the secrets using openssl, accepts the input digit
function generate_secret() {
    digits=${1:-16}
    value=$(openssl rand -hex $digits)
    echo $value
    echo -n $value | copy
}