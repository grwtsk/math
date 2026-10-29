# Restriction Map Adelic Restriction Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `104ec6b8387279580d1fd8b90912e4af1dfefc5c` · SHA-256 `1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.AdelicInfinityTopos.RestrictionMap

Radiation role: research-boundary
BinaryMatrix spine: This module makes adelic place-to-place restriction morphisms explicit.
Ontology: adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure AdelicRestrictionMap
    (S : AdelicSpectralSheaf)
    (i j : Place) where
  sourcePlace : Place := i
  targetPlace : Place := j
  sourceSpectrum : SpectrumObject
  targetSpectrum : SpectrumObject
  morphism : SpectrumMorphism sourceSpectrum targetSpectrum
  compatibleWithLocalFactors : Prop
  compatibleWithBoundary : Prop
  compatibleWithBoundary_certified : compatibleWithBoundary

theorem restriction_compatible_with_boundary
    {S : AdelicSpectralSheaf}
    {i j : Place}
    (rho : AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  rho.compatibleWithBoundary_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c052e3364e79f77eb437ca8ab18026969e66f8950221d93ac471f778d32479dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RestrictionMap/Variant1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
