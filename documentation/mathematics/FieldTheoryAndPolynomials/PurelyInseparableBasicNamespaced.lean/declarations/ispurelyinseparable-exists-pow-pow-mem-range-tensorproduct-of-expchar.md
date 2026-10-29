# IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a6ee1e8-ac64-9e76-dc10-36a1fd75180f",
  "kind": "lemma",
  "lexical_name": "IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar",
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
  "slug": "ispurelyinseparable-exists-pow-pow-mem-range-tensorproduct-of-expchar",
  "source": {
    "blob": "7c8c494efd09d25d59173f9236b665567d09b467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 640,
    "path": "GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf215de7d96fccdc873c9d429e7853a0cc08f9e54c45db60618a506181abef37",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FieldTheoryAndPolynomials/PurelyInseparableBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a6ee1e8-ac64-9e76-dc10-36a1fd75180f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar
    [IsPurelyInseparable k K] (q : ℕ) [ExpChar k q] (x : R ⊗[k] K) :
    ∃ n, x ^ q ^ n ∈ (algebraMap R (R ⊗[k] K)).range := by
  nontriviality (R ⊗[k] K)
  obtain (hq|hq) := expChar_is_prime_or_one k q
  induction x with
  | zero => exact ⟨0, 0, by simp [zero_pow_eq, hq.ne_zero]⟩
  | add x y h h' =>
    have : ExpChar (R ⊗[k] K) q := expChar_of_injective_ringHom (algebraMap k _).injective q
    simp_rw [RingHom.mem_range, ← RingHom.mem_rangeS, ← Subalgebra.mem_perfectClosure_iff] at h h' ⊢
    exact add_mem h h'
  | tmul x y =>
    obtain ⟨n, a, ha⟩ := IsPurelyInseparable.pow_mem k q y
    use n
    have : (x ^ q ^ n) ⊗ₜ[k] (y ^ q ^ n) =
        (x ^ q ^ n) ⊗ₜ[k] (1 : K) * (1 : R) ⊗ₜ[k] (y ^ q ^ n) := by
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rw [Algebra.TensorProduct.tmul_pow, this]
    refine Subring.mul_mem _ ⟨x ^ q ^ n, rfl⟩ ⟨algebraMap k R a, ?_⟩
    rw [← IsScalarTower.algebraMap_apply, Algebra.TensorProduct.algebraMap_apply,
      Algebra.TensorProduct.tmul_one_eq_one_tmul, ha]
  · subst hq
    have : CharZero k := charZero_of_expChar_one' k
    exact ⟨0, (Algebra.TensorProduct.includeLeft_surjective R _ <|
      IsPurelyInseparable.surjective_algebraMap_of_isSeparable k K) _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/PurelyInseparableBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c8c494efd09d25d59173f9236b665567d09b467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1b1aa8f833de961a16670a0df5620d426e6c47dde83662646efdc2a6f9aa80f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
