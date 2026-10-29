# actual_grid_work_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad08ef3-9b2d-b403-6dc7-b55658b9a769",
  "kind": "theorem",
  "lexical_name": "actual_grid_work_error",
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
  "slug": "actual-grid-work-error",
  "source": {
    "blob": "4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba2a28511d4b759ef9be307fa227b49fdddc4e6e711a7dac1c896ec9199fd1b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ActualCurvatureResolutionAttempt03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad08ef3-9b2d-b403-6dc7-b55658b9a769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_grid_work_error {A : ℝ} {n : ℕ} (hA : 1≤A) (hn : 0<n) :
    |sampledCurvatureWork A (leftGridSample A n)-criticalRemovedPairedWork A|≤
      (2200:ℝ)*A^2*Real.exp A/n := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  have hh := sampled_work_error hA (by positivity : 0≤2*A/(n:ℝ))
    (leftGridSample_measurable A n)
    (fun u hu => (leftGridSample_range_mesh (by linarith : 0<A) hn hu).1)
    (fun u hu => (leftGridSample_range_mesh (by linarith : 0<A) hn hu).2)
  apply hh.trans
  have hv := curvatureVariation_le hA
  have hc := mul_le_mul_of_nonneg_left hv (by positivity : 0≤(389/40:ℝ)*(2*A/(n:ℝ)))
  calc
    (389/40:ℝ)*(2*A/(n:ℝ))*curvatureVariation A ≤
        (389/40:ℝ)*(2*A/(n:ℝ))*(112*A*Real.exp A) := hc
    _ = (10892/5:ℝ)*A^2*Real.exp A/n := by ring
    _ ≤ _ := by gcongr; norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ActualCurvatureResolutionAttempt03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a56091f2f1d40aa43f276ffee7bb605e2b95f6e857707ba55d24d544a2c19234 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
