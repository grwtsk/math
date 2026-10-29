# Verification target: Basis Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63fa190dc8358cdcd4a7470fa64246c5241eb11c",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63fa190dc8358cdcd4a7470fa64246c5241eb11c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis.md) | 96 | `declaration-track:4275a917f811fa45ad22c881fcbf7eb8579e7a2773a4ecd29ed421155bb2a413` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/instance.md) | 107 | `declaration-track:3733d0717dcfa9c7dc9e3a95d1595eb8b3d967d097772c59602872fb557f8ef0` |
| 3 | `theorem` | [repr_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-injective.md) | 114 | `result-track:31d594ccb2b57c776d1c1efe1f2a438f02547de9000a5db954cb81fe2c0ae359` |
| 4 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/instfunlike.md) | 118 | `declaration-track:0262a895510ae31a4db13d90473482fffa889d2154ca7efc3be7dc63d449aa99` |
| 5 | `theorem` | [coe_ofRepr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-ofrepr.md) | 124 | `result-track:beba79be5d51ccc25746517e11889d07a526d3e304fc34d6bfcc68788028c90a` |
| 6 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/injective.md) | 127 | `result-track:0f9be60de38708e7734dd630952ed75635fc1766f11ed8fb85f2ab8588afd64c` |
| 7 | `theorem` | [repr_symm_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-symm-single-one.md) | 130 | `result-track:c2f90141812fec6d58eb5dd5e02e662a4c1326cb998e827b9d7a6499f1ce7523` |
| 8 | `theorem` | [repr_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-symm-single.md) | 133 | `result-track:0b108c8fb94a02c5060cc83a1d11b985ca5fda86a1eda9406ced93c5f6cec0b2` |
| 9 | `theorem` | [repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-self.md) | 140 | `result-track:03793b25c644bea21408485e69274bddd2261e3c92223d1ef68c30f729e18764` |
| 10 | `theorem` | [repr_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-self-apply.md) | 143 | `result-track:7358e53bb75ea3119d9efa2432d97ab0adce2a4cba71545dc815cc0cf084bb67` |
| 11 | `theorem` | [repr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-symm-apply.md) | 147 | `result-track:0f6f38cba6fca24c7716c466a7e65406d6af17edd17ace78934c3312e3a44677` |
| 12 | `theorem` | [coe_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-repr-symm.md) | 155 | `result-track:c56660b9a0aa53349abc561789cf1ddc1a9014ba1245ef88e37bb384c75f6709` |
| 13 | `theorem` | [repr_linearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-linearcombination.md) | 159 | `result-track:5076e7fb7285fcec569bdf04ca47cc517c07f83f008e8bd617ce0edc4e7beaca` |
| 14 | `theorem` | [linearCombination_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/linearcombination-repr.md) | 164 | `result-track:bcc110e4280d14a43056abcf6ba0f60bc8aa092728768f76a3be2ca6aa208bad` |
| 15 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/map.md) | 176 | `declaration-track:8fd2ed8797060b46c62904d28fd09d509b9e240fa9a467cb77c58b179ac419c3` |
| 16 | `theorem` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/map-apply.md) | 180 | `result-track:060c9bec080d352f87025fca43249c6b683ef89e2096185e8d67784933b6ef0f` |
| 17 | `theorem` | [coe_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-map.md) | 183 | `result-track:e9f0a688bc7eee908a65db855298026ae5b26a50270a98b679ae7476f4d7b6f0` |
| 18 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindex.md) | 194 | `declaration-track:31403158b2501c9c750601aafb0c95047b9958670e5ad91baaf612dc58da344d` |
| 19 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindex-apply.md) | 197 | `result-track:6df4dc5959d8624ff9fe6e622fc33b2d8af1e8dc8d6a8d3d2bcbc286066ec4ec` |
| 20 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-reindex.md) | 203 | `result-track:16c8ac0af67de744cb3b3a4470e88e1b88430e560004456ffbb33289ee88e58a` |
| 21 | `theorem` | [repr_reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-reindex-apply.md) | 206 | `result-track:09c6020d3b5b6bac01ec3e41a17892ad06eec71ddd3144a420df0d3452c5a5b6` |
| 22 | `theorem` | [repr_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-reindex.md) | 210 | `result-track:3f3bb7601f6fa9fa6438432bf74a04e4cb0be75a606103b44b689ee3f0f46972` |
| 23 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindex-refl.md) | 214 | `result-track:a464156a4203845cde3603ac246845cb855a1174d375d3d2435f8e8028d51fdd` |
| 24 | `theorem` | [range_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/range-reindex.md) | 218 | `result-track:4a1d98b842242791ed2334b9df13910b9edf3c38b1f274e91f37d68c5d22dada` |
| 25 | `def` | [Basis.equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-equivfun.md) | 233 | `declaration-track:b6d3706d04dc555aa41f00d6354f200edaf366ca871a4675d0cef4ccb194240e` |
| 26 | `def` | [Module.fintypeOfFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/module-fintypeoffintype.md) | 242 | `declaration-track:8733cb6d09258cab02f0d78acb82670ab7118e48592d1e85c82fadd57410d72b` |
| 27 | `theorem` | [Module.card_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/module-card-fintype.md) | 246 | `result-track:48df5d7f7b4109bc7fa28c78251cdbfc7683f1093e2a1ed63830d4c275f49779` |
| 28 | `theorem` | [Basis.equivFun_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-equivfun-symm-apply.md) | 256 | `result-track:02492dc5e3e0653697ecaeb088dbd367cb5cd67bff42e5b3a9d5531bec96deb2` |
| 29 | `theorem` | [Basis.equivFun_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-equivfun-apply.md) | 261 | `result-track:4957739496e56273997554bf0ae3e978acc677b80d786e15fd93e02eb44009dd` |
| 30 | `theorem` | [Basis.map_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-map-equivfun.md) | 265 | `result-track:6a09f3becafb848a85878ab4f7e1c51862474187f3052fa17d96c5a0aa0951c9` |
| 31 | `theorem` | [Basis.sum_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-sum-equivfun.md) | 269 | `result-track:236c22d013a310e4a5518f0d2d11375b647ad1e97b4fbad3daffd1570dc83b5c` |
| 32 | `theorem` | [Basis.sum_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-sum-repr.md) | 273 | `result-track:7585b7e11a7f9c6fe8144ca6e2f468e4c2e35e59025be91fbc7efa40f6ca6d4d` |
| 33 | `theorem` | [Basis.equivFun_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-equivfun-self.md) | 277 | `result-track:486989a82952b2f8fcd13fbd8bf0ae8dca34cfea26ba30d79a04d19d3cd21656` |
| 34 | `theorem` | [Basis.repr_sum_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-repr-sum-self.md) | 280 | `result-track:2292381a6841cb32364de8e47efef8ccb6a55508e18f938bfe2c63093f78d42c` |
| 35 | `def` | [Basis.ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-ofequivfun.md) | 286 | `declaration-track:4a5376725f3d49f24345fbc7665feac88f4c036325531129639f7ac20fc40a32` |
| 36 | `theorem` | [Basis.ofEquivFun_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-ofequivfun-repr-apply.md) | 290 | `result-track:e2f3dfa0aeb458e4c2a69086575ffa7751224cef0bfaa54c0b10a41af632262a` |
| 37 | `theorem` | [Basis.coe_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-coe-ofequivfun.md) | 295 | `result-track:9532dabb191434dd6f7c501daa735064dc817d7ee27bd536f21fb5d0d4d224ff` |
| 38 | `theorem` | [Basis.ofEquivFun_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-ofequivfun-equivfun.md) | 303 | `result-track:ffc89f364dc2d756f856bd71639a0c67583eaffcffe99793717d84b0ff1006ad` |
| 39 | `theorem` | [Basis.equivFun_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/basis-equivfun-ofequivfun.md) | 308 | `result-track:d42e1467b7694f525233d0a9883b463b982b3673f20d6ca33a976519f0f751e7` |
| 40 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/ext.md) | 330 | `result-track:b6f57ae6a933adc01e6926f1293d332063ad28d10c1f22c9df8cb1ec7e37fabc` |
| 41 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/ext-source-edition-2.md) | 336 | `result-track:f2a216fe802c3b572e41aa61f84aa7f6fc1e6fd1c1d9d8748e0d7059f71aef39` |
| 42 | `theorem` | [ext_elem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/ext-elem-iff.md) | 342 | `result-track:552ebb78f10f54b89db5c1bcf3aeb8cd06d94f7c3fcb85a333651587b8e1d19f` |
| 43 | `theorem` | [repr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-eq-iff.md) | 347 | `result-track:27ee751bb8cc43e5a6d21501c0d870e1a4e4f6f9a1843259853f6e21c82d7772` |
| 44 | `theorem` | [repr_eq_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-eq-iff-source-edition-2.md) | 351 | `result-track:eb9b7d06d9267a464c296c370c3920ce903f5f6287b9d043d80fecfe918d127c` |
| 45 | `theorem` | [apply_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/apply-eq-iff.md) | 355 | `result-track:a652277e0106672d0173eb91bcd1d5bd224c97b637c33f3ce1ae059d3c60829f` |
| 46 | `theorem` | [repr_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/repr-apply-eq.md) | 359 | `result-track:72b71ae25e05541c1d068dd69d4c421b49f89f2b18b3b1eaace6c6ece7c2800a` |
| 47 | `theorem` | [eq_ofRepr_eq_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/eq-ofrepr-eq-repr.md) | 377 | `result-track:2a28c3c5da5e521b59f2017d495563441862fce622a9d1e7e5bf37d695816a0d` |
| 48 | `theorem` | [eq_of_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/eq-of-apply-eq.md) | 382 | `result-track:c4cdb14cbd4ba695f87a94de124834b3b9eecb5b879a7e7e71b8d7d9cfade9e5` |
| 49 | `def` | [mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/mapcoeffs.md) | 399 | `declaration-track:bd9f0e7e93834b1685534791a0a1776bf5c72a031761cfdf371a8fa95fc2de8c` |
| 50 | `theorem` | [mapCoeffs_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/mapcoeffs-apply.md) | 410 | `result-track:ff7e743775b1ae16d2f013ce879947cc510546d78f8280207b30d77f637631c6` |
| 51 | `theorem` | [coe_mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-mapcoeffs.md) | 414 | `result-track:66e5b204f2818a2fdd833aafa86b2816e373ddcfc33e4fb537d0233dbe89c8f6` |
| 52 | `def` | [reindexRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange.md) | 422 | `declaration-track:ef0b4543b65810a34e4d0c921df58c2dd7b8034b737fd73b50038a783b3d07ca` |
| 53 | `theorem` | [reindexRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange-self.md) | 431 | `result-track:3b663e34149c6a28ab87d76f4ca3bba8aa5aa060b2c5973a976141c054f24e59` |
| 54 | `theorem` | [reindexRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange-repr-self.md) | 440 | `result-track:8916273ba2dced0c57f03ba46cc136533e04887994796318884aa7a7bb38744b` |
| 55 | `theorem` | [reindexRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange-apply.md) | 448 | `result-track:511a21ad6fba16ee3759cb0d9a2f872908b1ec049808ca05b45c35b93b423668` |
| 56 | `theorem` | [reindexRange_repr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange-repr.md) | 452 | `result-track:0b53f5776e82474ab151b0f04f34c443438780e776006e6159bfdec2e91b21a8` |
| 57 | `theorem` | [reindexRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexrange-repr-source-edition-2.md) | 470 | `result-track:b480ac7a7570f6bcba60ee585080f7c17467a91e5d923034f3e60f465869bcbb` |
| 58 | `def` | [reindexFinsetRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexfinsetrange.md) | 480 | `declaration-track:5ee3584ba61ae1e530d248efc63643c363265af16b6d3b176f82f15473d008c4` |
| 59 | `theorem` | [reindexFinsetRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexfinsetrange-self.md) | 483 | `result-track:81dc0428c3587be453299cb581bdf9b1128d166924bbb4664d0948994d0d0072` |
| 60 | `theorem` | [reindexFinsetRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexfinsetrange-apply.md) | 489 | `result-track:3c44b5f04a0130f6354158574b0b443a78358c47bd2b8d0481656bd8660d8f6d` |
| 61 | `theorem` | [reindexFinsetRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexfinsetrange-repr-self.md) | 494 | `result-track:9b56eeb57f6cbf3a562ff428bb38b59e709479d999235a270d6be268c7f1651c` |
| 62 | `theorem` | [reindexFinsetRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/reindexfinsetrange-repr.md) | 502 | `result-track:3e2f08a435d6b1882521bffac3341bf440f546fcb69da87e95e4cfa0646cd6c7` |
| 63 | `def` | [constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr.md) | 527 | `declaration-track:4aa79fa21ec3cc3ec0761e0e9b598f95fd07e1c7c33bc4fd8ce4532de039f254` |
| 64 | `theorem` | [constr_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-def.md) | 543 | `result-track:f64df3eb1c73b703fa66d3488863c4548380a931268a907d58ab8d58dc17ff0d` |
| 65 | `theorem` | [constr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-apply.md) | 547 | `result-track:36e0cffd4a644c84d66d549b2949451980292e864bfb570ce956b50ec228425b` |
| 66 | `theorem` | [constr_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-basis.md) | 553 | `result-track:cde543c0b67941282c1a02c8faa3a49e0607244f85e2780a8468b0350dee455f` |
| 67 | `theorem` | [constr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-eq.md) | 556 | `result-track:9c3a58ea64e69668bc433d47737c3616a5c581acf5c242f980629787994d1272` |
| 68 | `theorem` | [constr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-self.md) | 560 | `result-track:c085ce1491560e5ecebfe7af94855c6016612f7dde6c88cc782d0bbf6528d87c` |
| 69 | `theorem` | [constr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-range.md) | 563 | `result-track:edfb5fb320f4185989044d247aa2797d91d464790376223f7f5d6dd99118714d` |
| 70 | `theorem` | [constr_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-comp.md) | 570 | `result-track:df29b8997e890bae1b2c6810f2c485854f19f92b96b47f843fa5e61ed9810d11` |
| 71 | `theorem` | [constr_apply_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/constr-apply-fintype.md) | 578 | `result-track:bbe2c482f13b667875d36c540c2c394686cbd5de0c3ba92e67dec1c391f5944e` |
| 72 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-source-edition-2.md) | 592 | `declaration-track:22c7a6653d4551bd3ab1e75a2a445996edcd96b6418a90e502ba6cc1d387b922` |
| 73 | `theorem` | [equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-apply-source-edition-2.md) | 596 | `result-track:b8e9f899c80f879ad2c7b9eb0740de65f273dfbb4ee50dfc945e4b6ad7014ce2` |
| 74 | `theorem` | [equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-refl.md) | 599 | `result-track:acd92de5fab354699474d85a893d1be6417386fdc0e4c6a63084a93333d7e00e` |
| 75 | `theorem` | [equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-symm.md) | 603 | `result-track:f4342cbaf3502b5cfb6349da922fe79f07bd6351a79c3874e4b276c0f31396ea` |
| 76 | `theorem` | [equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-trans.md) | 607 | `result-track:5d1b88bc7373298ff5df5206e47356e0f063ad7c37ebfc1f4dae6dbdfcaac5a2` |
| 77 | `theorem` | [map_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/map-equiv.md) | 612 | `result-track:73cca17d54f54ea0413f7d944ad616bc663a3f8bd264bc98119cb7f09da6c7fb` |
| 78 | `def` | [equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv.md) | 628 | `declaration-track:0b7d0783768bcdd0dc5b150d65d6eee921da8a5dca1762f2d09ad82f822146db` |
| 79 | `theorem` | [equiv'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-apply.md) | 648 | `result-track:38ee792f8cedd095efd4d458f2a72df0f9213bd105dabf2fef592b1350f0f78e` |
| 80 | `theorem` | [equiv'_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/equiv-symm-apply.md) | 653 | `result-track:885f2ceb40d2e24bf7d9527755ee6c4f94b3d2cb770ade614bf2eaa53a9bd650` |
| 81 | `theorem` | [sum_repr_mul_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/sum-repr-mul-repr.md) | 657 | `result-track:60f0197a8874fc72ac955ccd42d6c4552bed221cfb6f05ae1c0004045f992aee` |
| 82 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coord.md) | 679 | `declaration-track:582359aee9c8e8e19bfdb5225eefc4cb2bbfec38e4a23069a3dbc2e9a542d15e` |
| 83 | `theorem` | [forall_coord_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/forall-coord-eq-zero-iff.md) | 682 | `result-track:9956657794cba390cade7cd2b72f8bd068b05d581668136cf2473d25c9bf9f8f` |
| 84 | `def` | [sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/sumcoords.md) | 687 | `declaration-track:f4a3273a1da292025d30eec7a6e4faf0f9e780323676fc6cfe4759f2053c89df` |
| 85 | `theorem` | [coe_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-sumcoords.md) | 691 | `result-track:5c1d2cd46a055b507cfc46d9eba09ad81c48f5b0b30f2a1bfe5229a4b919cbfb` |
| 86 | `theorem` | [coe_sumCoords_of_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-sumcoords-of-fintype.md) | 695 | `result-track:b05044cf300fe27118db48bf4243e9b69b0c593080154027ed7b1c71d1ae0200` |
| 87 | `theorem` | [sumCoords_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/sumcoords-self-apply.md) | 702 | `result-track:0f19e2adcea713526112b79f68beabe3b28f1daa473c99df7b734eb7b8b3db8b` |
| 88 | `theorem` | [dvd_coord_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/dvd-coord-smul.md) | 706 | `result-track:fe0a527c95a5a01766b58b72fc87496c8805b3cb12f443b566e2d4a3a9304360` |
| 89 | `theorem` | [coord_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coord-repr-symm.md) | 709 | `result-track:25bcfc6ad9d05a8f7a0de9493e3df199ea746ebc2cbc814ecf538f0c30be8b1c` |
| 90 | `theorem` | [coe_sumCoords_eq_finsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coe-sumcoords-eq-finsum.md) | 713 | `result-track:4c2bc587247408692366ec0f9757e96564a7b28d6b887f84e8be6801821a3d75` |
| 91 | `theorem` | [sumCoords_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/sumcoords-reindex.md) | 723 | `result-track:38c7460f3a392970df0c9d9b4cc3943ae93269cba3fdd06a7d2bc158e968ce4f` |
| 92 | `theorem` | [coord_equivFun_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespaced.lean/declarations/coord-equivfun-symm.md) | 731 | `result-track:34bffd8775922858b4cdbc7732501d2b6e86f7372f607858d4c54b7935671f48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34c810dd463921767bfc71abd9e38c01a989cb59533b2ff69f87fb32a0b700ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
