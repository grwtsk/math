# Lsym Pi — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93f4864e1da5e19a4f61db4256e234bb13a6d2eb` · SHA-256 `a4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.Operators.LtPi
import SpectralProof.Core.Integrability
import Mathlib.Analysis.Trace
import Mathlib.Analysis.NormedSpace.OperatorNorm
import Mathlib.Topology.Algebra.Module.Basic

noncomputable section

open Real Complex MeasureTheory Filter

namespace SpectralProof.Operators

variable {ϕ : ℝ → ℝ}

/--
Canonical operator \( L_{\text{sym}}^\varphi := \lim_{t → 0^+} L_t^\varphi \),
defined as a limit in the trace-norm topology of `Hϕ := L²(ℝ, e^{ϕ(x)} dx)`.
Assumes exponential decay of Φ via Paley–Wiener and ϕ(x) ≥ α|x| for α > π.
-/
noncomputable def Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    Hϕ ϕ →ₗ[ℂ] Hϕ ϕ :=
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops : ℕ → TraceClass ℂ (Hϕ ϕ) := fun n =>
    TraceClass.mk' (seq n) (by
      apply SpectralProof.Core.integrable_KtWeighted Φ (1 / (n + 1 : ℝ)) ϕ hϕ
      -- Use Paley–Wiener decay for Φ here
      sorry)
  let lim := Metric.completeSpace.hasLimit (ops : ℕ → TraceClass ℂ (Hϕ ϕ))
  TraceClass.continuousLinearMap lim.some

/--
Trace-class inclusion of `Lsym_pi`, via closure of the trace-class ideal.
-/
lemma trace_class_Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    TraceClass ℂ (Hϕ ϕ) (Lsym_pi Φ hϕ) := by
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops := fun n ↦ TraceClass.mk' (seq n)
    (SpectralProof.Core.integrable_KtWeighted Φ _ ϕ hϕ sorry)
  exact TraceClass.limit_closed ops

/--
If Φ is real on the real axis (i.e. Φ(-λ) = conj Φ(λ)), then Lsym_π is symmetric.
This implies self-adjointness since Lsym_π is compact.
-/
lemma self_adjoint_Lsym_pi
    (Φ : ℝ → ℂ)
    (hΦ_symm : ∀ λ, Φ (-λ) = Complex.conj (Φ λ))
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    IsSelfAdjoint (Lsym_pi Φ hϕ) := by
  -- Strategy: show kernel k_t is real-valued and even ⇒ kernel symmetric
  -- then L_t are symmetric ⇒ limit is symmetric
  sorry

end SpectralProof.Operators
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcc565a1a02102cd4d65fa78677d4a77fddc12d4081c95d4b1183d53c5eece5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LsymPi/Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
