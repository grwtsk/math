/-
NaturalTransformationWrapperAndComposition - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9
Organized SHA-256: 36c778f5d12433c315cda446cd16d689024433c5868c105506ced82156f8c677
PMD: 510.9.010.030 natural transformations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The complete actual NatTrans wrapper and its identity/vertical composition with exact Category/Functor premises and both rfl projection theorems. No existence, uniqueness or canonicality law is inferred from names. Exact per-component contents are its complete command map. Whole-file documentation below is copied unchanged and can describe other archived/components.
-/

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
