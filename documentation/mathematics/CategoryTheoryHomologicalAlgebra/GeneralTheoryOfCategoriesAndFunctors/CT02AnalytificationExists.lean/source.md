# CT02 Analytification Exists — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05f27bd4b3b9c31cb010aa831a09935a9f53d06a` · SHA-256 `7fe48a211323745e3991ce4750c4591f97fe49291545eaac3fae978b0fb24cc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-02: functorial analytification and natural support.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct02_analytificationExists
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT02Claim S :=
  registry.ct02

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a3c6e4929c976a30730219b526ae1f2cb4c2635c2bd8a1c1aa0fefcfb71bdfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CT02AnalytificationExists/Variant7fe48a211323745e3991ce4750c4591f97fe49291545eaac3fae978b0fb24cc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
