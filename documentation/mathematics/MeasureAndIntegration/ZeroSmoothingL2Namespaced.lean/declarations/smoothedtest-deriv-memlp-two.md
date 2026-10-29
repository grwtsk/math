# smoothedTest_deriv_memLp_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bee21a19-c93e-7201-c743-ed83c11f83fc",
  "kind": "theorem",
  "lexical_name": "smoothedTest_deriv_memLp_two",
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
  "slug": "smoothedtest-deriv-memlp-two",
  "source": {
    "blob": "c1caf539c24fca1f3a45380e56d30e82b4f6d38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eaf24510083aa88c6ed4256d78c78ea9d30f8f97b3079f0854bfc53ac244634",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ZeroSmoothingL2Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee21a19-c93e-7201-c743-ed83c11f83fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedTest_deriv_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (deriv (smoothedTest A ε hε)) 2 volume :=
  (smoothedTest_deriv_continuous A ε hA hε).memLp_of_hasCompactSupport
    (smoothedTest_deriv_hasCompactSupport A ε hA hε)

/-- The full-line value error is genuinely in L² at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ZeroSmoothingL2Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1caf539c24fca1f3a45380e56d30e82b4f6d38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c431f68525bc1a1aaeeba75b6cce4108b6012ace35013c946a25a54739ad2e62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
