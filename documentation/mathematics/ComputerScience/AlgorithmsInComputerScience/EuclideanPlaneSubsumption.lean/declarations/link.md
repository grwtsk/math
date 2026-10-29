# link

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0fe12ba1800cfe298694d0c395daea56f13593383fd3d1f96b6d3acd3a1e192",
  "kind": "def",
  "lexical_name": "link",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "link",
  "source": {
    "blob": "b0033b84d0526a4803e057ebf3566943df0ed2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variant51c91240c994d5796cb9c253ed5b2ca38d78479cd42adcb1cb700e524b1335c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3893805f3a0b9a0ed90dbb52f3478348a846b562f44622ae3952eec1fa2fe673",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumption.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0fe12ba1800cfe298694d0c395daea56f13593383fd3d1f96b6d3acd3a1e192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (relation : CorpusSubsumptionRelation)
    (rationale : String) :
    CorpusSubsumptionLink :=
  EuclideanPlaneCorpus.sourceModule.subsumption
    { value := "ideas:euclidean-plane:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    kind
    digest
    digest_valid
    target
    target_nonempty
    relation
    rationale

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumption.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variant51c91240c994d5796cb9c253ed5b2ca38d78479cd42adcb1cb700e524b1335c6.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0033b84d0526a4803e057ebf3566943df0ed2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=427cbefd9ddc9afe693722c55188f9fad291411e31122d41534ddb8402e2011c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variant51c91240c994d5796cb9c253ed5b2ca38d78479cd42adcb1cb700e524b1335c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
