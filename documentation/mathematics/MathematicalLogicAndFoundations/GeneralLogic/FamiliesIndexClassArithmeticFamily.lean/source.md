# Families Index Class Arithmetic Family — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ffd041afa76baaeb1eaa192196366dd02e3a440` · SHA-256 `afd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39f012c8803f6f479c1d1c7186298835c401d609457246c04e13b5541557a992 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
