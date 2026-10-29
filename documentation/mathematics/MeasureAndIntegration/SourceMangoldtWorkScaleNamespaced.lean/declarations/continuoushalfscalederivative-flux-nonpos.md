# continuousHalfScaleDerivative_flux_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9afd3e6e-d80b-6a4c-ce6b-64abe51b5464",
  "kind": "theorem",
  "lexical_name": "continuousHalfScaleDerivative_flux_nonpos",
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
  "slug": "continuoushalfscalederivative-flux-nonpos",
  "source": {
    "blob": "849e4d53f69ea7b60346bd2e409b23ab243207c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb31b096b5c8acaea566d65cf3467b3261549a4d1be81c5b82064247c43e083a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9afd3e6e-d80b-6a4c-ce6b-64abe51b5464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousHalfScaleDerivative_flux_nonpos {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) :
    (∫ A in a..b, continuousHalfScaleDerivative A) ≤ 0 := by
  have hn : 0 ≤ ∫ A in a..b, -continuousHalfScaleDerivative A := by
    apply intervalIntegral.integral_nonneg hab
    intro A hA
    have hp : 0 < A := (by linarith : 0 < a).trans_le (mem_Icc.mp hA).1
    exact neg_nonneg.mpr (continuousHalfScaleDerivative_lt_zero hp).le
  rw [intervalIntegral.integral_neg] at hn
  exact neg_nonneg.mp hn

/-- Source-only storage has a bounded negative flux; this does not bound the arithmetic flux. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849e4d53f69ea7b60346bd2e409b23ab243207c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7421703877c65434aad3651094d178c3aa7848dcb42994c1b1f6a7aefaef65c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
