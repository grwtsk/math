# logSamplingTerm_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7175ac6d367bdf6229571e787dd1ced570c40652",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf7e0904-eaa6-7253-c611-12e6fad48ca3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de660d5b-9f58-cf91-64ee-8a4235abc183",
  "kind": "theorem",
  "lexical_name": "logSamplingTerm_intervalIntegrable",
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
  "slug": "logsamplingterm-intervalintegrable",
  "source": {
    "blob": "7175ac6d367bdf6229571e787dd1ced570c40652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c85926f35cb7ddd1f9ad0490ca0f5309deb5909b6cb3a4ad6e844ac8c32a6357",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EstimateTwoMomentSamplingBoundEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de660d5b-9f58-cf91-64ee-8a4235abc183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSamplingTerm_intervalIntegrable
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x a b : ℝ} (hx : 0 < x)
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (logSamplingTerm F x) volume a b := by
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    ((logSamplingTerm_contDiffOn_pos hF hx).continuousOn.mono
      (fun u hu => ha.trans_le hu.1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EstimateTwoMomentSamplingBoundEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7175ac6d367bdf6229571e787dd1ced570c40652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1e7c9cf3857a1378e6143613ef81c5123e241070d3cd4cb660f4f6e76d51127 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
