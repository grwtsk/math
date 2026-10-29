# exists_forall_antisymmRel_of_wcovBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95660a02-ccd9-c689-e0e4-c4c3f285e32a",
  "kind": "lemma",
  "lexical_name": "exists_forall_antisymmRel_of_wcovBy",
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
  "slug": "exists-forall-antisymmrel-of-wcovby",
  "source": {
    "blob": "8e2187135d6d0a4c27718dedcdf47585724004da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 687,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb768c4e40108c4156606c310917de9d3014208d4b40974c4a0ef43c7c017d6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:019caf0ae3f5b6a2994eb2c37e2deb3f1b72ae57d49355813460824f973505c8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CoverNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95660a02-ccd9-c689-e0e4-c4c3f285e32a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_forall_antisymmRel_of_wcovBy [Nonempty ι] (h : a ⩿ b) :
    ∃ i, ∀ j ≠ i, AntisymmRel (· ≤ ·) (a j) (b j) := by
  rw [wcovBy_iff_covBy_or_le_and_le] at h
  obtain h | h := h
  · exact exists_forall_antisymmRel_of_covBy h
  · inhabit ι
    exact ⟨default, fun j hj ↦ ⟨h.left j, h.right j⟩⟩

/--
A characterisation of the `WCovBy` relation in products of preorders. See `Pi.wcovBy_iff` for the
(more common) version in products of partial orders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CoverNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb768c4e40108c4156606c310917de9d3014208d4b40974c4a0ef43c7c017d6d9.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2187135d6d0a4c27718dedcdf47585724004da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a62528eb620cee4ded9ef9844ebef190f6199f4d645f29eb5f7c55204ee0b14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb768c4e40108c4156606c310917de9d3014208d4b40974c4a0ef43c7c017d6d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
