# Complete source: GRWTSK.LinearAlgebra.Schrodinger.Sampling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fc0cc431c9fea0ab66e9a47905f4d3cae585d7e` · SHA-256 `d4bd1fd167f39a85dfde1dc14296e162590cff6f56b911c8b673939a3e7d3425`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import GRWTSK.LinearAlgebra.Schrodinger.SampledPotential
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform

/-- Labels classify formula families; observational equality requires its own proof. -/
inductive PotentialFamily where
  | almostMathieu | oneFrequency | multiFrequency | nonstationary
  deriving DecidableEq, Repr

def SameSampledPotential (v w : ℝ → ℝ) (α θ : ℝ) : Prop :=
  ∀ n : ℤ, sampledPotential v α θ n = sampledPotential w α θ n

def discreteAction (V : ℤ → ℝ) (ψ : ℤ → ℝ) (n : ℤ) : ℝ :=
  ψ (n+1) + ψ (n-1) + V n * ψ n

theorem equal_samples_equal_action {v w : ℝ → ℝ} {α θ : ℝ}
    (h : SameSampledPotential v w α θ) (ψ : ℤ → ℝ) (n : ℤ) :
    discreteAction (sampledPotential v α θ) ψ n =
      discreteAction (sampledPotential w α θ) ψ n := by
  simp only [discreteAction,h n]

/-- Fixed sampling can alias distinct continuous periodic formulas. -/
theorem sampled_alias :
    SameSampledPotential (fun x => Real.sin x + Real.sin (2*x)) (fun _ => 0) 0 0 ∧
    (fun x : ℝ => Real.sin x + Real.sin (2*x)) ≠ (fun _ => (0:ℝ)) := by
  constructor
  · intro n; simp [sampledPotential]
  · intro h
    have hx := congrFun h (Real.pi/2)
    have h2 : 2*(Real.pi/2)=Real.pi := by ring
    simp [h2] at hx

theorem waveform_equality_implies_samples {v w : ℝ → ℝ} (h : v = w) (α θ : ℝ) :
    SameSampledPotential v w α θ := by subst w; intro n; rfl

end GRWTSK.Analysis.Waveform
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afb7039799ee2d7a87675822c759854ee677fb0a53a7c4de3d99ecd238114a77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
