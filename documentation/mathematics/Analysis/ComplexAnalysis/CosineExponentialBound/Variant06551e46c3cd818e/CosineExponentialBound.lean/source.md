# Complete source: GRWTSK.Analysis.ComplexAnalysis.CosineExponentialBound.Variant06551e46c3cd818e.CosineExponentialBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb0b94c1699d850e42c493d0c6e4f5cb626e90f2` · SHA-256 `4e5124d6ec6cbc7d456fca4f83d0463712a32903d5756b224a2536b13b8385ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
One coherent complex cosine norm bound from two exponential terms and the triangle inequality
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 06551e46c3cd818e0336bf65e4ac5397097acb4b2502c5e04a40b0dd46e7a97e
Organized SHA-256: 3844f874de6ff47fa640b5e9b5f3c3308bab3c43946af63a2f19946a46a372c7
PMD: 510.5.030 complex analysis (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
An outer GRWTSK namespace and an explicit open of the imported Complex namespace are added; the original module, public import, section, declarations and proof bytes are retained. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

module

public import Mathlib.Analysis.Complex.Trigonometric

/-!
# Complex trigonometric bounds

Elementary exponential bounds for complex trigonometric functions.
-/

@[expose] public section

namespace GRWTSK.Analysis.ComplexAnalysis.CosineExponentialBound.Variant06551e46c3cd818e

open Complex

namespace Complex

/-- `‖cos z‖` is controlled by `exp |im z|`. -/
lemma norm_cos_le_exp_abs_im (z : ℂ) : ‖cos z‖ ≤ Real.exp |z.im| := by
  have hcos :
      cos z = (exp (z * I) + exp (-z * I)) / 2 := by
    simp [cos]
  have htri :
      ‖exp (z * I) + exp (-z * I)‖ ≤ ‖exp (z * I)‖ + ‖exp (-z * I)‖ :=
    norm_add_le _ _
  have hdiv :
      ‖(exp (z * I) + exp (-z * I)) / 2‖
        ≤ (‖exp (z * I)‖ + ‖exp (-z * I)‖) / 2 := by
    have : ‖exp (z * I) + exp (-z * I)‖ / 2
          ≤ (‖exp (z * I)‖ + ‖exp (-z * I)‖) / 2 :=
      div_le_div_of_nonneg_right htri (by norm_num)
    simpa [Complex.norm_div, Complex.norm_ofNat] using this
  have h1 : ‖exp (z * I)‖ = Real.exp (-(z.im)) := by
    simp [norm_exp, mul_re, I_re, I_im]
  have h2 : ‖exp (-(z * I))‖ = Real.exp (z.im) := by
    simp [norm_exp, mul_re, I_re, I_im]
  have habs1 : Real.exp (-(z.im)) ≤ Real.exp |z.im| :=
    Real.exp_le_exp.mpr (neg_le_abs z.im)
  have habs2 : Real.exp (z.im) ≤ Real.exp |z.im| :=
    Real.exp_le_exp.mpr (le_abs_self z.im)
  have hsum :
      (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2 ≤ Real.exp |z.im| := by
    have : ‖exp (z * I)‖ + ‖exp (-(z * I))‖
        ≤ Real.exp |z.im| + Real.exp |z.im| := by
      simpa [h1, h2] using add_le_add habs1 habs2
    have : (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2
        ≤ (Real.exp |z.im| + Real.exp |z.im|) / 2 :=
      div_le_div_of_nonneg_right this (by norm_num)
    simpa [two_mul] using this
  have :
      ‖cos z‖ ≤ (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2 := by
    simpa [hcos] using hdiv
  exact le_trans this hsum

end Complex

end GRWTSK.Analysis.ComplexAnalysis.CosineExponentialBound.Variant06551e46c3cd818e
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bf6c4d786d14c5ff60e0b08f995068c25a65bb16ad504e8bced9723616357ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CosineExponentialBound/Variant06551e46c3cd818e/CosineExponentialBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
