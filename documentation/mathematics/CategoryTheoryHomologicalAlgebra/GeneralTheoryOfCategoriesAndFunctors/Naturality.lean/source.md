# Naturality — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `823b5afc6434ca11870ab2e7d54f156f53097984` · SHA-256 `5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Comparison.Construction
import Mathlib.CategoryTheory.NatTrans

/-!
# Natural comparisons

Functorial comparisons carry an actual natural transformation.  Naturality
and uniqueness are proof data; the word “canonical” alone supplies neither.
-/

namespace DAF.Comparison

open CategoryTheory

universe u v

/-- A categorical comparison represented by a natural transformation. -/
structure Natural
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F G : Functor C D) where
  hom : NatTrans F G

namespace Natural

def id
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : Natural F F :=
  ⟨NatTrans.id F⟩

def comp
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) : Natural F H :=
  ⟨f.hom.vcomp g.hom⟩

@[simp]
theorem id_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : (id F).hom = NatTrans.id F :=
  rfl

@[simp]
theorem comp_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) :
    (g.comp f).hom = f.hom.vcomp g.hom :=
  rfl

end Natural

end DAF.Comparison
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8258c4edb88438acccd79fb7d2a73f5770c0924a1764f82332aade02289f2f24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
