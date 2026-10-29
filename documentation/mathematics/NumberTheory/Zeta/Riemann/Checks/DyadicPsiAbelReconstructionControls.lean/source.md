# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPsiAbelReconstructionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b14f64ba3dd23eddf7aea01444f076ee3379ec6c` · SHA-256 `adac4ac8a07ca8230948f8d0e0678c0cc25bf2b8ed6f4747a2b0a464167c74bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem octave_psi_envelope_controls_cumulative
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |cumulative X t| ≤ (3 * A + 1) / (X : ℝ) :=
  cumulative_abs_le_of_psiEnvelope hX hA ht

end GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37457e909a98ba8a68c05ff062c5438ec8ba70bc055f08ac73135ca74d050c76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPsiAbelReconstructionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
