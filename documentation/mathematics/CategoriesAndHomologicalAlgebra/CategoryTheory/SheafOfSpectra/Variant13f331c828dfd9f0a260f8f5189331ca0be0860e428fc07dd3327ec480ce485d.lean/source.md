# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfSpectra.Variant13f331c828dfd9f0a260f8f5189331ca0be0860e428fc07dd3327ec480ce485d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `117e3a65090b2561d08a61f95ca129fc8e2fe38d` · SHA-256 `13f331c828dfd9f0a260f8f5189331ca0be0860e428fc07dd3327ec480ce485d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SheafOfSpectra

/-!
# Folder.Theorem.AdelicInfinityTopos.SheafOfSpectra

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-of-spectra contract exposures.
Ontology: proof.adelic.sheaf_of_spectra
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SheafOfSpectra

theorem sheaf_of_spectra_has_descent
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    (F : Folder.AdelicInfinityTopos.SheafOfSpectra J) :
    F.descent :=
  Folder.AdelicInfinityTopos.sheaf_of_spectra_has_descent F

theorem sheaf_of_spectra_has_hyperdescent
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    (F : Folder.AdelicInfinityTopos.SheafOfSpectra J) :
    F.hyperdescent :=
  Folder.AdelicInfinityTopos.sheaf_of_spectra_has_hyperdescent F

end SheafOfSpectra
end AdelicInfinityTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0596cfa0c79339a682af493051fe33bb8e6e9df037d1ee1488f19293a877875 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant13f331c828dfd9f0a260f8f5189331ca0be0860e428fc07dd3327ec480ce485d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
