# inner_indicatorConstLp_eq_setIntegral_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e54cf36-12e2-10fe-6a8c-bc4a0b5ea74c",
  "kind": "theorem",
  "lexical_name": "inner_indicatorConstLp_eq_setIntegral_inner",
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
  "slug": "inner-indicatorconstlp-eq-setintegral-inner",
  "source": {
    "blob": "6d1cb4f8902853c4bb2f2ec99c90281320108813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant27c013635939f1ceff2279cecef1afd56f072f754dbb0736842d20b664fd478f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e3941156d9373f9b755d5da655a720d372c9e2d7f4a177334f7cf8508c791b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e54cf36-12e2-10fe-6a8c-bc4a0b5ea74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_indicatorConstLp_eq_setIntegral_inner (f : Lp E 2 μ) (hs : MeasurableSet s) (c : E)
    (hμs : μ s ≠ ∞) : (⟪indicatorConstLp 2 hs hμs c, f⟫ : 𝕜) = ∫ x in s, ⟪c, f x⟫ ∂μ := by
  rw [inner_def, ← integral_indicator hs]
  refine integral_congr_ae ((@indicatorConstLp_coeFn _ _ _ 2 μ _ s hs hμs c).mono fun x hx ↦ ?_)
  have : ⟪indicatorConstLp 2 hs hμs c x, f x⟫ = s.indicator (fun x ↦ ⟪c, f x⟫) x := by
    by_cases hxs : x ∈ s <;> simp [hx, hxs]
  simpa

/-- The inner product in `L2` of the indicator of a set `indicatorConstLp 2 hs hμs c` and `f` is
equal to the inner product of the constant `c` and the integral of `f` over `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant27c013635939f1ceff2279cecef1afd56f072f754dbb0736842d20b664fd478f.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1cb4f8902853c4bb2f2ec99c90281320108813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=950747d52773d461e19464c658aa3985a9686a57c1a911e0122ee5e43eef091d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant27c013635939f1ceff2279cecef1afd56f072f754dbb0736842d20b664fd478f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
