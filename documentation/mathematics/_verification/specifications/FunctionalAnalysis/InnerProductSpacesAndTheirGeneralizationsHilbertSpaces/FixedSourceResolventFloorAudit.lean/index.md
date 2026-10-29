# Verification target: Fixed Source Resolvent Floor Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5480472e4dd3c2ecbbe3dde3efc87be5579b974",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5480472e4dd3c2ecbbe3dde3efc87be5579b974`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_fixed_direction_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/positive-fixed-direction-le.md) | 15 | `result-track:205b108172c18da07cdf1cda758539fe254fc125acdefb9ddb85585c94bd291c` |
| 2 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/regularized-resolvent-kernel-apply.md) | 48 | `result-track:8872664fa734dcb8cb18f4618a0ba2d5a4a85fb8d1acc6cb72197302492b6519` |
| 3 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/kernel-witness-regularizedmass-le.md) | 56 | `result-track:f51d165f94b19ebc4980bf56ab421635126f60897445a40d969b980b2e5f5972` |
| 4 | `def` | [sourceMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/sourcemass.md) | 85 | `declaration-track:2b24ec13e1762bb39f48a015be2414b54e570e98e696475f98dc96435cebfe19` |
| 5 | `def` | [truncatedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/truncatedmass.md) | 88 | `declaration-track:be434cbb8afb00dff352729eab06d926989f304ee4de94298a75d55531a180c3` |
| 6 | `theorem` | [sourceShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/sourceshift-isunit.md) | 91 | `result-track:bdf4f0ca56a2f5a56e50f71d008ab7dcfaed45f4b55d1d672bb1136cfa631c65` |
| 7 | `theorem` | [truncatedShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/truncatedshift-isunit.md) | 96 | `result-track:e3f3fa7376cdb0c20d7eef45b29cca9f5f7b18652b633bd8c3f25c56f105c9d3` |
| 8 | `theorem` | [sourceMass_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/sourcemass-nonneg.md) | 101 | `result-track:9ec8521d2c5dfeb610fda6b8a6d215c6f9fe227b82e98bb5185da1e06fefefac` |
| 9 | `theorem` | [truncatedMass_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/truncatedmass-nonneg.md) | 106 | `result-track:a1e0b999ac40f79b54de5d24db9c1c2fb3618fb1ce7b2859d6bf1d1f4c0e926c` |
| 10 | `theorem` | [regularizedMass_le_norm_sq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/regularizedmass-le-norm-sq.md) | 111 | `result-track:86d1e9071fe1389c39d7b6eae73a3906037bcda078d210a50165a70b18e01ccd` |
| 11 | `theorem` | [sourceMass_le_half](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/sourcemass-le-half.md) | 130 | `result-track:8ace2fb47e2b0456935348316ac05066bebf7b20b0186aba7ce009c4081fb08b` |
| 12 | `theorem` | [truncatedMass_le_half](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/truncatedmass-le-half.md) | 135 | `result-track:719d745926b75f87a1f784fc90d74813ab74d7c4c1867324b9d5ca5742abc28f` |
| 13 | `theorem` | [mass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/mass-sub-abs-le.md) | 141 | `result-track:27060151f80b0ccb50132adace1c7f896422defc856d9ab48e2099789a6ec649` |
| 14 | `theorem` | [diagonal_mass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/diagonal-mass-sub-abs-le.md) | 153 | `result-track:cb79034a2a36e0a5b8be60227767bdc72c98466eb61986fff3dbb0a77ca5f81d` |
| 15 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 167 | `result-track:6f4462b449307a0f0a076dd4836171965bf119d2bf91c87b20c2d716b7ed7196` |
| 16 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 179 | `result-track:ed29cba3cf872590067dcda2fc37618c8a5ad9b9014926830186ae749e4d3780` |
| 17 | `theorem` | [sourceMass_kernel_overlap_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/sourcemass-kernel-overlap-le.md) | 194 | `result-track:a97fd130fcd7d7308b9f2e2226f4786150513d561fdd20a1b9042103c11c6258` |
| 18 | `theorem` | [occurrence_sourceMass_floor](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/occurrence-sourcemass-floor.md) | 202 | `result-track:8d598e456f0f76d6dcf72a4d1f04598bc7642490b0b7477ea186074dec52da54` |
| 19 | `theorem` | [nontrivial_sourceMass_uniform_positive_floor](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorAudit.lean/declarations/nontrivial-sourcemass-uniform-positive-floor.md) | 210 | `result-track:668687c1af6c103d174171f0335291a88f90850e3e0de34a525de9c9b14f9701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b57120844e18a896b19421e45d691710e692b046a4888285048ee897e4f3029 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
