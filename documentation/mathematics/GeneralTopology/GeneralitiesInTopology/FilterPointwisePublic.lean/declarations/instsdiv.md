# instSDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec5353536b59fdc20a06e3fdcea061c48f52ae58c0d0783fe60b52c0d9d55803",
  "kind": "def",
  "lexical_name": "instSDiv",
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
  "slug": "instsdiv",
  "source": {
    "blob": "f4606c09dc8cb8ebe3f8fae988111847aac8890a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 904,
    "line": 897,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92e338c6ccc764dbe2ba90ff09f083dd17e992b97ef5a13598d0f6223a953975",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/GeneralitiesInTopology/FilterPointwisePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec5353536b59fdc20a06e3fdcea061c48f52ae58c0d0783fe60b52c0d9d55803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–904.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def instSDiv : SDiv (Filter α) (Filter β) :=
  ⟨/- This is defeq to `map₂ (· /ₛ ·) f g`, but the hypothesis unfolds to `t₁ /ₛ t₂ ⊆ s` rather
  than all the way to `Set.image2 (· /ₛ ·) t₁ t₂ ⊆ s`. -/
  fun f g => { map₂ (· /ₛ ·) f g with sets := { s | ∃ t₁ ∈ f, ∃ t₂ ∈ g, t₁ /ₛ t₂ ⊆ s } }⟩

scoped[Pointwise] attribute [instance] Filter.instSDiv Filter.instVSub

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralTopology/GeneralitiesInTopology/FilterPointwisePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4606c09dc8cb8ebe3f8fae988111847aac8890a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a526c6f921afffa96ec88db39386ecd3a54b07e4cfe10488d5afa9fb0dad4c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
