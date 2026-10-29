# frobenius_nnnorm_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e381b3-105b-f023-2970-859fce7c1d6f",
  "kind": "theorem",
  "lexical_name": "frobenius_nnnorm_diagonal",
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
  "slug": "frobenius-nnnorm-diagonal",
  "source": {
    "blob": "1e939eb3225c937facc98479120e46462a3e90d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 518,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11e3b53a4ac922270b17cc4ed69f9cc42b6386a5ea515b1b138693d4da47cc3",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e381b3-105b-f023-2970-859fce7c1d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobenius_nnnorm_diagonal [DecidableEq n] (v : n → α) :
    ‖diagonal v‖₊ = ‖(WithLp.equiv 2 _).symm v‖₊ := by
  simp_rw [frobenius_nnnorm_def, ← Finset.sum_product', Finset.univ_product_univ,
    PiLp.nnnorm_eq_of_L2]
  let s := (Finset.univ : Finset n).map ⟨fun i : n => (i, i), fun i j h => congr_arg Prod.fst h⟩
  rw [← Finset.sum_subset (Finset.subset_univ s) fun i _hi his => ?_]
  · rw [Finset.sum_map, NNReal.sqrt_eq_rpow]
    dsimp
    simp_rw [diagonal_apply_eq, NNReal.rpow_two]
  · suffices i.1 ≠ i.2 by rw [diagonal_apply_ne _ this, nnnorm_zero, NNReal.zero_rpow two_ne_zero]
    intro h
    exact Finset.mem_map.not.mp his ⟨i.1, Finset.mem_univ _, Prod.ext rfl h⟩
#align matrix.frobenius_nnnorm_diagonal Matrix.frobenius_nnnorm_diagonal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e939eb3225c937facc98479120e46462a3e90d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7028b4252e75633b9461a547462734199249174e6c2d7b9867993d7c74fde74e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
