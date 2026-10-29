# Linking Pairing — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bafdbbe228a90a2d4680b7f35019706b258065f2` · SHA-256 `1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.TorsionLedger
import Mathlib.Topology.Instances.AddCircle.Defs

/-!
# Manifold-scoped torsion linking witnesses

The nonsingular torsion linking pairing is optional evidence for a closed
oriented manifold.  Relative and twisted variants require separate
certificates; no such pairing is attached to an arbitrary finite complex.
-/

namespace Mathematics.Homology

universe u v

/-- Hypotheses under which an absolute torsion linking pairing is admitted. -/
structure ClosedOrientedManifoldProfile where
  dimension : Nat
  carrierDigest : Digest
  closedManifoldCertificate : ObjectAddress
  orientationCertificate : ObjectAddress

/-- A nondegenerate `ℚ/ℤ` linking pairing in complementary degrees. -/
structure TorsionLinkingPairing
    (LeftTorsion : Type u) (RightTorsion : Type v)
    [AddCommGroup LeftTorsion] [AddCommGroup RightTorsion] where
  profile : ClosedOrientedManifoldProfile
  leftDegree : Nat
  rightDegree : Nat
  complementary :
    leftDegree + rightDegree + 1 = profile.dimension
  pairing :
    LeftTorsion →+ (RightTorsion →+ AddCircle (1 : ℚ))
  nondegenerateLeft :
    Function.Injective pairing
  nondegenerateRight :
    Function.Injective
      (fun right left ↦ pairing left right)
  pairingCertificate : ObjectAddress

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f0188c64c0b7a9dfca7fa0e1c6c3db5d85203e8b62d097698a8b72034326e6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
