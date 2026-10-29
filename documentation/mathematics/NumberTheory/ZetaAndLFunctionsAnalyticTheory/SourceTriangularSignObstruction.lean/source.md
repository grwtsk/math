# Source Triangular Sign Obstruction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `318efb64bdcad366c9227fd0918445f9eda7e9ab` · SHA-256 `4d53c797fe55982021574e1b477676161aa3a8196712e9c771da8bae2d81f515`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

/-!
The new actual triangular attenuation retains the source's negative sector.
It therefore does not create a real squared-kernel identification for Lamzouri's
finite counting inequality. This is a method obstruction, not an obstruction
to a compensated arithmetic upper bound or to the unchanged estimate target.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceTriangularSignObstruction

open SourcePairing SourceAdaptiveTriangularConsumer SourceCorrelationSignChange
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def attenuatedCorrelation (A t : ℝ) : ℝ :=
  (1 - |t| / bandwidth A) * sourceCorrelation explicitSecondDerivative A t

theorem attenuation_preserves_negative (A : ℝ) (hA : 1 ≤ A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧ attenuatedCorrelation A t < 0 := by
  obtain ⟨t, ht, htA, hn⟩ :=
    sourceCorrelation_exists_neg_in_half_support (by linarith : 0 < A)
  have hband : 2 * A < bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hratio : t / bandwidth A < 1 :=
    (div_lt_one (bandwidth_pos A hA)).mpr (htA.trans hband)
  refine ⟨t, ht, htA, ?_⟩
  unfold attenuatedCorrelation
  rw [abs_of_pos ht]
  exact mul_neg_of_pos_of_neg (by linarith) hn

theorem no_real_squared_kernel (A : ℝ) (hA : 1 ≤ A) (K : ℝ → ℝ) :
    ¬ ∀ t : ℝ, attenuatedCorrelation A t = K t ^ 2 := by
  intro h
  obtain ⟨t, _, _, ht⟩ := attenuation_preserves_negative A hA
  rw [h t] at ht
  exact (not_lt_of_ge (sq_nonneg (K t))) ht

end FormalResearch.RiemannHypothesis.SourceTriangularSignObstruction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2423a50b45ff517d1a3bf6da97a8d745d3d4bbfccca2f8ed75f8fec4a8a06967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularSignObstruction/Variant4d53c797fe55982021574e1b477676161aa3a8196712e9c771da8bae2d81f515.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
