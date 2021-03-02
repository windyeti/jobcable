# server-based syntax
# ======================
server '104.248.32.176', user: 'deploy', roles: %w{app db web}

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
set :ssh_options, {
  keys: %w(/Users/egrorails/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey password)
}

set :unicorn_rack_env, -> { "production" }
