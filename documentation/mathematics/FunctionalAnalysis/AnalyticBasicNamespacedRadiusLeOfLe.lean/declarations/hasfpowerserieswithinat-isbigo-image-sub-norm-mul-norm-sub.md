# HasFPowerSeriesWithinAt.isBigO_image_sub_norm_mul_norm_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ba2b3b7-a12a-9a8f-84f6-0eb314c917ff",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinAt.isBigO_image_sub_norm_mul_norm_sub",
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
  "slug": "hasfpowerserieswithinat-isbigo-image-sub-norm-mul-norm-sub",
  "source": {
    "blob": "57ccc08fe35d34400d35e11fbe19643732a90dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1220,
    "line": 1208,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b853b02bab55c54aa2ccac0427f3a8137af3e61af9f4ae5cd50cea8fee20eac0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/AnalyticBasicNamespacedRadiusLeOfLe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ba2b3b7-a12a-9a8f-84f6-0eb314c917ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinAt.isBigO_image_sub_norm_mul_norm_sub
    (hf : HasFPowerSeriesWithinAt f p s x) :
    (fun y : E × E => f y.1 - f y.2 - p 1 fun _ => y.1 - y.2)
      =O[𝓝[(insert x s) ×ˢ (insert x s)] (x, x)] fun y => ‖y - (x, x)‖ * ‖y.1 - y.2‖ := by
  rcases hf with ⟨r, hf⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 hf.r_pos with ⟨r', r'0, h⟩
  refine (hf.isBigO_image_sub_image_sub_deriv_principal h).mono ?_
  rw [inter_comm]
  exact le_principal_iff.2 (inter_mem_nhdsWithin _ (EMetric.ball_mem_nhds _ r'0))

/-- If `f` has formal power series `∑ n, pₙ` at `x`, then
`f y - f z - p 1 (fun _ ↦ y - z) = O(‖(y, z) - (x, x)‖ * ‖y - z‖)` as `(y, z) → (x, x)`.
In particular, `f` is strictly differentiable at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/AnalyticBasicNamespacedRadiusLeOfLe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ccc08fe35d34400d35e11fbe19643732a90dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e30a504bd5c82f8a31f507011ca3fd579e08849d2056351a0e7bbc5e06fd775d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
