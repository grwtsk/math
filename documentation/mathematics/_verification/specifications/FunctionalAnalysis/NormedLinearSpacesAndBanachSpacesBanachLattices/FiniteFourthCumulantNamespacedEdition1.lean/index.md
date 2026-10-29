# Verification target: Finite Fourth Cumulant Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1873354064d92df2a8e604d9d6b8878a180993fd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1873354064d92df2a8e604d9d6b8878a180993fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteThirdCumulant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [covarianceOperator_symmetric](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/covarianceoperator-symmetric.md) | 42 | `result-track:500fd472c386f732973ea2319d934bd62e8fcb0ba3faf164132996796ed31358` |
| 2 | `def` | [thirdCumulantSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/thirdcumulantsummand.md) | 51 | `declaration-track:a8034a449958fde38482abd3c935f9a7cdc2a47b74c1ebb27bf5358528c1b11d` |
| 3 | `def` | [thirdCumulantScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/thirdcumulantscalar.md) | 59 | `declaration-track:07179ef337bf9e0df36ca1b70d254170b0e1a423ceda1f391ab64735ecc5c151` |
| 4 | `theorem` | [thirdCumulantScalar_eq_operator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/thirdcumulantscalar-eq-operator.md) | 64 | `result-track:ed9425a61abee9bfcfe4a94affda921fc236371986bb7b24327b875a9c723925` |
| 5 | `def` | [rawFourthSummandDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/rawfourthsummandderivative.md) | 72 | `declaration-track:83d5a1af97d441307744c86b584bb2c127b3bee3d47de29caa388b446d01a283` |
| 6 | `theorem` | [hasFDerivAt_thirdCumulantSummand](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/hasfderivat-thirdcumulantsummand.md) | 89 | `result-track:f807163a7a756913b44f45d8cb4f9981d8502ee9474b211e00b0990c505ced6b` |
| 7 | `theorem` | [rawFourthSummandDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/rawfourthsummandderivative-apply.md) | 103 | `result-track:53063fd8d9405e1ee990485f9c43ffcc249928802213a8dda8bf5e5080990e9b` |
| 8 | `def` | [rawFourthDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/rawfourthderivative.md) | 131 | `declaration-track:a2bfd878dd8d112feb97a349e0d6a0f3f1d540b05979ac46ad93c9a392feee61` |
| 9 | `theorem` | [hasFDerivAt_thirdCumulantScalar_raw](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/hasfderivat-thirdcumulantscalar-raw.md) | 136 | `result-track:e312b926ce4ae1411d8ebfc4dbfba0213d7d17466bcc38236c60899344a900e4` |
| 10 | `theorem` | [rawFourthDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/rawfourthderivative-apply.md) | 155 | `result-track:686fd0a4eeba95da3a1c2572b87b8e6b0a457e5e55b5feb0ec29c997627ad49b` |
| 11 | `def` | [fourthCentralMomentOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourthcentralmomentoperator.md) | 183 | `declaration-track:4efc8a5c0ddd173e1bcdaaaf6253f5a9c24f43a6496d6f270d474beb4ba6b8c3` |
| 12 | `theorem` | [fourthCentralMomentOperator_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourthcentralmomentoperator-apply.md) | 194 | `result-track:fbbf842596853c8e2f284a17f3b72990f06e024fdcd341ed2278ccce39102c00` |
| 13 | `def` | [fourthCumulantCovector](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourthcumulantcovector.md) | 210 | `declaration-track:7148d01874359c1c5c19ae34939e5c0c3e4ce458cbe03da3b9b7320615d389b3` |
| 14 | `theorem` | [fourthCumulantCovector_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourthcumulantcovector-apply.md) | 221 | `result-track:d802eb2c769a4d535338cfebdf0d9303eb6d9c1137ff70e78bfe4dcfed57c4d4` |
| 15 | `theorem` | [weighted_centered_pair_sum_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/weighted-centered-pair-sum-eq-covariance.md) | 243 | `result-track:80f0d41500c60e9c83c4c1ff180cee485a2c84ab7821c284f5ca323b9e622199` |
| 16 | `theorem` | [rawFourthDerivative_eq_fourthCumulantCovector](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/rawfourthderivative-eq-fourthcumulantcovector.md) | 253 | `result-track:8e01d0b36a06c777fb5ab6031e10e60a168974fc989a102beab2c3eaf0fed2cc` |
| 17 | `theorem` | [hasFDerivAt_thirdCumulantScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/hasfderivat-thirdcumulantscalar.md) | 333 | `result-track:b477dc92857f58845c29d251a35fdb1ac119b71b211f57afd16e11bd16d852a2` |
| 18 | `theorem` | [fderiv_thirdCumulantScalar_eq_fourthCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fderiv-thirdcumulantscalar-eq-fourthcumulant.md) | 343 | `result-track:ddf0ef6c079714595c216fc4bc475fa4ed8b824c5f5a5c1350b91fe3b8f58f32` |
| 19 | `theorem` | [fourthCumulant_eq_centeredFourth_sub_pairings](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourthcumulant-eq-centeredfourth-sub-pairings.md) | 351 | `result-track:6ffcf4148d9f0ff241694b3a8f3a9a319eeb212688e6c7736fd2495d913ff613` |
| 20 | `theorem` | [fourth_fderiv_logPartition_eq_fourthCumulant](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFourthCumulantNamespacedEdition1.lean/declarations/fourth-fderiv-logpartition-eq-fourthcumulant.md) | 372 | `result-track:83d587fd229b5d8562a0d8a974b1b3516f6afca5fa14e768a000c2e805461cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf966b412ef6139550a69676201d5f02f3559e4be8050de4e4f94cd03bde1f01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
