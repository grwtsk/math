# Verification target: Upper Lower Complete Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba4fa2953606b031cf0873e726a1be44c5699c3",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant7c1ee53c8d3cc49d21550027053d528ec24f38baf48bd662dd000628053de21f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba4fa2953606b031cf0873e726a1be44c5699c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant7c1ee53c8d3cc49d21550027053d528ec24f38baf48bd662dd000628053de21f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant7c1ee53c8d3cc49d21550027053d528ec24f38baf48bd662dd000628053de21f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 45 | `declaration-track:6f6f971e195cbfe4a4c0d7b323e36aeac5b2c3fba4523002a923c4e5fd6395a5` |
| 2 | `def` | [Simps.coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/simps-coe.md) | 51 | `declaration-track:20d4ff1f319ea05973269040792a7797b353469fa3ccfe56d9b9659180af155a` |
| 3 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/ext.md) | 57 | `result-track:08ac8a729b57172480e698cc9ff811a38cf985049acc2533d34fc98b58abf797` |
| 4 | `theorem` | [carrier_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/carrier-eq-coe.md) | 61 | `result-track:00bb9e8e2c0adfda3aad290d68de0a23f14db114ef19f2d4c39ec10f1167476d` |
| 5 | `lemma` | [upper](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/upper.md) | 65 | `result-track:63c10833af00c8bc87c46db751d92f7c5f4194d3045085cb744f228f7a02730f` |
| 6 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-mk.md) | 68 | `result-track:afd44674ba3f4d107e11c73963140c3995d02855505595f03f493e60bdd7114f` |
| 7 | `lemma` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-mk.md) | 71 | `result-track:541bf3f17958120999186b40191415c899f8834b8003790bd979804728bf3529` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:1cc7d3c1a778e1c7dec00c2f31d27030d077684282edc2937f9ccd3516e4441d` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:238f8445d4366e7784cb5480ba3bd0864bc3a68ea306838d8f254c5ed3f776e8` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 84 | `declaration-track:07aeb3448327315f55b230152bc88ac38181e8159de45257a38b17224b215d8b` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 88 | `declaration-track:9683a45315a7d4fbf88d65c2d394630acbb18b698b1c183a783bee3db28b70de` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 92 | `declaration-track:568ef6785d4be1a4a09a97e3c37b48e976e070628b7e0b71523a7ee871cc8fb3` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 96 | `declaration-track:51b741fc10cd33b5de0e5caf05882b4eabb50b2c8538289c3c7826b714198a6e` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance.md) | 99 | `declaration-track:045d06660e30387070d954aa5c4fa5e5d6498765db517ec309ac7c4699e384ca` |
| 15 | `instance` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/completelattice.md) | 102 | `declaration-track:fdcc616c5eae88e9b5700aec57175ea474b23a68a17c1f18f40a99d09a06da32` |
| 16 | `instance` | [completelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/completelydistriblattice.md) | 106 | `declaration-track:cf2b43cc4c20aa42c5ad6422b269636ec2cee8637231b8c58431a6614c3802a5` |
| 17 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-7.md) | 112 | `declaration-track:bbc80c78af971db0ecd8ba0e5cf099873c429579ba9accde8c568d72f556c7a3` |
| 18 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si.md) | 116 | `declaration-track:22807b8444dae1661e9ef43a9dc0484a687f29daf32ae10e0f29335f42dfc21e` |
| 19 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-4.md) | 121 | `declaration-track:71c6692d5a2a46244cec97bb107fd002e016eb21568f011bfca4a068bf7f4c99` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 126 | `declaration-track:468e3d7cb5827f7b3240e1dd80c2e00df35f971a644d964e25b11ff2b49fa99b` |
| 21 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-subset-coe.md) | 130 | `result-track:8bde5fe2e51c1e51b8ad79a79616b411c1864289816c2166e818889f56468eaa` |
| 22 | `lemma` | [coe_ssubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-ssubset-coe.md) | 134 | `result-track:7c5d4d3a5e7fbf1034901d3243367a0800dae9d313c1bbee740cddbfdaf662bf` |
| 23 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mk-le-mk.md) | 137 | `result-track:9dc34c5bbc622f7f57f8a2c54cfe7d3c7f0c2a4d36df2f10a324b01c349a4bbd` |
| 24 | `lemma` | [mk_lt_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mk-lt-mk.md) | 140 | `result-track:340f54592baf1b43fc4ea85bdb7f4157051d4c959353930a98882a1488e9fafd` |
| 25 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-top.md) | 143 | `result-track:29c1e4193eb76f066e85dec870bf5cbed518b7e08dea95a1b8f3f35986ab0657` |
| 26 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-bot.md) | 147 | `result-track:6a2817202836d0c90c511b4b12507bce907c46e30916027b2e6d23eda23679cd` |
| 27 | `theorem` | [coe_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-eq-univ.md) | 151 | `result-track:292bb0ecce9e92080d009ebfd1c87802d6e86dda12aa143dc4144c0a326161c8` |
| 28 | `theorem` | [coe_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-eq-empty.md) | 154 | `result-track:8f968ab120710f8788b61efb26d60a5e6ab473b8837a6ecf7db0b223cb9fb5f4` |
| 29 | `lemma` | [coe_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-nonempty.md) | 157 | `result-track:8b0346ffe740cc0ab1e30a28bc468c25bfac8eff3ca3b993e28d7d7e8e9c566b` |
| 30 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-sup.md) | 161 | `result-track:864b9bff25ef48e7bea5409c57ddf03677506e22b8d8ee1b57ec39d8b4da5004` |
| 31 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-inf.md) | 165 | `result-track:4a8cac40c96192239eee09254444b0e3a0d2d96f8416c7a458f458a672d32bd7` |
| 32 | `theorem` | [coe_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-ssup.md) | 169 | `result-track:794943430029fb495d3f16198a54ee9a3c54424d2c35ec341b8f8eed4b3cbc8a` |
| 33 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-sinf.md) | 173 | `result-track:fd5affb4864c30d1ed11429709647450480179e00af20726f6d475ac793152a1` |
| 34 | `theorem` | [coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-isup-source-edition-2.md) | 177 | `result-track:fcd75d439df09bf14cbb491984550c45e205e40ce8a2c20874ab7d2853f19cab` |
| 35 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-iinf.md) | 180 | `result-track:0555f5ba1307800986c6af94a81a060f04ea9495ce0470d9ee71ee7efa131df1` |
| 36 | `theorem` | [coe_iSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-isup.md) | 183 | `result-track:bc2fe00f90deadb607c5e379858b614e581039ef72d97eba9025979164772231` |
| 37 | `theorem` | [coe_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-iinf-source-edition-2.md) | 187 | `result-track:0b408b5734267d9cf455abf553684a7925219cf037247c1a5cee32105b74db4e` |
| 38 | `theorem` | [notMem_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/notmem-top.md) | 191 | `result-track:b7525ab27d1b25388a4aa1c10574f8004f0a9df46fe3d2881d2de50a0ea31efd` |
| 39 | `theorem` | [mem_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-bot.md) | 195 | `result-track:2be1bfa1b71c3fb40c232ff4eb3ae483a79e92cb53594fc5d2616c4f51e9687c` |
| 40 | `theorem` | [mem_sup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-sup-iff.md) | 199 | `result-track:12ec499b9ce83345f0a2728530252771b67a416ea27075dad17ba12c8d04cbfd` |
| 41 | `theorem` | [mem_inf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-inf-iff.md) | 203 | `result-track:dd28ba73d96cf52f96e2c6ec57de88dbfa436656c8fac4a31b828b16ff85509c` |
| 42 | `theorem` | [mem_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-ssup-iff.md) | 207 | `result-track:e733afe7cff58e06d9cedb8478b28aeb1acc71431d0c46d572608fa47baa9040` |
| 43 | `theorem` | [mem_sInf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-sinf-iff.md) | 211 | `result-track:8e4f5aa1797d3f2adf319f437ddaabaa33810e4ee781b0b19c6c11bac8eb2f94` |
| 44 | `theorem` | [mem_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-isup-iff.md) | 215 | `result-track:45a6a8a215a44198b8f4f75aa46fc7356d3960f91a1f21fe190d2309a1b8b1da` |
| 45 | `theorem` | [mem_iInf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-iinf-iff.md) | 220 | `result-track:11c2ce5a695541bfa413d4aa08ae7d57659dae4d0761c423fbd18d3fe9306e21` |
| 46 | `theorem` | [mem_iSup₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-isup-iff-source-edition-2.md) | 225 | `result-track:908555a4e11e64330cdcdd58b70d9767c37e6488e3ee7a631a4530174dbbbdbf` |
| 47 | `theorem` | [mem_iInf₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-iinf-iff-source-edition-2.md) | 229 | `result-track:81ffab26f65448820729180faebd8ad937224973aa41d154d04d9dff897d387b` |
| 48 | `theorem` | [codisjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/codisjoint-coe.md) | 233 | `result-track:c374b3b61875ee56a86efc422e9768e337e03e909cd30ef83caf7aeb116d8e39` |
| 49 | `def` | [compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl.md) | 240 | `declaration-track:6d53a100e16d02315560f55a1fd39c01eac5655f9631c2dd05e018ed7d3c32d7` |
| 50 | `theorem` | [coe_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-compl.md) | 244 | `result-track:70a892441513f7a48f3d1e69d05b53d69c7d5ee32b5dc28f7e19b25f82d4eba2` |
| 51 | `theorem` | [mem_compl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-compl-iff.md) | 248 | `result-track:3564b474f1c96563c0f17e03a1fa023672f8ab5afd0665ddc49f1b0d6e500f00` |
| 52 | `theorem` | [compl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-compl.md) | 252 | `result-track:85bb59249986101297b61d90eaa5cb3d505709ad243d054ef08c1e67b6e8b361` |
| 53 | `theorem` | [compl_le_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-le-compl.md) | 256 | `result-track:c2e4ffbaa6e27df47440e687b3f81467240b73594d645ddb3fbdab8ba7e94f22` |
| 54 | `theorem` | [compl_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-sup.md) | 260 | `result-track:50bb418bb34cc97839a8a8e86a2188adff278cd6463448f5e11dc967cbf5d4c3` |
| 55 | `theorem` | [compl_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-inf.md) | 264 | `result-track:2230ab02396fc62ffd9abcf2cee807d2afd13c66a6634b41c8891e8a6576026a` |
| 56 | `theorem` | [compl_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-top.md) | 268 | `result-track:34b309f531574ba6979aca82c7e3f5d6b637dda1ecaa79d9a07e992f45894433` |
| 57 | `theorem` | [compl_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-bot.md) | 272 | `result-track:cc1a1bf7412ea12c7af0fa0ef6ce49939b4c03a145f0dfce42ea8d2018237140` |
| 58 | `theorem` | [compl_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-ssup.md) | 276 | `result-track:d7f979f4576912b9496b1a6d3cc38deec4511f2e954de99e1a85f41c39995604` |
| 59 | `theorem` | [compl_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-sinf.md) | 280 | `result-track:2a97eb13d12423635333d232d907875123200c0706aa775501b0bdbc225f72a6` |
| 60 | `theorem` | [compl_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-isup.md) | 284 | `result-track:8f04262ca7655c513e7d46ef50ff74b36c4bb4d73c19da36fec7d84853dbfb3e` |
| 61 | `theorem` | [compl_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-iinf.md) | 288 | `result-track:0d362b56a3ce39a3ed3bfb762eb03a182175d5f1cf70d00b1ea53dcfe5d11fbc` |
| 62 | `theorem` | [compl_iSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-isup-source-edition-2.md) | 292 | `result-track:a7e0be183b7651fea9dd434e74da1f0d0c2be3842ef5d5b19eb3401125f84f23` |
| 63 | `theorem` | [compl_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-iinf-source-edition-2.md) | 296 | `result-track:2384e7812420030dd2486199e330b7524a608c248599b06e1796266cc42adede` |
| 64 | `def` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-3.md) | 301 | `declaration-track:36990cd021b529aef9963b2a43d88e41ec3b7622d66444542ed12d0394a7ca8a` |
| 65 | `instance` | [total_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/total-le.md) | 314 | `declaration-track:fa1ac3490385bc905edde61f1329784c447465e2b711f855cc9e2facb0d172d0` |
| 66 | `instance` | [instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instlinearorder.md) | 316 | `declaration-track:387fa00a3891e6f437fb0016f03f6d6da502496f6b19f2b1ea67eb1152fa702e` |
| 67 | `instance` | [instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/instcompletelinearorder.md) | 319 | `declaration-track:e2ad17a304e52c463cbab16d5939cdc259cc3ff1aa8f5cf35d1aea733716a991` |
| 68 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-2.md) | 323 | `declaration-track:26852a985ddb7c4e1beb9aa943842b6be0a26328ff127869289126c6453f4da2` |
| 69 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-6.md) | 327 | `declaration-track:b221e6592d2672cd080b189e32d4f6b2b301e8844f3324f4d2fa11e7cef1fd3f` |
| 70 | `instance` | [Upper Lower Complete Lattice Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si-source-edition-5.md) | 331 | `declaration-track:b1371c3a358508a9405f4e2b4fad79c665e516c712608c519157c0a65b472370` |
| 71 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/map.md) | 345 | `declaration-track:fd20768e24502d337722468d94a76880fe99d302fdde7ef3442f65aaa294ad1b` |
| 72 | `theorem` | [coe_map_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-map-apply.md) | 354 | `result-track:e6d2a3fc2afe7ec3bd30406e3ccee8c76489e40624b432c36a5adb7b7988a0cf` |
| 73 | `theorem` | [coe_map_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-map-symm-apply.md) | 356 | `result-track:2a3e360a6bb7a652fadea317d7a44ac3470949da5cd32af23543bfddbe7cb356` |
| 74 | `theorem` | [symm_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/symm-map.md) | 360 | `result-track:3b63569f9b1fe8bf4dc257eb0a08178094f87fddd3287238822d323e03d91a67` |
| 75 | `theorem` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/mem-map.md) | 364 | `result-track:917536fc6ecc6d1fd7d831e36ee4cb0508f4a4ae20528f449ec261b33caaff6c` |
| 76 | `theorem` | [map_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/map-refl.md) | 369 | `result-track:c9577112590c75b8b05b03e205e03bc168f4d3c12989d3b2ac45b39a9e2febb2` |
| 77 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/map-map.md) | 374 | `result-track:0747b73197e6c2838f4d6f325d3ceb29c23d456d4576c34d9d0ad7cc7d423dbc` |
| 78 | `theorem` | [coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/coe-map.md) | 381 | `result-track:959d3873267b093b80e83f2aba5aa1ea17e2561a61095a3738b4385f8fb47f79` |
| 79 | `theorem` | [compl_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticeNamespacedPublic.lean/declarations/compl-map.md) | 385 | `result-track:6447a32421ebad5cb5439dd870d20a27d3c8cee78b37fff0f66bb1965be8828d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3deaa4fa6edae9462191a519a703fef2089d3fe30c91fff342903586efa3e38a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant7c1ee53c8d3cc49d21550027053d528ec24f38baf48bd662dd000628053de21f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant7c1ee53c8d3cc49d21550027053d528ec24f38baf48bd662dd000628053de21f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
