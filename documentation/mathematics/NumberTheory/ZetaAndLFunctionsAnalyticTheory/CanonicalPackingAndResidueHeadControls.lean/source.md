# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalPackingAndResidueHeadControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `953c2134dfb9959fff7aaab164924a18a526b71e` · SHA-256 `72420573c773096193fc9d6df1437d5f7ea8ef4a10071df41f7c3eddf8b804d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPackingNecessity
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem comparison_requires_arithmetic_decay
    {s : ℂ} (h : CanonicalPrimePowerPackingComparisonAtZero s) :
    Tendsto canonicalPrimePowerPackingSequence.valueAt atTop (𝓝 0) :=
  h.packing_tendsto_zero

theorem zero_multiplier_has_zero_head (T : ℝ) :
    nontrivialZeroResidueHead T (fun _ => 0) = 0 := by
  simp [nontrivialZeroResidueHead]

end GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d59b290b55ca5e507b0f69d23f57fff2ef448a54b29efc690adb3453fbf2c603 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
