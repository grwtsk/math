# Unknown — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d6415a5794a3b4a8b8d79a0885a5405762ec1a5` · SHA-256 `ea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.Negative

/-!
# Explicit unresolved branches

An unknown branch records what is missing and what may resolve it.  Resolution
creates a distinct record linked to the branch; it never edits history into a
claim that the branch was already known.
-/

namespace Mathematics.Concept

inductive UnknownKind
  | missingType
  | missingDenotation
  | missingRelation
  | ambiguousReference
  | conflictingEvidence
  | unsupportedRepresentation
  | openProof
  | parserFailure
  deriving DecidableEq, Repr, Inhabited

structure UnknownBranch where
  branchId : StableId
  subjectId : ElementId
  kind : UnknownKind
  sourceIds : List StableId
  candidatePointIds : List ElementId
  requiredEvidenceIds : List StableId
  obstructionDigest : Digest
  deriving DecidableEq, Repr

structure BranchResolution (branch : UnknownBranch) where
  resolutionId : StableId
  resolvedPointId : ElementId
  certificateId : CertificateId
  sourceBranchId : StableId
  source_branch_exact : sourceBranchId = branch.branchId

/-- Resolution preserves a direct, immutable link to the unresolved branch. -/
theorem BranchResolution.preserves_branch
    {branch : UnknownBranch}
    (resolution : BranchResolution branch) :
    resolution.sourceBranchId = branch.branchId :=
  resolution.source_branch_exact

end Mathematics.Concept
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8d1bf21228d048c9b2258ec6c4840e751df0f3568004b614f563246b11f71e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Unknown/Variantea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
