# Verification target: Finite Third Cumulant Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covarianceSlice](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/covarianceslice.md) | 42 | `declaration-track:8bbd39cce399e497d59a67a6f70daf946a48c21e1d3863a812c670eb05fb9873` |
| 2 | `theorem` | [covarianceSlice_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/covarianceslice-apply.md) | 47 | `result-track:4b828b51175569c0c2c48a30136f3be190bf3d102b1957c271f3603caa0ecc44` |
| 3 | `def` | [centeredStatisticDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/centeredstatisticderivative.md) | 54 | `declaration-track:90f8d2d6e3d6d8813f2fce2e5c399c2746dbcb7f998ecdc88d12aa6ce721d4de` |
| 4 | `theorem` | [centeredStatisticDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/centeredstatisticderivative-apply.md) | 59 | `result-track:9e3823985910b7b456b1416efa66f0b5b900e0a47669fd5ad321e53062ad02b7` |
| 5 | `theorem` | [hasFDerivAt_centeredStatistic_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/hasfderivat-centeredstatistic-apply.md) | 66 | `result-track:b4e49fa24d357fb5b25ad5097d4024e727c7c6cf8b3f7ca734bc79253680a400` |
| 6 | `def` | [covarianceSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/covariancesummand.md) | 90 | `declaration-track:f2c0cb4c6acb8ce613bc612bd114e5072e789e6f729475e809e86b05bca8171d` |
| 7 | `def` | [rawThirdSummandDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/rawthirdsummandderivative.md) | 97 | `declaration-track:3893df4b5b620881fc610d1b8969b4697872878ff9c2a1f6281a9785689bb1c8` |
| 8 | `theorem` | [hasFDerivAt_covarianceSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/hasfderivat-covariancesummand.md) | 108 | `result-track:560b7560af8fa48933e740c7721c80ccfa02a713241309547576675a912d599e` |
| 9 | `def` | [covarianceScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/covariancescalar.md) | 121 | `declaration-track:a21c29ca60b4a85737d8cdf3dcb2c7d6b71023ef157a7aee91e24d2aa3d929d8` |
| 10 | `theorem` | [covarianceScalar_eq_covarianceForm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/covariancescalar-eq-covarianceform.md) | 125 | `result-track:3268df5032010cb630c001e4554b4d1a5fda940bb897f155b16a1f715fe0ed87` |
| 11 | `def` | [rawThirdDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/rawthirdderivative.md) | 132 | `declaration-track:42a91750cb5b8f44a456350fd98afcebd5e4a580dadccf16ea938d71f1cf835a` |
| 12 | `theorem` | [hasFDerivAt_covarianceScalar_raw](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/hasfderivat-covariancescalar-raw.md) | 137 | `result-track:f8a4555e691fcee29d5d0f598468484c6911499feeeffd6690e2a85f891273f3` |
| 13 | `theorem` | [rawThirdSummandDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/rawthirdsummandderivative-apply.md) | 154 | `result-track:41ea6ec4a10b3941086777379093898488017febe52f489d6f52b2f77b6e81c0` |
| 14 | `theorem` | [rawThirdDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/rawthirdderivative-apply.md) | 174 | `result-track:b7077ae6a037967da7dd354ed2f5303e6b36bed8f3168ce75d8e7aea8e08b9d4` |
| 15 | `def` | [thirdCumulantOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/thirdcumulantoperator.md) | 195 | `declaration-track:54b9c8d399eefea552636c58c903f0744911345c03c9d3f42ed5fc81141bb598` |
| 16 | `theorem` | [thirdCumulantOperator_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/thirdcumulantoperator-apply.md) | 205 | `result-track:458e1cf3007eda66a848d501a16f62200c9c822e3b2c91412846d4a48bd44b2f` |
| 17 | `theorem` | [rawThirdDerivative_eq_thirdCumulantOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/rawthirdderivative-eq-thirdcumulantoperator.md) | 218 | `result-track:06be714a1e16556b4c95abe5425c8ff70dbf352fb591dddbbd6657c61ba7b218` |
| 18 | `theorem` | [hasFDerivAt_covarianceScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/hasfderivat-covariancescalar.md) | 233 | `result-track:d0d3a01892bc8d01e7796aa6f8c627a236620c7878f75fb22aefb844e510296c` |
| 19 | `theorem` | [fderiv_covarianceScalar_eq_thirdCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/fderiv-covariancescalar-eq-thirdcumulant.md) | 243 | `result-track:7de68b625b7c833ca7b5e8c2dc14fdaf1401f48f9266b03e52b478ab4f49edba` |
| 20 | `theorem` | [thirdCumulant_swap_first_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/thirdcumulant-swap-first-two.md) | 250 | `result-track:5ba4034b20c3b3161722aeb99fd6e57adad8423b7735aa6cd30fc7c4b48dee7c` |
| 21 | `theorem` | [thirdCumulant_swap_last_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/thirdcumulant-swap-last-two.md) | 261 | `result-track:e487e3d2259cbee1c6ba2491c2505c86a6cd5448a3b91655e98a7b48d3ae55f0` |
| 22 | `theorem` | [third_fderiv_logPartition_eq_thirdCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteThirdCumulantNamespacedEdition1.lean/declarations/third-fderiv-logpartition-eq-thirdcumulant.md) | 273 | `result-track:e5a73d1437324614e425685e2a93ba57de308dd796ce347b39fd1e83904c7c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bada286c9306329efb2d06686fe014feb408e7a8c187576b715ac8023742c3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
