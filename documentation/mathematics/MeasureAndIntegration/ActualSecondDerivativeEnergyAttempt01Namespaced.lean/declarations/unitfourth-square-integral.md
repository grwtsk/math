# unitFourth_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b9e780-e74e-43f9-7dce-2e1f0b2bb842",
  "kind": "theorem",
  "lexical_name": "unitFourth_square_integral",
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
  "slug": "unitfourth-square-integral",
  "source": {
    "blob": "446207f80bb0ddfae5e7b64e95ba79729cfd2cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de789711d107365d3c6919856e5fb74acbec258611e8443c8a6b9bfd64041fd0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ActualSecondDerivativeEnergyAttempt01Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b9e780-e74e-43f9-7dce-2e1f0b2bb842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitFourth_square_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x ^ 2) = (32768 : ℝ) := by
  have he : (fun x : ℝ => unitFourth x ^ 2) = fun x =>
      20736 - 414720 * x ^ 2 + 2557440 * x ^ 4 -
        4838400 * x ^ 6 + 2822400 * x ^ 8 := by
    funext x
    unfold unitFourth
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ActualSecondDerivativeEnergyAttempt01Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `446207f80bb0ddfae5e7b64e95ba79729cfd2cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e367a3040fb6c00d9cd606a1693f40b5143ab2962eb5e513e05100a5d0edc1cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
