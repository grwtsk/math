# prime_prefix_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f614ac2e-1246-2d88-8be6-31f867bbccac",
  "kind": "theorem",
  "lexical_name": "prime_prefix_intervalIntegrable",
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
  "slug": "prime-prefix-intervalintegrable",
  "source": {
    "blob": "32cd2ea9b6695a6d19c99f22151834870ff773b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99f6e36b1e8b712e9d5729c66fb40bd459677ba610ecdd63693426306446756",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f614ac2e-1246-2d88-8be6-31f867bbccac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_prefix_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable primeLogPrefix volume a b := by
  rcases le_total a b with hab | hba
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable a b hab
      (fun t : ℝ => t) contDiff_id
    simpa only [deriv_id'', mul_one] using hi
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable b a hba
      (fun t : ℝ => t) contDiff_id
    have hir : IntervalIntegrable primeLogPrefix volume b a := by
      simpa only [deriv_id'', mul_one] using hi
    exact hir.symm

/-- The endpoint correction is literal and valid on every real coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32cd2ea9b6695a6d19c99f22151834870ff773b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64dc4fdfb6519c1b7e2bd4abc8ed62ce3baf63537d60c56e2cfaed37b77266a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
