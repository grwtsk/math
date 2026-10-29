# hasDerivAt_jetRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c03c124-bb51-1c91-19ed-781675da47e3",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_jetRatio",
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
  "slug": "hasderivat-jetratio",
  "source": {
    "blob": "9d080fad9cddc20efa3c8303452d5c49f8450ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ea97f885ab14f0cba291d41322e2ebeba1f3e633b34aa630844b8402211df5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/Criterion02FaileCriterionFailedNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c03c124-bb51-1c91-19ed-781675da47e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_jetRatio (f0 f1 f2 f3 f4 : ℝ → ℝ) {t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) (h3 : HasDerivAt f3 (f4 t) t)
    (hw : f0 t * f2 t - f1 t ^ 2 ≠ 0) :
    HasDerivAt (fun u => (f0 u * f3 u - f1 u * f2 u) /
      (f0 u * f2 u - f1 u ^ 2))
      (f0 t * Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t;
        f2 t, f3 t, f4 t] / (f0 t * f2 t - f1 t ^ 2) ^ 2) t := by
  convert! ((h0.mul h3).sub (h1.mul h2)).div ((h0.mul h2).sub (h1.pow 2)) hw using 1
  simp [Matrix.det_fin_three]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/Criterion02FaileCriterionFailedNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d080fad9cddc20efa3c8303452d5c49f8450ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8c2fe9aa1d6ea0b77e692ee864fd52d3c66feab8d14aba2d8ac1ba8979d65e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
