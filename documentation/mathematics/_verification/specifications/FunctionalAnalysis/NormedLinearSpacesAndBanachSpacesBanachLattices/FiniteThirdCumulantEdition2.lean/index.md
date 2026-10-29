# Verification target: Finite Third Cumulant Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5f3a3b466c6b27664312973fa9ace625fd55501",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5f3a3b466c6b27664312973fa9ace625fd55501`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covarianceSlice](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/covarianceslice.md) | 34 | `declaration-track:5377cd3fe19bef5f55d89319e57018353cb6a8b914bb13f9d95bce223601ce35` |
| 2 | `theorem` | [covarianceSlice_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/covarianceslice-apply.md) | 39 | `result-track:e3b3012f66071c2bf7b24f78271e5052ff057d259f7338994aa03fbacaf9651c` |
| 3 | `def` | [centeredStatisticDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/centeredstatisticderivative.md) | 46 | `declaration-track:caf5aa8b6d333b61b63ab916e2f5d9c28b27503542dae19047123c2f533de722` |
| 4 | `theorem` | [centeredStatisticDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/centeredstatisticderivative-apply.md) | 51 | `result-track:38e0215c9f250e8faa9376aa53c333c17ee89cd28998dcefc9229722ffd2a494` |
| 5 | `theorem` | [hasFDerivAt_centeredStatistic_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/hasfderivat-centeredstatistic-apply.md) | 58 | `result-track:1627a36c39303d17b81851f8afb6e700b47d74d405aa00e9f23418f6ee40b657` |
| 6 | `def` | [covarianceSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/covariancesummand.md) | 82 | `declaration-track:c606e3307408f94ad95474608d54f78c7dc30b44c26ef26d798e172359972a3d` |
| 7 | `def` | [rawThirdSummandDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/rawthirdsummandderivative.md) | 89 | `declaration-track:0a506e07c4a2f727d86df38afc12725709be34812b527a3d53129298793a84e8` |
| 8 | `theorem` | [hasFDerivAt_covarianceSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/hasfderivat-covariancesummand.md) | 100 | `result-track:651ac02e504628dd2cddd0994b6bdd56dba0d9c127ed36cfbdc0e34bdeb06226` |
| 9 | `def` | [covarianceScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/covariancescalar.md) | 113 | `declaration-track:48a32a7a415a846617a0eed28bca4c1f402dc2872c9998051130678fe48c4b0c` |
| 10 | `theorem` | [covarianceScalar_eq_covarianceForm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/covariancescalar-eq-covarianceform.md) | 117 | `result-track:e828c0581a99990dd71215b4b3a83d606e356ef50579b1f54c109577b43920a9` |
| 11 | `def` | [rawThirdDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/rawthirdderivative.md) | 124 | `declaration-track:3f224916ef2c824bc7dd887f818967ad9d7fc61c089760a8030099fe08c69030` |
| 12 | `theorem` | [hasFDerivAt_covarianceScalar_raw](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/hasfderivat-covariancescalar-raw.md) | 129 | `result-track:71d4a689c017d1e25b5bf309828953ff0521a81cff9dbfd869aecc5c2ba5327f` |
| 13 | `theorem` | [rawThirdSummandDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/rawthirdsummandderivative-apply.md) | 146 | `result-track:9c2040fa1a28d4117cdd6560ca75838ecbbe8cf9b0de1389264a14b25eb11b9a` |
| 14 | `theorem` | [rawThirdDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/rawthirdderivative-apply.md) | 166 | `result-track:fba4999a818bb26c24a7818c546ca60482cfadb931cac25633aac258cd3b76f6` |
| 15 | `def` | [thirdCumulantOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/thirdcumulantoperator.md) | 187 | `declaration-track:dd69053a76e25c843e3e6da3e9e6120c2c281450ec6aba28bb30af312466da57` |
| 16 | `theorem` | [thirdCumulantOperator_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/thirdcumulantoperator-apply.md) | 197 | `result-track:7c27308f1dd4efad0c5cb7b795ed5deb08596992aba5b7a9801634999c40707a` |
| 17 | `theorem` | [rawThirdDerivative_eq_thirdCumulantOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/rawthirdderivative-eq-thirdcumulantoperator.md) | 210 | `result-track:399a816d99a170e3205fc2c23ea7b74da5b5e3e48593c91b074876523e9353f9` |
| 18 | `theorem` | [hasFDerivAt_covarianceScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/hasfderivat-covariancescalar.md) | 225 | `result-track:9b3ea206b172627bcf9e829327cd127f96161e7ada6acfa4bfe44a574b030320` |
| 19 | `theorem` | [fderiv_covarianceScalar_eq_thirdCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/fderiv-covariancescalar-eq-thirdcumulant.md) | 235 | `result-track:e3a3d133596d27b02d50eff1b1cc81104335470884efc62b9ede7afe5fe149ff` |
| 20 | `theorem` | [thirdCumulant_swap_first_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/thirdcumulant-swap-first-two.md) | 242 | `result-track:cb236a5df8a8b1a1c2fb5a2baf5ad5f63cf67fb7894775f31244a57105f9c532` |
| 21 | `theorem` | [thirdCumulant_swap_last_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/thirdcumulant-swap-last-two.md) | 253 | `result-track:9347286603ebf48495004082eed1e50dc7a2e526e49a421f7c5a2cd7d36c3264` |
| 22 | `theorem` | [third_fderiv_logPartition_eq_thirdCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantEdition2.lean/declarations/third-fderiv-logpartition-eq-thirdcumulant.md) | 265 | `result-track:f1a44f0edd1232f305ee07c739f1b7f3011d518d3330112f197fe75dcc12129c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1837472f29352de98d2b48d1a160e1f1c7b6faa30a6493bb828a863b846ef56a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
