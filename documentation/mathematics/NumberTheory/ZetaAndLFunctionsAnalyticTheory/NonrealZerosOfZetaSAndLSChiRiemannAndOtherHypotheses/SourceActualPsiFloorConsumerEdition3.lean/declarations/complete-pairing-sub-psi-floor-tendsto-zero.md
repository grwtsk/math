# complete_pairing_sub_psi_floor_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5cd64cb-a88e-8623-114f-febc1d298a7a",
  "kind": "theorem",
  "lexical_name": "complete_pairing_sub_psi_floor_tendsto_zero",
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
  "slug": "complete-pairing-sub-psi-floor-tendsto-zero",
  "source": {
    "blob": "232c6ddcd7dc6cbad1e8d62fe213769343a51ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:796f4ad7f14220b148baee62f120dadd73890fbed2a5730de32ab0b110fd0a92",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualPsiFloorConsumerEdition3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5cd64cb-a88e-8623-114f-febc1d298a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pairing_sub_psi_floor_tendsto_zero :
    Tendsto (fun A : ℝ => completeCorrectedAbelPairing A - actualPsiFloorPairing A)
      atTop (𝓝 (0 : ℝ)) := by
  have hh : Tendsto (fun A : ℝ => actualCancelledFactorialWork A +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [add_zero] using actualCancelledFactorialWork_tendsto_zero.add
      renormalized_sub_actual_leading_tendsto_zero
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  have he := complete_pairing_eq_psi_floor_add_actual_errors hA
  linarith

/-- The original residual retains its independent zeta calibration and all genuine errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualPsiFloorConsumerEdition3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232c6ddcd7dc6cbad1e8d62fe213769343a51ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d5c028ad7e2b4f3bd0c2d391d4fe40645ade09189f180ccbcada7a84e1d1e81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
