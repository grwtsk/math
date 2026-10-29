# compactPolePrimitive_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142dc6f38a7ae6fd5c86a268d46774be6462971b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e239b8c3-96a1-8fea-2342-2ed6b6714070",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf55c215-d3a9-bb72-7ea0-19c60bc6bf45",
  "kind": "theorem",
  "lexical_name": "compactPolePrimitive_hasCompactSupport",
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
  "slug": "compactpoleprimitive-hascompactsupport",
  "source": {
    "blob": "142dc6f38a7ae6fd5c86a268d46774be6462971b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ac2a2e06dc2e14266270e2a64699ffd95d929f4f4edaa670a4fdcd43d0ef33",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EnergyV2Prebytes.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf55c215-d3a9-bb72-7ea0-19c60bc6bf45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactPolePrimitive_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (compactPolePrimitive A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  exact compactPolePrimitive_zero_of_not_mem hA hx

/-- Actual weighted-source integrability holds at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EnergyV2Prebytes.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142dc6f38a7ae6fd5c86a268d46774be6462971b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e9854473f409fa1dd0d92b5e779a1a8093be1a1f4e2aa6c58ed64dcf86c35f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
