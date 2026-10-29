# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Support.Variantbea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87665519af4ef83b4ab903f33b449216e28d0585` · SHA-256 `bea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Analysis.Calculus.Deriv.Basic

/-!
# Support of the derivative of a function

In this file we prove that the (topological) support of a function includes the support of its
derivative. As a corollary, we show that the derivative of a function with compact support has
compact support.

## Keywords

derivative, support
-/


universe u v

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {f : 𝕜 → E}

/-! ### Support of derivatives -/


section Support

open Function

theorem support_deriv_subset : support (deriv f) ⊆ tsupport f := by
  intro x
  rw [← not_imp_not]
  intro h2x
  rw [notMem_tsupport_iff_eventuallyEq] at h2x
  exact notMem_support.mpr (h2x.deriv_eq.trans (deriv_const x 0))

protected theorem HasCompactSupport.deriv (hf : HasCompactSupport f) :
    HasCompactSupport (deriv f) :=
  hf.mono' support_deriv_subset

end Support
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e125e469ea987cc1dd196e14cb11c3ef8d7847351b1b8a9760394a853f69f1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantbea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
