# isZeroAtImInfty_of_valueAtInfty_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419013f1-d0a8-858f-5fc5-65052015fd6f",
  "kind": "lemma",
  "lexical_name": "isZeroAtImInfty_of_valueAtInfty_eq_zero",
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
  "slug": "iszeroatiminfty-of-valueatinfty-eq-zero",
  "source": {
    "blob": "744d39b463246f970727dc9dfeb8df2d8f7fb191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbde01e244a6a079da145c147beef169b22948b2a9ba52dd994a7bead2fc7bed",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/CuspFormSubmoduleNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419013f1-d0a8-858f-5fc5-65052015fd6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZeroAtImInfty_of_valueAtInfty_eq_zero {F : Type*} [FunLike F ℍ ℂ]
    [DiscreteTopology Γ] [Γ.HasDetPlusMinusOne] [Fact (IsCusp ∞ Γ)] [ModularFormClass F Γ k]
    (f : F) (h : valueAtInfty f = 0) : IsZeroAtImInfty f := by
  have hh : 0 < Γ.strictWidthInfty := Γ.strictWidthInfty_pos_iff.mpr Fact.out
  have hΓ : Γ.strictWidthInfty ∈ Γ.strictPeriods := Γ.strictWidthInfty_mem_strictPeriods
  have hanal := ModularFormClass.analyticAt_cuspFunction_zero f hh hΓ
  have hper := periodic_comp_ofComplex f hΓ
  simp_rw [IsZeroAtImInfty, ZeroAtFilter, ← h, ← cuspFunction_apply_zero hh hanal hper]
  exact (hanal.continuousAt.tendsto.comp (qParam_tendsto_atImInfty hh)).congr
    (fun τ ↦ SlashInvariantFormClass.eq_cuspFunction f τ hΓ hh.ne')

section SL2Z

variable {k : ℤ}

/-- An `𝒮ℒ` modular form with vanishing q-expansion constant term vanishes at every cusp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/CuspFormSubmoduleNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744d39b463246f970727dc9dfeb8df2d8f7fb191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a292dd93cc8b244c574507dd504b941aac52395eeb1d8ff6f6df32d8c8f4858a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
