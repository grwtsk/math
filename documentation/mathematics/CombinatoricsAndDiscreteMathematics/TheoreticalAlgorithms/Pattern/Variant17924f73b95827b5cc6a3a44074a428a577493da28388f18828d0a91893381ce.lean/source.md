# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pattern.Variant17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a867e948d25c6e3b7c944d4d3f1b8dc142ee46ce` · SHA-256 `17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.ModelAst

/-! # Checked pattern retrieval metadata -/

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive ProofShape where
  | exact
  | constructor
  | induction
  | rewrite
  | simp
  | calc
  | extensionality
  | algebraicNormalization
  | finiteDecision
  | custom
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure PatternCard where
  schema : String
  patternId : String
  declarationName : Name
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  sourceRange : SourceByteRange
  sourceHash : ContentHash256
  excerptHash : ContentHash256
  declarationKind : DeclarationKind
  normalizedTypeSkeleton : String
  binderSkeleton : List String
  imports : List LeanModulePath
  directDependencies : List Name
  projectDependencyCone : List Name
  proofShape : ProofShape
  expressionSkeleton : String
  kernelReceiptHash : ContentHash256
  axiomClosure : List Name
  classificationTags : List Name
  environmentFingerprint : EnvironmentFingerprint
  authority : RefactorAuthority
deriving Repr

@[expose] def PatternCard.Valid (card : PatternCard) : Prop :=
  card.schema = "surface.pattern-card.v1" ∧
    card.patternId ≠ "" ∧
    card.sourcePath.Valid ∧
    card.sourceRange.Valid ∧
    card.normalizedTypeSkeleton ≠ "" ∧
    card.authority = .environmentObserved ∧
    card.kernelReceiptHash.Valid

instance (card : PatternCard) : Decidable card.Valid := by
  unfold PatternCard.Valid
  infer_instance

@[expose] def verifyPatternCard (card : PatternCard) : Bool :=
  decide card.Valid

@[surface_novel, surface_published]
theorem verifyPatternCard_sound (card : PatternCard)
    (h : verifyPatternCard card = true) : card.Valid := by
  exact of_decide_eq_true h

/-- Retrieval scores are finite ranking data and prove no semantic similarity. -/
@[surface_novel]
structure PatternRetrievalScore where
  typeHead : Nat
  binder : Nat
  namespaceProximity : Nat
  importOverlap : Nat
  dependencyOverlap : Nat
  proofShape : Nat
  diagnosticClass : Nat
  classificationCompatibility : Nat
  axiomCompatibility : Nat
  authority : RefactorAuthority := .finiteEvidence
deriving DecidableEq, Repr

end Surface.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97702de9f1c1152d7fb2b2e561ab7e8a804b96515e2a418e84f0f357b5ba51e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Variant17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
