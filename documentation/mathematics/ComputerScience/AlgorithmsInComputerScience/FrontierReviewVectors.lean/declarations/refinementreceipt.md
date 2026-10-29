# refinementReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fd2c4eb130e902efc3d20501b9a06fc993ebdcf144beffa9629a5d4d1ba6eee",
  "kind": "def",
  "lexical_name": "refinementReceipt",
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
  "slug": "refinementreceipt",
  "source": {
    "blob": "844d509a529249d95f8ec94b4c61956f29032221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99ec9b63d18e171d1f92bbdbcc99f4f63cd0f3b840e3f7abcde2779511114de4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FrontierReviewVectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fd2c4eb130e902efc3d20501b9a06fc993ebdcf144beffa9629a5d4d1ba6eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refinementReceipt : List String :=
  [
    s!"rotationCycle={rotationCycle}",
    s!"rootLabelProduct={rootLabels.prod id}",
    s!"coprime143={boolString
      (decide (Nat.Coprime 143 210))}",
    s!"prime143={boolString (decide (Nat.Prime 143))}",
    s!"closedEndpointContains={boolString
      ((LifeWindow.closed 10 20 (by decide)).containsBool 20)}",
    s!"closedTieKind={closedTieKind}",
    s!"registryPrimeIndex={preservedPrimeIndex}",
    s!"duplicateCascadePowerSum={
      cascadePowerSum 2 [1, 1]}",
    s!"deathSupportsArithmeticCorrection={boolString (decide
      ((ProvenanceNode.deathRecorded,
        ProvenanceNode.analyticalLabelPrimalityCorrection) ∈
          requiredProvenanceEdges))}"
  ]

#eval refinementReceipt.forM IO.println

end URSM.Toy.Wrigley.FrontierReviewVectors
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FrontierReviewVectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844d509a529249d95f8ec94b4c61956f29032221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0306e4de235f8c8a5d60403c89b7c3a534b6f9080b9b6321865c3d65ad5bcf91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
