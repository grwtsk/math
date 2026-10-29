# Verification target: Shapes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae5f6933d50835813059f1b3b61dd118236aa49e",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae5f6933d50835813059f1b3b61dd118236aa49e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Coequalizer` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/example-source-edition-3.md) | 56 | `declaration-track:60dd7ba543ccd3a52c2ba6812ae5906e52c7871f65e803a4b5aa354761f69610` |
| 2 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/example-source-edition-2.md) | 57 | `declaration-track:2d919eb20ae5b5ee68380587486ca7db94f6b9785277dfb60ec858b5ce9ad4d0` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance-source-edition-4.md) | 61 | `declaration-track:f1e50c18ee6c1553969891150cb6b3ce3688356287081e4561678f602b8b738e` |
| 4 | `theorem` | [pi_lift_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pi-lift-apply.md) | 67 | `result-track:3946315f498a4d7cdac123a96a00e03d88ae7900ce5e8762e249f09c2c8e839a` |
| 5 | `theorem` | [pi_lift_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pi-lift-apply-source-edition-2.md) | 74 | `result-track:7322231d1e6631f262dbdfdb7a1d66695c40dd8a5b2a9d27d9eb8a4d8a4588f8` |
| 6 | `theorem` | [pi_map_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pi-map-apply-source-edition-2.md) | 81 | `result-track:a500cb6cdcd00ffca1bc072f13b510c7bb3bbf315671bbc3e139407031fb6596` |
| 7 | `theorem` | [pi_map_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pi-map-apply.md) | 88 | `result-track:82645bb393e190296572c700ffefeb3686779925310f5463cd12bb142ba7080c` |
| 8 | `def` | [terminalLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/terminallimitcone.md) | 93 | `declaration-track:61b67a2572fd36c47300379664e760a61ec658dfd1907ee7c03b2091df00b72b` |
| 9 | `def` | [terminalIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/terminaliso.md) | 106 | `declaration-track:afc66891672ddd697c013b83d945ada12c1e1b87dae211e37e7ff61d6d6fe8cd` |
| 10 | `def` | [isTerminalPunit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/isterminalpunit.md) | 110 | `declaration-track:21c96fa1610dfdcb6296feda20f27f3ff43747318384798b32e88ee95e2e7184` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:60d5cbf79a26179acca4d3349cb2ccc619afe03403a9ed84541a5c5913c9b051` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:f7dfcdbb9b42157388b01669d5996fea838643da970b539a6ca99c17f1b42e11` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance.md) | 122 | `declaration-track:01783d8b18f6010805892dc46304531067c752ac74345236562cc6c83336c11a` |
| 14 | `def` | [isTerminalEquivUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/isterminalequivunique.md) | 125 | `declaration-track:021d83aace69ab845884a381c7268edb137228356e65581833b87d2e8df731a6` |
| 15 | `def` | [isTerminalEquivIsoPUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/isterminalequivisopunit.md) | 131 | `declaration-track:d2b613930c7d9289ead0a4f4219f0bdb669f4defd6eb6e0fe2516f59df815253` |
| 16 | `def` | [initialColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/initialcolimitcocone.md) | 138 | `declaration-track:d130d6c11c0bb2b5fc5fb57e243c53f4c457b9e8a96b51badc52073c982ce9c3` |
| 17 | `def` | [initialIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/initialiso.md) | 149 | `declaration-track:4c53cd8fb895721966dbf510babcc4e263e6d3801c1bfe8ddc125f81cb99bac2` |
| 18 | `def` | [isInitialPunit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/isinitialpunit.md) | 153 | `declaration-track:88e5d4b79737c12d9bb63a74fe975117cc853bed4be014ee50d86bf7146c7400` |
| 19 | `lemma` | [initial_iff_empty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/initial-iff-empty.md) | 157 | `result-track:4c51e3e4167573765b67d6a523c85845ce315f3ff85483a3ad9c6c08864ac8bb` |
| 20 | `def` | [binaryProductCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductcone.md) | 170 | `declaration-track:a38f89a81f9877a4c674fe6e93d1a283f585a9a6f212f82e4b76b10313a8c4d2` |
| 21 | `theorem` | [binaryProductCone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductcone-fst.md) | 174 | `result-track:ea91137b10958f0cf05d388abef7dff7d0875398094a36888b6292cba7d1ffce` |
| 22 | `theorem` | [binaryProductCone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductcone-snd.md) | 178 | `result-track:66e7707c0ae4f2f2b81af191ffd259cee09eb6e303758bce5da0df0acd9db5db` |
| 23 | `def` | [binaryProductLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductlimit.md) | 183 | `declaration-track:7074531e0b4a81099b017823b442c6b5bfb6eb7c8196eef2f77ac824065d008d` |
| 24 | `def` | [binaryProductLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductlimitcone.md) | 192 | `declaration-track:1bd5593e2a0286be3cf656a9ca4a514acbc4796196cd7c315fe86bc2d3c782bd` |
| 25 | `def` | [binaryProductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductiso.md) | 196 | `declaration-track:0f72489202d32a84921ce79e8a9808ef4ef1a3705b13efbe7823e15c7acf4c8e` |
| 26 | `theorem` | [binaryProductIso_hom_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductiso-hom-comp-fst.md) | 200 | `result-track:6772752affbca29ad7980eab3236428a8f0deb6e0624a34580695895734c2e01` |
| 27 | `theorem` | [binaryProductIso_hom_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductiso-hom-comp-snd.md) | 205 | `result-track:5b8df2ea35b9a0a3bb3923a7426d9ccbe0ef6ee5ed9ae4789a12ff46eeff6a25` |
| 28 | `theorem` | [binaryProductIso_inv_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductiso-inv-comp-fst.md) | 210 | `result-track:b1644da6c1a0f8325a275f8fc7f867f6755d8bf516fa3e89bb2c2c73069ea72b` |
| 29 | `theorem` | [binaryProductIso_inv_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductiso-inv-comp-snd.md) | 215 | `result-track:72a05936e80411d1dd8b875dab0bc0c3cb21087e97eb4dcf8a953f29eb3f205a` |
| 30 | `def` | [binaryProductFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductfunctor.md) | 221 | `declaration-track:1d1a84fd92e6cff54a5bb672ce17d4628601e6ef9b0f7d27c0eac1b9fabd40bc` |
| 31 | `def` | [binaryProductIsoProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binaryproductisoprod.md) | 233 | `declaration-track:fae6e795e72471e903753c2cf5f0693734f057d82ecba8e905640dd1af185bbc` |
| 32 | `def` | [binaryCoproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductcocone.md) | 243 | `declaration-track:b644bee0bf2686055a7572b15c85ae868792d8a9af08a879fe87a7e0cbc3fb2e` |
| 33 | `def` | [binaryCoproductColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductcolimit.md) | 248 | `declaration-track:5f1ff2dc40e8406e2994ff040a0ac9c55b3df7a9ae8d5ef80586b26536a6f905` |
| 34 | `def` | [binaryCoproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductcolimitcocone.md) | 256 | `declaration-track:a4698bd0e8df744e298ccf63e0b7e5ed3c5e2ac9a1848a81d6496e53d0eaa2c1` |
| 35 | `def` | [binaryCoproductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductiso.md) | 260 | `declaration-track:5e76591a26f702f977943baa21579fa462201fff7cdd559fbbe70bd50dcdaf48` |
| 36 | `theorem` | [binaryCoproductIso_inl_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductiso-inl-comp-hom.md) | 266 | `result-track:86ce47beb1ae1741d702c5f273f92f183034309119beccd74c2ed2e96d8de273` |
| 37 | `theorem` | [binaryCoproductIso_inr_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductiso-inr-comp-hom.md) | 271 | `result-track:13abfa3000fcd5e2ff08a71eea9b40bf645d55bd8bb679d200f439072f7c31af` |
| 38 | `theorem` | [binaryCoproductIso_inl_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductiso-inl-comp-inv.md) | 276 | `result-track:9d478fbb4da7ef99546771d61fdb478723ac5ef275fc94bf41ff7cd6d662cf86` |
| 39 | `theorem` | [binaryCoproductIso_inr_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycoproductiso-inr-comp-inv.md) | 281 | `result-track:9c0bdae058c63646a76beb912edc2945669d32b8063670fa4cbb8e5ca8bece58` |
| 40 | `theorem` | [binaryCofan_isColimit_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/binarycofan-iscolimit-iff.md) | 287 | `result-track:9d3d2440451f0422e55f3a4892eab35888da37b744f68fef1194e1f017efb1a3` |
| 41 | `def` | [isCoprodOfMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/iscoprodofmono.md) | 335 | `declaration-track:2c7a5c55d5f579446d9993f0a545ac291182afa881e53aa10642fe4efe4e1539` |
| 42 | `def` | [productLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productlimitcone-source-edition-2.md) | 347 | `declaration-track:794d7c48c75ef4c13411d39d6119cd3633f51a8ebd3762820bcbe921b8a9009b` |
| 43 | `def` | [productIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-source-edition-2.md) | 357 | `declaration-track:d492bdc46e71fe49deb701a131a5f9a6ff9e4027ce934d708108e769dd553d48` |
| 44 | `theorem` | [productIso_hom_comp_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-hom-comp-eval-source-edition-2.md) | 363 | `result-track:edee5ee620c439df43cf2ab0a13fbfeee37b4d8899925966659541fb378f4746` |
| 45 | `theorem` | [productIso_hom_comp_eval_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-hom-comp-eval-apply-source-edition-2.md) | 368 | `result-track:517e12291fbac43a57d45e7a61bffdbc8c2819a19251283e900952e916246b45` |
| 46 | `theorem` | [productIso_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-inv-comp-source-edition-2.md) | 373 | `result-track:8556b640a9854e0b9326a3c3d4a8a17ce107e82c865bd6d0513f1355fd689dc9` |
| 47 | `def` | [productLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productlimitcone.md) | 384 | `declaration-track:2be972ce18a78675c37b96b53b72eabc1b8f2e84c0804b03b33741692c3769c4` |
| 48 | `def` | [productIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso.md) | 397 | `declaration-track:6831d51c026ff65032751be151cae3413ee63ca9f70038e0509c5f7372932ea3` |
| 49 | `theorem` | [productIso_hom_comp_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-hom-comp-eval.md) | 402 | `result-track:3a0394c99ae4a1d1ca8991dc307b9dafd014dca349187fdfa2bb405e780b9a22` |
| 50 | `theorem` | [productIso_hom_comp_eval_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-hom-comp-eval-apply.md) | 409 | `result-track:2428ffd8bf1bec853b8465b6ecb2fa3ddd4526d58daf4404b245c876a3c360e4` |
| 51 | `theorem` | [productIso_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/productiso-inv-comp.md) | 414 | `result-track:446c55469e058ff8be64c127d954573a61d20b723798d0149628be0c4620ef0a` |
| 52 | `def` | [coproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coproductcolimitcocone.md) | 422 | `declaration-track:1a562d5b266e0fa029354d4fc7a2b0e5b24fece18b97c4799303cab15dec2311` |
| 53 | `def` | [coproductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coproductiso.md) | 434 | `declaration-track:0eb01fba669c04157458e5a4ac87aa3ac0b1fdcc938f1a493eb1d7292e8d5396` |
| 54 | `theorem` | [coproductIso_ι_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coproductiso-comp-hom.md) | 438 | `result-track:ee6de5c875cd4e855baa3583f296c0a4f0ddcbe044516d48815f107c567fff08` |
| 55 | `theorem` | [coproductIso_mk_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coproductiso-mk-comp-inv.md) | 444 | `result-track:094b9273c1b1f8ccb6847690d5314af76d699842e77781c3cff23e40e47f0785` |
| 56 | `def` | [typeEqualizerOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/typeequalizerofunique.md) | 457 | `declaration-track:d7c0bb72be027fd9e8cac6ed222178ab163e70a46dc19459c504f7cd0c26404a` |
| 57 | `theorem` | [unique_of_type_equalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/unique-of-type-equalizer.md) | 470 | `result-track:f1e627690ec9238d26466da0e0b963d849540c72e61a2c67059aa8d802d8e7c3` |
| 58 | `theorem` | [type_equalizer_iff_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/type-equalizer-iff-unique.md) | 482 | `result-track:fd76c6793bb044e6fcb0566795733363b6e54cc48d2db2f117caed1e43b934d1` |
| 59 | `def` | [equalizerLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equalizerlimit.md) | 488 | `declaration-track:2eb3de529dd7d1893bdb206fe73bb846b1c11b244f3baee09366efac7a337dfd` |
| 60 | `def` | [equalizerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equalizeriso.md) | 498 | `declaration-track:0f4f6cfbff94dcab07928fbdcfe77abee1efdaf3b3745d7441efe990aa4f68f2` |
| 61 | `theorem` | [equalizerIso_hom_comp_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equalizeriso-hom-comp-subtype.md) | 503 | `result-track:ba8faa04cf21ac5444f113673d5b73316e372226536815c1a263c23b595eb85f` |
| 62 | `theorem` | [equalizerIso_inv_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equalizeriso-inv-comp.md) | 507 | `result-track:21640338fec8acd02b00e2773367a95b255f1e2265c8c5e105584ad57206caf0` |
| 63 | `def` | [coequalizerColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coequalizercolimit.md) | 519 | `declaration-track:237616aa9f9e70aa345fe970c2deb36c3d735df960ff5d409aef233458d62942` |
| 64 | `theorem` | [coequalizer_preimage_image_eq_of_preimage_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coequalizer-preimage-image-eq-of-preimage-eq.md) | 531 | `result-track:63fca089493f181e8f1dec57e603c90c88e101dfbe247fb935089ea5ddb39bf4` |
| 65 | `def` | [coequalizerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coequalizeriso.md) | 558 | `declaration-track:dbbb4e0165a3281e25ba5e42ab1bdc63db79c3a99a358136be01e4d13f3d742f` |
| 66 | `theorem` | [coequalizerIso_π_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coequalizeriso-comp-hom.md) | 562 | `result-track:39b11de24c22fff52b1ff8220e0126519ffec7809aefac9f466bcfce0c51ad8c` |
| 67 | `theorem` | [coequalizerIso_quot_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/coequalizeriso-quot-comp-inv.md) | 568 | `result-track:f75e37fa66393e1f2607f0b3a9647fb486522ad12094051208181d625d1680b4` |
| 68 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance-source-edition-3.md) | 577 | `declaration-track:8199dc5f1b01ed10e8645994b7262e622deacd4a56df4924c97523e619180880` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/instance-source-edition-5.md) | 583 | `declaration-track:f4aac4dc6c3df52f85c7121bca006dfb95c7cc2ee896c372b249f3d53ebd9be5` |
| 70 | `abbrev` | [PullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackobj.md) | 592 | `declaration-track:529b7a5d89b2fa20e5069a5a1e4708067114e4546300619fb2bcce6915955838` |
| 71 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/example.md) | 596 | `declaration-track:02959cb52578b0461713cec4d97f0a8b14841eb9c0bf483a72680fa4931d5175` |
| 72 | `abbrev` | [pullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackcone.md) | 602 | `declaration-track:b17189e1ab987b5647b7787255c6f2e1ca3f923f2b052218225439b7a6d1d65f` |
| 73 | `def` | [pullbackLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbacklimitcone.md) | 609 | `declaration-track:5287c178979b2ed1bda8239420dcf88c23c4933fc7a64190171dcaacba0da9ee` |
| 74 | `def` | [equivPullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpullbackobj.md) | 633 | `declaration-track:e71db7a4a6a471dafa845e18d8806fb529108be14585c2eb10e80b332d333c40` |
| 75 | `lemma` | [equivPullbackObj_apply_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpullbackobj-apply-fst.md) | 637 | `result-track:8c93d177fd05bc764567584b699edb8be85615d5b354f3e240853b447f9e3b04` |
| 76 | `lemma` | [equivPullbackObj_apply_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpullbackobj-apply-snd.md) | 642 | `result-track:538c68b953423c417795affc3b9cef19269f3f0ea5510b5a7b9f7fa440076990` |
| 77 | `lemma` | [equivPullbackObj_symm_apply_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpullbackobj-symm-apply-fst.md) | 647 | `result-track:c647f4560b8a6ebe3eafa766fd170067e56a8dee5067c72d5d978eabe219b933` |
| 78 | `lemma` | [equivPullbackObj_symm_apply_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpullbackobj-symm-apply-snd.md) | 653 | `result-track:80f07266a98aa70146e36ec09d5389c2ea696db2c5fd85f49e31a6a07d3a3378` |
| 79 | `lemma` | [type_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/type-ext.md) | 659 | `result-track:f03e5bb21afc256d84b93a9b0a31a60d5559ad2034df1fc99853030ae6f216a7` |
| 80 | `def` | [toPullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/topullbackobj.md) | 669 | `declaration-track:1252014f5132ae63b065067f1800fa9596dcddaa29a1b650519cf213035224e9` |
| 81 | `def` | [isLimitEquivBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/islimitequivbijective.md) | 674 | `declaration-track:f28348b7b7ff480f60ded39287ab2d029661a9248e1ed563035374f33923569c` |
| 82 | `def` | [pullbackIsoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback.md) | 698 | `declaration-track:ccafed2821a394bc640f44dff759dac0417101858728caa30cd7454b086ab718` |
| 83 | `theorem` | [pullbackIsoPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-hom-fst.md) | 702 | `result-track:90d1886de6c7ccf7d518b8bef62414e682c11fc263c0178c91eb65a22c9c1ea4` |
| 84 | `theorem` | [pullbackIsoPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-hom-snd.md) | 707 | `result-track:45ef1c36f1b0f3f54db945f388a71b5802811ac6a8197a8b71c0e4582b05b1db` |
| 85 | `theorem` | [pullbackIsoPullback_inv_fst_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-inv-fst-apply.md) | 712 | `result-track:12d5e6399da72c82375304b451716cf346a569158ba83253c0f292d927f52768` |
| 86 | `theorem` | [pullbackIsoPullback_inv_snd_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-inv-snd-apply.md) | 717 | `result-track:ec6596cfe9229da8311ab07f58362903154cdc0e13212b47c77959600e94dca4` |
| 87 | `theorem` | [pullbackIsoPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-inv-fst.md) | 722 | `result-track:36868ab289843a1419f5dc9f292029906a6a46dea9556124e02ea528b9de8bc9` |
| 88 | `theorem` | [pullbackIsoPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pullbackisopullback-inv-snd.md) | 726 | `result-track:5b6597243a3fe2345d201f32779024daf4b6a11eb36c22d68717b5bdb915f148` |
| 89 | `inductive` | [Pushout.Rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushout-rel-source-edition-2.md) | 737 | `declaration-track:ed36b2b70bca8b80db9c912145c56544dcb0d332ba068122831dbf7794870a56` |
| 90 | `def` | [Pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushout.md) | 741 | `declaration-track:58fadf664664148c44a19cd2926be91ea196e508b2d386cec98fdf47e33e8aac` |
| 91 | `inductive` | [Pushout.Rel'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushout-rel.md) | 745 | `declaration-track:bc12bd2e9aa494db5296445be400f90adf9dbd9d3e17923942a235bb24f65272` |
| 92 | `def` | [Pushout'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushout-source-edition-2.md) | 752 | `declaration-track:91c1df7cf67a2c54b4ee4f3c166a13584b95b8d9a4152b55f6c933cb8479a753` |
| 93 | `def` | [inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inl.md) | 758 | `declaration-track:cecc5d9c144318b42bb813cb19a6fd1f4fa31cf8208f9f8863d884c91c9e0637` |
| 94 | `def` | [inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inr.md) | 762 | `declaration-track:4edd12f8e8f59031adf332f4341697dfc158c06373e5cf51e3b7b841450b63c7` |
| 95 | `lemma` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/condition.md) | 764 | `result-track:b942ff7e41d12a321ff709812f982ff1debda6fc6de78e733e325fc8dd46acbb` |
| 96 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/cocone.md) | 770 | `declaration-track:545e8cb336c29d16e46aee3b010f517752344cd081285e66dd192e2b186ff271` |
| 97 | `def` | [isColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/iscolimitcocone.md) | 773 | `declaration-track:bd72b1f6e9191a0c806ada20a0692578d2e8bc84a673805e82dcb479ddb2d35f` |
| 98 | `lemma` | [inl_rel'_inl_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inl-rel-inl-iff.md) | 784 | `result-track:02178dad16469e7c01582dda1745670eb87e74bb4b21bb9e38a459f5bb389e0e` |
| 99 | `lemma` | [inl_rel'_inr_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inl-rel-inr-iff.md) | 796 | `result-track:337f8debb2da127451e5f770199cf5ad47939ddfbeccab5d20751e4e62cc0b8e` |
| 100 | `lemma` | [inr_rel'_inr_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inr-rel-inr-iff.md) | 806 | `result-track:f5d1a3d8c3d95474ae2d004a466af5e2c230b77b6fec75374a15073d02bda19f` |
| 101 | `lemma` | [Rel'.symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/rel-symm.md) | 816 | `result-track:45a77db051cb80a98ca57c500b911df08507bc3961f236294a5c75517a4962e0` |
| 102 | `lemma` | [equivalence_rel'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivalence-rel.md) | 826 | `result-track:00fe81522d108ecfb41c8ab3250fee04e7a0e84261b95c21b8bf721c21c01bd2` |
| 103 | `def` | [equivPushout'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/equivpushout.md) | 864 | `declaration-track:f971b87751cc7e8a7a54f26aa913601fad9b80155952fc7b6e21d985a71c0e23` |
| 104 | `lemma` | [quot_mk_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/quot-mk-eq-iff.md) | 885 | `result-track:dbb62669f38f28ff2819422be0a4f3b0ff4af937fd19fc9bd3d3098b34bacca9` |
| 105 | `lemma` | [inl_eq_inr_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/inl-eq-inr-iff.md) | 891 | `result-track:669757b5a4ea898ead30d5ac20a271e4300c34204bc279c9429f1e476363457e` |
| 106 | `lemma` | [pushoutCocone_inl_eq_inr_imp_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushoutcocone-inl-eq-inr-imp-of-iso.md) | 905 | `result-track:76b252216efd153468bf0c94e5db510b47c4cc27bff6c32ab507f65fa6c9a7e5` |
| 107 | `lemma` | [pushoutCocone_inl_eq_inr_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushoutcocone-inl-eq-inr-iff-of-iso.md) | 912 | `result-track:825bf85a6bee7c09fa7dbc02b2d9ca24603378ce884c80bae798010796925e7b` |
| 108 | `lemma` | [pushoutCocone_inl_eq_inr_iff_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/pushoutcocone-inl-eq-inr-iff-of-iscolimit.md) | 919 | `result-track:fab1a9b74d668d174f86887a2cc53fb18676135157e99d0201b26e96b134e483` |
| 109 | `structure` | [MulticospanIndex.sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/multicospanindex-sections.md) | 939 | `declaration-track:4e6ad8cf48af7681223c536ca017e30b6e613fab0331fb041e1c67cd6290d87d` |
| 110 | `def` | [MulticospanIndex.sectionsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/multicospanindex-sectionsequiv.md) | 947 | `declaration-track:436b917079f51670670f2170cd1b2692ef927f8d10a04425013325ead6a4258c` |
| 111 | `def` | [toSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/tosections.md) | 975 | `declaration-track:ba4e929cca5b665bba496b75d37904d8fd76a0b70dfb18f246fd4670a8b39afb` |
| 112 | `lemma` | [toSections_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/tosections-fac.md) | 979 | `result-track:338b62a7de8caf9af6ef2a07d64ddb4951984cbd9bf41aa71e61552f1c8a3b17` |
| 113 | `lemma` | [isLimit_types_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/islimit-types-iff.md) | 983 | `result-track:760f37144c3ba6dc82cdf92d56d6a9b0d21892e9f46ae14216f65e691cb3dddc` |
| 114 | `def` | [sectionsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/sectionsequiv.md) | 992 | `declaration-track:92db98a3cdc6ec48ca2d69893d8fd9d7e9a6ecde22f2dedd2d6a09d2d99c4ccf` |
| 115 | `lemma` | [sectionsEquiv_symm_apply_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/sectionsequiv-symm-apply-val.md) | 996 | `result-track:c8fd07685e283f984ef8104956b6fc051ca2ccd4689d70a93ae0f5396dba7e99` |
| 116 | `lemma` | [sectionsEquiv_apply_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesNamespaced.lean/declarations/sectionsequiv-apply-val.md) | 1000 | `result-track:e07e51d2ecd24bd61dd5c6ab554ad1c42a7d5abbc4b9f27660c4a5b401de57d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=388508b4bf457dcd9f0bd343d6231f8f508740ebcf3882da650b175f75afa154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
