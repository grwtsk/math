# primitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f86cc961-139f-bcad-c003-387324411a6d",
  "kind": "theorem",
  "lexical_name": "primitive_hasDerivAt",
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
  "slug": "primitive-hasderivat",
  "source": {
    "blob": "a92b1f41f401b857a9e38b3c6b24a984282d78a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2246ccedf407fccc7ae981cf3a1f7bb9c670a76557a52908a23bbfb0218f8746",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/LogPowerTailAttempt01Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86cc961-139f-bcad-c003-387324411a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt logPowerPrimitive (logPower x) x := by
  have hh := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).mul
    (Real.hasDerivAt_rpow_const (p:=-(1:ℝ)/2) (Or.inl hx.ne'))
  have he : x⁻¹*x^(-(1:ℝ)/2) = x^(-(3:ℝ)/2) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  convert hh using 1
  · simp only [logPowerPrimitive]
  · norm_num only at *
    unfold logPower
    rw [mul_assoc (-2),he]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/LogPowerTailAttempt01Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a92b1f41f401b857a9e38b3c6b24a984282d78a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ab42002f3f134ada5e4219116155f3525ae0a2c38b3110f75bf0c74669bedb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
