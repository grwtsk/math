# Basic Basic Public Edition20 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `836bbed319501cb2bfaeb379fc02047adce216e1` · SHA-256 `e642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Lean.Data.Options

public meta section

register_option leansearch.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from leansearch (default 6)" }

register_option loogle.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from loogle (default 6)" }

register_option statesearch.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from statesearch (default 6)" }

register_option statesearch.revision : String :=
  { defValue := s!"v{Lean.versionString}"
    descr := "Revision of LeanStateSearch to use" }

register_option leansearchclient.useragent : String :=
  { defValue := "LeanSearchClient"
    descr := "Username for leansearchclient" }

register_option leansearchclient.backend : String :=
  { defValue := "leansearch"
    descr := "The backend to use by default, currently only leansearch" }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9cbe01120eb413207582b367bb42fd2ff9cd4d1520ea298ff4c5dac950e7826 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
