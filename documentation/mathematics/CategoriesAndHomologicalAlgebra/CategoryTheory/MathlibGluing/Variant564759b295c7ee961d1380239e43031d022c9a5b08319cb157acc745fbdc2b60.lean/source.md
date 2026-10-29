# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MathlibGluing.Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fbf548ba1f7a2ea8574992bb7d8d2410602d9f6` · SHA-256 `564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.FiveLayer

open CategoryTheory

universe u v

namespace Think.Knowledge.Sheaf

/-!
Mathlib-native sheaf gluing boundary for Knowledge.

The theorem is stated over `CategoryTheory.Sieve`, `GrothendieckTopology`, and
`Sheaf J (Type u)`.  The extraction point is explicit: the supplied
`KnowledgeGluingCondition` is the sheaf-condition interface consumed by Think's
Knowledge layer.
-/

structure KnowledgeGluingCondition
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u)) where
  uniqueGluing :
    ∀ (U : C) (S : Sieve U), S ∈ J U →
    ∀
      (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
        S f → F.val.obj (Opposite.op V)),
    (∀ ⦃V₁ V₂ W : C⦄
      (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
      (hf₁ : S f₁) (hf₂ : S f₂)
      (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
      g₁ ≫ f₁ = g₂ ≫ f₂ →
        F.val.map g₁.op (x f₁ hf₁) =
        F.val.map g₂.op (x f₂ hf₂)) →
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf)

/--
Sheaf gluing invariant: compatible local sections over a covering sieve uniquely
glue into one globally coherent Knowledge section.
-/
theorem unique_knowledge_gluing
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u))
    (condition : KnowledgeGluingCondition F)
    (U : C) (S : Sieve U) (hS : S ∈ J U)
    (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
      S f → F.val.obj (Opposite.op V))
    (compatible :
      ∀ ⦃V₁ V₂ W : C⦄
        (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
        (hf₁ : S f₁) (hf₂ : S f₂)
        (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
        g₁ ≫ f₁ = g₂ ≫ f₂ →
          F.val.map g₁.op (x f₁ hf₁) =
          F.val.map g₂.op (x f₂ hf₂)) :
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf) :=
by
  exact condition.uniqueGluing U S hS x compatible

end Think.Knowledge.Sheaf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f8dfbf280965a85fd033e6191d6682b8280d189d12deb71835eac070ab3957d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
