# exact_density_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b08e60c0-c35c-f413-a049-a15e5552754f",
  "kind": "theorem",
  "lexical_name": "exact_density_derivative",
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
  "slug": "exact-density-derivative",
  "source": {
    "blob": "89b90428ac6073cfc474fb0b513083476ace0a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9f3d1bad3fa7bf26e4e603fb1472bc750deedbe7fd8f11a6ccc47c9faeb2690",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ExactIntegralComparisonForTheLogWeightedNativeCrossingPriceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b08e60c0-c35c-f413-a049-a15e5552754f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_density_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt density ((1 - (3 / 2) * Real.log x) / (x ^ 2 * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have h : HasDerivAt (fun y : ℝ ↦ Real.log y / (y * Real.sqrt y))
      ((x⁻¹ * (x * Real.sqrt x) - Real.log x *
        (Real.sqrt x + x * (1 / (2 * Real.sqrt x)))) / (x * Real.sqrt x) ^ 2) x := by
    simpa using! (Real.hasDerivAt_log hx.ne').div
      ((hasDerivAt_id x).mul (Real.hasDerivAt_sqrt hx.ne')) (mul_ne_zero hx.ne' hs)
  have he : (1 - (3 / 2) * Real.log x) / (x ^ 2 * Real.sqrt x) =
      (x⁻¹ * (x * Real.sqrt x) - Real.log x *
        (Real.sqrt x + x * (1 / (2 * Real.sqrt x)))) / (x * Real.sqrt x) ^ 2 := by
    field_simp
    rw [Real.sq_sqrt hx.le]
    ring
  rw [← he] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ExactIntegralComparisonForTheLogWeightedNativeCrossingPriceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b90428ac6073cfc474fb0b513083476ace0a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a83802abf53ab027b7af7dc49d07b10751d93dd1aa86ff625f32db30000d7ed4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
