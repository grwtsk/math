# Strongly Measurable Inner — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d70ac499372c9df610dd5a092e23f0e686b48ffb` · SHA-256 `0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne, Sébastien Gouëzel
-/
import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable

/-!
# Inner products of strongly measurable functions are strongly measurable.

-/

variable {α 𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace MeasureTheory

/-! ## Strongly measurable functions -/


local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

namespace StronglyMeasurable

@[fun_prop]
protected theorem inner {_ : MeasurableSpace α} {f g : α → E} (hf : StronglyMeasurable f)
    (hg : StronglyMeasurable g) : StronglyMeasurable fun t => ⟪f t, g t⟫ :=
  Continuous.comp_stronglyMeasurable continuous_inner (hf.prodMk hg)

end StronglyMeasurable

namespace AEStronglyMeasurable
variable {m m₀ : MeasurableSpace α} {μ : Measure[m₀] α} {f g : α → E} {c : E}

@[fun_prop]
protected theorem re {f : α → 𝕜} (hf : AEStronglyMeasurable[m] f μ) :
    AEStronglyMeasurable[m] (fun x => RCLike.re (f x)) μ :=
  RCLike.continuous_re.comp_aestronglyMeasurable hf

@[fun_prop]
protected theorem im {f : α → 𝕜} (hf : AEStronglyMeasurable[m] f μ) :
    AEStronglyMeasurable[m] (fun x => RCLike.im (f x)) μ :=
  RCLike.continuous_im.comp_aestronglyMeasurable hf

@[fun_prop]
protected theorem inner {_ : MeasurableSpace α} {μ : Measure α} {f g : α → E}
    (hf : AEStronglyMeasurable[m] f μ) (hg : AEStronglyMeasurable[m] g μ) :
    AEStronglyMeasurable[m] (fun x => ⟪f x, g x⟫) μ :=
  continuous_inner.comp_aestronglyMeasurable (hf.prodMk hg)

@[fun_prop]
lemma inner_const (hf : AEStronglyMeasurable[m] f μ) : AEStronglyMeasurable[m] (⟪f ·, c⟫) μ :=
  hf.inner aestronglyMeasurable_const

@[fun_prop]
lemma const_inner (hg : AEStronglyMeasurable[m] g μ) : AEStronglyMeasurable[m] (⟪c, g ·⟫) μ :=
  aestronglyMeasurable_const.inner hg

end AEStronglyMeasurable

end MeasureTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20e72002882fd403d33b7aa39cc4186a4d94bdfdb0cb1315f5ad49242970b3c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
