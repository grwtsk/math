# sourceFourier_testError_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52b57710f25cb0ffe5669a1cdaf706c461c17b94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66744099-0583-edc5-3e39-c402e839f59d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88b03dfd-fd0a-5281-fb85-01584bb18e02",
  "kind": "theorem",
  "lexical_name": "sourceFourier_testError_tendsto",
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
  "slug": "sourcefourier-testerror-tendsto",
  "source": {
    "blob": "52b57710f25cb0ffe5669a1cdaf706c461c17b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a66e1a223120db8d814e339c3d61f240fc36694e25ba407cc48f1ceb5bf7877",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ZeroSmoothingFourierLimitsProbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b03dfd-fd0a-5281-fb85-01584bb18e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_testError_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ sourceFourier
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ) l (𝓝 0) := by
  simp_rw [sourceFourier_testError A _ hA]
  simpa using (sourceFourier_smoothed_tendsto A hA ε hε hlim ξ).sub_const
    (sourceFourier (actualTest A) ξ)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ZeroSmoothingFourierLimitsProbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b57710f25cb0ffe5669a1cdaf706c461c17b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45a35d1b9e58b159095f1dafc4d0b81fe425abf174db3b6bd69432bdc9edb47d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
