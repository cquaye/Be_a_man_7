BE A MAN CHALLENGE 7

**Assignment**

    Chewbacca wants Clouds Storage buckets made in terraform. With a picture of a baddie of your choice.
    Extra credit will be received if the bucket is publicly accessible and you can provide a link.
    Hot links for savages:
    https://registry.terraform.io/pro.../hashicorp/google/latest 
    https://tinyurl.com/2pu8hc6d 
    If you do not submit you will be lizzoed…


Workflow for creating publicly accessable GCS Bucket using Terrorform:

1. Set up your required provider with your authentication.
2. Add your authentication. (This should include your project, region, and credentials).
3. Create the resource for your storage bucket with the necessary details. (Include the IAM and teardown policy).
4. Create the resource object with necessary details.
5. Create the resource for your IAM policy. Grant the storage role to allUSers, this should allow for public access. 


Resources:

https://cloud.google.com/storage/docs/creating-buckets#terraform
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam.html
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object
https://datatracker.ietf.org/doc/html/rfc7231#section-3.1.1.5
https://datatracker.ietf.org/doc/html/rfc7231#section-5.3.2 