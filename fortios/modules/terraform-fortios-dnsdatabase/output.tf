output "dns_databases" {
  value = {
    for name, db in fortios_system_dnsdatabase.this : name => {
      domain  = db.domain,
      entries = db.dns_entry[*].hostname
    }
  }
}