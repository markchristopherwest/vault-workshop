resource "vault_policy" "bar" {
  name = "bar"

  policy = <<EOT
# https://developer.hashicorp.com/vault/tutorials/auth-methods/oidc-identity-provider#policy-requirements
# To create an entity and entity alias. Enable and configure Vault as an OIDC provider
path "kv/*" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}

# To enable userpass auth method
path "sys/auth/userpass" {
  capabilities = [ "create", "read", "update", "delete" ]
}

# To create a new user, "end-user" for userpass
path "auth/userpass/users/*" {
   capabilities = [ "create", "read", "update", "delete", "list" ]
}

EOT
}

resource "vault_policy" "foo" {
  name = "foo"

  policy = <<EOT
# https://developer.hashicorp.com/vault/tutorials/auth-methods/oidc-identity-provider#policy-requirements
# To create an entity and entity alias. Enable and configure Vault as an OIDC provider
path "kv/*" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}

# To enable userpass auth method
path "sys/auth/userpass" {
  capabilities = [ "create", "read", "update", "delete" ]
}

# To create a new user, "end-user" for userpass
path "auth/userpass/users/*" {
   capabilities = [ "create", "read", "update", "delete", "list" ]
}

EOT
}
resource "vault_policy" "qux" {
  name = "qux"

  policy = <<EOT
# https://developer.hashicorp.com/vault/tutorials/auth-methods/oidc-identity-provider#policy-requirements
# To create an entity and entity alias. Enable and configure Vault as an OIDC provider
path "kv/*" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}

# To enable userpass auth method
path "sys/auth/userpass" {
  capabilities = [ "create", "read", "update", "delete" ]
}

# To create a new user, "end-user" for userpass
path "auth/userpass/users/*" {
   capabilities = [ "create", "read", "update", "delete", "list" ]
}

EOT
}