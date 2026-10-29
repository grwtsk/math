# Verification target: Finite Fourth Cumulant Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteThirdCumulant` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [covarianceOperator_symmetric](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/covarianceoperator-symmetric.md) | 34 | `result-track:effd97c1a88a43529e994409253c28af80971a85988eb77c37315c24bf8aaf45` |
| 2 | `def` | [thirdCumulantSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/thirdcumulantsummand.md) | 43 | `declaration-track:985bb4a7bf9eebe239be1c82a43122094816ddfec15d234aea40dc6975fcc4ea` |
| 3 | `def` | [thirdCumulantScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/thirdcumulantscalar.md) | 51 | `declaration-track:bd1a3abdfe8f7d86d1cd2a4dd0c116faf808626b94439e5f1a3f7fd15047af8d` |
| 4 | `theorem` | [thirdCumulantScalar_eq_operator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/thirdcumulantscalar-eq-operator.md) | 56 | `result-track:2dec0b149468d583a4b622914027a60f6968ee566be87f0e7c181683b908c86b` |
| 5 | `def` | [rawFourthSummandDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/rawfourthsummandderivative.md) | 64 | `declaration-track:4981449337553e5b1268cdb3e11373cf98ade4e4617fb3ba76ccde2566ed8c26` |
| 6 | `theorem` | [hasFDerivAt_thirdCumulantSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/hasfderivat-thirdcumulantsummand.md) | 81 | `result-track:bebb35f710b0810cc34a5a55f02ccb4131b7cb564a8bc96437e52b80870a3cda` |
| 7 | `theorem` | [rawFourthSummandDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/rawfourthsummandderivative-apply.md) | 95 | `result-track:1f4a09f717948329ed7423df0584632ea56700ce1932c9af729565a6540ef28f` |
| 8 | `def` | [rawFourthDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/rawfourthderivative.md) | 123 | `declaration-track:b9bde50ff93d1b82c89b8a95531229dd948b25abbef1d663270173e5e41ced35` |
| 9 | `theorem` | [hasFDerivAt_thirdCumulantScalar_raw](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/hasfderivat-thirdcumulantscalar-raw.md) | 128 | `result-track:841720f1b4c9d3f02aae5dc8fb17d9ca9b6656b06ffee0895921d7b59cbb4adc` |
| 10 | `theorem` | [rawFourthDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/rawfourthderivative-apply.md) | 147 | `result-track:88fb3078b73241b754a851b6f6cfba995315c1c2eaf7f7e9a787a4aa624327ad` |
| 11 | `def` | [fourthCentralMomentOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourthcentralmomentoperator.md) | 175 | `declaration-track:883762c8a02b92ff2561cfa851249630313d922be46a2b950fe84eb0a5782f89` |
| 12 | `theorem` | [fourthCentralMomentOperator_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourthcentralmomentoperator-apply.md) | 186 | `result-track:131d980bb8ad6ad5dbd6740ca8f6f3952fe5a89f4addae5081e8db0ea87a3783` |
| 13 | `def` | [fourthCumulantCovector](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourthcumulantcovector.md) | 202 | `declaration-track:1cf3d11d9dfb17d546bcab64e15b941cb2133d038500392ac8229ddd87866de6` |
| 14 | `theorem` | [fourthCumulantCovector_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourthcumulantcovector-apply.md) | 213 | `result-track:535db75c8aa07a5cf7d3ee46988e4332f694bf0f17bdf23c964d92fbd7dad372` |
| 15 | `theorem` | [weighted_centered_pair_sum_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/weighted-centered-pair-sum-eq-covariance.md) | 235 | `result-track:fe4e6df227f1993c4fc314bf614a89f920327b7ec31f0ccf5693b89d581bfb80` |
| 16 | `theorem` | [rawFourthDerivative_eq_fourthCumulantCovector](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/rawfourthderivative-eq-fourthcumulantcovector.md) | 245 | `result-track:9bc438a5cafd7b86c1d9550443b802aa9bcf9a25a8d247e50630f75adaa0145f` |
| 17 | `theorem` | [hasFDerivAt_thirdCumulantScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/hasfderivat-thirdcumulantscalar.md) | 325 | `result-track:d2df8c5fc8f45b907af144b6dcb87bd7374c040e609e8215c4040535734ef6b3` |
| 18 | `theorem` | [fderiv_thirdCumulantScalar_eq_fourthCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fderiv-thirdcumulantscalar-eq-fourthcumulant.md) | 335 | `result-track:a3a6608cada3b6271f49d224783c1146ef094a78d88c75a99411a7da77f01323` |
| 19 | `theorem` | [fourthCumulant_eq_centeredFourth_sub_pairings](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourthcumulant-eq-centeredfourth-sub-pairings.md) | 343 | `result-track:d996c60f9375f17d6edae5cc6650efd8f4f4e57d3a4090bfdf7ef267c614e5b6` |
| 20 | `theorem` | [fourth_fderiv_logPartition_eq_fourthCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantEdition1.lean/declarations/fourth-fderiv-logpartition-eq-fourthcumulant.md) | 364 | `result-track:d9c8ee23082c33f959eedcafdd91b57f69bf5b05f04c7ab592c7deabf1cf4e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a8d12e4b5044e4d98b1e042b489ca1f911c9ac5d3191366bb8033e1d1373378 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
