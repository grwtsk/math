# Algebra Conceptual Subdirectories — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0034ef02fb81e8301bd997da55dc08983e931f08` · SHA-256 `f2cf1480ca96f0f6c617f15687adf14d8ed994c2b2961d1155cf28e124026636`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib algebra patch boundary.

This marker records local algebra-shaped Mathlib patches without importing the
patch corpus.
-/

namespace Formal.Patches.Mathlib.Algebra

def conceptualSubdirectories : List String :=
  [ "Notation"
  , "Order"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 2 := by
  rfl

end Formal.Patches.Mathlib.Algebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34b048246e717ba653ca5755e44c7f34e6f2f7da8d2ff704e6a41949442294ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Algebra/Variantf2cf1480ca96f0f6c617f15687adf14d8ed994c2b2961d1155cf28e124026636.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
