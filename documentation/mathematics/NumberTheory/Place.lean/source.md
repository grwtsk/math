# Place — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a47b2d1b39247b500abf50a6e212d73d919852a` · SHA-256 `7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.AdelicInfinityTopos.Place

Radiation role: research-boundary
BinaryMatrix spine: This module indexes adelic spectral fibers rather than BinaryMatrix carriers.
Ontology: adelic.place
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

inductive Place where
  | archimedean : Place
  | finite : Nat → Place
deriving DecidableEq, Repr

def IsFinitePrimePlace (v : Place) : Prop :=
  ∃ p : Nat, v = Place.finite p ∧ Nat.Prime p

def IsBadTMFPrime (v : Place) : Prop :=
  v = Place.finite 2 ∨ v = Place.finite 3

def IsArchimedeanPlace (v : Place) : Prop :=
  v = Place.archimedean

theorem archimedean_ne_finite
    (p : Nat) :
    Place.archimedean ≠ Place.finite p := by
  intro h
  cases h

theorem bad_tmf_prime_is_finite
    {v : Place}
    (h : IsBadTMFPrime v) :
    ∃ p, v = Place.finite p := by
  rcases h with h2 | h3
  · exact ⟨2, h2⟩
  · exact ⟨3, h3⟩

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86204ff9c982b0850989b93213f5c50c006085fa53a92f2dd828ee454abb52bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
