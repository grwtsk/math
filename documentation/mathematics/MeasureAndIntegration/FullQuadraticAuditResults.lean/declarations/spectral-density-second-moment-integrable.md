# spectral_density_second_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2aae92ef9b68d91bf7b824dad69430b1bd56765c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68ea0e9a-d052-f1e8-6d45-e7196e2e295f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e975ac95-8e65-cc3b-75fc-526374ded8c0",
  "kind": "theorem",
  "lexical_name": "spectral_density_second_moment_integrable",
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
  "slug": "spectral-density-second-moment-integrable",
  "source": {
    "blob": "2aae92ef9b68d91bf7b824dad69430b1bd56765c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variantb236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd44429f639cffe81dda8435d07242ba524c1a32c51bde5a0cc4bb528c8249f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/FullQuadraticAuditResults.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e975ac95-8e65-cc3b-75fc-526374ded8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_density_second_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ ξ ^ 2 * spectralDensity A ξ) := by
  have hne : A ≠ 0 := by linarith
  have hi := ((rescaled_second_moment_integrable A hA).comp_mul_left' hne).const_mul A
  convert hi using 1
  funext ξ
  unfold rescaledDensity
  simp only [show A * ξ / A = ξ by field_simp]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/FullQuadraticAuditResults.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variantb236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2aae92ef9b68d91bf7b824dad69430b1bd56765c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3547a38eefb922ce826c6bf5de6098996b9d9a9a5cbf90d90f8a2525b60d4e4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variantb236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
