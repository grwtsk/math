# psiRelativeError_medium_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa9503ab-fbdc-2942-e59b-64fa4c6a1743",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_medium_bound",
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
  "slug": "psirelativeerror-medium-bound",
  "source": {
    "blob": "d189cf2c04a43203892752379c28fce8b4ee0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689da4a641260faf408cbba7fed9182cd24ae54665ee1dc2ac9044ffb335540a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/MediumPNTLogErrorAttempt01Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa9503ab-fbdc-2942-e59b-64fa4c6a1743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_medium_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ C : ℝ, 0 < C ∧
      ∀ᶠ t : ℝ in atTop,
        |psiRelativeError t| ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  refine ⟨c, hc, C, hC, ?_⟩
  have hh := hbound.bound.comp_tendsto Real.tendsto_exp_atTop
  filter_upwards [hh] with t ht
  simp only [Pi.sub_apply, id_eq, Real.norm_eq_abs, Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)] at ht
  rw [psiRelativeError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hmul := mul_le_mul_of_nonneg_left ht (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) =
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    calc
      _ = C * (Real.exp (-t) * Real.exp t) * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by ring
      _ = _ := by rw [←Real.exp_add]; simp
  exact he ▸ hmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/MediumPNTLogErrorAttempt01Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d189cf2c04a43203892752379c28fce8b4ee0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7b7df4ba9ca74de7d6345a6724fbf6fc1c543bbb515cfd383276466a59a3157 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
