# F_nat_zero_zero_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1e2214c-56aa-0a39-7492-2aa407043c68",
  "kind": "lemma",
  "lexical_name": "F_nat_zero_zero_sub_le",
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
  "slug": "f-nat-zero-zero-sub-le",
  "source": {
    "blob": "b1523984d5597f985d75b22249db7e5509d54bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 132,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2035a5aef10b1a53b13be5141314c829436a8e68fe48946d7977d0fd03760db",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/JacobiThetaBoundsNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e2214c-56aa-0a39-7492-2aa407043c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma F_nat_zero_zero_sub_le {t : ℝ} (ht : 0 < t) :
    ‖F_nat 0 0 t - 1‖ ≤ rexp (-π * t) / (1 - rexp (-π * t)) := by
  convert! F_nat_zero_le zero_le_one ht using 2
  · rw [F_nat, (summable_f_nat 0 0 ht).tsum_eq_zero_add, f_nat, Nat.cast_zero, add_zero, pow_zero,
      one_mul, pow_two, mul_zero, mul_zero, zero_mul, exp_zero, add_comm, add_sub_cancel_right]
    simp_rw [F_nat, f_nat, Nat.cast_add, Nat.cast_one, add_zero]
  · rw [one_pow, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/JacobiThetaBoundsNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1523984d5597f985d75b22249db7e5509d54bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19f712274a4a78d394f5cc9b0d49479eb35838d0e272a7189ba65a4716917d10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
