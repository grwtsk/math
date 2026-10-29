# Zero Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03ec94cc3a771b492ea2cb4180dda6bf26ff4845` · SHA-256 `5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.WithTop
#check WithTop.coe_zero
example : ((0 : ℕ) : WithTop ℕ) = 0 := WithTop.coe_zero
example (a : WithTop ℕ) (h : a ≤ ((0 : ℕ) : WithTop ℕ)) : a = 0 := by
  apply le_antisymm ?_ zero_le
  simpa only [WithTop.coe_zero] using h
example (a : WithTop ℕ) (h : a ≤ ((0 : ℕ) : WithTop ℕ)) : a = 0 := by
  exact le_antisymm h (WithTop.coe_le_coe.mpr (Nat.zero_le _))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=280b1b43e80e6ae795aacec4f881ca28ad625169447b17200851af3269c18db5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41ZeroCheck/Variant5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
