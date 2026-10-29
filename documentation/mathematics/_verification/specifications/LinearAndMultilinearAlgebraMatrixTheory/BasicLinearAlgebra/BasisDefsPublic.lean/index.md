# Verification target: Basis Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c4af0628dd4ca0dc9cf1138b01ff2fe8f1c9e9",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c4af0628dd4ca0dc9cf1138b01ff2fe8f1c9e9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean.json)

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
| 1 | `structure` | [Basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis.md) | 90 | `declaration-track:ccd7801fb8ac9f6795159e1a1a2b532d55b5902eec42b9ed45b6be4daa77f9e1` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/instance.md) | 99 | `declaration-track:f40a22efcc51727f0bf0b0eb88f1f9ede1df052b7d48cf84ad94d717effc04b8` |
| 3 | `theorem` | [repr_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-injective.md) | 106 | `result-track:d598540d81d43f22968dd08258f882847c4951d36e511922a9d5c3abe4e0c4bf` |
| 4 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/instfunlike.md) | 111 | `declaration-track:fbb6ba7d424be8b4cfd20b3aa28547c2352f91d73fbba587ab3f269248b1181a` |
| 5 | `theorem` | [coe_ofRepr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-ofrepr.md) | 117 | `result-track:6c341a327f621666f8d4b428f6812c6f5e5cc37a3690510a0ca74ff6ef95220c` |
| 6 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/injective.md) | 120 | `result-track:6ed694d8a6d7c355cd1cb4bcb81c9f6b7638528389ebca7c98eb37a9a8654815` |
| 7 | `theorem` | [repr_symm_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-symm-single-one.md) | 123 | `result-track:559e68ac4f3035c9df42fe3af069f0a034692366e824688d2759c503a925dd9a` |
| 8 | `theorem` | [repr_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-symm-single.md) | 126 | `result-track:bc17b1e55dc776e43f952ce57b0fb17effd13808bd3db6ddbf94e0c376c159f8` |
| 9 | `theorem` | [repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-self.md) | 133 | `result-track:8ce63f384a31fda930ed2df811427e45788f22a8c7998a4b52b976111fb8cb9b` |
| 10 | `theorem` | [repr_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-self-apply.md) | 136 | `result-track:63cd3b5918ff895f1491661868f4219468f4eb221bc79242cba41f96ac1d9b59` |
| 11 | `theorem` | [repr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-symm-apply.md) | 140 | `result-track:a7c672f5a8c04fdaf5859bb345e3a292a4a71add284375eb6db6014de2b622f5` |
| 12 | `theorem` | [coe_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-repr-symm.md) | 148 | `result-track:060cfa52a110826e3d8d99036e76d08bc2c666301c754aa5c1a26b8de6789660` |
| 13 | `theorem` | [repr_linearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-linearcombination.md) | 152 | `result-track:f67b248b70eef32adda012e3002137a9c276913631c53626024ef0a5cfec33d2` |
| 14 | `theorem` | [linearCombination_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/linearcombination-repr.md) | 157 | `result-track:79d4b74728bbe086d8d631fb97cc386a6ee1017749ac31e8de46cddb2158ef7c` |
| 15 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/map.md) | 169 | `declaration-track:e5e58777b9f701efc9b156f3fc4e51666f9bfe33e114da76775f7b5d3085a859` |
| 16 | `theorem` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/map-apply.md) | 173 | `result-track:001ff067cf0f0a8f1a61fd54d424bbf0d5af98dcc9b42c83dd6592276a880328` |
| 17 | `theorem` | [coe_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-map.md) | 176 | `result-track:1455a51e3caf2047fb4d00fd8f158081bf5a0b080de468c7a7945b6ddbc67115` |
| 18 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindex.md) | 186 | `declaration-track:e0ad7cd290687ec082a8b9fd7c66af62ba20957d782659318f8f3bfb6efa9f44` |
| 19 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindex-apply.md) | 189 | `result-track:f360fbb70127840f2584afdc35b2bc83d144e358f21eadba3b7121a3d21c26a1` |
| 20 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-reindex.md) | 195 | `result-track:e7bb440f3a67b11a6e0f9b5398ca8fa3d238fa203e32bee36c227cdd41456a23` |
| 21 | `theorem` | [repr_reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-reindex-apply.md) | 198 | `result-track:88a3a929f8ff7c210ac77e9d5a06b4313b9115b9ca44c48d53bbae1ba7b11283` |
| 22 | `theorem` | [repr_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-reindex.md) | 202 | `result-track:3a7f60f39daf3cd81eeb6389f336fa6fad560982eaff0accb4895210e8f89088` |
| 23 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindex-refl.md) | 206 | `result-track:f5b096b4c086e79b9e206f02d7e41818ccff3b962e4bdf0ee2ca21f33cceb97a` |
| 24 | `theorem` | [range_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/range-reindex.md) | 210 | `result-track:3e06ae37a83f7fbef78892f852a67433d7fb3642080b76f36654d1f0152e4a3b` |
| 25 | `def` | [Basis.equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-equivfun.md) | 223 | `declaration-track:27447413caa24baaf372c3eb528c8c78deb6017db014e0dd440e24ee4d951347` |
| 26 | `def` | [fintypeOfFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/fintypeoffintype.md) | 233 | `declaration-track:78479b697ea335907fdd51ce9f3c3af7b5b15cd4fa888fadd725772c5b675997` |
| 27 | `theorem` | [Basis.equivFun_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-equivfun-symm-apply.md) | 241 | `result-track:40ab17a43b9aa1b9c3dc600ca85549080ff3b92372021bc7a232535ab5ad604c` |
| 28 | `theorem` | [Basis.equivFun_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-equivfun-apply.md) | 246 | `result-track:e133c13a33268ab5e0e33f4fcec983af7633fec9940bd5b54dae17810807dac6` |
| 29 | `theorem` | [Basis.map_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-map-equivfun.md) | 250 | `result-track:d4bd0e5996f3b0d079d79ab398cd081e2dfdb011c66fe1327815ecca83bd5dbf` |
| 30 | `theorem` | [Basis.sum_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-sum-equivfun.md) | 254 | `result-track:0c292aff7565f28cc2ee14d4ae7ca73d55b28f5921ad524a59c904a320b522f7` |
| 31 | `theorem` | [Basis.sum_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-sum-repr.md) | 259 | `result-track:4d23c4249216495880d0c20da2095b2bdbd84f61b8ba24d3d3932059cfee5b48` |
| 32 | `theorem` | [Basis.equivFun_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-equivfun-self.md) | 263 | `result-track:5c9af5fa4af515009789faddebb2f4389882f171a36c84dc57690d87af15bbc7` |
| 33 | `theorem` | [Basis.repr_sum_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-repr-sum-self.md) | 266 | `result-track:d60a88d52f91ad087f8640cd0d17c2ff596cb7727d66d65b3fc2f8f1535aec1f` |
| 34 | `def` | [Basis.ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-ofequivfun.md) | 272 | `declaration-track:61142aa66d96450284efe9cb032d4d7cb851bfcaa9950fb191914a6223cb8df6` |
| 35 | `theorem` | [Basis.ofEquivFun_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-ofequivfun-repr-apply.md) | 276 | `result-track:d31097598004e348c1a66d1e69859e84e4df5986a17cfc5260a75ba87baad275` |
| 36 | `theorem` | [Basis.coe_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-coe-ofequivfun.md) | 281 | `result-track:ca58ae276cf67de840a9ad036fb4ce7f6b21e4fd673af36730c99d8c92ececa1` |
| 37 | `theorem` | [Basis.ofEquivFun_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-ofequivfun-equivfun.md) | 289 | `result-track:0f857bb1e3bf1835079988975537c10e26a2c26e8756ca889fe488c8e8519237` |
| 38 | `theorem` | [Basis.equivFun_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/basis-equivfun-ofequivfun.md) | 294 | `result-track:128e162cc73cde2da9f5bc69ed292d6137c30b3f9b92eb28fd1e80172a71bf38` |
| 39 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/ext.md) | 316 | `result-track:075b03f3ee02668097526eb2560500d74e1b5c70492d2a97ab87425e841b8741` |
| 40 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/ext-source-edition-2.md) | 322 | `result-track:36eacda0afe9adffa65ba25d3e5f336a9ede44fa5a73786b58ef94ac9a868ad2` |
| 41 | `theorem` | [ext_elem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/ext-elem-iff.md) | 328 | `result-track:471749ada0a75682304dbf608f79e0eb1ea72fe89c2894dd941d420a74b07f4d` |
| 42 | `theorem` | [repr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-eq-iff-source-edition-2.md) | 333 | `result-track:d761c2e6238ac1b7a553a9520dd26aa945a6bc40e68194e0dfc94201c3f480b5` |
| 43 | `theorem` | [repr_eq_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-eq-iff.md) | 337 | `result-track:2a58c6bf36a85956084dc43232d01a2b270745365c98cd0d206bb31bac555c58` |
| 44 | `theorem` | [apply_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/apply-eq-iff.md) | 341 | `result-track:ee85e1b028a9be3719bd4eca7551a92fa2ff9f721169ae0fe7fb724a7fae7764` |
| 45 | `theorem` | [repr_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/repr-apply-eq.md) | 345 | `result-track:abf7d383ef1b9cda2736a3091466b3933087c64a1f3f3a9f546236b41c25dd40` |
| 46 | `theorem` | [eq_ofRepr_eq_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/eq-ofrepr-eq-repr.md) | 363 | `result-track:880ad25e071a11c35e51223877745ae7bb6486c1febf1d34fe816fa2ba80be33` |
| 47 | `theorem` | [eq_of_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/eq-of-apply-eq.md) | 368 | `result-track:f3fe3cc13cdfb9a3041abc9414f719b7b2b926b77ec0e158f9755b71623ca0bc` |
| 48 | `def` | [mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/mapcoeffs.md) | 385 | `declaration-track:c4bcb5a139edfbedc8add8568eb50301556dbd71d3fea06d0cb4b17e3ff3e11c` |
| 49 | `theorem` | [mapCoeffs_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/mapcoeffs-apply.md) | 396 | `result-track:3b48c1f9a6d43a9683585ebb3d76e434a7afad6a08d817aa0b805ac4373b960a` |
| 50 | `theorem` | [coe_mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-mapcoeffs.md) | 400 | `result-track:07d811caf1b04e2ba37521131c8727cc472630d2d55fad2689bf7e99519840f8` |
| 51 | `def` | [reindexRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange.md) | 408 | `declaration-track:a2defb35069cd9960bcda5844b1558d3263d87091e1e39b91296139b64678df2` |
| 52 | `theorem` | [reindexRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange-self.md) | 416 | `result-track:f5bc5b6638adba8f01441103f7143f5329260daeeeeedff8ede627f71c29d221` |
| 53 | `theorem` | [reindexRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange-repr-self.md) | 422 | `result-track:cd865060ca1933594d25fc0e85087858fd6c62f680da80a20cec3c12e12be969` |
| 54 | `theorem` | [reindexRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange-apply.md) | 430 | `result-track:cd4502343758a5019d6b7ac8e256b4b96cb2b9b3c47711acbf5536bfd35ad33d` |
| 55 | `theorem` | [reindexRange_repr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange-repr-source-edition-2.md) | 434 | `result-track:3a025d839d52cdb8ad54421ef7d460c702adda212345fb1b563d683a668db246` |
| 56 | `theorem` | [reindexRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexrange-repr.md) | 452 | `result-track:184a04977c48fd3436e4d92954090e04379d1bd90d1d6edec0e826e4c2f80f03` |
| 57 | `def` | [reindexFinsetRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexfinsetrange.md) | 462 | `declaration-track:7cf4f7ad60e9207a595367b9a227efa9cc04a870c7a9ddc38b7a33244ad74fd2` |
| 58 | `theorem` | [reindexFinsetRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexfinsetrange-self.md) | 465 | `result-track:0641c29fdbbf3709f8ca3faf3e0f563b8b42740f4a812116b15dd431f19ab3f9` |
| 59 | `theorem` | [reindexFinsetRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexfinsetrange-apply.md) | 471 | `result-track:449f46a2d08f462932229892f76bae4e8e8aa81bc85b90cef6120e7649b40eb3` |
| 60 | `theorem` | [reindexFinsetRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexfinsetrange-repr-self.md) | 476 | `result-track:bb82b0a9af6e59f777f83bcacc4dc553f3bf86e7f0a3237d59bf0edb0c1efc23` |
| 61 | `theorem` | [reindexFinsetRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/reindexfinsetrange-repr.md) | 483 | `result-track:77921cdb343b35a31137d471bce417a5bf6c381c35eb0e38eb07be8731e46f06` |
| 62 | `def` | [constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr.md) | 508 | `declaration-track:499f992b4ed4e022d72a739ab12280984cc4e5b3d22cd843be28fdadde561116` |
| 63 | `theorem` | [constr_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-def.md) | 524 | `result-track:2fffb94e0c03051c009ce065e4fe1bf435758692fb504f29988853ac6707de9d` |
| 64 | `theorem` | [constr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-apply.md) | 528 | `result-track:a1987e2fe2dbc8ec54b34fc077540ec6f05a4cb2fcfe5f919cbf7118d16321ca` |
| 65 | `theorem` | [constr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-symm-apply.md) | 533 | `result-track:226a10046abfd1cd488bb3db73a09fbaf8e0dbb1a3ccae8b2e08a05eee586616` |
| 66 | `theorem` | [constr_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-basis.md) | 538 | `result-track:089a517718f474a0bba3955f9820d1aff76808e8bb0d76a40019a52978c88c7e` |
| 67 | `theorem` | [constr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-eq.md) | 541 | `result-track:f4ed8564376f78109b1ce4cc67be1d2d019949de08b38b2c689a969558252419` |
| 68 | `theorem` | [constr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-self.md) | 545 | `result-track:6ad5738a2d83f83313b11531ed9560a9f66a0815f65cf767ae5041c248310dcb` |
| 69 | `theorem` | [constr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-range.md) | 548 | `result-track:1f9ba394855f2a0b88592275dc6ca5f45363843f9b71dc51e000c0fcd6820e06` |
| 70 | `theorem` | [constr_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-comp.md) | 555 | `result-track:3dd58822f19b928d5b1ebc6385a83e4059e44bc71bafe6541a131e63c018f1da` |
| 71 | `theorem` | [constr_apply_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/constr-apply-fintype.md) | 563 | `result-track:377d9d5fdfaf950d9fa665c873c17e142f0de098ce14c92f0fd2f5425059a0be` |
| 72 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv.md) | 577 | `declaration-track:082e89d1ef6bbaaa7eb6f779dd6a2878307229d552c109557b13513be343ea07` |
| 73 | `theorem` | [equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-apply-source-edition-2.md) | 581 | `result-track:bc8f470a848d297b16b2b64a754b2748d957d611aba2440f32b4f520d1aae9bc` |
| 74 | `theorem` | [equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-refl.md) | 584 | `result-track:6fc32200a19ddf3d4ca16b53ab4858446f16a1760a202aac22830e097deefabc` |
| 75 | `theorem` | [equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-symm.md) | 588 | `result-track:ec6134e16b801f70b7ee3fc2616ee8059d55c956eeb7b5b39029535a43ea177f` |
| 76 | `theorem` | [equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-trans.md) | 592 | `result-track:28cbbb7d86a8fd10ab8d125f801816d3f3828d8639025c6c4e1c54dd2dc32be1` |
| 77 | `theorem` | [map_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/map-equiv.md) | 597 | `result-track:0c012cc61439002ee495f73a6216d0ea60ee6fb9053f80cb4aff06db91339198` |
| 78 | `def` | [equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-source-edition-2.md) | 613 | `declaration-track:171d06c22e161863e835c07a66e5d8d2f645300edd7ebd36d5a1ecc11cc6c153` |
| 79 | `theorem` | [equiv'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-apply.md) | 633 | `result-track:b88494f550392a5495a0ef46ddff37a478609dffb8b58ebd51e43d8383729e81` |
| 80 | `theorem` | [equiv'_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/equiv-symm-apply.md) | 638 | `result-track:3bf86fbd9098d9e819245bc0747fa1ae9e0bcb49d9801d4bea7a982a2bf4d588` |
| 81 | `theorem` | [sum_repr_mul_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/sum-repr-mul-repr.md) | 642 | `result-track:3ba6095ab1097a8d2148bb8fa28b396064862e6bf33ec682b4516dc8c6ca1509` |
| 82 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coord.md) | 664 | `declaration-track:c43e5dd04bb78af64edaba736b4fb2cb9e8f8f3b503f2bae9773be974490b9b7` |
| 83 | `theorem` | [forall_coord_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/forall-coord-eq-zero-iff.md) | 667 | `result-track:3d82bb23abfe5a09dda2344cd3f0d43b9430d15323584e6ef03c0ab50e53ccd8` |
| 84 | `def` | [sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/sumcoords.md) | 672 | `declaration-track:2a37ae9f6280636a70fcefe711a1f498a97fa97f45af0c25fd47d2b17408d7f2` |
| 85 | `theorem` | [coe_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-sumcoords.md) | 676 | `result-track:a72ff1ed5a9ad82fcc07103e077cf3f87545250eb28becc3f2bea63e5fc67c9f` |
| 86 | `theorem` | [coe_sumCoords_of_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-sumcoords-of-fintype.md) | 680 | `result-track:606a5ef7635e377307e27d23624279157dd8ea2ac20ec94cd7e08ff5530dabcc` |
| 87 | `theorem` | [sumCoords_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/sumcoords-self-apply.md) | 687 | `result-track:d90d16dc0d0bc909e7824872f01e661e2b031d230af7ba614491f9496bcdeb10` |
| 88 | `theorem` | [dvd_coord_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/dvd-coord-smul.md) | 691 | `result-track:889e85350cedf3c1d4f8aac4e59543d41605f0150ed880e32302be7bc2075893` |
| 89 | `theorem` | [coord_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coord-repr-symm.md) | 694 | `result-track:b1c1ea44eab14b5c3d872d63eaca3cc06c1f793a5ab2a5abcae3cd25ad71bf36` |
| 90 | `theorem` | [coe_sumCoords_eq_finsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coe-sumcoords-eq-finsum.md) | 698 | `result-track:44833fae31c6c91df7ca7c7d42ebae7ae09d49d628c9d78262486fccf1508e10` |
| 91 | `theorem` | [sumCoords_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/sumcoords-reindex.md) | 708 | `result-track:92c99dfa2dd320b24015ec313864c065ea2f474d9038d9ef9ec635bc20fff497` |
| 92 | `theorem` | [coord_equivFun_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsPublic.lean/declarations/coord-equivfun-symm.md) | 712 | `result-track:c9e270495214093091d1d45a7f225107d604aea6190d151a46bcfb3af56a7d71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa8edda95450f4985b4e825dc7dc59c981da6626ce2c52b57274646a7945eb19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
