# configuration_binding_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4353baa-c774-dd3d-2fa8-391b8fda0f01",
  "kind": "theorem",
  "lexical_name": "configuration_binding_exact",
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
  "slug": "configuration-binding-exact",
  "source": {
    "blob": "7e02fb860ff80b2d21ede0fe05c37fd595249c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 461,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4def2edcec7e695bffe14f3179a823be505178c28efb98f78aaeca975b0cc2e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/ReductiveSiteSelectionNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4353baa-c774-dd3d-2fa8-391b8fda0f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem configuration_binding_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.stageIdentity = result.configuredStage.identity ∧
      result.executedPinOrder = result.configuredStage.allPins :=
  ⟨result.stage_identity_exact, result.executed_pin_order_exact⟩

/-- Every stage result has an exact fixed-horizon stopping witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/ReductiveSiteSelectionNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e02fb860ff80b2d21ede0fe05c37fd595249c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf9b7db8d6091cfc1ccc5c6d044b2cb4a829ab4d74280b889cfd60ac9f94aa75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
