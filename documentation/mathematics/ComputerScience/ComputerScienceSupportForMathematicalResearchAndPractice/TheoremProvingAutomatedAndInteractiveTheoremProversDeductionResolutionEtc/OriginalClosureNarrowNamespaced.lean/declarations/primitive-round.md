# primitive_round

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91b8e532-24c4-7b07-6714-fec89053ef69",
  "kind": "theorem",
  "lexical_name": "primitive_round",
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
  "slug": "primitive-round",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18082,
    "line": 18069,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:244f29e1807b31a3290c36716bc5deefb555f0bdf039815c4c3dc13fb7dcf60b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OriginalClosureNarrowNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91b8e532-24c4-7b07-6714-fec89053ef69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18069–18082.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_round (hT : SortedAt P Γ T I) (mT : WellModed γ T .data) {a : Expr S}
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (ha : HasType P Γ a T) (ma : WellModed γ a .data) :
    Equivalent P Γ γ (R.logical.observe T (R.round T y) a) (R.logical.observe T y a) := by
  have hraw := h.toRaw_typed hT mT hy my
  have hround := h.round_typed hT mT hy my
  have he₁ := h.raw.reencode_evaluation h.logical hT mT hraw.1 hraw.2 ha ma
  have he₂ := h.logical.reencode_evaluation h.raw hT mT hy my ha ma
  have hf₁ := (h.logical.sound hT mT).2 _ a hround.1 hround.2 ⟨ha,ma⟩
  have hf₂ := (h.raw.sound hT mT).2 _ a hraw.1 hraw.2 ⟨ha,ma⟩
  have hf₃ := (h.logical.sound hT mT).2 _ a hy my ⟨ha,ma⟩
  obtain ⟨s,hs⟩ := L.triple.codomain.1
  exact he₁.trans he₂ (hf₁.1 s hs) (hf₂.1 s hs) (hf₃.1 s hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OriginalClosureNarrowNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L18069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ddf62d46e0085751c5326dc3846d9b1cd5af4dc368c93a5be8d57b1ecfbf14a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
