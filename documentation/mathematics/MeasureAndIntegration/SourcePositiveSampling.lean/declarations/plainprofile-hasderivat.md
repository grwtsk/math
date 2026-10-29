# plainProfile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eab3e1186d5e3f21a3db6048e01c196bfcf70d29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a08c3a6a-aea0-790b-c4cf-91982d117c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a358a0f-6527-0140-9825-c70835160c24",
  "kind": "theorem",
  "lexical_name": "plainProfile_hasDerivAt",
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
  "slug": "plainprofile-hasderivat",
  "source": {
    "blob": "eab3e1186d5e3f21a3db6048e01c196bfcf70d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:393a41ba2672f3738e25c858894d6a116333ece1cfa0dbf24dcdd4c682dd3236",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourcePositiveSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a358a0f-6527-0140-9825-c70835160c24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainProfile_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (plainProfile A k)
      (Real.exp (-(Real.log k + Real.log u) / 2) / u *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u) / 2)) u := by
  have hs := (Real.hasDerivAt_log hu.ne').const_add (Real.log k)
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (Real.log k + Real.log u)).hasDerivAt.comp u hs
  have hd : HasDerivAt (sourcePlainSamplingTerm A k)
      (Real.exp (-(Real.log k + Real.log u) / 2) / u *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u) / 2)) u :=
    (((hs.neg.div_const 2).exp).mul hc).congr_deriv (by
      simp only [Pi.neg_apply, Function.comp_apply]
      ring)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
  exact plainProfile_eq_of_pos A k hv

/-- The exact logarithmic derivative retains the sampled logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourcePositiveSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab3e1186d5e3f21a3db6048e01c196bfcf70d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6c46f418c94cdbad7d3bfda7e758171489d196bb5c90dc4bae085d944b7683b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/07/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
