# Verification target: Moments Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b83bf9f6135d20de6cace523778bdbd9c0bdf4e",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b83bf9f6135d20de6cace523778bdbd9c0bdf4e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.IdentDistrib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moment](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/moment.md) | 56 | `declaration-track:5565f768d7e80857844918ba5dd3447a7e7e4b4d6cc8230b51483b6beb4e4dd3` |
| 2 | `def` | [centralMoment](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment.md) | 60 | `declaration-track:4567d8bf6934ed526431a7f25b13460231e21a5ad1421730e23f9cfccafc8c45` |
| 3 | `theorem` | [moment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/moment-zero.md) | 65 | `result-track:dc46b21dad3b2216a65eb4cf3033ef94cef58828e8282e835e2a1d4f219cd849` |
| 4 | `lemma` | [moment_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/moment-zero-measure.md) | 70 | `result-track:b8986ffa43ccc0157464ef5aa25e46c75c09c0191ac299f491fd39e4ac165b3b` |
| 5 | `theorem` | [centralMoment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment-zero.md) | 73 | `result-track:fabf99d120135b99abfb66a3dd21380f171ef59ff2fefec970205383dce17088` |
| 6 | `lemma` | [centralMoment_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment-zero-measure.md) | 78 | `result-track:0cbf5edb7065a9f52679b0751c7b1930c09c974ddf90544ed184799799b4c85b` |
| 7 | `theorem` | [centralMoment_one'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment-one.md) | 81 | `result-track:6822209bc357e3b18ab57d6cc9e642f24bf20f68a69fb71a06143bb8453c4e71` |
| 8 | `theorem` | [centralMoment_one](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment-one-source-edition-2.md) | 88 | `result-track:ee89b0c77aa2e5a0c346dbb4d43fec848d65002699cc6b085810fb36aa68e726` |
| 9 | `lemma` | [centralMoment_two_eq_variance](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/centralmoment-two-eq-variance.md) | 102 | `result-track:50717e5b71e9351ac8fe6bd9a506e3ce1c8a7045f6d0758e85611124a04a256f` |
| 10 | `def` | [mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf.md) | 110 | `declaration-track:bc6980cdcf761b874824d704b0c37f2dbb36aabef0cdc086f78795880632b746` |
| 11 | `def` | [cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf.md) | 114 | `declaration-track:40e43cf391c012d89776b6ae3ea55aa7b00d4850a42764f43af81c60e4f12f87` |
| 12 | `theorem` | [mgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-zero-fun.md) | 118 | `result-track:79e98cb8af6c403b1c56e53f8345615fdaae600df8e6ac4c2286a2f068aa6172` |
| 13 | `theorem` | [cgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-zero-fun.md) | 122 | `result-track:c7a8e7ae84b4497654ed0b53b0b40c6f22e961bd01ab0ff9b254fdc39d102de6` |
| 14 | `theorem` | [mgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-zero-measure.md) | 125 | `result-track:129b2ec671a15aa34eea9530ce95241bb3fb7aa4e9c6d6f83ce27ad86d37bc9b` |
| 15 | `theorem` | [cgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-zero-measure.md) | 128 | `result-track:f5ac405448c1740d436827d9e71f1542a0f4fd2a50c30f036f2543f107cc7df7` |
| 16 | `theorem` | [mgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-const.md) | 131 | `result-track:215cf922a61cd2777704cccf9cd62e39b9e5436676a0b62aed975a8e44241722` |
| 17 | `theorem` | [mgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-const-source-edition-2.md) | 134 | `result-track:9ab2ed29e4b215693e1a0cfaa744d5e05d362c3f63ba3191de628e3370c9d294` |
| 18 | `theorem` | [cgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-const.md) | 138 | `result-track:123d2266b98d827b122f3e9cda3fdd0efc836b6c279aef58bc7037789e11d7f9` |
| 19 | `theorem` | [cgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-const-source-edition-2.md) | 147 | `result-track:14315402bac4996e31f71c7ad97cc1a7d6202a3fcf0dc70ceeb27164bdabfae4` |
| 20 | `theorem` | [mgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-zero-source-edition-2.md) | 151 | `result-track:ed49c6ff3f28906b37a500ecc140dc38342b7b38597c224b3a2c214d60e5b487` |
| 21 | `theorem` | [mgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-zero.md) | 154 | `result-track:70bdea306d46515887907e7e05387910b3becd35a45aa593be3ea0b958f6b250` |
| 22 | `theorem` | [cgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-zero-source-edition-2.md) | 157 | `result-track:69b653a90f4ef0fb015f95d2a044f1a10a86c2bc88cb9f56439ce9327487d0cc` |
| 23 | `theorem` | [cgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-zero.md) | 160 | `result-track:54df49b07db81af1f188a1be6ababda6e079306f760b399814531c4fdd9cc8db` |
| 24 | `theorem` | [mgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-undef.md) | 163 | `result-track:c6889168e4720152d6efd0b3b66dd0d8940aba4ec0b5562649ab6c114c20ae25` |
| 25 | `theorem` | [cgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-undef.md) | 166 | `result-track:e2a461393701c48a71aa0e5283e3783fc39e3891ddba740de987d518710eb683` |
| 26 | `theorem` | [mgf_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-nonneg.md) | 169 | `result-track:28c82085f06c866bfaf390cc814f2c945cc6ecf234d9d2d57104f7aefc7535f0` |
| 27 | `theorem` | [mgf_pos'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-pos.md) | 172 | `result-track:a9454e7242967e62b344f350226ae00c92b8b450967b6abcbb7e9d8ff12cf83c` |
| 28 | `theorem` | [mgf_pos](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-pos-source-edition-2.md) | 190 | `result-track:fcc4934e9935a1e8c0a6375ac1c60b498aca8832b0338932890ced47e9d8e41d` |
| 29 | `lemma` | [mgf_pos_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-pos-iff.md) | 194 | `result-track:c635051ca72a3032d1fe4ee3a2f898bfc0752ca0c21966f460c36f06c51077d8` |
| 30 | `lemma` | [exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/exp-cgf.md) | 200 | `result-track:61942f40907558972262044748e62c968733035d51884673c9300c236ab0db2a` |
| 31 | `lemma` | [mgf_map](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-map.md) | 206 | `result-track:394ba042f60e3aed9a0ea0c08a024a0df7bf7cd61c0c21f09ef6f09cfaf5e6ae` |
| 32 | `lemma` | [mgf_id_map](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-id-map.md) | 211 | `result-track:ecfa9c7b9712a9bb5112dd7e0ebb7885cefc72b126a8c263b4b5c7b5252a2b0b` |
| 33 | `lemma` | [mgf_congr](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-congr.md) | 216 | `result-track:2663ef9c66dd1f312f6a9b889f23ce7ecb00e41c01bab8d3cdc6955e175f33c6` |
| 34 | `lemma` | [mgf_congr_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-congr-identdistrib.md) | 219 | `result-track:5336af83e06205479f4c3f67234e0404d230ecada7c663db5cbe1a45d885474d` |
| 35 | `theorem` | [mgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-neg.md) | 224 | `result-track:72f68a0fe0604658442df29d6f3c40ac3a989717941961958c6c6d094cc528c8` |
| 36 | `theorem` | [cgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/cgf-neg.md) | 226 | `result-track:8aa2f37d8c164c1730fa1b5e94ba16865433a4364a4e4078779c5e6232dcae9e` |
| 37 | `theorem` | [mgf_smul_left](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-smul-left.md) | 228 | `result-track:6836c127d2b6115dd40502b64a321676a40e108664f3a549bfceaef88621d308` |
| 38 | `theorem` | [mgf_const_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-const-add.md) | 231 | `result-track:fcdbf74a02aa391f1caf3a0e50a452bac7430f3d033b7331257491f8234ae920` |
| 39 | `theorem` | [mgf_add_const](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-add-const.md) | 237 | `result-track:7c43a742b57d29c07a0db36d500b51498245fe920671d410859a3ffca2f934a3` |
| 40 | `lemma` | [mgf_add_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-add-measure.md) | 240 | `result-track:866c64312f855eb3fca93001890e3297adcfac58c6e800f0f15ab590624e47d3` |
| 41 | `lemma` | [mgf_sum_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-sum-measure.md) | 245 | `result-track:1b499311bbbf81debacd69215c64e4549e8e5d02692ecc87ec4dd7a011a0a864` |
| 42 | `lemma` | [mgf_smul_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-smul-measure.md) | 250 | `result-track:132b2de50e6b6f8c543e6f11ae8b26af2729464a296f9ac4762a39b03c1b974f` |
| 43 | `lemma` | [mgf_mono_of_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-mono-of-nonneg.md) | 254 | `result-track:ae7de93f57a1d550fe49bf314bbb0b9ad1ef8323b81d7a4aa1d6585a8c328c5d` |
| 44 | `lemma` | [mgf_anti_of_nonpos](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-anti-of-nonpos.md) | 264 | `result-track:74a33cd3f696a6c7c424ba21c5ba4fbe9050e8cd5644e0ce4347fcb528d6742a` |
| 45 | `theorem` | [IndepFun.exp_mul](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/indepfun-exp-mul.md) | 276 | `result-track:040c3ecc44649c5f7f0868f9bfef2c45d6a3ab098851a0730a286e5f3ac74b4a` |
| 46 | `theorem` | [IndepFun.mgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/indepfun-mgf-add-source-edition-2.md) | 282 | `result-track:d0dfbc38575bb67304cb43a0107c53e939b3c732caac843c3193a0dca6b91723` |
| 47 | `theorem` | [IndepFun.mgf_add'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/indepfun-mgf-add.md) | 289 | `result-track:45aa16f61c97bded635a93140efc914a30461cc4f824615a3e4425b5cc765c71` |
| 48 | `theorem` | [IndepFun.cgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/indepfun-cgf-add.md) | 298 | `result-track:824628caf9cd703e159eeb26736f5530884a3969232e1b452984ad732ef5b00b` |
| 49 | `theorem` | [aestronglyMeasurable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/aestronglymeasurable-exp-mul-add.md) | 307 | `result-track:d226b6742efb0b50e864b360d929f1828db079d6ad80d89fe40691a0cca17162` |
| 50 | `theorem` | [aestronglyMeasurable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/aestronglymeasurable-exp-mul-sum.md) | 314 | `result-track:7fff1327e3cd45323affd19a730798ffc45f355c7791357df2e7547aa9c61691` |
| 51 | `theorem` | [IndepFun.integrable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/indepfun-integrable-exp-mul-add.md) | 329 | `result-track:c0b4974b8fcd267ffb1f9e3d9b14b72e018c8f5fd37336a5da9ac8c456cbac02` |
| 52 | `theorem` | [iIndepFun.integrable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/iindepfun-integrable-exp-mul-sum.md) | 336 | `result-track:1522f12397cb605791180015802280abbf1c82d6c713338cb4b8ce611df6ce54` |
| 53 | `theorem` | [iIndepFun.mgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/iindepfun-mgf-sum.md) | 355 | `result-track:3daca45895db420051e853148300fd94a7ff34b932639da21ef3741379ccfc19` |
| 54 | `theorem` | [iIndepFun.cgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/iindepfun-cgf-sum.md) | 370 | `result-track:540c3674175a52922ff8f78269e199e854fd97c10c8ac43bb2a7b3d9960b6637` |
| 55 | `theorem` | [mgf_congr_of_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-congr-of-identdistrib.md) | 382 | `result-track:51edeb49b07c81e0713de9886d8b7815df4243af2d66904099bb3ecc41550173` |
| 56 | `theorem` | [mgf_sum_of_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-sum-of-identdistrib.md) | 387 | `result-track:bb095b20459b47fe6349b8d14c02b7eb46613b0010d8decace0c9568586c313d` |
| 57 | `theorem` | [measure_ge_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/measure-ge-le-exp-mul-mgf.md) | 401 | `result-track:073b1bb638e469143c5e7b9496358f335a3ce52cf94c9c5a22c9637a181b3fb3` |
| 58 | `theorem` | [measure_le_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/measure-le-le-exp-mul-mgf.md) | 423 | `result-track:9c27db10bd37b6c1aebb231a47250d3c4b0d30b2c0ccc0d5fed9e3789432f903` |
| 59 | `theorem` | [measure_ge_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/measure-ge-le-exp-cgf.md) | 434 | `result-track:d1c592bdbe5db67a4ca01c182d620c1d5d54d6d673cd94c39afc7ba912441cdd` |
| 60 | `theorem` | [measure_le_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/measure-le-le-exp-cgf.md) | 442 | `result-track:055366f77fea28731010ca901ad4f8b596182e58960ae42f7c81530a2c1b17ae` |
| 61 | `lemma` | [mgf_dirac](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-dirac.md) | 451 | `result-track:5e306a7bcfd2fbacad4bbb1f8c44fd3d1ea712d42822c2b8c4fdcf1b5a0a0cc1` |
| 62 | `lemma` | [mgf_dirac'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/mgf-dirac-source-edition-2.md) | 456 | `result-track:f4569ed5f1a75a27c9e6281548d330d9add9e37a99e6bd2b805b3d502a3b6e1b` |
| 63 | `lemma` | [aemeasurable_exp_mul](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/aemeasurable-exp-mul.md) | 462 | `result-track:80f956af53973491dfeb3aa5e1eeb52333496d3d1c124d45e68716178fda9b53` |
| 64 | `lemma` | [integrable_exp_mul_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsBasicNamespaced.lean/declarations/integrable-exp-mul-of-le.md) | 466 | `result-track:1be0441524db837fa7d6faa0a10ec1d1201bbbc5bc0418f585b6ee7185c2d287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27e4099847578078949628488a56cb67c3f0669017c01673e682cf3935cb483d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
