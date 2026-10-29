# sum_le_sum_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c12f0cd-c9f3-e885-6903-6cd8467db5d5",
  "kind": "lemma",
  "lexical_name": "sum_le_sum_Ioc",
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
  "slug": "sum-le-sum-ioc",
  "source": {
    "blob": "749d72e13fca6d1be6405bcbaf922ec1874e9b2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 31,
    "path": "GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14670b881c2f78aaae905d61f99d4bfb82ba254442cc39729d518121e27e1423",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c12f0cd-c9f3-e885-6903-6cd8467db5d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_le_sum_Ioc {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, x ≤ c) :
    ∑ x ∈ s, x ≤ ∑ x ∈ Ioc (c - #s) c, x := by
  set r := Ioc (c - #s) c
  calc
    _ ≤ ∑ x ∈ s ∩ r, x + #(s \ r) • (c - #s) := by
      rw [← sum_inter_add_sum_diff s r _]
      gcongr
      refine sum_le_card_nsmul _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc, not_and'] at mx
      have := mx.2 (hs _ mx.1); omega
    _ = ∑ x ∈ r ∩ s, x + #(r \ s) • (c - #s) := by
      rw [inter_comm, card_sdiff_comm]
      rw [Int.card_Ioc, sub_sub_cancel, Int.toNat_natCast]
    _ ≤ _ := by
      rw [← sum_inter_add_sum_diff r s _]
      gcongr
      refine card_nsmul_le_sum _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc] at mx; exact mx.1.1.le

/-- Sharp upper bound for the sum of a finset of integers that is bounded above, `range` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749d72e13fca6d1be6405bcbaf922ec1874e9b2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2857b72b5f8ce4b2901ff71fa0d7243aa53366ceee9219c54a2581cc55ba954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
