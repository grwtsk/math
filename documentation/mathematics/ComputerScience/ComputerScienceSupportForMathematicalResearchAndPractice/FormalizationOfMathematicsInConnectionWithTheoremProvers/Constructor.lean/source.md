# Constructor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ee1020808d820fffa9c677a323fd6e5e13d9670` · SHA-256 `84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Constructor

structure Foo where
  a : Type
  x : List a

-- fconstructor
example : Foo := by
  fconstructor
  exact Nat
  exact [0,1,2]

-- econstructor
example : Foo := by
  econstructor
  exact [0,1,2]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f09fae33c9e499cc82b082ed5e5019bf1095389f64515b5e805fedd9bc0bf39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructor/Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
