# xInTermsOfW_vars_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53d3517f5e79fd3fed310b7aaa9d3cc1df0ca9d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8273e6fb-f9d3-4a7e-a6eb-7bfe4c467a9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:453235e8-14c3-db6c-5fcc-58068ac0763b",
  "kind": "theorem",
  "lexical_name": "xInTermsOfW_vars_aux",
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
  "slug": "xintermsofw-vars-aux",
  "source": {
    "blob": "53d3517f5e79fd3fed310b7aaa9d3cc1df0ca9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 228,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85da8e4e6efdce0028e66c8d5e203322fbfd0fb372d5b586a6d5638051578691",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/WittPolynomial.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:453235e8-14c3-db6c-5fcc-58068ac0763b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xInTermsOfW_vars_aux (n : ℕ) :
    n ∈ (xInTermsOfW p ℚ n).vars ∧ (xInTermsOfW p ℚ n).vars ⊆ range (n + 1) := by
  induction n using Nat.strongRecOn with | ind n ih => ?_
  rw [xInTermsOfW_eq, mul_comm, vars_C_mul _ (Invertible.ne_zero _),
    vars_sub_of_disjoint, vars_X, range_succ, insert_eq]
  on_goal 1 =>
    simp only [true_and, true_or, eq_self_iff_true, mem_union, mem_singleton]
    intro i
    rw [mem_union, mem_union]
    apply Or.imp id
  on_goal 2 => rw [vars_X, disjoint_singleton_left]
  all_goals
    intro H
    replace H := vars_sum_subset _ _ H
    rw [mem_biUnion] at H
    rcases H with ⟨j, hj, H⟩
    rw [vars_C_mul] at H
    swap
    · apply pow_ne_zero
      exact mod_cast hp.1.ne_zero
    rw [mem_range] at hj
    replace H := (ih j hj).2 (vars_pow _ _ H)
    rw [mem_range] at H
  · rw [mem_range]
    omega
  · omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/WittPolynomial.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d3517f5e79fd3fed310b7aaa9d3cc1df0ca9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f8e7c674193565c0d3794059e604e43782244b8c0fa659e40248af5c1db7d33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/04/04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
