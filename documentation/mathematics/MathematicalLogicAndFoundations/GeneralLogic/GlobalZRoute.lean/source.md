# Global ZRoute — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `295b202af61cfdb3e38f5bdbae2dfbe82e3a848b` · SHA-256 `7680cd98504bbd4a9107e5e2652c504f6812851cae0012d06e29064dcc9d25d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.GlobalZRoute

Radiation role: research-boundary
BinaryMatrix spine: This module documents the global-over-Z strategy as contract data.
Ontology: adelic.global_z_route
Pivot role: arithmetic
Zero typology: none
Contract boundary: strategy
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure GlobalZTMFRoute where
  globalTMF : SpectrumObject
  jInvariantCoordinate : Prop
  allPrimeComponentsTracked : Prop
  allPrimeComponentsTracked_certified : allPrimeComponentsTracked
  stringBordismBakedIn : Prop
  adamsNovikovComplexity : Prop

theorem global_route_tracks_all_primes
    (R : GlobalZTMFRoute) :
    R.allPrimeComponentsTracked :=
  R.allPrimeComponentsTracked_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cf641ac09ba4acac61bd025599c5db3d5e7764acf7396a77eaa3ddf1a8404b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalZRoute/Variant7680cd98504bbd4a9107e5e2652c504f6812851cae0012d06e29064dcc9d25d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
