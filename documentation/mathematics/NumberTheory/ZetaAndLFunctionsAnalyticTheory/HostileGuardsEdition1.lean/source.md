# Hostile Guards Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bd7012e069c535a47bfe56782446ebcfaac2c87` · SHA-256 `358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationRegularity PrimePowerDescent

/-- The exact probe keeps its true squared norm, including non-unit coefficients. -/
example (ε : ℝ) : ‖interactionProbe ε‖ ^ 2 = 1 + ε ^ 2 := by
  have h := interactionProbe_correlation ε 0
  rw [translation_zero] at h
  have hp := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (Real.log 2)
    probeScale_pos (probeScale_log_two.le.trans (le_abs_self _))
  have hn := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (-Real.log 2)
    probeScale_pos (by simpa only [abs_neg] using
      probeScale_log_two.le.trans (le_abs_self (Real.log 2)))
  simp only [zero_sub, zero_add, sourceCorrelation_zero probeScale_pos, hp, hn,
    mul_one, mul_zero, add_zero] at h
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  exact h

/-- Removing the index-two membership guard would give the wrong hostile value. -/
example : mangoldtInteraction 0 = 0 := by
  norm_num [mangoldtInteraction, primePowerInventory]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cebca18489a2e208be32058af7eb0ce90224126c859923f89467a1c9e4a6f69c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileGuards/Variant358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
