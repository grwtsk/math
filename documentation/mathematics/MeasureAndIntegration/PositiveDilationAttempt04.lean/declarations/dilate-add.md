# dilate_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a945de3-e7e0-a6db-2a12-584eb2a0316b",
  "kind": "theorem",
  "lexical_name": "dilate_add",
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
  "slug": "dilate-add",
  "source": {
    "blob": "faf5901006206a028b9fd81123067e9dd54e5ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:982943601d7a8fe9012da0303a142d1bbd0d865b40082acf67e796b468bc223f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/PositiveDilationAttempt04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a945de3-e7e0-a6db-2a12-584eb2a0316b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_add {a : ℝ} (ha : 0 < a) (f g : PositiveL2) :
    dilate a ha (f+g) = dilate a ha f + dilate a ha g := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (f+g),dilate_ae a ha f,dilate_ae a ha g,
    Lp.coeFn_add (dilate a ha f) (dilate a ha g),
    (positive_mul_quasi ha).ae_eq_comp (Lp.coeFn_add f g)] with x hfg hf hg hadd hp
  dsimp only [Pi.add_apply,Function.comp_apply] at hadd hp
  rw [hfg,hadd,hf,hg,dilateFunc,dilateFunc,dilateFunc,hp]
  exact mul_add _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/PositiveDilationAttempt04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf5901006206a028b9fd81123067e9dd54e5ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=483c76fb2e0e46e40c1d2c5b13f85d1fea389911bc4d47730ef29bb5619c7737 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
