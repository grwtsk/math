# Source Triangular Frame Band Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66592f8a65564f21c6e96d58487167a0bd5ba07e` · SHA-256 `b2f5e737401293459544d7ad4f1e90fe56b62b6362673109ebae86cbef9481a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceTriangularSignObstruction
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
The actual adaptive attenuation retains a uniformly positive near-diagonal band.
Together with the retained growing harmonic log bands, this tests the optional
uniform-frame approach. It is not a bound on the actual signed arithmetic rows.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceTriangularFrameBand

open SourceTriangularSignObstruction SourceAdaptiveTriangularConsumer
open SourceMangoldtNorm SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem attenuated_near_diagonal_lower (A t : ℝ) (hA : 1 ≤ A)
    (ht : |t| ≤ A / 20) : 237 / 320 ≤ attenuatedCorrelation A t := by
  have hAp : 0 < A := by linarith
  have hsource := sourceCorrelation_sub_one_abs_le hA t
  have hsmall : 5 * |t| / A ≤ 1 / 4 := by
    apply (div_le_iff₀ hAp).mpr
    linarith
  have hc : 3 / 4 ≤ sourceCorrelation explicitSecondDerivative A t := by
    have hl := (abs_le.mp hsource).1
    linarith
  have hband : 4 * A ≤ bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hr : |t| / bandwidth A ≤ 1 / 80 := by
    apply (div_le_iff₀ (bandwidth_pos A hA)).mpr
    linarith
  have hw : 79 / 80 ≤ 1 - |t| / bandwidth A := by linarith
  have hm : (79 / 80 : ℝ) * (3 / 4) ≤
      (1 - |t| / bandwidth A) * sourceCorrelation explicitSecondDerivative A t :=
    mul_le_mul hw hc (by norm_num) (by linarith)
  unfold attenuatedCorrelation
  norm_num at hm ⊢
  exact hm

end FormalResearch.RiemannHypothesis.SourceTriangularFrameBand
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58f4da24654483cf1368427dd38a405a7f562c38ac608731cf762f4122de4294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularFrameBand/Variantb2f5e737401293459544d7ad4f1e90fe56b62b6362673109ebae86cbef9481a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
