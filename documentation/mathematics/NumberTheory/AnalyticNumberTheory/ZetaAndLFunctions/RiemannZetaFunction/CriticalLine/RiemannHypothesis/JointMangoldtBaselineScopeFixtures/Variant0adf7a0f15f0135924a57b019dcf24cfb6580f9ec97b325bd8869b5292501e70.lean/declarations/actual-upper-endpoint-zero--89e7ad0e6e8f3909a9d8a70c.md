# actual_upper_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47e13d5c716790ebfe95df9af64c19ee8b60d3a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11ce675c-87a6-18ca-2c6f-84893d9f444e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b50e2ac7-1720-7a25-f22d-b54e6920a0fb",
  "kind": "theorem",
  "lexical_name": "actual_upper_endpoint_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "actual-upper-endpoint-zero--89e7ad0e6e8f3909a9d8a70c",
  "source": {
    "blob": "47e13d5c716790ebfe95df9af64c19ee8b60d3a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointMangoldtBaselineScopeFixtures/Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89e7ad0e6e8f3909a9d8a70c2ae19c7e0615f77000dc9c6e8b55b8ee57bcdd79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointMangoldtBaselineScopeFixtures/Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50e2ac7-1720-7a25-f22d-b54e6920a0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_endpoint_zero (A : ℝ) (hA : 1 ≤ A) :
    jointMangoldtTestProfile A (Real.log (sourceKernelCutoff A : ℝ)) = 0 :=
  jointMangoldtTestProfile_zero_of_log_cutoff_le A hA le_rfl

/-- Actual entire upper tail vanishes, not merely its endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointMangoldtBaselineScopeFixtures/Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointMangoldtBaselineScopeFixtures/Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e13d5c716790ebfe95df9af64c19ee8b60d3a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a25f0c6e94c19b5b9382d973c6606ea8a31326ab2ce0a0a4586ed5749a0a3b44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointMangoldtBaselineScopeFixtures/Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
