# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PnatToNat.Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61d56ea1bc9979a7f92bf8169d35c6356accd51f` · SHA-256 `a33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.PNatToNat

example (a b : PNat) (h : a < b) : 1 < b := by
  pnat_to_nat
  omega

example (a b : PNat) (h : a = b) : b = a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  pnat_to_nat
  omega

example (a b : PNat) (h : a < b) : 1 < b := by
  have := a.pos
  pnat_to_nat
  omega
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8f8f583d16d880ade0ec767a90b0cb6c3e109066404425449ce4e0d2fca8a1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
