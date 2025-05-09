# Setting up required providers.
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

# Applying credentials.
provider "google" {
  project = "class-6-5-carlton-quaye"
  region  = "us-central1"
  credentials = "class-6-5-carlton-quaye-a9df9887e8d9.json"
}

# Creating storage bucket.
# Implementing bucket level IAM access.
# Implementing force destroy of object(s) when bucket is deleted. 
resource "google_storage_bucket" "churchofgains-01" {
  name          = "churchofgains-01"
  location      = "us-central1"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
  force_destroy = true
}

# Creating resource object for the image.
resource "google_storage_bucket_object" "jesusgains" {
  name   = "jesusgains"
  source = "carry_your_cross.jpg"
  content_type = "image/jpg"
  bucket = google_storage_bucket.churchofgains-01.id
}

# Creating IAM policy for access.
# Expire the access after set time.
resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.churchofgains-01.name
  role = "roles/storage.admin"
  member = "allUsers"

}