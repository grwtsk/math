# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTypeSynonym.Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53ed3af7773381bce4ad07e9a746c30053916272` · SHA-256 `dadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

inductive T

abbrev U := T

def V := T
abbrev W := V
def X := V

example (h : T) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases T)

example (h : T) : False := by
  aesop (add safe cases U)

example (h : U) : False := by
  aesop (add safe cases U)

example (h : V) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : W) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : V) : False := by
  aesop (add safe cases W)

example (h : X) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  fail_if_success aesop (add safe cases V) (config := { terminal := true })
  fail_if_success aesop (add safe cases W) (config := { terminal := true })
  aesop (add safe cases X)

example (h : T) : False := by
  aesop (add safe cases (transparency! := default) X)

inductive A (α : Type) : Prop

abbrev B β := A β

example (h : A Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : A Unit) : False := by
  aesop (add safe cases B)

example (h : B Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : B Unit) : False := by
  aesop (add safe cases B)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=919c77a2d1cfd0e5d9f5120aee2fe655fda8457a569a9847f61c83689dd21cae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesTypeSynonym/Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
