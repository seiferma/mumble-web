variable "VERSION" {
  default = "v0.5"
}

group "default" {
  targets = ["default"]
}

target "default" {
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/mumble-web:${VERSION}", "quay.io/seiferma/mumble-web:latest"]
}
