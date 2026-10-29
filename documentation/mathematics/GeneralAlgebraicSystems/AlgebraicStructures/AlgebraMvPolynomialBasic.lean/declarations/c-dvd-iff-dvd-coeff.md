# C_dvd_iff_dvd_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 766,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:748925b1-611f-b9c9-08f5-28c092606ccd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3797236c-ec67-6e0c-1579-7b2c11162e8b",
  "kind": "theorem",
  "lexical_name": "C_dvd_iff_dvd_coeff",
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
  "slug": "c-dvd-iff-dvd-coeff",
  "source": {
    "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 766,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a52109f60121f4cf323c5240e2da6702e3ecd8a4ab5675577cacf990516b8b4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3797236c-ec67-6e0c-1579-7b2c11162e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_dvd_iff_dvd_coeff (r : R) (φ : MvPolynomial σ R) : C r ∣ φ ↔ ∀ i, r ∣ φ.coeff i := by
  constructor
  · rintro ⟨φ, rfl⟩ c
    rw [coeff_C_mul]
    apply dvd_mul_right
  · intro h
    choose C hc using h
    classical
      let c' : (σ →₀ ℕ) → R := fun i => if i ∈ φ.support then C i else 0
      let ψ : MvPolynomial σ R := ∑ i ∈ φ.support, monomial i (c' i)
      use ψ
      apply MvPolynomial.ext
      intro i
      simp only [ψ, c', coeff_C_mul, coeff_sum, coeff_monomial, Finset.sum_ite_eq']
      split_ifs with hi
      · rw [hc]
      · rw [notMem_support_iff] at hi
        rwa [mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7178d84d5d72120af9e5fa24a7ec65eb19c6c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb95d163d8875f6986fa7ea41bd4560a4495a41ea8f0db283ebdabb05efa956c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
