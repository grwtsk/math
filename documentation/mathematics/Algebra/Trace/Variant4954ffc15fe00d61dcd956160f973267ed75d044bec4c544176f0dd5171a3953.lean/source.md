# Complete source: GRWTSK.Algebra.Trace.Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7957f4f4c8c30bf7e257fce39327b2bb8ef9e83c` · SHA-256 `4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.RingTheory.Trace.Basic
import Mathlib.FieldTheory.Finite.GaloisField

/-!
# The trace map for finite fields

We state the fact that the trace map from a finite field of
characteristic `p` to `ZMod p` is nondegenerate.

## Tags
finite field, trace
-/


namespace FiniteField

/-- The trace map from a finite field to its prime field is nongedenerate. -/
theorem trace_to_zmod_nondegenerate (F : Type*) [Field F] [Finite F]
    [Algebra (ZMod (ringChar F)) F] {a : F} (ha : a ≠ 0) :
    ∃ b : F, Algebra.trace (ZMod (ringChar F)) F (a * b) ≠ 0 := by
  haveI : Fact (ringChar F).Prime := ⟨CharP.char_is_prime F _⟩
  have htr := traceForm_nondegenerate (ZMod (ringChar F)) F a
  simp_rw [Algebra.traceForm_apply] at htr
  by_contra! hf
  exact ha (htr hf)

end FiniteField
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a2f5c921578a58d2a69fb36902fc1a27664edf2c9499840cd1101ad365c9d85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Trace/Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
