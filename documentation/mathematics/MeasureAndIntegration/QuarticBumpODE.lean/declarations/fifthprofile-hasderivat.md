# fifthProfile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ed1f978-507b-a6ef-8943-1e2b81345ffd",
  "kind": "theorem",
  "lexical_name": "fifthProfile_hasDerivAt",
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
  "slug": "fifthprofile-hasderivat",
  "source": {
    "blob": "52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb061b862fda5dce992096c7a9830faa312159a4efb0182ac6f5c8280dfee0e5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/QuarticBumpODE.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed1f978-507b-a6ef-8943-1e2b81345ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fifthProfile_hasDerivAt (v : ℝ) :
    HasDerivAt fifthProfile (-10*v*sourceBump v) v := by
  have hb : HasDerivAt sourceBump (firstDerivative 1 v) v := by
    rw [sourceBump_eq_scaled_unit]
    exact scaledBump_hasDerivAt (by norm_num) v
  have h := ((hasDerivAt_const v (1 : ℝ)).sub ((hasDerivAt_id v).pow 2)).mul hb
  apply h.congr_deriv
  by_cases hv : v ∈ Icc (-1 : ℝ) 1
  · simp only [firstDerivative,indicator_of_mem hv,firstInterior]
    simp [sourceBump,hv]
    ring
  · simp [firstDerivative,sourceBump,hv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/QuarticBumpODE.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42b6ebbbd6ff7964cb42350d20055b3600ff59dbb88b1c354b56f3e3d18e1c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
