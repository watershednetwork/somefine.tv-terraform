resource "dnsimple_zone_record" "somefine-tv" {
  zone_name = "somefine.tv"
  name      = ""
  type      = "ALIAS"
  value     = "somefine-tv.netlify.app"
}

resource "dnsimple_zone_record" "www-somefine-tv" {
  zone_name = "somefine.tv"
  name      = "www"
  type      = "CNAME"
  value     = "somefine-tv.netlify.app"
}

