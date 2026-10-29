# mₐ_xₐ_le_121

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeeda717-d8f2-9646-f755-ec774e5be5de",
  "kind": "theorem",
  "lexical_name": "mₐ_xₐ_le_121",
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
  "slug": "m-x-le-121",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2219,
    "line": 2215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b303892f9f3d146f1ee2b60d0c72ba2e92dabe2707899dc5f5b26797fa776d13",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/RamanujanNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeeda717-d8f2-9646-f755-ec774e5be5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2215–2219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mₐ_xₐ_le_121 : mₐ xₐ ≤ (121 : ℝ) := by
  have : 0 ≤ a xₐ := a_nonneg two_le_xₐ
  have hC1abs : |C₁| ≤ C₁ := (abs_of_nonneg C₁_nonneg).le
  grind [Calculations.m_upper_from_bounds, mₐ, C₃_nonneg, B_nonneg, C₁_le_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/RamanujanNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L2215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d87ce2998103d5b229da6fa6fd69ab0f59c24e6b22791f9133a8f461567fb838 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
