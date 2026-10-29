# Verification target: Compensated Gamma Profile

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21d83efdc4b30195703e97c3fa59fb77ebba3961",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21d83efdc4b30195703e97c3fa59fb77ebba3961`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/term.md) | 23 | `declaration-track:0d5d793ec99616ca628f84ffa97a21ac05afd738e3e34091c574e11371caeb94` |
| 2 | `def` | [partialProfile](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/partialprofile.md) | 26 | `declaration-track:654065b58a35200155e44b46e959ffba5059f09ddfd67a914f19de1ce49132ac` |
| 3 | `theorem` | [log_argument_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/log-argument-pos.md) | 28 | `result-track:c88329df8137f52768691289df7a6ab1a48be1c29d4fc8bdfbf3f6e293aa7a77` |
| 4 | `theorem` | [term_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/term-nonneg.md) | 36 | `result-track:1d9d9b022e170692d5e462a3fbbdf3c659d4d45d0ff1a7185de6852e18400752` |
| 5 | `theorem` | [compensated_log_le_square_half](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/compensated-log-le-square-half.md) | 41 | `result-track:e242385799cd6760343a7cbe8d530be3ef273c2414402dc1b24ec17c381d70ca` |
| 6 | `theorem` | [compensated_log_le_square_div](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/compensated-log-le-square-div.md) | 50 | `result-track:15068722a4f5d1ea2f78bcf20bd5e38be058e70bced3a6cd6dc0fef5657a094b` |
| 7 | `theorem` | [term_nonneg_upper](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/term-nonneg-upper.md) | 57 | `result-track:89c453bd1c45d98de5793a4e8877f7a8f9bf538757a89f99c3e73fb720aa4e60` |
| 8 | `theorem` | [term_negative_compact_upper](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/term-negative-compact-upper.md) | 66 | `result-track:8bbeb1c98b6f4337a6acd7f4deb520d5913ad642e18b48e633e74b06610a9632` |
| 9 | `theorem` | [log_factorial](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/log-factorial.md) | 89 | `result-track:6ccd2d4c6fd0a071affca95a9afa82995a06c3843901d55553d1dbfd19eeb89c` |
| 10 | `theorem` | [partialProfile_eq_harmonic](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/partialprofile-eq-harmonic.md) | 95 | `result-track:1988fcff1274029ca67ce76729f80ab65cd9085109665f86ccd4587a8dbf2958` |
| 11 | `theorem` | [logarithm_split](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/logarithm-split.md) | 108 | `result-track:5d17cb90da726526b8585699a0f1a237ec0afdc4bdf27b7f578afc17723b2ab4` |
| 12 | `theorem` | [partialProfile_gammaSeq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/partialprofile-gammaseq.md) | 116 | `result-track:e85870fdf325afb0c0693ef831fe34f6e19af4ed85a9f674ca413375c28b39dc` |
| 13 | `theorem` | [partialProfile_tendsto_actual_gamma](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/partialprofile-tendsto-actual-gamma.md) | 132 | `result-track:e2b8e5e4420606c464f8594317d509e26ef414eb8b9a86e76075a29c195d504d` |
| 14 | `theorem` | [hasSum_actual_gamma](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/hassum-actual-gamma.md) | 153 | `result-track:fb74da91e978f09cbe59471fcf98e2b8078a259fd694871e1f30d878e57d1b2d` |
| 15 | `def` | [actualProfile](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile.md) | 160 | `declaration-track:600bbd98e7b69bee3c16c85745671b7fd00e3b3709306c52fc5bc8a6dfc11764` |
| 16 | `theorem` | [actualProfile_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-zero.md) | 163 | `result-track:7bd7c8a1a4d3f13c30695cbd296643faefcba2ab5fdf7dfc954bc755cc69c6ec` |
| 17 | `theorem` | [term_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/term-summable.md) | 165 | `result-track:d8e913e3f6684c21ee3eb09694b31c68129d9bb4d1ccd16b611177717a2cd0db` |
| 18 | `theorem` | [actualProfile_eq_tsum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-eq-tsum.md) | 168 | `result-track:1340e67e4ed4408d8a1c2fb691ebe615d53465766f4c1d6bc0a9618819b9c54b` |
| 19 | `theorem` | [actualProfile_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-nonneg.md) | 171 | `result-track:acadc32aa8d5fe32f225542de80c97f10fa53b1d718368d432f518aba48aa7d9` |
| 20 | `theorem` | [actualProfile_prefix_tail](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-prefix-tail.md) | 175 | `result-track:5eb3e60fcf2a68b09450f56682c62a7586ac417d530c3b75857a979f6e121040` |
| 21 | `theorem` | [actualProfile_sub_prefix_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-sub-prefix-nonneg.md) | 180 | `result-track:6a6b7cca5863f4479a92864d89ba62db0b10ced434ba8eea807a0214bc9775e3` |
| 22 | `theorem` | [inverse_square_tail_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/inverse-square-tail-le.md) | 186 | `result-track:d232b84b77f8f90eea0682cb2c6929ded4ad8d3bbaea0aea2ad7be7a8cfc949c` |
| 23 | `theorem` | [inverse_square_tail_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/inverse-square-tail-summable.md) | 199 | `result-track:8c01eb19ec3878359e43b44acf4af97a6ab9ac0b917a7c181d78807b058c6801` |
| 24 | `theorem` | [actualProfile_positive_tail](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-positive-tail.md) | 205 | `result-track:b3c4aff0bc8057f5363cb607484349e2b85429d2efbe03029836159b93e05b2f` |
| 25 | `theorem` | [actualProfile_negative_tail](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-negative-tail.md) | 222 | `result-track:36860b1eb0fecf25ec871683cc4c8eba7a022c096d42202106c756b7fb7a499a` |
| 26 | `theorem` | [actualProfile_negative_compact_uniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-negative-compact-uniform.md) | 243 | `result-track:19bd79603572d50197ca09cb321f33f1e2a3944757ba5243d34f0b5cc154433d` |
| 27 | `theorem` | [actualProfile_convex](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-convex.md) | 256 | `result-track:c51bb7c984e160fd9977e8bd9b2e7310573667617d6d73d89e1887aabe5b9196` |
| 28 | `theorem` | [actualProfile_hasDerivAt_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-hasderivat-zero.md) | 275 | `result-track:d0772d3870d296e1e88775c6cb1e66ce87f35ac7567c7bdad759e6d9da78e15c` |
| 29 | `theorem` | [actualProfile_deriv_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfile.lean/declarations/actualprofile-deriv-zero.md) | 287 | `result-track:1b22741a3a2265df844f9cc8b5a0d83f0cba0b17eddeb9485ce697cc36ee82c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d902378cf814d5a7cb8ed07a60fc9fbabd9a0727b8bda9c53ea7dce7e0da5a3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
