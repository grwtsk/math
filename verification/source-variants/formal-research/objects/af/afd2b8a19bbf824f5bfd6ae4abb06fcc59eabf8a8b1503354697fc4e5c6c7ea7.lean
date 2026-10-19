import Folder.DerivedSheaf.KTheoryIndex
import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.CanonicalPath.FamiliesIndexClass

Radiation role: research-boundary
BinaryMatrix spine: This module weakens pointwise nonzero targets to a families index class.
Ontology: canonical.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
An arithmetic family with a relevance predicate over its parameter space.
-/
structure ArithmeticFamily where
  ParameterSpace : Type
  Fiber : ParameterSpace → Type
  relevant : ParameterSpace → Prop
  sourceLabel : String

/--
A family-level index class.

This is deliberately weaker than pointwise universal nonvanishing. It records a
nontrivial class over the family and a supplied specialization relation to
fiberwise indices.
-/
structure FamiliesIndexClass
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexAt :
    ∀ x : F.ParameterSpace, F.relevant x → DerivedSheaf.KTheoryIndex M
  familyClass : DerivedSheaf.KTheoryClass M.K
  specializesToFibers : Prop
  specializesToFibers_certified : specializesToFibers
  nontrivialAsFamilyClass : Prop
  nontrivialAsFamilyClass_certified : nontrivialAsFamilyClass
  sourceLabel : String

theorem families_index_nontrivial
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (I : FamiliesIndexClass M F) :
    I.nontrivialAsFamilyClass :=
  I.nontrivialAsFamilyClass_certified

theorem families_index_specializes
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (I : FamiliesIndexClass M F) :
    I.specializesToFibers :=
  I.specializesToFibers_certified

end CanonicalPath
end Folder
