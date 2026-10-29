# Tonelli API — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d7aa59b88bbd31e9cc78600f0db7b38b543bc1b` · SHA-256 `781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Integral.Prod

open MeasureTheory

namespace ThetaTransportScratch

variable {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
  {μ : Measure α} {ν : Measure β} [SFinite μ] [SFinite ν]

/-- Nonnegative Tonelli, lifted to totalized real integrals through finite
slices in both directions. Outer integrability is not assumed. -/
theorem nonnegative_integral_integral_swap
    {f : α → β → ℝ}
    (hf : Measurable (Function.uncurry f))
    (hpos : ∀ x y, 0 ≤ f x y)
    (hleft : ∀ x, Integrable (f x) ν)
    (hright : ∀ y, Integrable (fun x => f x y) μ) :
    (∫ x, ∫ y, f x y ∂ν ∂μ) = ∫ y, ∫ x, f x y ∂μ ∂ν := by
  have hl (x : α) :
      ENNReal.ofReal (∫ y, f x y ∂ν) = ∫⁻ y, ENNReal.ofReal (f x y) ∂ν :=
    ofReal_integral_eq_lintegral_ofReal (hleft x)
      (Filter.Eventually.of_forall (hpos x))
  have hr (y : β) :
      ENNReal.ofReal (∫ x, f x y ∂μ) = ∫⁻ x, ENNReal.ofReal (f x y) ∂μ :=
    ofReal_integral_eq_lintegral_ofReal (hright y)
      (Filter.Eventually.of_forall fun x => hpos x y)
  rw [integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun x => integral_nonneg (hpos x))
      hf.stronglyMeasurable.integral_prod_right.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun y => integral_nonneg fun x => hpos x y)
      hf.stronglyMeasurable.integral_prod_left.aestronglyMeasurable]
  simp_rw [hl, hr]
  exact congrArg ENNReal.toReal (lintegral_lintegral_swap hf.ennreal_ofReal.aemeasurable)

#print axioms nonnegative_integral_integral_swap

end ThetaTransportScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3d78be1b26c0522f85c9e84d67742b3de50fa863dd9254844f1f18290611a74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
