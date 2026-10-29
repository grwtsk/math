# TracePerturbationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:767a7ce3d9ba3275005a2490ef8a315fe487e5d637ea2db3e6b7ed798cf4ba4c",
  "kind": "structure",
  "lexical_name": "TracePerturbationCertificate",
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
  "slug": "traceperturbationcertificate",
  "source": {
    "blob": "74541b34721390ead3cccd166510d0591154efaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60472af3a7fb0ab1863bee78c53beefa296b32dc659094dbaae9079c04b6e2e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TraceStabilityTracePerturbationCertificate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:767a7ce3d9ba3275005a2490ef8a315fe487e5d637ea2db3e6b7ed798cf4ba4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracePerturbationCertificate where
  referenceTrace : ℂ
  perturbedTrace : ℂ
  displacement : ℝ
  displacement_eq :
    displacement =
      ‖perturbedTrace - referenceTrace‖
  traceLipschitz : ℝ
  traceLipschitzNonnegative :
    0 ≤ traceLipschitz
  localKernelDefect : ℝ
  localKernelDefectNonnegative :
    0 ≤ localKernelDefect
  contraction : ℝ
  contractionNonnegative :
    0 ≤ contraction
  contractionLtOne :
    contraction < 1
  lawDisplacement : ℝ
  lawDisplacementBound :
    lawDisplacement ≤
      traceLipschitz *
        (localKernelDefect /
          (1 - contraction))
  operatorDisplacement : ℝ
  correspondenceDisplacement : ℝ
  regularizationDisplacement : ℝ
  bitfieldDisplacement : ℝ
  componentsNonnegative :
    0 ≤ lawDisplacement ∧
    0 ≤ operatorDisplacement ∧
    0 ≤ correspondenceDisplacement ∧
    0 ≤ regularizationDisplacement ∧
    0 ≤ bitfieldDisplacement
  displacementByComponents :
    displacement ≤
      lawDisplacement +
        operatorDisplacement +
        correspondenceDisplacement +
        regularizationDisplacement +
        bitfieldDisplacement

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TraceStabilityTracePerturbationCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74541b34721390ead3cccd166510d0591154efaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=852948042437b0568f1550cd1021fb5cde7d2a1030d84f61c4b561cf3e6cc9a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
