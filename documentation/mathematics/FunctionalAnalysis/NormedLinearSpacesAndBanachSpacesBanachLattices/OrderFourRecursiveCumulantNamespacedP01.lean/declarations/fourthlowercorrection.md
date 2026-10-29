# fourthLowerCorrection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64f8e2f816ff939380a545dfe71db83a96df179e22c26d1122a0c539ef060960",
  "kind": "def",
  "lexical_name": "fourthLowerCorrection",
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
  "slug": "fourthlowercorrection",
  "source": {
    "blob": "e4103f0d53ec4d8d5c19a2808fd322afcc89fcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b87727d97df712c40d1fdd4b3a5facddf04f51446d9d1cbe37db5d5fb03605",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderFourRecursiveCumulantNamespacedP01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64f8e2f816ff939380a545dfe71db83a96df179e22c26d1122a0c539ef060960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fourthLowerCorrection
    (κ : DirectionCumulantFamily E R)
    (d : Fin 4 → E) : R :=
  κ 3 ![d 0, d 1, d 2] * κ 1 (fun _ : Fin 1 => d 3) +
  κ 3 ![d 0, d 1, d 3] * κ 1 (fun _ : Fin 1 => d 2) +
  κ 3 ![d 0, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 1) +
  κ 3 ![d 1, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) +
  κ 2 ![d 0, d 1] * κ 2 ![d 2, d 3] +
  κ 2 ![d 0, d 2] * κ 2 ![d 1, d 3] +
  κ 2 ![d 0, d 3] * κ 2 ![d 1, d 2] +
  κ 2 ![d 0, d 1] * κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 2] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 3] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 1, d 2] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 1, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) +
  κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderFourRecursiveCumulantNamespacedP01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4103f0d53ec4d8d5c19a2808fd322afcc89fcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c1bf3ea52bb9ce018ea65c830051dfdee33a99222e9645be7d05b324da61df1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
