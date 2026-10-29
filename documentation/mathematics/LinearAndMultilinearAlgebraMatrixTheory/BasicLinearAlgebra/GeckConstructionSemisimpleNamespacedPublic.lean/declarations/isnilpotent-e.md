# isNilpotent_e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52d1f83c-72fd-bd9f-905c-6708b2dc6dea",
  "kind": "lemma",
  "lexical_name": "isNilpotent_e",
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
  "slug": "isnilpotent-e",
  "source": {
    "blob": "c750192c7811a4fb2f6beb84906214afdb067372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f69f20e0e7c90e1a97f40e4ce8028638ac7df7f82585dadce763a7c6d53a33",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionSemisimpleNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d1f83c-72fd-bd9f-905c-6708b2dc6dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_e :
    IsNilpotent (e i) := by
  classical
  have : Module.IsReflexive R M := .of_isPerfPair P.toLinearMap
  have : IsAddTorsionFree M := .of_isTorsionFree R M
  let := P.indexNeg
  rw [Matrix.isNilpotent_iff_forall_col]
  have case_inl (j : b.support) : (e i ^ 2).col (Sum.inl j) = 0 := by
    ext (k | k)
    · simp [e, sq, ne_neg P i, -indexNeg_neg]
    · have aux : ∀ x : ι, x ∈ Finset.univ → ¬ (x = i ∧ P.root k = P.root i + P.root x) := by
        suffices P.root k ≠ (2 : ℕ) • P.root i by simpa [two_smul]
        exact fun contra ↦ P.nsmul_notMem_range_root (n := 2) (i := i) ⟨k, contra⟩
      simp [e, sq, -indexNeg_neg, ← ite_and, Finset.sum_ite_of_false aux]
  rintro (j | j)
  · exact ⟨2, case_inl j⟩
  · by_cases hij : j = -i
    · use 2 + 1
      replace hij : (e i).col (Sum.inr j) = u i := by
        ext (k | k)
        · simp [e, -indexNeg_neg, Pi.single_apply, hij]
        · have hk : P.root k ≠ P.root i + P.root j := by simp [hij, P.ne_zero k]
          simp [e, -indexNeg_neg, hk]
      rw [pow_succ, ← Matrix.mulVec_single_one, ← Matrix.mulVec_mulVec]
      simp [hij, case_inl i]
    use P.chainTopCoeff i j + 1
    rcases isNilpotent_e_aux i (P.chainTopCoeff i j + 1) hij with this | ⟨k, x, hk₁, -⟩
    · assumption
    exfalso
    replace hk₁ : P.root j + (P.chainTopCoeff i j + 1) • P.root i ∈ range P.root := ⟨k, hk₁⟩
    have hij' : LinearIndependent R ![P.root i, P.root j] := by
      apply IsReduced.linearIndependent P ?_ ?_
      · rintro rfl
        apply P.nsmul_notMem_range_root (n := P.chainTopCoeff i i + 2) (i := i)
        convert! hk₁ using 1
        module
      · contrapose hij
        rw [root_eq_neg_iff] at hij
        rw [hij, ← indexNeg_neg, neg_neg]
    rw [root_add_nsmul_mem_range_iff_le_chainTopCoeff hij'] at hk₁
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionSemisimpleNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750192c7811a4fb2f6beb84906214afdb067372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=029a44e49d18e9c42dd71c3801d4ff6b2c4f4f751fd3b91b700421e1789b8008 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
