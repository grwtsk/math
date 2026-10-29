# chainTopCoeff_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b92b78-cf41-3495-6559-d6f9ae208116",
  "kind": "lemma",
  "lexical_name": "chainTopCoeff_zero_right",
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
  "slug": "chaintopcoeff-zero-right",
  "source": {
    "blob": "991560bcbd90b9229f41921d33e1418b0b3c1a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2a7b4fcc1d9d891c34efe10ada0d975dc037dc6141c55b4352ca5b0f57c783",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b92b78-cf41-3495-6559-d6f9ae208116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainTopCoeff_zero_right [Nontrivial L] (hα : α.IsNonZero) :
    chainTopCoeff α (0 : Weight K H L) = 1 := by
  symm
  apply eq_of_le_of_not_lt
  · rw [Nat.one_le_iff_ne_zero]
    intro e
    exact α.2 (by simpa [e] using!
      genWeightSpace_chainTopCoeff_add_one_nsmul_add α (0 : Weight K H L) hα)
  obtain ⟨x, hx, x_ne0⟩ := (chainTop α (0 : Weight K H L)).exists_ne_zero
  obtain ⟨h, e, f, isSl2, he, hf⟩ := exists_isSl2Triple_of_weight_isNonZero hα
  obtain rfl := isSl2.h_eq_coroot hα he hf
  have prim : isSl2.HasPrimitiveVectorWith x (chainLength α (0 : Weight K H L) : K) :=
    have := lie_mem_genWeightSpace_of_mem_genWeightSpace he hx
    ⟨x_ne0, (chainLength_smul _ _ hx).symm, by rwa [genWeightSpace_add_chainTop _ _ hα] at this⟩
  obtain ⟨k, hk⟩ : ∃ k : K, k • f =
      (toEnd K L L f ^ (chainTopCoeff α (0 : Weight K H L) + 1)) x := by
    have : (toEnd K L L f ^ (chainTopCoeff α (0 : Weight K H L) + 1)) x ∈ rootSpace H (-α) := by
      convert toEnd_pow_apply_mem hf hx (chainTopCoeff α (0 : Weight K H L) + 1)
      rw [coe_chainTop', FunLike.coe_zero, add_zero, succ_nsmul',
        add_assoc, smul_neg, neg_add_cancel, add_zero]
    simpa using! (finrank_eq_one_iff_of_nonzero' ⟨f, hf⟩ (by simpa using! isSl2.f_ne_zero)).mp
      (finrank_rootSpace_eq_one _ hα.neg) ⟨_, this⟩
  apply_fun (⁅f, ·⁆) at hk
  simp only [lie_smul, lie_self, smul_zero, prim.lie_f_pow_toEnd_f] at hk
  intro e
  refine prim.pow_toEnd_f_ne_zero_of_eq_nat rfl ?_ hk.symm
  have := (apply_coroot_eq_cast' α 0).symm
  simp only [← @Nat.cast_two ℤ, ← Nat.cast_mul, zero_apply, Int.cast_eq_zero, sub_eq_zero,
    Nat.cast_inj] at this
  rwa [this, Nat.succ_le_iff, two_mul, add_lt_add_iff_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991560bcbd90b9229f41921d33e1418b0b3c1a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18f430719ed80a76fceca0b2d0ee6f57e4d9c079dbc9215496e349bb178a4e33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
