# hall_cond_of_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b341743-fada-33cf-5b0c-795b80733ab5",
  "kind": "theorem",
  "lexical_name": "hall_cond_of_erase",
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
  "slug": "hall-cond-of-erase",
  "source": {
    "blob": "d4a8ed3b0acafdf3233b93a1991ab599968583a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40ae833698882bf3760b33191f6bbf13d2b18442a169411c968ec8f0dfcf37f6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/HallFiniteNamespacedAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b341743-fada-33cf-5b0c-795b80733ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hall_cond_of_erase {x : ι} (a : α)
    (ha : ∀ s : Finset ι, s.Nonempty → s ≠ univ → s.card < (s.biUnion t).card)
    (s' : Finset { x' : ι | x' ≠ x }) : s'.card ≤ (s'.biUnion fun x' => (t x').erase a).card := by
  haveI := Classical.decEq ι
  specialize ha (s'.image fun z => z.1)
  rw [Nonempty.image_iff, Finset.card_image_of_injective s' Subtype.coe_injective] at ha
  by_cases he : s'.Nonempty
  · have ha' : s'.card < (s'.biUnion fun x => t x).card := by
      convert ha he fun h => by simpa [← h] using mem_univ x using 2
      ext x
      simp only [mem_image, mem_biUnion, exists_prop, SetCoe.exists, exists_and_right,
        exists_eq_right, Subtype.coe_mk]
    rw [← erase_biUnion]
    by_cases hb : a ∈ s'.biUnion fun x => t x
    · rw [card_erase_of_mem hb]
      exact Nat.le_pred_of_lt ha'
    · rw [erase_eq_of_not_mem hb]
      exact Nat.le_of_lt ha'
  · rw [nonempty_iff_ne_empty, not_not] at he
    subst s'
    simp
#align hall_marriage_theorem.hall_cond_of_erase HallMarriageTheorem.hall_cond_of_erase

/-- First case of the inductive step: assuming that
`∀ (s : Finset ι), s.Nonempty → s ≠ univ → s.card < (s.biUnion t).card`
and that the statement of **Hall's Marriage Theorem** is true for all
`ι'` of cardinality ≤ `n`, then it is true for `ι` of cardinality `n + 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/HallFiniteNamespacedAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a8ed3b0acafdf3233b93a1991ab599968583a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e9dec1a2651092c63100b78cc4efa0ad528b47c12b7fe573e34423e371b5a90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
