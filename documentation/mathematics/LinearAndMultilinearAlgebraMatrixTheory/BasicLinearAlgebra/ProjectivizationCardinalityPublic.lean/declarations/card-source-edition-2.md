# card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49eb9b99ae717c2a4d58fe67c08548150503f4ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84f6b532-ca92-c3bd-fa79-e37cc98aac21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:559f7c41-7e2e-8e37-b8cd-614de299ecb3",
  "kind": "lemma",
  "lexical_name": "card",
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
  "slug": "card-source-edition-2",
  "source": {
    "blob": "49eb9b99ae717c2a4d58fe67c08548150503f4ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:411de4d28cdede3267251cf983198ec79ad6cfb468386d4b6c26af26e2e71cda",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationCardinalityPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:559f7c41-7e2e-8e37-b8cd-614de299ecb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card : Nat.card V - 1 = Nat.card (ℙ k V) * (Nat.card k - 1) := by
  nontriviality V
  cases finite_or_infinite k with
  | inr h =>
    have : Infinite V := Module.Free.infinite k V
    simp
  | inl h =>
  cases finite_or_infinite V with
  | inr h =>
    have := not_iff_not.mpr (finite_iff_of_finite k V)
    push Not at this
    have : Infinite (ℙ k V) := by rwa [this]
    simp
  | inl h =>
  classical
  have : Fintype V := Fintype.ofFinite V
  have : Fintype (ℙ k V) := Fintype.ofFinite (ℙ k V)
  have : Fintype k := Fintype.ofFinite k
  have hV : Fintype.card { v : V // v ≠ 0 } = Fintype.card V - 1 := by simp
  simp_rw [← Fintype.card_eq_nat_card, ← Fintype.card_units (α := k), ← hV]
  rw [Fintype.card_congr (nonZeroEquivProjectivizationProdUnits k V), Fintype.card_prod]

/-- Cardinality formula for the points of `ℙ k V` if `k` and `V` are finite with less
natural subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationCardinalityPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49eb9b99ae717c2a4d58fe67c08548150503f4ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f4ae0bdc70422fb6ff5fc23b4e86d568335ac82e864ce3cc5eef2bffe0dfe9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/39/3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
