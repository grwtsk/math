# updateFinset_updateFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7cb268bc23a4c270b99eea8409f41cc0f6c76ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:895830fe-09dd-0d61-84bc-891d54e2c058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d2aaf7b-3258-51ae-23df-2ba512ab7007",
  "kind": "theorem",
  "lexical_name": "updateFinset_updateFinset",
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
  "slug": "updatefinset-updatefinset",
  "source": {
    "blob": "f7cb268bc23a4c270b99eea8409f41cc0f6c76ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:064560acfd136d6d52d8fe52666f5fc46d9a29012ed7830e25f487dd2a1025e1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/EnumerativeCombinatorics/UpdatePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2aaf7b-3258-51ae-23df-2ba512ab7007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem updateFinset_updateFinset (hst : Disjoint s t) :
    updateFinset (updateFinset x s y) t z =
    updateFinset x (s ∪ t) (Equiv.piFinsetUnion π hst ⟨y, z⟩) := by
  set e := Equiv.Finset.union s t hst
  ext i
  by_cases his : i ∈ s <;> by_cases hit : i ∈ t <;>
    simp only [updateFinset, his, hit, dite_eq_left, dite_eq_right, Finset.mem_union, false_or,
      not_false_iff]
  · exfalso; exact Finset.disjoint_left.mp hst his hit
  · exact piCongrLeft_sumInl (fun b : ↥(s ∪ t) => π b) e y z ⟨i, his⟩ |>.symm
  · exact piCongrLeft_sumInr (fun b : ↥(s ∪ t) => π b) e y z ⟨i, hit⟩ |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/UpdatePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cb268bc23a4c270b99eea8409f41cc0f6c76ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2d2d4c8d4fd32aff11b0460f904a2e9268ede5057442aa6e2f1e6f2cd580c07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
