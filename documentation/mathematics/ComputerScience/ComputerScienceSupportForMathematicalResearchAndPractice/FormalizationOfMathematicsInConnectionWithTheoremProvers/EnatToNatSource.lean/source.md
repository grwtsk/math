# Enat To Nat Source — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fb9b4d9268e6757339d06dec1ac82d79896e0de` · SHA-256 `2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ENatToNat

example (a b : ENat) (h : a = b) : a - b = b - a := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - b < b + 1 := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - 2 * b ≤ b + 1 := by
  enat_to_nat
  omega

example (a b c : ENat) (hab : a ≥ b) (hbc : b ≥ c) : a ≥ c := by
  enat_to_nat
  omega

example (a b : ENat) (h : a = b) : a - b = b - a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  let b : ℤ := 32
  enat_to_nat
  omega
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e36916dc309d6b9cd0d3459654f3391686bf4382e453ca2476a186175d5e019 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
