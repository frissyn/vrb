require "kemal"

ENV["KEMAL_ENV"] ||= "developement"
env = ENV["KEMAL_ENV"]

Kemal.config.env = env
Kemal.config.logging = true

Kemal.config.port = 8080
Kemal.config.host_binding = "0.0.0.0"

Kemal.config.public_folder = "public"