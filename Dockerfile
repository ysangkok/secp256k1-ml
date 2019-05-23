FROM ocaml/opam2:ubuntu-lts
RUN curl -Lo master.tar.gz https://github.com/ocaml/dune/archive/master.tar.gz
RUN tar xf master.tar.gz
ENV OPAM_SWITCH_PREFIX /home/opam/.opam/4.07
ENV CAML_LD_LIBRARY_PATH /home/opam/.opam/4.07/lib/stublibs:/home/opam/.opam/4.07/lib/ocaml/stublibs:/home/opam/.opam/4.07/lib/ocaml
ENV OCAML_TOPLEVEL_PATH /home/opam/.opam/4.07/lib/toplevel
ENV MANPATH :/home/opam/.opam/4.07/man
ENV PATH /home/opam/.opam/4.07/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
USER root
RUN apt update && apt install -y m4
USER opam
RUN opam install bigstring cstruct
RUN cd dune-master && make && make install
COPY --chown=opam . secp256k1-ml
RUN cd secp256k1-ml && dune build
