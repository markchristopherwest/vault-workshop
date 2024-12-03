resource "vault_auth_backend" "approle" {
  type = "approle"
}

resource "vault_approle_auth_backend_role" "example" {
  backend         = vault_auth_backend.approle.path
  role_name       = "test-role"
  token_policies  = [
    vault_policy.bar.name, 
    vault_policy.foo.name, 
    vault_policy.qux.name
    ]
}

resource "vault_approle_auth_backend_role_secret_id" "id" {
  backend   = vault_auth_backend.approle.path
  role_name = vault_approle_auth_backend_role.example.role_name

  metadata = jsonencode(
    {
      "hello" = "world"
    }
  )
}