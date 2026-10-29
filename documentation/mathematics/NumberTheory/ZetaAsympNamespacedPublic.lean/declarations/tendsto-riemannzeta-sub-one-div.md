# tendsto_riemannZeta_sub_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8db897e1-63cd-01a7-7d30-96ccf3500346",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.tendsto_riemannZeta_sub_one_div",
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
  "slug": "tendsto-riemannzeta-sub-one-div",
  "source": {
    "blob": "4b48e76570fde4bd3040098013184e9afc81887a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 352,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce956460fb3c03facc8d9202f6437ca54399a41950b32f835d979afb65d86cda",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAsympNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8db897e1-63cd-01a7-7d30-96ccf3500346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.tendsto_riemannZeta_sub_one_div :
    Tendsto (fun s : ℂ ↦ riemannZeta s - 1 / (s - 1)) (𝓝[≠] 1) (𝓝 γ) := by
  -- We use the removable-singularity theorem to show that *some* limit over `𝓝[≠] (1 : ℂ)` exists,
  -- and then use the previous result to deduce that this limit must be `γ`.
  let f (s : ℂ) := riemannZeta s - 1 / (s - 1)
  suffices ∃ C, Tendsto f (𝓝[≠] 1) (𝓝 C) by
    obtain ⟨C, hC⟩ := this
    suffices Tendsto (fun s : ℝ ↦ f s) _ _
      from (tendsto_nhds_unique this tendsto_riemannZeta_sub_one_div_nhds_right) ▸ hC
    refine hC.comp (tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ ?_ ?_)
    · exact (Complex.continuous_ofReal.tendsto 1).mono_left (nhdsWithin_le_nhds ..)
    · filter_upwards [self_mem_nhdsWithin] with a ha
      rw [mem_compl_singleton_iff, ← Complex.ofReal_one, Ne, Complex.ofReal_inj]
      exact ne_of_gt ha
  refine ⟨_, Complex.tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO ?_ ?_⟩
  · filter_upwards [self_mem_nhdsWithin] with s hs
    refine (differentiableAt_riemannZeta hs).sub ((differentiableAt_const _).div ?_ ?_)
    · fun_prop
    · rwa [mem_compl_singleton_iff, ← sub_ne_zero] at hs
  · refine Asymptotics.isLittleO_of_tendsto' ?_ ?_
    · filter_upwards [self_mem_nhdsWithin] with t ht ht'
      rw [inv_eq_zero, sub_eq_zero] at ht'
      tauto
    · simp_rw [div_eq_mul_inv, inv_inv, sub_mul,
        (by ring_nf : 𝓝 (0 : ℂ) = 𝓝 ((1 - 1) - f 1 * (1 - 1)))]
      apply Tendsto.sub
      · simp_rw [mul_comm (f _), f, mul_sub]
        apply riemannZeta_residue_one.sub
        refine Tendsto.congr' ?_ (tendsto_const_nhds.mono_left nhdsWithin_le_nhds)
        filter_upwards [self_mem_nhdsWithin] with x hx
        field [sub_ne_zero.mpr <| mem_compl_singleton_iff.mp hx]
      · exact ((tendsto_id.sub tendsto_const_nhds).mono_left nhdsWithin_le_nhds).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAsympNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b48e76570fde4bd3040098013184e9afc81887a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7240fb36f7a0d991eaafedf33c1cc5aa5e86c1eccd27090bd25d7ba8a37c9cf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
