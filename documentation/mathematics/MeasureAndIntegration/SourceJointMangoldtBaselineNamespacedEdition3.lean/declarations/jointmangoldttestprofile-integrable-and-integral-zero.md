# jointMangoldtTestProfile_integrable_and_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9beebf69-ff2a-3899-fb97-4f806f4eda98",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_integrable_and_integral_zero",
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
  "slug": "jointmangoldttestprofile-integrable-and-integral-zero",
  "source": {
    "blob": "b9fe4cb055bc82e023977b85b86f256aebfaf5ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant2d21eb8804bfcd0afa3fb7aed6e3406d36bc80a1958d835f2c0b971d7694fd1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a2a58d6525902c67012471c9b09326e9e3196dc1034f7b03d31508bc048fda",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceJointMangoldtBaselineNamespacedEdition3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9beebf69-ff2a-3899-fb97-4f806f4eda98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_integrable_and_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    Integrable (jointMangoldtTestProfile A) ∧
      (∫ t : ℝ, jointMangoldtTestProfile A t) = 0 := by
  classical
  change Integrable (fun t => ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) ∧
    (∫ t : ℝ, ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  have hi (k : ℕ) : Integrable (fun t => originalPrefix A k *
      (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) :=
    ((shiftedColumnTest_integrable A (by linarith) k).sub
      (shiftedColumnTest_integrable A (by linarith) (k + 1))).const_mul _
  refine ⟨integrable_finsetSum _ (fun k _ => hi k), ?_⟩
  rw [integral_finsetSum _ (fun k _ => hi k)]
  apply Finset.sum_eq_zero
  intro k _
  rw [integral_const_mul,
    integral_sub (shiftedColumnTest_integrable A (by linarith) k)
      (shiftedColumnTest_integrable A (by linarith) (k + 1)),
    shiftedColumnTest_integral_zero A hA k,
    shiftedColumnTest_integral_zero A hA (k + 1), sub_self, mul_zero]

/-- Support annihilates every point of the upper tail, including its closed endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceJointMangoldtBaselineNamespacedEdition3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant2d21eb8804bfcd0afa3fb7aed6e3406d36bc80a1958d835f2c0b971d7694fd1c.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fe4cb055bc82e023977b85b86f256aebfaf5ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7699502a28c39ae253ca7153ce6dec0a90731742b826acb2ea89fe519f403187 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant2d21eb8804bfcd0afa3fb7aed6e3406d36bc80a1958d835f2c0b971d7694fd1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
