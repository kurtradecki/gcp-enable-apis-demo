# Enable Google Cloud APIs

## Notes
* The intent of this repo is to be used in an environment for learning, demonstration, and proofs of concept (PoCs), **not production**.
* Leverage this script by calling it from other scripts if you intend to enable Google Cloud APIs in Terraform automation. An example of a call:

```module "api" {
  source     = "github.com/kurtradecki/gcp-enable-apis-demo"
  project_id = "project_id"
  api_list   = "["compute.googleapis.com", 
  "certificatemanager.googleapis.com",
  "run.googleapis.com"]"
}
```
