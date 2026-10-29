# actualFullPositiveKappa_four_abs_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8af9cd58-b0c3-2c1a-4d90-5f54ecaa3abe",
  "kind": "theorem",
  "lexical_name": "actualFullPositiveKappa_four_abs_bounds",
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
  "slug": "actualfullpositivekappa-four-abs-bounds",
  "source": {
    "blob": "c2b6bddf7955fdae38a35d95f5008a08048e4fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9b28eecfc62cb717107891f06ba5f774a90a142c3f1a05700f36f171768b52",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/ActualFullKappaNumericBoundsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8af9cd58-b0c3-2c1a-4d90-5f54ecaa3abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPositiveKappa_four_abs_bounds :
    |fullPositiveKappa 1| ≤ 6 ∧ |fullPositiveKappa 2| ≤ 24 ∧
      |fullPositiveKappa 3| ≤ 144 ∧ |fullPositiveKappa 4| ≤ 1152 := by
  have h0 := actualFullPositiveKappa_succ_abs_le 0
  have h1 := actualFullPositiveKappa_succ_abs_le 1
  have h2 := actualFullPositiveKappa_succ_abs_le 2
  have h3 := actualFullPositiveKappa_succ_abs_le 3
  norm_num at h0 h1 h2 h3
  exact ⟨h0, h1, h2, h3⟩

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/ActualFullKappaNumericBoundsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b6bddf7955fdae38a35d95f5008a08048e4fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f068e9601d824694bca73b9bcd7af5d9b01cd1f5841cf3d0fca4c41f8cc2a85d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
