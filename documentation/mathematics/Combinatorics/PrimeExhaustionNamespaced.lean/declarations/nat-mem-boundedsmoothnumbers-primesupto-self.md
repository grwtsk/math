# nat_mem_boundedSmoothNumbers_primesUpTo_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0c9ee15-365d-e7fc-7165-4d561a82c890",
  "kind": "theorem",
  "lexical_name": "nat_mem_boundedSmoothNumbers_primesUpTo_self",
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
  "slug": "nat-mem-boundedsmoothnumbers-primesupto-self",
  "source": {
    "blob": "19a5127f758ad9a5a0d7f78daac91c036cc2fe1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3514ec259405421bcf94c44679daffd777a31e8802f0736a0e02eb5363a0bcc8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/PrimeExhaustionNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c9ee15-365d-e7fc-7165-4d561a82c890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_mem_boundedSmoothNumbers_primesUpTo_self
    {n N : Nat}
    (hnpos : 0 < n)
    (hnN : n ≤ N) :
    n ∈ boundedSmoothNumbers (primesUpTo N) N := by
  classical
  let e : ExponentVector (primesUpTo N) N := fun p =>
    ⟨ Nat.factorization n p.val
    , Nat.lt_succ_of_le ((factorization_le_self hnpos).trans hnN)
    ⟩
  have heq : exponentVectorNat (primesUpTo N) N e = n := by
    unfold exponentVectorNat
    have hsupport : (Nat.factorization n).support ⊆ primesUpTo N := by
      intro p hp
      exact
        factorization_support_subset_primesUpTo hnpos hnN
          (Finsupp.mem_support_iff.mp hp)
    have hprod :
        (Nat.factorization n).prod (fun p k => p ^ k) =
          ∏ p ∈ primesUpTo N, p ^ (Nat.factorization n p) := by
      exact
        @Finsupp.prod_of_support_subset Nat Nat Nat _ _
          (Nat.factorization n) (primesUpTo N)
          hsupport (fun p k => p ^ k) (by intro i hi; simp)
    have hrec := Nat.prod_factorization_pow_eq_self hnpos.ne'
    rw [← hrec]
    rw [hprod]
    simp [e]
  rw [← heq]
  exact exponentVectorNat_mem_boundedSmoothNumbers (primesUpTo N) N e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/PrimeExhaustionNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a5127f758ad9a5a0d7f78daac91c036cc2fe1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edf68ae40af36a10be4db1a7ad168dbe3bd4bc75c83c51b82c794fa0d1c4c7c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
