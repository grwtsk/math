# adj_spanningCoe_toSimpleGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:923b7c28-5026-8f32-e111-f6444e1f50d8",
  "kind": "lemma",
  "lexical_name": "adj_spanningCoe_toSimpleGraph",
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
  "slug": "adj-spanningcoe-tosimplegraph",
  "source": {
    "blob": "a5d8cc92b8b2acc14c73262422459bc4c022cba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 665,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03089478a85348814166c66d3e30d9f10f286809700d8d7daee099046cc24dc7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/GraphTheory/ConnectedNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:923b7c28-5026-8f32-e111-f6444e1f50d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adj_spanningCoe_toSimpleGraph {v w : V} (C : G.ConnectedComponent) :
    C.toSimpleGraph.spanningCoe.Adj v w ↔ v ∈ C.supp ∧ G.Adj v w := by
  apply Iff.intro
  · intro h
    simp_all only [map_adj, SetLike.coe_sort_coe, Subtype.exists, mem_supp_iff]
    obtain ⟨_, a, _, _, h₁, rfl, rfl⟩ := h
    exact ⟨a, h₁⟩
  · simp only [toSimpleGraph, map_adj, comap_adj, Embedding.subtype_apply, Subtype.exists,
      exists_and_left, and_imp]
    intro h hadj
    exact ⟨v, h, w, hadj, rfl, (C.mem_supp_congr_adj hadj).mp h, rfl⟩

/-- Get the walk between two vertices in a connected component from a walk in the original graph.
This is used in `reachable_toSimpleGraph`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Combinatorics/GraphTheory/ConnectedNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d8cc92b8b2acc14c73262422459bc4c022cba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8419b065de3e7bd4bdadfdccbc1b010ff06fdfb66756938f5a942bedbd5641c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
