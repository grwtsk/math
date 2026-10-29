# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtypeNeLift.Variant60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a666263a58d70c7bccf44f46a0328f13fd51f8bf` · SHA-256 `60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Aesop
public import Mathlib.Data.Subtype
public import Mathlib.Util.CompileInductive

/-!
# Extending a function from the complement of a singleton

In this file, we define `Function.subtypeNeLift` which allows to
extend a (dependent) function defined on the complement of a singleton.

-/

@[expose] public section

namespace Function

variable {ι : Type*} [DecidableEq ι] {M : ι → Type*} (i₀ : ι)
  (f : ∀ (j : { i // i ≠ i₀ }), M j) (x : M i₀)

/-- Given `i₀ : ι` and `x : M i₀`, this is the (dependent) map `(i : ι) → M i`
whose value at `i₀` is `x` and which extends a given map on the complement of `{i₀}`. -/
def subtypeNeLift (i : ι) : M i :=
  if h : i = i₀ then by rw [h]; exact x else f ⟨i, h⟩

@[simp]
lemma subtypeNeLift_self : subtypeNeLift i₀ f x i₀ = x := dite_eq_left rfl

lemma subtypeNeLift_of_neq (i : ι) (h : i ≠ i₀) :
    subtypeNeLift i₀ f x i = f ⟨i, h⟩ := dite_eq_right h

@[simp]
lemma subtypeNeLift_restriction (φ : ∀ i, M i) (i₀ : ι) :
    subtypeNeLift i₀ (fun i ↦ φ i) (φ i₀) = φ := by
  ext i
  by_cases h : i = i₀
  · subst h
    simp
  · rw [subtypeNeLift_of_neq _ _ _ _ h]

end Function
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8cd2f06602de5b0d5d6ea8ecfb2af61563323e8544ac4ebdceca74d38ce67f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtypeNeLift/Variant60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
