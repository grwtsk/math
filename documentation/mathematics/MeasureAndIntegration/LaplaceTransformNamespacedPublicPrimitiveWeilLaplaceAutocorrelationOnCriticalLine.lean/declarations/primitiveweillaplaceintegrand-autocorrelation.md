# primitiveWeilLaplaceIntegrand_autocorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:715288ba-7738-1bdb-24eb-c19afef8c6a9",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplaceIntegrand_autocorrelation",
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
  "slug": "primitiveweillaplaceintegrand-autocorrelation",
  "source": {
    "blob": "ab5aa734780717435e9ae40d09366b56e19e83a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc492c0d7c7c461fe5cb88ed409427b292844a4cd2ac1c20ca4093b463930e6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/LaplaceTransformNamespacedPublicPrimitiveWeilLaplaceAutocorrelationOnCriticalLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:715288ba-7738-1bdb-24eb-c19afef8c6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitiveWeilLaplaceIntegrand_autocorrelation
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) :
    primitiveWeilLaplaceIntegrand g.autocorrelation s x =
      MeasureTheory.convolution
        (primitiveWeilLaplaceIntegrand g s)
        (primitiveWeilLaplaceIntegrand g.star s)
        complexMultiplication volume x := by
  unfold primitiveWeilLaplaceIntegrand
  rw [autocorrelation_apply, MeasureTheory.convolution_def]
  rw [← MeasureTheory.integral_mul_const]
  apply integral_congr_ae
  filter_upwards with y
  change
    (g y * conj (g (y - x))) *
        Complex.exp ((s - (1 / 2 : ℂ)) * (x : ℂ)) =
      (g y * Complex.exp ((s - (1 / 2 : ℂ)) * (y : ℂ))) *
        (g.star (x - y) *
          Complex.exp ((s - (1 / 2 : ℂ)) * ((x - y : ℝ) : ℂ)))
  rw [star_apply]
  rw [Complex.conjCLE_apply]
  simp only [neg_sub]
  rw [show (s - (1 / 2 : ℂ)) * (x : ℂ) =
    (s - (1 / 2 : ℂ)) * (y : ℂ) +
      (s - (1 / 2 : ℂ)) * ((x - y : ℝ) : ℂ) by
        push_cast
        ring]
  rw [Complex.exp_add]
  ring

/-- Autocorrelation turns the centered bilateral Laplace transform into the
canonical reflected product. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/LaplaceTransformNamespacedPublicPrimitiveWeilLaplaceAutocorrelationOnCriticalLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5aa734780717435e9ae40d09366b56e19e83a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adfef3cd0dd5ea7edadddfe889eb2636830f5efb182722c0fc9b92d58bf858c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
