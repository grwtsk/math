# derivativeProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:956c974370e2fddad71f68a48e227bec5ce80b10e0e6af50cbe5b0260e1d4639",
  "kind": "def",
  "lexical_name": "derivativeProfile",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "derivativeprofile--5664ce1737ee2409324b06b6",
  "source": {
    "blob": "f10d7a5fefac851fd909ef517f7a8785807f1817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5664ce1737ee2409324b06b66dbe4de280c368ead9fa1ab013d705ea4a8148bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:956c974370e2fddad71f68a48e227bec5ce80b10e0e6af50cbe5b0260e1d4639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivativeProfile (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10d7a5fefac851fd909ef517f7a8785807f1817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=237a6343e4422d33b9c7659f4f5217961da6a4760dd11f1aa557ef5bf9b4e244 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
