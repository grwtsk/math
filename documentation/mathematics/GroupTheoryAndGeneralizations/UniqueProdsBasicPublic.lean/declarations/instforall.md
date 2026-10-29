# instForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34833fd51de1f12243a207c831ed3d583d6b8fec0bcd4a85a00e3daaadd39a98",
  "kind": "instance",
  "lexical_name": "instForall",
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
  "slug": "instforall",
  "source": {
    "blob": "3af3a13d0165afd4873fbef728cf13bc78dc12fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7115881946e0659569aff8e0ec6fa6e75414372172df0bb4261c7be2f1e9389c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34833fd51de1f12243a207c831ed3d583d6b8fec0bcd4a85a00e3daaadd39a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instForall {ι} (G : ι → Type*) [∀ i, Mul (G i)] [∀ i, TwoUniqueProds (G i)] :
    TwoUniqueProds (∀ i, G i) where
  uniqueMul_of_one_lt_card {A} := by
    classical
    let _ := isWellFounded_ssubset (α := ∀ i, G i) -- why need this?
    apply WellFounded.induction' (· ⊂ ·) A; intro A ihA B
    apply WellFounded.induction' (· ⊂ ·) B; intro B ihB hc
    obtain ⟨hA, hB, hc⟩ := Nat.one_lt_mul_iff.mp hc
    rw [card_pos] at hA hB
    obtain ⟨i, hc⟩ := exists_or.mpr (hc.imp exists_of_one_lt_card_pi exists_of_one_lt_card_pi)
    obtain ⟨p1, h1, p2, h2, hne, hi1, hi2⟩ := uniqueMul_of_one_lt_card (Nat.one_lt_mul_iff.mpr
      ⟨card_pos.2 (hA.image _), card_pos.2 (hB.image _), hc.imp And.left And.left⟩)
    simp_rw [mem_product, mem_image, ← filter_nonempty_iff] at h1 h2
    replace h1 := uniqueMul_of_twoUniqueMul ?_ h1.1 h1.2
    on_goal 1 => replace h2 := uniqueMul_of_twoUniqueMul ?_ h2.1 h2.2
    · obtain ⟨a1, ha1, b1, hb1, hu1⟩ := h1
      obtain ⟨a2, ha2, b2, hb2, hu2⟩ := h2
      rw [mem_filter] at ha1 hb1 ha2 hb2
      simp_rw [mem_product]
      refine ⟨(a1, b1), ⟨ha1.1, hb1.1⟩, (a2, b2), ⟨ha2.1, hb2.1⟩, ?_,
        UniqueMul.of_image_filter (Pi.evalMulHom G i) ha1.2 hb1.2 hi1 hu1,
        UniqueMul.of_image_filter (Pi.evalMulHom G i) ha2.2 hb2.2 hi2 hu2⟩
      grind
    all_goals rcases hc with hc | hc; · exact ihA _ (hc.2 _)
    · by_cases hA : {a ∈ A | a i = p2.1} = A
      · rw [hA]
        exact ihB _ (hc.2 _)
      · exact ihA _ ((A.filter_subset _).ssubset_of_ne hA)
    · by_cases hA : {a ∈ A | a i = p1.1} = A
      · rw [hA]
        exact ihB _ (hc.2 _)
      · exact ihA _ ((A.filter_subset _).ssubset_of_ne hA)

open ULift in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af3a13d0165afd4873fbef728cf13bc78dc12fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b742c276e5587061e602b36e441cacedb224bff93cd016b64d417ed27c855877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
