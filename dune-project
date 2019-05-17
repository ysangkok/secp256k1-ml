(lang dune 1.10)
(name secp256k1)
(version 0.5.0)
(maintainers "Davide Gessa <gessadavide@gmail.com>")
(authors
  "Davide Gessa <gessadavide@gmail.com>"
  "Vincent Bernardoff <vb@luminar.eu.org>"
  "Yoichi Hirai <i@yoichihirai.com>"
)
(license MIT)
(package
 (name secp256k1)
 (depends
  (base (>= 0.9.2))
  (stdio (>= 0.9.0))
  (configurator (>= 0.9.1))
  (hex (>= 1.1.1))
  (alcotest (>= 0.8.1))
  base-bigarray
 )
)
