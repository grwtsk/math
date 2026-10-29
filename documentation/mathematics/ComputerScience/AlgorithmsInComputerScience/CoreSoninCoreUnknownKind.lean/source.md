# Core Sonin Core Unknown Kind — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64ab3b4ca5b5c8924a8e24cb454a345239de242e` · SHA-256 `dbd0463b6f603e89df0776ff3d46d3f261439a93bb16d61a25cf567f73dc4e61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Internal WP0–WP3 obligation primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive SoninCoreUnknownKind
  | primeUniverse
  | primeValueInjectivity
  | primeCutCombinatorics
  | horizonEmbedding
  | horizonEmbeddingCoherence
  | exactCoefficientRing
  | soninCarrier
  | soninConnector
  | soninConnectorIdentity
  | soninConnectorComposition
  | soninConnectorInjectivity
  | transportedRangeNesting
  | transportedRangeClosed
  | projectionConstruction
  | projectionRange
  | projectionSelfAdjoint
  | projectionIdempotent
  | projectionMonotonicity
  | differenceProjection
  | differenceLayer
  | boundaryCochainClosed
  | packetEnergyModel
  | packetNormBound
  | positivePacketEnergy
  | connectorEnergyIdentity
  | finiteTelescope
  | enumerationIndependence
deriving DecidableEq, Repr

structure OpenSoninObligation where
  id : Nat
  kind : SoninCoreUnknownKind
  subject : String
  description : String
  blockedTheorems : Array String
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83e9428416cef29a805f42ee454d5c6adf8a88f9650b3f7e1493c5c8f4cffcc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantdbd0463b6f603e89df0776ff3d46d3f261439a93bb16d61a25cf567f73dc4e61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
