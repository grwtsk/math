# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JointFocus.Variant533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fce50d218a505df36dc1e64be664dbe172f451a8` · SHA-256 `533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.SemanticBridge

/-!
# Tagged joint frontier

Arithmetic, semantic, and bridge obligations inhabit permanent summands.
Identical finite-field coordinates therefore remain distinct when their
domain tags differ.  Frequency is presentation metadata only.
-/

namespace Mathematics.AbelReynolds

inductive JointObligationDomain
  | sea
  | semantic
  | bridge
  deriving DecidableEq, Repr

structure JointObligation where
  domain : JointObligationDomain
  obligationId : String
  propositionDigest : String
  deriving DecidableEq, Repr

structure JointOriginCoordinate where
  domain : JointObligationDomain
  coordinates : List Nat
  deriving DecidableEq, Repr

theorem equal_coordinates_do_not_erase_domain
    {left right : JointOriginCoordinate}
    (_coordinates : left.coordinates = right.coordinates)
    (domains : left.domain ≠ right.domain) :
    left ≠ right := by
  intro equal
  apply domains
  exact congrArg JointOriginCoordinate.domain equal

structure JointFrontierEntry where
  obligation : JointObligation
  origin : JointOriginCoordinate
  frequency : Nat
  requiredEvidence : String
  deriving DecidableEq, Repr

inductive JointUnknownKind
  | authorityBoundary
  | seaEvidenceBoundary
  | orbitBoundary
  | percolationBoundary
  | transcriptBoundary
  | semanticGraphBoundary
  | chainizationBoundary
  | tensorFactorizationBoundary
  | gaugeBoundary
  | observableBoundary
  | anchorBoundary
  | bridgeBoundary
  | commitBoundary
  deriving DecidableEq, Repr

structure ExactJointCost where
  seaCostDigest : String
  semanticCostDigest : String
  bridgeCostDigest : String
  commitCostDigest : String
  seaCostCertified : seaCostDigest ≠ ""
  semanticCostCertified : semanticCostDigest ≠ ""
  bridgeCostCertified : bridgeCostDigest ≠ ""
  commitCostCertified : commitCostDigest ≠ ""
  deriving Repr

/-- Protected names for quantities that must never collapse by spelling. -/
inductive JointProtectedMeaning
  | arithmeticFrobenius
  | frobeniusMatrixNorm
  | seaSymmetry
  | mpsGauge
  | arithmeticAbelProjector
  | graphAbelFocus
  | seaTally
  | semanticTally
  | noetherianClosure
  | eventClosure
  | arithmeticReuse
  | anchorReuse
  | algebraicFixedness
  | gaugeFixedness
  | observableFixedness
  | arithmeticCompactification
  | semanticClosure
  | gaugeQuotient
  | mappingTorus
  | frontierField
  | seaCoefficientField
  deriving DecidableEq, Repr

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e00169da0633bc8ea42c27556a026878ab11d50c41e6b884e1cc9e0a57bea2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JointFocus/Variant533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
