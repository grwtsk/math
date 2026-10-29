# ofPermHom_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0fa0f58-8840-8e7d-3c5c-cd45f0f9d1d2",
  "kind": "theorem",
  "lexical_name": "ofPermHom_support",
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
  "slug": "ofpermhom-support",
  "source": {
    "blob": "123c19bd6d59d1980cce00e9af92bbc43633c077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 368,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b93d386d6e563bad181c3bca684cb22faa46d33b7bf452f47b4f5bef38558630",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/PermCentralizerNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0fa0f58-8840-8e7d-3c5c-cd45f0f9d1d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPermHom_support :
    (ofPermHom a τ).support =
      (τ : Perm g.cycleFactorsFinset).support.biUnion (fun c ↦ c.val.support) := by
  ext x
  simp only [mem_support, Finset.mem_biUnion, ofPermHom_apply]
  rcases mem_fixedPoints_or_exists_zpow_eq a x with (hx | ⟨c, hc, m, hm⟩)
  · simp only [ofPermHomFun_apply_of_mem_fixedPoints a τ hx, ne_eq, not_true_eq_false, false_iff,
      ← mem_support]
    rintro ⟨c, -, hc⟩
    rw [Function.mem_fixedPoints_iff] at hx
    exact mem_support.mp ((mem_cycleFactorsFinset_support_le c.prop) hc) hx
  · rw [ofPermHomFun_apply_of_cycleOf_mem a τ hc hm]
    conv_lhs => rw [← hm]
    rw [(g ^ m).injective.ne_iff, a.injective.ne_iff, not_iff_comm]
    by_cases H : (τ : Perm g.cycleFactorsFinset) c = c
    · simp only [H, iff_true]
      push_neg
      intro d hd
      rw [← notMem_support]
      have := g.cycleFactorsFinset_pairwise_disjoint c.prop d.prop
      rw [disjoint_iff_disjoint_support, Finset.disjoint_left] at this
      exact this (by aesop) hc
    · simpa only [H, iff_false, not_not] using ⟨c, H, mem_support.mp hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/PermCentralizerNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123c19bd6d59d1980cce00e9af92bbc43633c077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f7c7e35b928952815d7f6311e71ab26db87dacd1546316cf61df322c5988ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
