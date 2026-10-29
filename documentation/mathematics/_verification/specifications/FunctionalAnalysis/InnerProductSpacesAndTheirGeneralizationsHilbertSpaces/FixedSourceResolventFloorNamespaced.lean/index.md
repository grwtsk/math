# Verification target: Fixed Source Resolvent Floor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "858743a8b2e38b9af25fdcd9ada216e4d1189490",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `858743a8b2e38b9af25fdcd9ada216e4d1189490`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_fixed_direction_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/positive-fixed-direction-le.md) | 23 | `result-track:55b080158bdcc1d6833fb49e7fba9660ee8b9a3f6dc53bcdb2ecd1789b4e28f3` |
| 2 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/regularized-resolvent-kernel-apply.md) | 56 | `result-track:782e027b5c252d57e0757b6eabafc1c157dd6639009ce1aec6f00b41b4c09c5d` |
| 3 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/kernel-witness-regularizedmass-le.md) | 64 | `result-track:3585f28abd2836fd64528c4b3f62770a9b5bf15903b5ad87ec1c22aa322eb5dc` |
| 4 | `def` | [sourceMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/sourcemass.md) | 93 | `declaration-track:a3e89cbc653332b95f3f0bb76641e6718478872ba9b14884596fd1ac6073820d` |
| 5 | `def` | [truncatedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/truncatedmass.md) | 96 | `declaration-track:8ba95ec4742c02023caba7a758684a4afe32df2bb736b62b9d0b6015c86df009` |
| 6 | `theorem` | [sourceShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/sourceshift-isunit.md) | 99 | `result-track:52902349e969d7974196e13e100de25a231f1a7dde23195874ac084a0eca554b` |
| 7 | `theorem` | [truncatedShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/truncatedshift-isunit.md) | 104 | `result-track:32d1fe0e74aa62e59a8060b226730b723ebec2425c061a47fcbaee1f39ec8a28` |
| 8 | `theorem` | [sourceMass_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/sourcemass-nonneg.md) | 109 | `result-track:bf8938f7be28ef6b85898235e3d040bb9f452cf17a74e75fd8a2fbb9a8d36ea1` |
| 9 | `theorem` | [truncatedMass_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/truncatedmass-nonneg.md) | 114 | `result-track:66acaf84812c91753d1f56be2d0464bb342130a529ec6b433547296d382d29b6` |
| 10 | `theorem` | [regularizedMass_le_norm_sq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/regularizedmass-le-norm-sq.md) | 119 | `result-track:0758a4833183f149ab5ca372b13e1b714e729ccf385d3737afe426012d9526ca` |
| 11 | `theorem` | [sourceMass_le_half](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/sourcemass-le-half.md) | 138 | `result-track:363691848543348e218d3f7de2bb9ff539ac17a2a032aa80d4b9594dde5b0bf7` |
| 12 | `theorem` | [truncatedMass_le_half](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/truncatedmass-le-half.md) | 143 | `result-track:cf25195755d4c124774f6a56799741aad210dc3c0d42e14625303cb63ef0e84f` |
| 13 | `theorem` | [mass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/mass-sub-abs-le.md) | 149 | `result-track:c01ab0c51c6397d5a44cca82cc419128a09437624571c2358949d6a458476597` |
| 14 | `theorem` | [diagonal_mass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/diagonal-mass-sub-abs-le.md) | 161 | `result-track:891afeb3e2f6b63b6dd18fa362440ea9298cc02534298091b458abe3ca64aa2f` |
| 15 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 175 | `result-track:e6db9e1af5c07e88577aeda4f597c365784a785dd09f390b192cc7c5c282ddc6` |
| 16 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 187 | `result-track:6bd30abd0fc36a493ad8a3c0b11c5684241712890d0af957b49754f9679113a9` |
| 17 | `theorem` | [sourceMass_kernel_overlap_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/sourcemass-kernel-overlap-le.md) | 202 | `result-track:53fd6dcf3bb390c2dec9ad7b82234474b19296afa1ece4ed399c83700b613a3b` |
| 18 | `theorem` | [occurrence_sourceMass_floor](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/occurrence-sourcemass-floor.md) | 210 | `result-track:1bfc86e01cb572b39555532a6035ab7f6954dc05bee2e264aa78659a19e5c7f0` |
| 19 | `theorem` | [nontrivial_sourceMass_uniform_positive_floor](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FixedSourceResolventFloorNamespaced.lean/declarations/nontrivial-sourcemass-uniform-positive-floor.md) | 218 | `result-track:ef808e926083050090c259372135dce1aec4f12664a7b7ce3c891a8ef630781f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ffe581037d09102547a293c254ea0fa18f5285430557cb3fc46eabcf069ad90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
