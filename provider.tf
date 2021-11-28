provider "google" {
  credentials = file("service-account.json")
  project     = "tidy-arena-308621"
  region      = "us-central1"
  zone        = "us-central1-a"
}