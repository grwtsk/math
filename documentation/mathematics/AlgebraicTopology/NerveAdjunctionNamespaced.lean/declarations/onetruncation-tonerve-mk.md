# oneTruncation₂_toNerve₂Mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d02a1f3-eb57-adc8-0686-236ab340e45b",
  "kind": "theorem",
  "lexical_name": "oneTruncation₂_toNerve₂Mk'",
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
  "slug": "onetruncation-tonerve-mk",
  "source": {
    "blob": "f1b66ba77515d913ff2099e28f4f5e1ffffb26a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc694159202da67788eaa8126db2ae2dcf5e033243ce5d6cdf280df0937e0c4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/NerveAdjunctionNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d02a1f3-eb57-adc8-0686-236ab340e45b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneTruncation₂_toNerve₂Mk' : oneTruncation₂.map (toNerve₂.mk' F hyp) = F := by
  refine ReflPrefunctor.ext (fun _ ↦ ComposableArrows.ext₀ rfl)
    (fun X Y g ↦ eq_of_heq (heq_eqRec_iff_heq.2 <| heq_eqRec_iff_heq.2 ?_))
  simp [oneTruncation₂]
  refine Quiver.heq_of_homOfEq_ext ?_ ?_ (f' := F.map g) ?_
  · exact ComposableArrows.ext₀ rfl
  · exact ComposableArrows.ext₀ rfl
  · apply OneTruncation₂.Hom.ext
    simp only [oneTruncation₂_obj, ReflQuiv.of_val, OneTruncation₂.homOfEq_edge]
    fapply ComposableArrows.ext₁ <;> simp [ReflQuiv.comp_eq_comp]
    · rw [g.src_eq]; exact congr_arg (·.obj 0) (F.map g).src_eq.symm
    · rw [g.tgt_eq]; exact congr_arg (·.obj 1) (F.map g).tgt_eq.symm
    · refine (conj_eqToHom_iff_heq' _ _ _ _).2 ?_
      simp [OneTruncation₂.nerveHomEquiv]
      obtain ⟨g, rfl, rfl⟩ := g
      rfl

end

/-- An equality between maps into the 2-truncated nerve is detected by an equality between their
underlying refl prefunctors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/NerveAdjunctionNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b66ba77515d913ff2099e28f4f5e1ffffb26a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8b261bca0b8528f17824cd7e7bd01ffbd45d64be0e8e49389fcfa068e695a6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
