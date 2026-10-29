# Shadings — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a56fc3283492a64898498e4b10e2d7b28b8abaa` · SHA-256 `4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.Tubes

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Shading data on finite tube configurations.

What is certificate-gated:
Membership of a shading in the configuration is Prop-valued data.

What is not claimed:
No Kakeya estimate follows from a shading descriptor.
-/

/-- A shading carried by a tube configuration. -/
structure Shading
    (K : TubeConfiguration) where
  tubeId : Nat
  shadedSetLabel : String
  belongsToConfiguration : Prop
  belongsToConfigurationCertified : belongsToConfiguration
  boundary : List String

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdaac003396aa54e0f2c06f9e33c47bb2eee6cd312f4922716f61056959f2ac8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shadings/Variant4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
