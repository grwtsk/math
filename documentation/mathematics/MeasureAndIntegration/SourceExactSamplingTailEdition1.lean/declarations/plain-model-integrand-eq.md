# plain_model_integrand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d85fa0e-cb7b-6266-f530-499c4464f3ed",
  "kind": "theorem",
  "lexical_name": "plain_model_integrand_eq",
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
  "slug": "plain-model-integrand-eq",
  "source": {
    "blob": "be2ce417c9e5b17454d98dc97284998b15526ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e7a1d9aa590fbe9e29fb9e97fa9b7de12832ca0935d1bbe50a7f731133b08d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceExactSamplingTailEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d85fa0e-cb7b-6266-f530-499c4464f3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem plain_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * plainModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        ((-sourceCorrelation explicitSecondDerivative A (Real.log k) / 2 +
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) *
          coefficientWeight 0 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 1 u) := by
  funext u
  simp only [plainModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceExactSamplingTailEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2ce417c9e5b17454d98dc97284998b15526ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd9b3056ba8514ba4f68c22f5c0af0dc46d784eef6b98bab94e8567d97532494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
