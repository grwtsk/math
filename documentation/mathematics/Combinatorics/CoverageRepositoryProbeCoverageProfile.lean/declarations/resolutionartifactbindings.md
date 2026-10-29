# ResolutionArtifactBindings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4479febafa5b6a6ee04f8c7f2d8a7db0749680cc17d2eb5411492eaaa78a4aa2",
  "kind": "structure",
  "lexical_name": "ResolutionArtifactBindings",
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
  "slug": "resolutionartifactbindings",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 996,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d46d35a250352fff3c8abb6e7a9e4a4ce81fb6917d62899056bc90595ce8ccf",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/CoverageRepositoryProbeCoverageProfile.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4479febafa5b6a6ee04f8c7f2d8a7db0749680cc17d2eb5411492eaaa78a4aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResolutionArtifactBindings
    (certificate : ProbeResolutionCertificate)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix) : Prop where
  spaceIdentity : certificate.rhetoricalSpace = space.id
  spaceHash : certificate.rhetoricalSpaceHash = space.contentHash
  familyIdentity : certificate.probeFamily = family.id
  familyHash : certificate.probeFamilyHash = family.contentHash
  planIdentity : certificate.samplingPlan = plan.id
  planHash : certificate.samplingPlanHash = plan.contentHash
  receiptIdentity : certificate.samplingReceipt = receipt.id
  receiptHash : certificate.samplingReceiptHash = receipt.deterministicReceiptHash
  deterministicReceiptIdentity : certificate.deterministicReceipt = receipt.id
  matrixIdentity : certificate.observationMatrix = matrix.id
  matrixHash : certificate.observationMatrixHash = matrix.contentHash
  witnessIdentity : certificate.separationWitness = separation.id
  witnessHash : certificate.separationWitnessHash = separation.contentHash

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/CoverageRepositoryProbeCoverageProfile.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c24b9ae6393e46055cd2afbd48d73f3d9c8d4b95f189c71ec1e67a45a9a71dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
