# transfer_from_sample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b21dfc2-1477-aa6a-b7f7-2d0f28443ec4",
  "kind": "theorem",
  "lexical_name": "transfer_from_sample",
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
  "slug": "transfer-from-sample",
  "source": {
    "blob": "41daf554711152e78a3bbc996699d18e0513aa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e32400d250b24d3e900037ed1ba07013c1b874ab558a5c6f0441c76f818902c8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleThreePointLipschitz.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b21dfc2-1477-aa6a-b7f7-2d0f28443ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem transfer_from_sample (data : ThreePointData a f)
    {x y : ℝ}
    (hx : x ∈ Icc (0 : ℝ) (a : ℝ))
    (hy : y ∈ Icc (0 : ℝ) (a : ℝ))
    (sample : data.samples.Contains (f y))
    (near : |x - y| ≤ (a : ℝ) / 4) :
    data.widened.Contains (f x) := by
  have nonneg : (0 : ℝ) ≤ (data.slope : ℝ) := by
    exact_mod_cast data.slope_nonneg
  have diff :
      |f x - f y| ≤ ((data.slope * a / 4 : ℚ) : ℝ) := by
    calc
      |f x - f y| ≤ (data.slope : ℝ) * |x - y| :=
        data.lipschitz x hx y hy
      _ ≤ (data.slope : ℝ) * ((a : ℝ) / 4) :=
        mul_le_mul_of_nonneg_left near nonneg
      _ = ((data.slope * a / 4 : ℚ) : ℝ) := by
        push_cast
        ring
  rcases abs_le.mp diff with ⟨diffLower, diffUpper⟩
  rcases sample with ⟨sampleLower, sampleUpper⟩
  change
    (((data.samples.lower - data.slope * a / 4 : ℚ) : ℝ) ≤ f x ∧
      f x ≤ ((data.samples.upper + data.slope * a / 4 : ℚ) : ℝ))
  push_cast
  constructor <;> linarith

/-- The three real sample enclosures and the quantitative Lipschitz theorem
supply the universal pointwise bound required by the existing edge consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleThreePointLipschitz.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41daf554711152e78a3bbc996699d18e0513aa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=177f32766876add2a0f90c668b0a32843771eaf1278a8bf0dbb47dc1902ad487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
