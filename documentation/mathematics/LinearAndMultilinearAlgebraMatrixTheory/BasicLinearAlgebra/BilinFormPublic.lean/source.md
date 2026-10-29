# Bilin Form Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `687e64902214441819b32f8b06321b940a557832` · SHA-256 `518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Kirill Kondrashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash, Kirill Kondrashov
-/
module

public import Mathlib.LinearAlgebra.ExteriorPower.Basis

/-!
# Bilinear forms on exterior powers

The file is a home for results about the bilinear forms on exterior powers of a module.

## Main definitions / results:

* `LinearMap.BilinForm.exteriorPower`: a bilinear form on a module induces a bilinear form on its
  exterior powers.
* `LinearMap.BilinForm.bijective_exteriorPower`: if a module carries a bijective bilinear form,
  the induced bilinear forms on its exterior powers is also bijective.

-/

noncomputable section

namespace LinearMap.BilinForm

open Function exteriorPower

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
  (B : LinearMap.BilinForm R M) (n : ℕ)

/-- A bilinear form on `M` induces a bilinear form on each exterior power. -/
public protected def exteriorPower : LinearMap.BilinForm R (⋀[R]^n M) :=
  (pairingDual R M n).comp (map n B)

@[simp] lemma bilinForm_ιMulti_ιMulti (v w : Fin n → M) :
    B.exteriorPower n (ιMulti R n v) (ιMulti R n w) = (Matrix.of fun i j ↦ B (v j) (w i)).det := by
  simp [LinearMap.BilinForm.exteriorPower]

public lemma bijective_exteriorPower [Module.Free R M] [Module.Finite R M] (hB : Bijective B) :
    Bijective (B.exteriorPower n) := by
  refine (bijective_pairingDual R M n).comp ⟨?_, ?_⟩
  · exact exteriorPower.map_injective (LinearEquiv.ofBijective _ hB).symm (by ext; simp)
  · exact exteriorPower.map_surjective hB.surjective

end LinearMap.BilinForm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=402eff4846adfe51cd730b774683aec1b2e3de9d4289fbf74640931fe1772baa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinForm/Variant518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
