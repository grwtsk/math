# Complete source: GRWTSK.Analysis.MeasureTheory.ENNReal.Variantc9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea07df0066af19c8f7141afa6a5945212f9d351` · SHA-256 `c9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/

import Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable
import Mathlib.MeasureTheory.Integral.Lebesgue.Add

/-!
# Finitely strongly measurable functions with value in ENNReal

A measurable function with finite Lebesgue integral can be approximated by simple functions
whose support has finite measure.

-/

open MeasureTheory
open scoped ENNReal

variable {α : Type*} {m : MeasurableSpace α} {μ : Measure α} {f : α → ℝ≥0∞}

lemma ENNReal.finStronglyMeasurable_of_measurable (hf : ∫⁻ x, f x ∂μ ≠ ∞)
    (hf_meas : Measurable f) :
    FinStronglyMeasurable f μ :=
  ⟨SimpleFunc.eapprox f, measure_support_eapprox_lt_top hf_meas hf,
    SimpleFunc.tendsto_eapprox hf_meas⟩

lemma ENNReal.aefinStronglyMeasurable_of_aemeasurable (hf : ∫⁻ x, f x ∂μ ≠ ∞)
    (hf_meas : AEMeasurable f μ) :
    AEFinStronglyMeasurable f μ := by
  refine ⟨hf_meas.mk f, ENNReal.finStronglyMeasurable_of_measurable ?_ hf_meas.measurable_mk,
    hf_meas.ae_eq_mk⟩
  rwa [lintegral_congr_ae hf_meas.ae_eq_mk.symm]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94a9df6eb8da5a13c766f6ce2abcaef7a836830c2d2e3df7262b55d610283b36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ENNReal/Variantc9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
