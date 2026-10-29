# E2 MDifferentiable Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `655089275a1c9b56fb0b8f22ce06f968d3ef7480` · SHA-256 `1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

module

public import Mathlib.NumberTheory.ModularForms.DedekindEta

/-!
# MDifferentiability of the weight 2 Eisenstein series

We show that the weight 2 Eisenstein series `E2` is MDifferentiable (i.e. holomorphic as a
function `ℍ → ℂ`). The proof uses the relation between `E2` and the logarithmic derivative of
the Dedekind eta function.
-/

public section

open UpperHalfPlane hiding I
open Real Complex EisensteinSeries ModularForm

open scoped Manifold


--This proof was provided by Gauss to the sphere packing project.
/-- The weight 2 Eisenstein series `E2` is MDifferentiable -/
lemma E2_mdifferentiable : MDiff E2 := by
  rw [UpperHalfPlane.mdifferentiable_iff]
  have hη : DifferentiableOn ℂ η _ := fun z hz ↦
    (differentiableAt_eta_of_mem_upperHalfPlaneSet hz).differentiableWithinAt
  have hlog : DifferentiableOn ℂ (logDeriv η) _ :=
    (hη.deriv isOpen_upperHalfPlaneSet).div hη (fun _ hz ↦ eta_ne_zero hz)
  refine (hlog.const_mul (π * I / 12)⁻¹).congr (fun z hz ↦ ?_)
  simp [ofComplex_apply_of_im_pos hz, logDeriv_eta_eq_E2 ⟨z, hz⟩]
  field_simp

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=215bd2b5a16a0adf2518759355dd382b24faddff88d06c2ce2deb81614fce505 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
