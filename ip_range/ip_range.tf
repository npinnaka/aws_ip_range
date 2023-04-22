data "http" "ip_range" {
  url = var.url

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

output "cidrs" {
  value = [
    for prefix in jsondecode(data.http.ip_range.response_body)["prefixes"] :
    prefix["ip_prefix"] if prefix["region"] == var.region && prefix["service"] == var.service
  ]
}

