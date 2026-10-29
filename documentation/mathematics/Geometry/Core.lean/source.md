# Core — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a205cfef5fa63c64b503fa4f264116868a4d109` · SHA-256 `2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Typed comparison maps

A `Spec` contains only a function.  Construction provenance, logical status,
coefficients, scope, and determinant transport are deliberately owned by
separate modules.  In particular, metadata attached elsewhere cannot turn a
map into an injection, surjection, or equivalence.
-/

namespace DAF.Comparison

universe u v w x

/-- A typed comparison map, without any claim about that map. -/
structure Spec (A : Sort u) (B : Sort v) where
  map : A → B

namespace Spec

/-- The identity comparison. -/
def id (A : Sort u) : Spec A A :=
  ⟨_root_.id⟩

/-- Composition, written as `g` after `f`. -/
def comp (g : Spec B C) (f : Spec A B) : Spec A C :=
  ⟨fun a ↦ g.map (f.map a)⟩

@[simp]
theorem id_apply (a : A) : (id A).map a = a :=
  rfl

@[simp]
theorem comp_apply (g : Spec B C) (f : Spec A B) (a : A) :
    (g.comp f).map a = g.map (f.map a) :=
  rfl

@[ext]
theorem ext {f g : Spec A B} (h : f.map = g.map) : f = g := by
  cases f
  cases g
  cases h
  rfl

theorem comp_assoc (h : Spec C D) (g : Spec B C) (f : Spec A B) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  rfl

@[simp]
theorem id_comp (f : Spec A B) : (id B).comp f = f :=
  rfl

@[simp]
theorem comp_id (f : Spec A B) : f.comp (id A) = f :=
  rfl

end Spec

end DAF.Comparison
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75d59133fb1f70f6df0939fd9eca1834ec50b06a0a7f958bbfef44fbde64c171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Core/Variant2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
