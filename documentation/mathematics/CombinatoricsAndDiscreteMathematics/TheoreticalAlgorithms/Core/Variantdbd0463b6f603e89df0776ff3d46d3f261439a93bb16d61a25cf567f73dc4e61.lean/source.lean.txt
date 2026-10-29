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
