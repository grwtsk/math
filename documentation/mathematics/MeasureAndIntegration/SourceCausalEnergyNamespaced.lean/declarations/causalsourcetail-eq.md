# causalSourceTail_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba70e88c-0423-bcf1-5737-7ddc0ae22d93",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_eq",
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
  "slug": "causalsourcetail-eq",
  "source": {
    "blob": "37e03688cb4d9fa6cfcea6a16396cadafe82e43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40998c599a3013c79de85289d57cad4dadd45c6b49f42669678905895295e959",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceCausalEnergyNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba70e88c-0423-bcf1-5737-7ddc0ae22d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_eq {A : ℝ} (hA : 0 < A) (s : ℝ) :
    causalSourceTail A s =
      -deriv (normalizedPrimitiveBump A) s - normalizedPrimitiveBump A s / 2 := by
  have hi := HasCompactSupport.integral_Ioi_deriv_eq
    (compactPolePrimitive_contDiff hA) (compactPolePrimitive_hasCompactSupport hA) s
  rw [compactPolePrimitive_deriv hA] at hi
  rw [causalSourceTail, integral_Ici_eq_integral_Ioi, hi, compactPolePrimitive]
  rw [show s / 2 = -(-s / 2) by ring, Real.exp_neg, mul_neg, ← mul_assoc,
    inv_mul_cancel₀ (Real.exp_ne_zero (-s / 2))]
  ring

/-- The evaluated tail is globally C¹, without assuming any C⁴ source regularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceCausalEnergyNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e03688cb4d9fa6cfcea6a16396cadafe82e43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e6e154d5a4e76975343f0c76b1d59db2def883e297626558ec1c1dcbfc85cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
