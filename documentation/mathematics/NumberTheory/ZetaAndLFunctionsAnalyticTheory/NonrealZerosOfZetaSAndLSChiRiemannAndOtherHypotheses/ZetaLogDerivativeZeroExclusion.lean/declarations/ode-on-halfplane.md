# ode_on_halfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:073d945a-4990-9fe4-1f7e-1493ec9334c4",
  "kind": "theorem",
  "lexical_name": "ode_on_halfPlane",
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
  "slug": "ode-on-halfplane",
  "source": {
    "blob": "45454f870b83eb2a92e769bc027dc14f0183571b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65b611e399420822884bfd2e210958c194f86f351fe835264478a154dbc334e3",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaLogDerivativeZeroExclusion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073d945a-4990-9fe4-1f7e-1493ec9334c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ode_on_halfPlane {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    ∀ s ∈ halfPlane, deriv poleRemoved s=(-F s)*poleRemoved s := by
  have hFa : AnalyticOnNhd ℂ F halfPlane := hhol.analyticOnNhd halfPlane_open
  have hd : AnalyticOnNhd ℂ (deriv poleRemoved) halfPlane := by
    intro s hs
    exact (poleRemoved_analyticOn s hs).deriv
  have hr : AnalyticOnNhd ℂ (fun s => (-F s)*poleRemoved s) halfPlane := by
    intro s hs
    exact (hFa s hs).neg.mul (poleRemoved_analyticOn s hs)
  have he : deriv poleRemoved =ᶠ[𝓝 (2 : ℂ)]
      (fun s => (-F s)*poleRemoved s) := by
    have hopen : IsOpen {s : ℂ | 1<s.re} :=
      isOpen_lt continuous_const Complex.continuous_re
    filter_upwards [hopen.mem_nhds (show 1<(2 : ℂ).re by norm_num)] with s hs
    exact ode_on_euler_domain hEuler hs
  exact hd.eqOn_of_preconnected_of_eventuallyEq hr halfPlane_preconnected
    two_mem_halfPlane he

/-- Nonvanishing uses the actual pole-removed value 1 at the anchor 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaLogDerivativeZeroExclusion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45454f870b83eb2a92e769bc027dc14f0183571b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89b3691cb52f43b9af88d2a49889cb3fe6184f4a995a63c13dc7c7c44de42242 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
