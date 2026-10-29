# Sheaf Of Spectra Presheaf Of Spectra — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1876205bf987f7ed66c489c2a104237b7b55593a` · SHA-256 `5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.GrothendieckTopology
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.SheafOfSpectra

Radiation role: research-boundary
BinaryMatrix spine: This module records sheaves of spectra as contract data over a site.
Ontology: adelic.sheaf_of_spectra
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

open ResearchTopos

structure PresheafOfSpectra
    (C : SiteCategory) where
  obj : C.Obj → SpectrumObject
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X →
      SpectrumMorphism (obj X) (obj Y)

structure SheafOfSpectra
    {C : SiteCategory}
    (J : GrothendieckTopology C) where
  presheaf : PresheafOfSpectra C
  descent : Prop
  descent_certified : descent
  hyperdescent : Prop
  hyperdescent_certified : hyperdescent
  homotopyCoherent : Prop

theorem sheaf_of_spectra_has_descent
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) :
    F.descent :=
  F.descent_certified

theorem sheaf_of_spectra_has_hyperdescent
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) :
    F.hyperdescent :=
  F.hyperdescent_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c011f61fc6be239d6128c68b77894331858a31438f642d216f5715e92e4ece8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
