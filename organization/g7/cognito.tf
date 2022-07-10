resource "aws_cognito_user_pool" "pool" {
  provider = aws.aws
  name     = "users"
}

resource "aws_cognito_user_pool_client" "userpool_client" {
  depends_on = [
    module.presentation
  ]

  provider                             = aws.aws
  name                                 = local.cognito.name
  user_pool_id                         = aws_cognito_user_pool.pool.id
  callback_urls                        = ["${module.presentation.website_endpoint}/login-callback.html"]
  logout_urls                          = ["${module.presentation.website_endpoint}/logout.html"]
  access_token_validity                = 31 # 31 days
  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                  = ["code"]
  allowed_oauth_scopes                 = ["email", "openid"]
  supported_identity_providers         = ["COGNITO"]
}
