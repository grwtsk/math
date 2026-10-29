# envelope_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c21ad8e7-8766-e960-70d7-49c0e8e1fd86",
  "kind": "theorem",
  "lexical_name": "envelope_antitoneOn",
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
  "slug": "envelope-antitoneon",
  "source": {
    "blob": "3af1880ae6b6018bf8637dacfb0027821d4232cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:991f6e4ac964ea8b7ca65faed50fe78999123fcd3e7ff8ab66aa5461dcd51bfb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/EndpointRadiusNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c21ad8e7-8766-e960-70d7-49c0e8e1fd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_antitoneOn : AntitoneOn envelope (Set.Ici 3) := by
  apply antitoneOn_of_hasDerivWithinAt_nonpos (f' := fun A =>
    2 * A ^ 2 * Real.exp (-A) * (3 - A)) (convex_Ici 3)
  · exact (continuous_iff_continuousAt.mpr
      (fun A => (envelope_hasDerivAt A).continuousAt)).continuousOn
  · intro A _
    exact (envelope_hasDerivAt A).hasDerivWithinAt
  · intro A hA
    have ha : 3 ≤ A := interior_subset hA
    exact mul_nonpos_of_nonneg_of_nonpos (by positivity) (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/EndpointRadiusNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af1880ae6b6018bf8637dacfb0027821d4232cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7800ab0feba930286b02e06567df836387b6b2e32a871bc3d2ad60db88186345 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
