locals {
  api_map = { for index, api in var.api_list : "${index}" => api }
}

resource "google_project_service" "api" {
  for_each service in local.api_map
  project = var.project_id
  service = each.service.value
}
