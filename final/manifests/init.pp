class final {
  if $::hostname == pserver {
    include final::pserver
  }
  else {
    include final::node1
  }
}
