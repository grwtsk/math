# Place — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54bee40852c507cdad968af8560fe1be45137e84` · SHA-256 `3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.Place

/-!
# Folder.Theorem.AdelicInfinityTopos.Place

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports adelic place separation facts.
Ontology: proof.adelic.place
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace Place

theorem archimedean_ne_finite
    (p : Nat) :
    Folder.AdelicInfinityTopos.Place.archimedean ≠
      Folder.AdelicInfinityTopos.Place.finite p :=
  Folder.AdelicInfinityTopos.archimedean_ne_finite p

theorem bad_tmf_prime_is_finite
    {v : Folder.AdelicInfinityTopos.Place}
    (h : Folder.AdelicInfinityTopos.IsBadTMFPrime v) :
    ∃ p, v = Folder.AdelicInfinityTopos.Place.finite p :=
  Folder.AdelicInfinityTopos.bad_tmf_prime_is_finite h

end Place
end AdelicInfinityTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce9f9e7551e98154b2c78a5a789f6602534e36c87bec1164fa7411c3520993cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Place/Variant3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
