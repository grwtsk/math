# Kernel Source Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9681c44c5313a83ca5fbf90ea35f608a05f464c` · SHA-256 `f265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.Core.FourierDecay
import SpectralProof.Core.Weight
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.ExpLog

noncomputable section

open Real Complex MeasureTheory

namespace SpectralProof.Core

variable {ϕ : ℝ → ℝ}

/--
Unweighted convolution kernel:
\[
K_t(x, y) := k_t(x - y)
\]
This is the base kernel before applying exponential weighting.
-/
def Kt (kt : ℝ → ℂ) : ℝ × ℝ → ℂ :=
  fun ⟨x, y⟩ ↦ kt (x - y)

/--
Exponentially weighted convolution kernel:
\[
K_t^ϕ(x, y) := K_t(x, y) \cdot e^{ϕ(x)/2} \cdot e^{ϕ(y)/2}
\]
Used to define `Lt_pi` on the weighted Hilbert space `Hϕ`.
-/
def KtWeighted (kt : ℝ → ℂ) (ϕ : ℝ → ℝ) : ℝ × ℝ → ℂ :=
  fun ⟨x, y⟩ ↦ kt (x - y) * Real.exp (ϕ x / 2) * Real.exp (ϕ y / 2)

/--
Measurability of the weighted kernel on ℝ².
Required to show `KtWeighted` is Bochner-integrable.
-/
lemma measurable_KtWeighted (kt : ℝ → ℂ) (ϕ : ℝ → ℝ)
    (hkt : Measurable kt) (hϕ : Measurable ϕ) :
    Measurable (KtWeighted kt ϕ) := by
  apply Measurable.mul
  · exact hkt.comp (measurable_sub.comp ⟨measurable_fst, measurable_snd⟩)
  · apply Measurable.mul
    · exact (continuous_exp.comp (continuous_const.mul (hϕ.comp measurable_fst) continuous_const)).measurable
    · exact (continuous_exp.comp (continuous_const.mul (hϕ.comp measurable_snd) continuous_const)).measurable

end SpectralProof.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32f2fca2d217bced39ad243fd021b646a28295eaa21ad507745fab72ae504ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
