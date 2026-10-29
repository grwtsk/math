# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SetIntegral.Variante7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10afd47f147f52a35cfd07b64ef6dedb13e30e0c` · SHA-256 `e7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Probability.Kernel.Integral

/-! # Integral against a kernel over a set

This file contains lemmas about the integral against a kernel and over a set.

-/

open MeasureTheory ProbabilityTheory

namespace ProbabilityTheory.Kernel

variable {X Y E : Type*} {mX : MeasurableSpace X} {mY : MeasurableSpace Y}
  [NormedAddCommGroup E] [NormedSpace ℝ E] (κ : Kernel X Y)

lemma integral_integral_indicator (μ : Measure X) (f : X → Y → E) {s : Set X}
    (hs : MeasurableSet s) :
    ∫ x, ∫ y, s.indicator (f · y) x ∂κ x ∂μ = ∫ x in s, ∫ y, f x y ∂κ x ∂μ := by
  simp_rw [← integral_indicator hs, Kernel.integral_indicator₂]

end ProbabilityTheory.Kernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f04e175c67f7ccb3bb1eb2a3a5fe8f3c98f25271875937168cfb038fbcf546ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variante7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
