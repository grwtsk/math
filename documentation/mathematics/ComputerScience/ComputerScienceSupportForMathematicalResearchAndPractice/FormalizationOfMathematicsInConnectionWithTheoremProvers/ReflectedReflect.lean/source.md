# Reflected Reflect — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2279b458d2a8a61c18e46c58944aecf038307e50` · SHA-256 `96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.Interpolation

/-! # Reflected parameter profiles -/

namespace Mathematics.GammaBridge

/-- Reflection reverses a unit-interval parameter without altering its range. -/
def reflect (time : ℝ) : ℝ := 1 - time

@[simp] theorem reflect_left : reflect 0 = 1 := by
  simp [reflect]

@[simp] theorem reflect_right : reflect 1 = 0 := by
  simp [reflect]

@[simp] theorem reflect_involution (time : ℝ) :
    reflect (reflect time) = time := by
  simp [reflect]

end Mathematics.GammaBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccbc482fcb103eca46dae51a1245403dc77d19e8e37389ba461a981a070bde2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflected/Variant96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
