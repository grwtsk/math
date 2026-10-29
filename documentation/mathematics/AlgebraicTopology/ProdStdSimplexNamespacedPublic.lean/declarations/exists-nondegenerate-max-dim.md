# exists_nonDegenerate_max_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbfba91-328e-82c4-ba74-5664c7d6b647",
  "kind": "lemma",
  "lexical_name": "exists_nonDegenerate_max_dim",
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
  "slug": "exists-nondegenerate-max-dim",
  "source": {
    "blob": "d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d80ce14e73e8085811052fcf634870d52e5533e6774a89bb1b539940735956ba",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/ProdStdSimplexNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbfba91-328e-82c4-ba74-5664c7d6b647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nonDegenerate_max_dim {d : ℕ}
    (x : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate d) {n : ℕ} (hn : p + q = n) :
    ∃ (y : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate n),
      x.val ∈ (Subcomplex.ofSimplex y.val).obj _ := by
  subst hn
  obtain ⟨i, hi⟩ := Nat.le.dest (Nat.le_of_lt_succ (dim_lt_of_nonDegenerate _ x (p + q + 1)))
  induction i generalizing d with
  | zero =>
    obtain rfl : d = p + q := by lia
    exact ⟨x, Subcomplex.mem_ofSimplex_obj _⟩
  | succ d' hd' =>
    obtain ⟨y, hy⟩ := exists_nonDegenerate_max_dim_aux x (by lia)
    obtain ⟨z, hz⟩ := hd' y (by lia)
    rw [← Subcomplex.ofSimplex_le_iff] at hz
    exact ⟨z, hz _ hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/ProdStdSimplexNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad3c8e9dc801a5767e6c2ca8c8b0cfc42230fe6098b04766a0a796b9a67bd152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
