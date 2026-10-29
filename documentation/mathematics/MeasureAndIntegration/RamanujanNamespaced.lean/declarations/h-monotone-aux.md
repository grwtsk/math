# h_monotone_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79a97d9a-1777-f595-3fb4-2d422c860c73",
  "kind": "lemma",
  "lexical_name": "h_monotone_aux",
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
  "slug": "h-monotone-aux",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1484,
    "line": 1463,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e0ce5367fac014f3f4563c07a908b2c7c7cff92263d347901e3d7b6f7495ee5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/RamanujanNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79a97d9a-1777-f595-3fb4-2d422c860c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1463–1484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma h_monotone_aux : MonotoneOn (fun y : ℝ => y - 12 * log y) (Set.Ici 12) := by
  refine monotoneOn_of_deriv_nonneg (convex_Ici 12) ?_ ?_ ?_
  · exact continuousOn_id.sub (continuousOn_const.mul
      (continuousOn_log.mono (by intro y hy; exact ne_of_gt (lt_of_lt_of_le (by norm_num) (Set.mem_Ici.mp hy)))))
  · intro y hy
    rw [interior_Ici] at hy
    refine DifferentiableAt.differentiableWithinAt ?_
    exact ((hasDerivAt_id y).sub
      ((Real.hasDerivAt_log (show y ≠ 0 by linarith [Set.mem_Ioi.mp hy])).const_mul 12)).differentiableAt
  · intro y hy
    rw [interior_Ici] at hy
    have hypos : 0 < y := by linarith [Set.mem_Ioi.mp hy]
    have hderiv : deriv (fun y : ℝ => y - 12 * log y) y = 1 - 12 * y⁻¹ :=
      ((hasDerivAt_id y).sub
        ((Real.hasDerivAt_log (show y ≠ 0 by linarith [hypos])).const_mul 12)).deriv
    rw [hderiv]
    have hyge12 : 12 ≤ y := le_of_lt (Set.mem_Ioi.mp hy)
    have hyinv : 12 * y⁻¹ ≤ 1 := by
      have hdiv : 12 / y ≤ 1 := (div_le_iff₀ hypos).2 (by simpa using hyge12)
      simpa [div_eq_mul_inv] using hdiv
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/RamanujanNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86af52884ccb306a323a7b906f781f64a5b69d7e1ec293153aeacc57ff61f880 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
