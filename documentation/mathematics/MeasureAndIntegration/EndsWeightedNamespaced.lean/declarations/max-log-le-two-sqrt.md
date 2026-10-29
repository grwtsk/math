# max_log_le_two_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06f2f7c2-27f4-189b-1c48-46a80790f569",
  "kind": "theorem",
  "lexical_name": "max_log_le_two_sqrt",
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
  "slug": "max-log-le-two-sqrt",
  "source": {
    "blob": "3d7ed2e6b1126f6adbc503c70929d890d7cb9deb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0bc43d7c9350a84677b484ee0fd91ddb802433cfb1fea6101b196d224b2496a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EndsWeightedNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06f2f7c2-27f4-189b-1c48-46a80790f569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max_log_le_two_sqrt {x : ℝ} (hx : 0 ≤ x) : max (Real.log x) 0 ≤ 2 * Real.sqrt x := by
  refine max_le ?_ (by positivity)
  rcases eq_or_lt_of_le hx with rfl | hx'
  · simp
  · have h := Real.log_le_rpow_div hx (by norm_num : (0 : ℝ) < 1 / 2)
    rw [Real.sqrt_eq_rpow]
    calc Real.log x ≤ x ^ (1 / 2 : ℝ) / (1 / 2) := h
      _ = 2 * x ^ (1 / 2 : ℝ) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EndsWeightedNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7ed2e6b1126f6adbc503c70929d890d7cb9deb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=176eb18d4c185e188518d4a453e8eeb77c2fd0a6c682fdde721f9801c2e18803 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
