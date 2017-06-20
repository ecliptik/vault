storage "s3" {
  access_key = ""
  secret_key = ""
  bucket     = ""
  region     = ""
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}
