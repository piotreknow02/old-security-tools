variable "authors" {
  type = list(string)
  default = [
    "Piotr Nowakowski <kontakt@piotreknow.dev>"
  ]
}

variable "source" {
  default = "https://github.com/piotreknow02/old-security-tools"
}

group "default" {
  targets = [
    "littleblackbox",
    "rdp-replay",
  ]
  labels = {
    "org.opencontainers.image.authors" = join(",", authors)
    "org.opencontainers.image.source" = source
  }
}

target "littleblackbox" {
  context = "./littleblackbox/"
  tags = ["littleblackbox:latest"]
  description = "Database of private SSL/SSH keys for embedded devices"
  labels = {
    "org.opencontainers.image.documentation" = "${source}/blob/main/littleblackbox/README.md"
  }
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
}

target "rdp-replay" {
  context = "./rdp-replay/"
  tags = ["rdp-replay:latest"]
  description = "Replay RDP traffic from PCAP"
  labels = {
    "org.opencontainers.image.documentation" = "${source}/blob/main/rdp-replay/README.md"
  }
  platforms = [
    "linux/amd64",
  ]
}
