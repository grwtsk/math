# Complete source: GRWTSK.Algebra.QuarticResolventRingNaturality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854fa48f752c5363cb235a492428bd7991f3c6f1` · SHA-256 `b3d20a038d20bd538acbacdd3cb7e8626e3a5ebd777d7a377a2fa6f1a95562ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.PolygonalQuarticDescent

/-!
# Quartic cubic-resolvent naturality over commutative rings

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The explicit cubic formula is natural under every unital homomorphism
of commutative rings, not just field embeddings. This remains valid
in positive characteristic and with nilpotents or zero divisors.
No root factorization or separability is used.
-/

namespace GRWTSK.Algebra.QuarticResolventRingNaturality

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent

variable {R S T : Type*}
variable [CommRing R] [CommRing S] [CommRing T]

/-- Naturality of the explicit cubic coefficient formula under an
arbitrary homomorphism of commutative rings. -/
theorem resolvent_map (f : R →+* S) (A B C D : R) :
    (adjacencyResolventOfMonicCoefficients A B C D).map f =
      adjacencyResolventOfMonicCoefficients (f A) (f B) (f C) (f D) := by
  simp [adjacencyResolventOfMonicCoefficients, adjacencyResolventFromVieta,
    map_add, map_sub, map_mul, map_pow, map_ofNat]

/-- Naturality is compatible with composition of commutative-ring
homomorphisms. -/
theorem resolvent_map_comp (f : R →+* S) (g : S →+* T)
    (A B C D : R) :
    ((adjacencyResolventOfMonicCoefficients A B C D).map f).map g =
      adjacencyResolventOfMonicCoefficients
        (g (f A)) (g (f B)) (g (f C)) (g (f D)) := by
  rw [resolvent_map, resolvent_map]

end GRWTSK.Algebra.QuarticResolventRingNaturality
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b0b1c847d65784848890e670dae4160a8e5ec8f0213223eab44f1e30e3f4f41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticResolventRingNaturality.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
