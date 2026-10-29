# cderiv_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6905f99-21c4-11ce-79fa-47ca0c65d329",
  "kind": "theorem",
  "lexical_name": "cderiv_sub",
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
  "slug": "cderiv-sub",
  "source": {
    "blob": "d691113fbecf81a638eac73916f0c2a3e089be78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95b38cdb768a026f5ff26d0a36ba555b8d24603cb27f0ebf78cac503916dd48a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6905f99-21c4-11ce-79fa-47ca0c65d329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cderiv_sub (hr : 0 < r) (hf : ContinuousOn f (sphere z r))
    (hg : ContinuousOn g (sphere z r)) : cderiv r (f - g) z = cderiv r f z - cderiv r g z := by
  have h1 : ContinuousOn (fun w : ℂ => ((w - z) ^ 2)⁻¹) (sphere z r) := by
    refine ((continuous_id'.fun_sub continuous_const).fun_pow 2).continuousOn.inv₀
      fun w hw h => hr.ne ?_
    rwa [mem_sphere_iff_norm, sq_eq_zero_iff.mp h, norm_zero] at hw
  simp_rw [cderiv, ← smul_sub]
  congr 1
  simpa only [Pi.sub_apply, smul_sub] using
    circleIntegral.integral_sub ((h1.fun_smul hf).circleIntegrable hr.le)
      ((h1.fun_smul hg).circleIntegrable hr.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d691113fbecf81a638eac73916f0c2a3e089be78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe0eca16a8ff0195840a4be22a6732b775038738e6ae739a15610d814344e74a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
