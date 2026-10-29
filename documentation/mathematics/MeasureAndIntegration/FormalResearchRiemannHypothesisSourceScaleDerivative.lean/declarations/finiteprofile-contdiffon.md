# finiteProfile_contDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ecc66c4-9de1-395e-5341-934501234b99",
  "kind": "theorem",
  "lexical_name": "finiteProfile_contDiffOn",
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
  "slug": "finiteprofile-contdiffon",
  "source": {
    "blob": "b769ab090e68d8565a8b21f0003d2a076a52f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 566,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21683c0ec34b7e109ae0b3ab193c43a4803506f47db9f9f2f440ddc277c5ccf1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/FormalResearchRiemannHypothesisSourceScaleDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ecc66c4-9de1-395e-5341-934501234b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteProfile_contDiffOn (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    ContDiffOn ℝ 1
      (fun A => SourceArithmeticOrbit.finiteProfile (originalSourceState A) I ε δ c)
      (Ioi 0) := by
  unfold SourceArithmeticOrbit.finiteProfile
  apply ContDiffOn.sum
  intro m _
  exact (orbitAtom_contDiffOn ε δ m).const_smul (c m)

/-- The exact scale-one derivative at zero has a strictly positive rational numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/FormalResearchRiemannHypothesisSourceScaleDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b769ab090e68d8565a8b21f0003d2a076a52f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04629825af37744ff444c11ef5833b6187a0c46a4eff70f075d1d09c3a633392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
