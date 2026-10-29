# maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ccde7c42e4033530ff92467eef069619fd0848c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 676,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:917a00a9-4ae8-984c-343f-a15fcbfb1dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33a013d0-cd29-bd1a-d985-4e1990918dd5",
  "kind": "lemma",
  "lexical_name": "maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow",
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
  "slug": "maximalideal-pow-eq-setofpred-le-v-algebramap-pow",
  "source": {
    "blob": "4ccde7c42e4033530ff92467eef069619fd0848c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 676,
    "path": "GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93954bc4ca674b4b50ef97c19796e106220aa544a03fec2a0da955473ae85273",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/DiscreteValuationRingBasicPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a013d0-cd29-bd1a-d985-4e1990918dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow :
    letI : IsDomain O := hv.hom_inj.isDomain
    ∀ [IsDiscreteValuationRing O] {ϖ : O} (_h : Irreducible ϖ) (n : ℕ),
    ((IsLocalRing.maximalIdeal O ^ n : Ideal O) : Set O) =
      {y : O | v (algebraMap O K y) ≤ v (algebraMap O K ϖ) ^ n} := by
  let : IsDomain O := hv.hom_inj.isDomain
  intro _ ϖ h n
  have : (v (algebraMap O K ϖ)) ^ n = v (algebraMap O K (ϖ ^ n)) := by simp
  rw [this, ← hv.coe_span_singleton_eq_setOfPred_le_v_algebraMap,
      ← Ideal.span_singleton_pow, ← h.maximalIdeal_eq]

@[deprecated (since := "2026-07-09")]
alias maximalIdeal_pow_eq_setOf_le_v_algebraMap_pow :=
  maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow

end Valuation.Integers

section Valuation.integer

variable {K Γ₀ : Type*} [Field K] [LinearOrderedCommGroupWithZero Γ₀] (v : Valuation K Γ₀)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/DiscreteValuationRingBasicPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccde7c42e4033530ff92467eef069619fd0848c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3369eeb57d32432200d844b7bc784f3b10e73023a1163fceea010d725c667ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
