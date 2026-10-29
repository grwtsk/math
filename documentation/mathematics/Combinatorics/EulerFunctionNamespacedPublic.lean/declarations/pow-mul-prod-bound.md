# pow_mul_prod_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91128571-7705-cf1e-ecc6-adfc0776909f",
  "kind": "lemma",
  "lexical_name": "pow_mul_prod_bound",
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
  "slug": "pow-mul-prod-bound",
  "source": {
    "blob": "6716622248c8a860cefda6fa8ef560265949dadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c8ee2797967f0c4b96db0071bff969d3daa3e56dd0b28b2119a877c7836a87e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/EulerFunctionNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91128571-7705-cf1e-ecc6-adfc0776909f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mul_prod_bound (k n : ℕ) {x : R} (hx : ‖x‖ < 1) :
    ‖x ^ ((k + 1) * n) * ∏ i ∈ range (n + 1), (1 - x ^ (k + i + 1))‖ ≤
      ‖x‖ ^ ((k + 1) * n) * ∏' i, (1 + ‖x‖ ^ i) := by
  grw [norm_mul_le, Finset.norm_prod_le, norm_pow_le]
  refine mul_le_mul_of_nonneg_left ?_ (by simp)
  trans ∏ i ∈ Ico (k + 1) (n + 1 + (k + 1)), (1 + ‖x‖ ^ i)
  · rw [prod_Ico_eq_prod_range, Nat.add_sub_cancel]
    gcongr
    grw [norm_sub_le, norm_one, norm_pow_le, add_right_comm]
  have : Multipliable (1 + ‖x‖ ^ ·) := multipliable_one_add_of_summable (by simpa using hx)
  exact this.prod_le_tprod_of_nonneg (fun i _ ↦ by positivity) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EulerFunctionNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716622248c8a860cefda6fa8ef560265949dadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ffa15b1ce83bf6da8a1e2d098c0f0f999532f51bc10ffe755e39ce3dd7c52da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
