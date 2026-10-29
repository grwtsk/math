# vHatR_sq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eacf86b6-bea6-3a2e-7921-99772b9f4a51",
  "kind": "lemma",
  "lexical_name": "vHatR_sq_eq",
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
  "slug": "vhatr-sq-eq",
  "source": {
    "blob": "26cafb1155e10c7fab98568ead73e08cc2b3d778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d601b5d94e9d337b911155ffdf7023c4710d1d0a62a2554c690409ad55cd30",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/WindowCoreNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eacf86b6-bea6-3a2e-7921-99772b9f4a51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vHatR_sq_eq (r : ℝ) : ((vHatR v r) ^ 2 : ℂ) = paperFT (fun u => (Av v u : ℂ)) r := by
  have h := Taper.paperFT_autocorr (v := v) hW.even hW.continuous hW.hasCompactSupport r
  have h2 : paperFT (fun u => (v u : ℂ)) r = (vHatR v r : ℂ) := hW.vHat_ofReal' r
  rw [h2] at h
  exact h.symm

/-- `V² = (g_v)^` on ℝ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/WindowCoreNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cafb1155e10c7fab98568ead73e08cc2b3d778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0445041897d4f5503cafdbe959500ed8fdbddf3054db889a98b3307d85ae50b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
