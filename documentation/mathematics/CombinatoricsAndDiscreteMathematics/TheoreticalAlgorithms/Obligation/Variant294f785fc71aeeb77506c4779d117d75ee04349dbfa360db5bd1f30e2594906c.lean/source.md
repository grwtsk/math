# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Obligation.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67b775afbdd0c6e62844d963b26ef09547263799` · SHA-256 `294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Environment

/-! # Explicit proof-gap obligations -/

namespace Mathematics.Ingestion

inductive ProofObligationKind
  | pedagogicalExercise
  | unfinishedProof
  | externalTheorem
  | unsafeDependency
  | unknownAuthority
  deriving DecidableEq, Repr

inductive ProofObligationStatus
  | open
  | underProof
  | rejected
  | kernelDischarged
  deriving DecidableEq, Repr

/-- Every extracted `sorry` dependency becomes a named, non-theorem obligation. -/
structure ProofObligation where
  obligationId : StableId
  declarationId : Extractor.DeclarationId
  assumption : Extractor.TrustAssumption
  isSorry :
    assumption.kind = .sorryDerivedDeclaration
  kind : ProofObligationKind
  status : ProofObligationStatus
  sourceArtifactIds : List Ecosystem.ArtifactId
  obligationDigest : Digest
  deriving Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b223e50db0b0471f8cc4c64d9080ce1483f05a7f79bc50bd68c7a8785a1f019c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Obligation/Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
