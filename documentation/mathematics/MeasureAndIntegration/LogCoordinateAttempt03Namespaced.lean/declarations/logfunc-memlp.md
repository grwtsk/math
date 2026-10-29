# logFunc_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90eb607a-ebd2-0f89-8770-079f1dd59316",
  "kind": "theorem",
  "lexical_name": "logFunc_memLp",
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
  "slug": "logfunc-memlp",
  "source": {
    "blob": "a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb923a1603490c2c781dff870c99488755988c24af3448c7dd29b51dfba377eb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/LogCoordinateAttempt03Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90eb607a-ebd2-0f89-8770-079f1dd59316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logFunc_memLp {f : ℝ → ℂ} (hf : MemLp f 2 positiveMeasure) :
    MemLp (logFunc f) 2 (volume : Measure ℝ) := by
  have hm : AEStronglyMeasurable (logFunc f) volume :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hf.aestronglyMeasurable.comp_quasiMeasurePreserving exp_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  simpa only [logFunc_norm_sq] using
    (integrable_exp_jacobian (fun x => ‖f x‖^2)).mp
      ((memLp_two_iff_integrable_sq_norm hf.aestronglyMeasurable).mp hf)

end ContinuousResearch.LogCoordinate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/LogCoordinateAttempt03Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d27d3bb1c9325346b169823d4d3c9c3323debcd3120daf554b325b755f7bd381 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
