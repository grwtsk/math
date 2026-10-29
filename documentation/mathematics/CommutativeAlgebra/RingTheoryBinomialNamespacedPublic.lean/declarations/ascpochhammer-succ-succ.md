# ascPochhammer_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aba04189-de5d-42cd-9216-2803c5ded3b4",
  "kind": "theorem",
  "lexical_name": "ascPochhammer_succ_succ",
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
  "slug": "ascpochhammer-succ-succ",
  "source": {
    "blob": "c57269dd00db4f80d58a1c70cd0d803ddee0c7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656aaf4a0e513e5f6826111096e547156398cc187d37e9261528dde4cb01262f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/RingTheoryBinomialNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba04189-de5d-42cd-9216-2803c5ded3b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ascPochhammer_succ_succ (r : R) (k : ℕ) :
    smeval (ascPochhammer ℕ (k + 1)) (r + 1) = Nat.factorial (k + 1) • multichoose (r + 1) k +
    smeval (ascPochhammer ℕ (k + 1)) r := by
  nth_rw 1 [ascPochhammer_succ_right, ascPochhammer_succ_left, mul_comm (ascPochhammer ℕ k)]
  simp only [smeval_mul, smeval_comp, smeval_add, smeval_X]
  rw [Nat.factorial, mul_smul, factorial_nsmul_multichoose_eq_ascPochhammer]
  simp only [smeval_one, npow_one, npow_zero, one_smul]
  rw [← C_eq_natCast, smeval_C, npow_zero, add_assoc, add_mul, add_comm 1, @nsmul_one, add_mul]
  rw [← @nsmul_eq_mul, @add_rotate', @succ_nsmul, add_assoc]
  simp_all only [Nat.cast_id, nsmul_eq_mul, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/RingTheoryBinomialNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57269dd00db4f80d58a1c70cd0d803ddee0c7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2cbdc39035ad882a5895ecad3f0c05e4dc539ad4a6780f4a00c31fd897a80ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
