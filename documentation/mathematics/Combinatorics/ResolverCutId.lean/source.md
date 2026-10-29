# Resolver Cut Id — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afee61b4d9a0023d527790120f5cbdbd5fd91975` · SHA-256 `7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Finset.Basic

/-!
# Conservative stratified resolver result

A higher-layer unknown preserves any lower-layer finite certificate.
-/

namespace Mathematics.StratifiedBoundary

structure CutId where
  value : String
deriving DecidableEq, Repr

inductive StratifiedUnknownKind
  | ordinalNotationProfile
  | ordinalNormalization
  | ordinalComparison
  | fundamentalSequence
  | limitMonotonicity
  | limitCofinality
  | stratumAssignment
  | localFrontierRank
  | orbitFrontierRank
  | successorEmbedding
  | successorProjection
  | projectionLipschitz
  | kernelProjectivity
  | invariantLawProjectivity
  | automorphismProjectivity
  | bitfieldProjectivity
  | inverseLimitNonempty
  | limitMetricSeparation
  | limitMetricCompleteness
  | compatibleLimitCoupling
  | limitKernel
  | limitContraction
  | traceProjectivity
  | cylinderTraceWellDefined
  | cylinderTraceExtension
  | arithmeticSuccessorCorrespondence
  | arithmeticLimitCorrespondence
  | limitNormCompatibility
  | uniformOrdinalScale
deriving DecidableEq, Repr

inductive StratifiedRejection
  | malformedOrdinalCode
  | zeroBlockCoefficient
  | remainderOutsideBlock
  | unregisteredFundamentalSequence
  | nonmonotoneFundamentalSequence
  | noncofinalFundamentalSequence
  | incompatiblePredecessorStratum
  | malformedProjectiveComposition
  | nonTotalProjection
  | persistentIdentityConflict
  | malformedCylinderReference
deriving DecidableEq, Repr

inductive StratifiedResolution
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (FiniteResult LimitWitness : Type v)
  | finite
      (result : FiniteResult)
      (stratum : CanonicalOrdinalTally profile)
      (localRank : Option Nat)
      (ordinalIndex : Option (CanonicalOrdinalTally profile))
  | limitBoundary
      (stratum : CanonicalOrdinalTally profile)
      (fundamentalSequence : FundamentalSequenceId)
      (witness : LimitWitness)
  | unknown
      (nearestCut : CutId)
      (unknowns : Finset StratifiedUnknownKind)
  | rejected
      (reason : StratifiedRejection)

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c64558a33aa84e5a5d57eda0b44272b807e2dd98d67a8f889467e9a87283f414 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
