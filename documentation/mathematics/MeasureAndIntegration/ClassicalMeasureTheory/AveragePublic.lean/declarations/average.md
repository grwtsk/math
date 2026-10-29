# average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:503284d145b7743743a7975cbfdffef1e2cdaf57014f33ff3483be1be79345c0",
  "kind": "def",
  "lexical_name": "average",
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
  "slug": "average",
  "source": {
    "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c575a184a734727eae84ee59731e6ef5f67c7887fba0e50058c084e6b9aa404",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:503284d145b7743743a7975cbfdffef1e2cdaf57014f33ff3483be1be79345c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def average (f : α → E) :=
  ∫ x, f x ∂(μ univ)⁻¹ • μ

/-- Average value of a function `f` w.r.t. a measure `μ`.

It is equal to `(μ.real univ)⁻¹ • ∫ x, f x ∂μ`, so it takes value zero if `f` is not integrable or
if `μ` is an infinite measure. If `μ` is a probability measure, then the average of any function is
equal to its integral.

For the average on a set, use `⨍ x in s, f x ∂μ`, defined as `⨍ x, f x ∂(μ.restrict s)`. For the
average w.r.t. the volume, one can omit `∂volume`. -/
notation3 "⨍ " (...) ", " r:60:(scoped f => f) " ∂" μ:70 => average μ r

/-- Average value of a function `f` w.r.t. the standard measure.

It is equal to `(volume.real univ)⁻¹ * ∫ x, f x`, so it takes value zero if `f` is not integrable
or if the space has infinite measure. In a probability space, the average of any function is equal
to its integral.

For the average on a set, use `⨍ x in s, f x`, defined as `⨍ x, f x ∂(volume.restrict s)`. -/
notation3 "⨍ " (...) ", " r:60:(scoped f => average volume f) => r

/-- Average value of a function `f` w.r.t. a measure `μ` on a set `s`.

It is equal to `(μ.real s)⁻¹ * ∫ x, f x ∂μ`, so it takes value zero if `f` is not integrable on
`s` or if `s` has infinite measure. If `s` has measure `1`, then the average of any function is
equal to its integral.

For the average w.r.t. the volume, one can omit `∂volume`. -/
notation3 "⨍ " (...) " in " s ", " r:60:(scoped f => f) " ∂" μ:70 =>
  average (Measure.restrict μ s) r

/-- Average value of a function `f` w.r.t. the standard measure on a set `s`.

It is equal to `(volume.real s)⁻¹ * ∫ x, f x`, so it takes value zero `f` is not integrable on `s`
or if `s` has infinite measure. If `s` has measure `1`, then the average of any function is equal to
its integral. -/
notation3 "⨍ " (...) " in " s ", " r:60:(scoped f => average (Measure.restrict volume s) f) => r

variable (μ) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6295be232e94167e5402f139258de1bfc91ca6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=510fa46d8218a05600520e23a325c54e35e374577e466bef2316f5bf27675033 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
