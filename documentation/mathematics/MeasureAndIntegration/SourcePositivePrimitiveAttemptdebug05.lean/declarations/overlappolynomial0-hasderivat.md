# overlapPolynomial0_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c86e3398-5003-bc11-cd84-be07573c804c",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial0_hasDerivAt",
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
  "slug": "overlappolynomial0-hasderivat",
  "source": {
    "blob": "8c2a172adcd57b18976c85bd50680a9fedb053bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa247fcf995e1bf16dfc17e6991c19825ad2ec1ae435da7cdfc540a1165ee15",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourcePositivePrimitiveAttemptdebug05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86e3398-5003-bc11-cd84-be07573c804c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial0_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial0 (overlapPolynomial1 u) u := by
  have h := ((((((((((hasDerivAt_const u ((65536/109395:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((-65536/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((8192/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((-4096/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((256/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((-128/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((128/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((-16/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((8/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 17).const_mul ((-1/218790:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial0,overlapPolynomial1,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourcePositivePrimitiveAttemptdebug05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c2a172adcd57b18976c85bd50680a9fedb053bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4efa2f954a6dca12eef0d5e97938066592d0f2d68df591df1b2edf87722f1121 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
