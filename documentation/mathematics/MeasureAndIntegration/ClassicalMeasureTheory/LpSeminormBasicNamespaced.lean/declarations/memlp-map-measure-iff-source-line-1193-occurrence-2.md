# memLp_map_measure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87a30372-794f-db6f-73c3-c25133d13203",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.MemLpELpNormLtTop.Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.MeasurableEmbedding.memLp_map_measure_iff",
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
  "slug": "memlp-map-measure-iff-source-line-1193-occurrence-2",
  "source": {
    "blob": "624840488e6c617cbdb0e982148df08dc075ea6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1200,
    "line": 1193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8ffd3ca55b3119f522a662023608cc0b9b8458ed9a4e5a84f21ceea9302fc5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87a30372-794f-db6f-73c3-c25133d13203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1193–1200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.MemLpELpNormLtTop.Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.MeasurableEmbedding.memLp_map_measure_iff (hf : MeasurableEmbedding f) :
    MemLp g p (Measure.map f μ) ↔ MemLp (g ∘ f) p μ := by
  simp_rw [MemLp, hf.aestronglyMeasurable_map_iff, hf.eLpNorm_map_measure]

@[deprecated (since := "2025-02-21")]
alias _root_.MeasurableEmbedding.memℒp_map_measure_iff :=
  _root_.GRWTSK.Analysis.RealAnalysis.Integration.MemLpELpNormLtTop.Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.MeasurableEmbedding.memLp_map_measure_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean#L1193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624840488e6c617cbdb0e982148df08dc075ea6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d6f52b6d3f194a28327b7677fbb4d2f7398a46ac4e2430df7ed8c95ba56e442 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
