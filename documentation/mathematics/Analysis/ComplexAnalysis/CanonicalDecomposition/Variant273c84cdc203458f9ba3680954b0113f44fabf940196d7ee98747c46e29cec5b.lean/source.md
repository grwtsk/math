# Complete source: GRWTSK.Analysis.ComplexAnalysis.CanonicalDecomposition.Variant273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d929fe6c48e8981d57607b8fb993792c824c972a` · SHA-256 `273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Mathlib.Analysis.Complex.CanonicalDecomposition

/-!
# Canonical-decomposition notation

Compatibility notation for disk Blaschke factors in terms of Mathlib's `canonicalFactor`.
-/

@[expose] public section

namespace Complex

/-- Blaschke factor on the disk of radius `R` with a zero at `w`; equal to `canonicalFactor`. -/
noncomputable abbrev blaschkeFactor (R : ℝ) (w : ℂ) : ℂ → ℂ := canonicalFactor R w

@[simp] lemma blaschkeFactor_def (R : ℝ) (w : ℂ) :
    blaschkeFactor R w = canonicalFactor R w :=
  rfl

end Complex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb6208e94502f9c8341fd6af2646a0d0e471a1235480ae5bd325a31c40198cf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
