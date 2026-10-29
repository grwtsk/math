# mem_jacobson_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93862cccffd4fcc11b634739f2c2e6d9df27ef7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be8a22d2-134b-4b6d-5245-823a2904ad2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85871f6f-1277-3f55-b7ff-f49da035acb5",
  "kind": "theorem",
  "lexical_name": "mem_jacobson_iff",
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
  "slug": "mem-jacobson-iff",
  "source": {
    "blob": "93862cccffd4fcc11b634739f2c2e6d9df27ef7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 96,
    "path": "GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c049085c7ea818b38262201dbecc8eeaf71ab3558dd6c18d0ce6fdbc8254dd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/JacobsonIdeal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85871f6f-1277-3f55-b7ff-f49da035acb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_jacobson_iff {x : R} : x ∈ jacobson I ↔ ∀ y, ∃ z, z * y * x + z - 1 ∈ I :=
  ⟨fun hx y =>
    by_cases
      (fun hxy : I ⊔ span {y * x + 1} = ⊤ =>
        let ⟨p, hpi, q, hq, hpq⟩ := Submodule.mem_sup.1 ((eq_top_iff_one _).1 hxy)
        let ⟨r, hr⟩ := mem_span_singleton'.1 hq
        ⟨r, by
          rw [mul_assoc, ← mul_add_one, hr, ← hpq, ← neg_sub, add_sub_cancel_right]
          exact I.neg_mem hpi⟩)
      fun hxy : I ⊔ span {y * x + 1} ≠ ⊤ => let ⟨M, hm1, hm2⟩ := exists_le_maximal _ hxy
      suffices x ∉ M from (this <| mem_sInf.1 hx ⟨le_trans le_sup_left hm2, hm1⟩).elim
      fun hxm => hm1.1.1 <| (eq_top_iff_one _).2 <| add_sub_cancel_left (y * x) 1 ▸
        M.sub_mem (le_sup_right.trans hm2 <| subset_span rfl) (M.mul_mem_left _ hxm),
    fun hx => mem_sInf.2 fun M ⟨him, hm⟩ => by_contradiction fun hxm =>
      let ⟨y, i, hi, df⟩ := hm.exists_inv hxm
      let ⟨z, hz⟩ := hx (-y)
      hm.1.1 <| (eq_top_iff_one _).2 <| sub_sub_cancel (z * -y * x + z) 1 ▸
        M.sub_mem (by
          rw [mul_assoc, ← mul_add_one, neg_mul, ← sub_eq_iff_eq_add.mpr df.symm, neg_sub,
            sub_add_cancel]
          exact M.mul_mem_left _ hi) <| him hz⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/JacobsonIdeal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93862cccffd4fcc11b634739f2c2e6d9df27ef7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a446ab8fd835b9baf1bd80c094bf5c8d6a3fa4ce3dad911e498e6f7f63eef90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
