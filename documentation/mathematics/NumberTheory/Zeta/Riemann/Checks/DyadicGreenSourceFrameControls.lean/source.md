# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenSourceFrameControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `822437703526caaa83501c9e4c8d0cc64f23becd` · SHA-256 `d0b45a0ef90ddbdc157ed26d69d5570fe6215d52700b420f1634ebf62920df79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenSourceFrameControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem frame_norm_is_actual_augmented_energy (X : ℕ) :
    greenSourceFrameNormSq X = augmentedEnergy X :=
  greenSourceFrameNormSq_eq_augmentedEnergy X

theorem frame_atom_count_is_source_window_plus_background (X : ℕ) :
    greenSourceFrameAtomCount X = X + 1 :=
  greenSourceFrameAtomCount_eq X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenSourceFrameControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d06823ae894a1ba2d7f06a2843a7343a6095f723d7b1c75462c28730e1226eb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicGreenSourceFrameControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
