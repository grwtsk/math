# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtNormComparison.Variant2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d8370e39412dcc91a399da54e91ace7343660b3` · SHA-256 `2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
# Pointwise full-norm comparison obstruction for the actual Mangoldt operator

Prepared from existing literal-source declarations; this ignored module is
UNCOMPILED. The inequality is an obstruction to bounded full-norm models.
It is not an upper bound on the matched source form or the signed RH residual.
No unbounded theta operator or unsupported common-carrier transport is assumed.

AI attribution: prepared with OpenAI Codex; no Lean verification claimed.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open SourceReflectionDuality SourceMangoldtInteraction

/-- Any full-norm comparison pays the actual source operator's proved lower mass. -/
theorem actual_full_operator_comparison_norm_lower {A : ℝ} (hA : 1 ≤ A)
    (B : ComplexL2 →L[ℂ] ComplexL2) :
    2 * A - Real.log 2 - 1 - ‖B‖ ≤ ‖mangoldtInteraction A - B‖ := by
  have hl := mangoldtInteraction_norm_lower hA
  have ht := norm_add_le (mangoldtInteraction A - B) B
  rw [sub_add_cancel] at ht
  linarith

end FormalResearch.RiemannHypothesis.SourceMangoldtNorm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=837802e19ef1963975962a80262753c9c90e18dc276c1008c78bef450a4772d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNormComparison/Variant2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
