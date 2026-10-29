# append_succ_castAdd_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 461,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3704283d-ee35-65da-efa0-335e7b014ff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:329e8061-d3c4-bd03-5f22-742bfc700ead",
  "kind": "theorem",
  "lexical_name": "append_succ_castAdd_aux",
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
  "slug": "append-succ-castadd-aux",
  "source": {
    "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20a935e5fcd6dd735e07c5fc441ada10974ec99d99fac7261b07c05fea20ac5f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329e8061-d3c4-bd03-5f22-742bfc700ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_succ_castAdd_aux (i : Fin m) (h : a (Fin.last _) = b 0) :
    Matrix.vecAppend (Nat.add_succ _ _).symm (a ∘ Fin.castSucc) b (Fin.castAdd n i).succ =
      a i.succ := by
  cases' i with i hi
  simp only [Matrix.vecAppend_eq_ite, hi, Fin.succ_mk, Function.comp_apply, Fin.castSucc_mk,
    Fin.val_mk, Fin.castAdd_mk]
  split_ifs with h_1
  · rfl
  · have : i + 1 = m := le_antisymm hi (le_of_not_gt h_1)
    calc
      b ⟨i + 1 - m, by simp [this]⟩ = b 0 := congr_arg b (by simp [Fin.ext_iff, this])
      _ = a (Fin.last _) := h.symm
      _ = _ := congr_arg a (by simp [Fin.ext_iff, this])
#align composition_series.append_succ_cast_add_aux CompositionSeries.append_succ_castAdd_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07d2fb6f5808aa838077f6dd4759536e1ac17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e23336f88c92b06e2ccfbb64007fa4bfa02dd5f991b02fcef85d9a99b1080e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
