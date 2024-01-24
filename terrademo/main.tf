terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
    credentials = "./keys/my_creds.json"
  project     = "titanium-deck-111119"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "titanium-deck-111119"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
        # if you're uploading things to the bucket and it's a large file
        # you can do a parallel upload of the big file in chunks
        #sometimes it shuts down or is interrupted - abort
      type = "AbortIncompleteMultipartUpload"
    }
  }
}