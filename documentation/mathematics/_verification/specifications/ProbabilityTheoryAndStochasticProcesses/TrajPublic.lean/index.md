# Verification target: Traj Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55c556e1012c4fcc8a84a45c7cd0c3a401453c4c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Iic_pi_eq](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/iic-pi-eq.md) | 94 | `result-track:c2a668c106c14257c90850c3252a94399429a78d3ae2750e9236dc3cb6718fa7` |
| 2 | `lemma` | [cast_pi](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/cast-pi.md) | 97 | `result-track:60d870cd7cded0290b979709184fbb2fadfe59bc89f77746d88a63bf6051a9a8` |
| 3 | `lemma` | [measure_cast](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/measure-cast.md) | 103 | `result-track:1b178d74d334077681f9f92982f638db439910cc5a267ebf9f9fac249c97cb47` |
| 4 | `lemma` | [heq_measurableSpace_Iic_pi](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/heq-measurablespace-iic-pi.md) | 108 | `result-track:0a0647b5e529711bba2f3579f35558b960ed860aec30367bb912a3cacb55671b` |
| 5 | `def` | [iterateInduction](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/iterateinduction.md) | 119 | `declaration-track:c7f302b8a4a0e2ac53d4a6e6be0f75fc998a8247251b6cb6b92f4b7873b4c714` |
| 6 | `lemma` | [frestrictLe_iterateInduction](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/frestrictle-iterateinduction.md) | 127 | `result-track:6315005150db42c8e12db8c7eefefaae117cfa6ed4f8236c32dba0757b59368d` |
| 7 | `theorem` | [isProjectiveLimit_nat_iff'](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprojectivelimit-nat-iff-source-edition-2.md) | 150 | `result-track:cc12eca4605ba6ee5bf710c63655ef75aba1add1773137bef46515179c818974` |
| 8 | `theorem` | [isProjectiveLimit_nat_iff](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprojectivelimit-nat-iff.md) | 160 | `result-track:0f89dff4c176ea784b8e48d25269a1b961ceeb6d80c93e11ec83489af70033d0` |
| 9 | `def` | [inducedFamily](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/inducedfamily.md) | 170 | `declaration-track:56bd2d00760a04c3270ddcda2e6583bf558d04a06658064c73e1798f6dceb47f` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance-source-edition-3.md) | 173 | `declaration-track:70c12b11689f784a9ba2484c404176fe09e26c66adffde3759a58f5970dcdcb9` |
| 11 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:9e4401bc9741b8ba6b702b79cf65ec777d64d693cd779252c390a2b02b82be63` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance-source-edition-6.md) | 179 | `declaration-track:dc3330679ce4bdcc57654e6817d2bf98362a82ae4cbfd1d725c7859cf60a8d1c` |
| 13 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance.md) | 182 | `declaration-track:20f221eef314ab51115971d52c73e917493201317c3e7b0b6707dbf6b8cf634f` |
| 14 | `theorem` | [inducedFamily_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/inducedfamily-iic.md) | 189 | `result-track:e1962c60b064072003d22728e1efeaa6d97c7cd648472406378a3ae095f2fe0e` |
| 15 | `theorem` | [isProjectiveMeasureFamily_inducedFamily](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprojectivemeasurefamily-inducedfamily.md) | 197 | `result-track:73177a07495d9d18f4ee524b66bbbe3e58710fd5d8517096fc012c143ad0c3ac` |
| 16 | `lemma` | [isProjectiveMeasureFamily_partialTraj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprojectivemeasurefamily-partialtraj.md) | 222 | `result-track:9644983a68f433871a8cc6c30012e04a9f7063d127ff5db8c7d1310e95c8f8ee` |
| 17 | `def` | [trajContent](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajcontent.md) | 230 | `declaration-track:e7edee6b77528e684468545ae3fba06c7d8277bc77132183c7b4b45f691398f9` |
| 18 | `theorem` | [trajContent_cylinder](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajcontent-cylinder.md) | 237 | `result-track:739cc66875e972c873ffa87ae59483e498713d6e86dd90e93d071660faea80cd` |
| 19 | `theorem` | [trajContent_eq_lmarginalPartialTraj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajcontent-eq-lmarginalpartialtraj.md) | 244 | `result-track:1643eb74c36f5dbe1b42fc9ed6fbd800588efb544772f853a1f8a612bed4e694` |
| 20 | `lemma` | [trajContent_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajcontent-ne-top.md) | 255 | `result-track:011697c073ce91ef73632acab2d11d02fd0e8640c4c1a1c12175c3d1471c5df3` |
| 21 | `theorem` | [le_lmarginalPartialTraj_succ](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/le-lmarginalpartialtraj-succ.md) | 267 | `result-track:cb16530dc574daf761e981d2538413efd8c147715148f60060e816f95910cc58` |
| 22 | `theorem` | [trajContent_tendsto_zero](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajcontent-tendsto-zero.md) | 346 | `result-track:b321616417a8fe44012d453f6fccb3b1187628642d737c54a150afef91b2ab5a` |
| 23 | `theorem` | [isSigmaSubadditive_trajContent](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/issigmasubadditive-trajcontent.md) | 461 | `result-track:e2c03cbfffd5c31c2f8861861891f530a000f64af245e8e9d815ed2b8ce03d91` |
| 24 | `def` | [trajFun](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajfun.md) | 471 | `declaration-track:128293bb6a749e62a278b8ce93bd18d89212aaf446428036f421b9cfc2554c33` |
| 25 | `theorem` | [isProbabilityMeasure_trajFun](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprobabilitymeasure-trajfun.md) | 475 | `result-track:14ba9b83c596774eba594c3aa61177744ffadcd52cbfbfcea8d53e715e46c2be` |
| 26 | `theorem` | [isProjectiveLimit_trajFun](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/isprojectivelimit-trajfun.md) | 483 | `result-track:18c6f5cf855a20a7fce98230d525935662c66e2b642fe761c148f4afd1d4ea45` |
| 27 | `theorem` | [measurable_trajFun](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/measurable-trajfun.md) | 493 | `result-track:54f6459a82f388b09d3ef415d02e906a6b1f617c316b2b8dbcd9a5dde4aa7ebf` |
| 28 | `def` | [traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj.md) | 518 | `declaration-track:aa5bf81a6b7268e8d7d1ae32dbeb0d42d8e4ce8b7ef4bcab40d1b0d793c0d670` |
| 29 | `lemma` | [traj_apply](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-apply.md) | 526 | `result-track:1e2b22193d36a3f0b89661fa64c3e9342282abf781ad129b76864e9cd7623782` |
| 30 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance-source-edition-5.md) | 528 | `declaration-track:dc0e8f5f4aaa182adae2d3e6695e4f333377fde4b7ea5dc3590b1c869ac6b1c8` |
| 31 | `lemma` | [traj_map_frestrictLe](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-map-frestrictle.md) | 530 | `result-track:b1300f1e3cc6bcf4ed60d1b1d2791546654a1f434491d0d44857e23bc14d2f1b` |
| 32 | `lemma` | [traj_map_frestrictLe_apply](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-map-frestrictle-apply.md) | 535 | `result-track:daf974f9098f52d41733e77200a8385b1030cd1649bd3173d67cb42d17fd935b` |
| 33 | `lemma` | [traj_map_frestrictLe_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-map-frestrictle-of-le.md) | 539 | `result-track:ac6ad041ecd1e1ec96525f7e505cb2650a083109bd59ae096222cc0dfba94d7e` |
| 34 | `lemma` | [map_traj_succ_self](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/map-traj-succ-self.md) | 545 | `result-track:bf19033a050fe75436507ccc36b24b6733c0e09740906e004ee42bf9da41cb87` |
| 35 | `theorem` | [eq_traj'](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/eq-traj.md) | 555 | `result-track:5e37b3b331436e2c02529b8110ba99815cd15dd78547cc40c94b788ba9882a70` |
| 36 | `theorem` | [eq_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/eq-traj-source-edition-2.md) | 566 | `result-track:c9c6261be670fa84c7eb7e1652a095ec2caaeb9df51a979eaf19dd9166daf850` |
| 37 | `theorem` | [traj_comp_partialTraj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-comp-partialtraj.md) | 575 | `result-track:f052e017a6b76599f14e62a1c6d856a57d0152c0f6e3c4f0b5a5016ec3fd353e` |
| 38 | `theorem` | [traj_eq_prod](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-eq-prod.md) | 583 | `result-track:be8b40c8335debf512d1d110d6160cf9bf9ec980caa671beccb602aa23e665c3` |
| 39 | `theorem` | [traj_map_updateFinset](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/traj-map-updatefinset.md) | 597 | `result-track:871f0186e55a9c12d47fcedb0f2c943d4df79ce812aa0689e8004455d00e5e9a` |
| 40 | `theorem` | [lintegral_traj₀](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/lintegral-traj.md) | 612 | `result-track:396761ca3e94e58559bc7c77b0ac124a237411e4f43127132a0a3f8881eb610b` |
| 41 | `theorem` | [lintegral_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/lintegral-traj-source-edition-2.md) | 620 | `result-track:8692de13f235cc81dc1d9c033ecd33f969826aee3ad4b16d130e956cad6758fd` |
| 42 | `theorem` | [integrable_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/integrable-traj.md) | 627 | `result-track:b90c50be3565f0e062ce31874ebcc1ea09a8cd546390831c72a9af8fb3a0c4bd` |
| 43 | `theorem` | [aestronglyMeasurable_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/aestronglymeasurable-traj.md) | 637 | `result-track:dc33bd7d650fd22631e8195969c9a0fdd8cbbea4a037751cce81fe5c3967ed2c` |
| 44 | `theorem` | [integral_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/integral-traj.md) | 647 | `result-track:13c7f11b636c7488010e2718208aa7263717632f8356773a39ffc476ce60aced` |
| 45 | `lemma` | [partialTraj_compProd_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/partialtraj-compprod-traj.md) | 655 | `result-track:82ecb467838aa4039e6ebd034de0c5f0e4f005cc57165fef1349dc6f3c77026f` |
| 46 | `lemma` | [partialTraj_compProd_eq_map_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/partialtraj-compprod-eq-map-traj.md) | 669 | `result-track:b5d59eb0136a52d2253dada327f7ba4d625dae8d596df889bf10311fee479e93` |
| 47 | `theorem` | [integral_traj_partialTraj'](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/integral-traj-partialtraj.md) | 676 | `result-track:45b14043fe70cfbc7ce41008327da388a89ee7743e5afb689a7c09facbb191f8` |
| 48 | `theorem` | [integral_traj_partialTraj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/integral-traj-partialtraj-source-edition-2.md) | 686 | `result-track:52ad4650b311abde5629e7df8761694ad22e12c28391636cfd493c63291fa691` |
| 49 | `theorem` | [setIntegral_traj_partialTraj'](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/setintegral-traj-partialtraj.md) | 693 | `result-track:5d0e9fbedaa5a807f436da5eb76064d14a026a6fdc4a26ae4e19eec2e8d031dd` |
| 50 | `theorem` | [setIntegral_traj_partialTraj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/setintegral-traj-partialtraj-source-edition-2.md) | 706 | `result-track:5f26c059709e1b29a21399ff2773ec3f45637ec84e475a0fe5a1318dcc65e9fa` |
| 51 | `theorem` | [condExp_traj](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/condexp-traj-source-edition-2.md) | 719 | `result-track:c351ce493570e7a7b93bd8dab5721398d52f6f9275ae68ff9b99275a9404c470` |
| 52 | `theorem` | [condExp_traj'](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/condexp-traj.md) | 738 | `result-track:16a426c5532b33dc73dc3172f5c48ae35e5788a49b2c8287925c68eb28a3fce6` |
| 53 | `def` | [trajMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/trajmeasure.md) | 762 | `declaration-track:aeac46ba9617e6b7e93b52963135719ecd00cd9843909c0b9667655922572856` |
| 54 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/instance-source-edition-2.md) | 769 | `declaration-track:4072e49fd74d617cd5ff6394e8540cedd93d3e8ca8acc4a8b59afed20c25dfbb` |
| 55 | `lemma` | [map_frestrictLe_trajMeasure_compProd_eq_map_trajMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/map-frestrictle-trajmeasure-compprod-eq-map-trajmeasure.md) | 773 | `result-track:decff48606a0c42d55aec44211ee6d83b41877a5c86bf75fbee0122f20ff2e23` |
| 56 | `lemma` | [condDistrib_trajMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/TrajPublic.lean/declarations/conddistrib-trajmeasure.md) | 784 | `result-track:29cf761f2d8a4f69fbe56b7a4d9e07c25f4a7f2e185c4b48c97dfa67c5c03264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec7fa84b607a2e08985c1981789f813fbf82313031904a1c589a81cf26cfe0de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
