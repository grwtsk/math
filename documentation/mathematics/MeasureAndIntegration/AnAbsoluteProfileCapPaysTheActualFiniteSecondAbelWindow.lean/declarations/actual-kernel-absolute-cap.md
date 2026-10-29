# actual_kernel_absolute_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f593b9fc-a593-4cb5-59f4-ccde35e3632f",
  "kind": "theorem",
  "lexical_name": "actual_kernel_absolute_cap",
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
  "slug": "actual-kernel-absolute-cap",
  "source": {
    "blob": "9c53b31b3d70691b36bd8dbe53299f546891f3e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbelAbsoluteBudget/Variantae5eec5a85167ba4c7254623f26d907002474b2e5a47a9207c6b2bf0458455c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e73b8f18b300ab35f79dbd795e151142bac8d4487eadfb0a1efba1df1403f4af",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/AnAbsoluteProfileCapPaysTheActualFiniteSecondAbelWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f593b9fc-a593-4cb5-59f4-ccde35e3632f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_kernel_absolute_cap {A : ℝ} (hA : 200 ≤ A) (t : ℝ) :
    |actualKernel A t| ≤ 5 / A ^ 2 + 5 / (2 * A) := by
  have hp : 0 < A := by linarith
  have h1 : 1 ≤ A := by linarith
  have hc := sourceCorrelation_second_deriv_abs_le_five hA t
  have hd := sourceCorrelation_deriv_abs_le_five_div h1 t
  unfold actualKernel
  have he : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| =
      |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := by
    rw [abs_div]; norm_num
  have hd2 : |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 ≤ 5 / (2 * A) := by
    calc
      _ ≤ (5 / A) / 2 := div_le_div_of_nonneg_right hd (by norm_num)
      _ = _ := by field_simp [hp.ne']
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := by
      simpa only [Real.norm_eq_abs] using norm_sub_le
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 5 / A ^ 2 + 5 / (2 * A) := by rw [he]; exact add_le_add hc hd2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/AnAbsoluteProfileCapPaysTheActualFiniteSecondAbelWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbelAbsoluteBudget/Variantae5eec5a85167ba4c7254623f26d907002474b2e5a47a9207c6b2bf0458455c7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c53b31b3d70691b36bd8dbe53299f546891f3e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1e4ee3d2ededf2122ef18f6eba054d34524f8cea15a2399596609208ac12cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbelAbsoluteBudget/Variantae5eec5a85167ba4c7254623f26d907002474b2e5a47a9207c6b2bf0458455c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
