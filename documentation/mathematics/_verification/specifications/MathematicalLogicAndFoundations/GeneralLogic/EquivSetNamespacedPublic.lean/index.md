# Verification target: Equiv Set Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38f9c799817239ac2260ce64982195b4b476715",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38f9c799817239ac2260ce64982195b4b476715`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean.json)

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
| 1 | `theorem` | [range_eq_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/range-eq-univ.md) | 46 | `result-track:761a952cd9780cef37be8208178ed47d4c9ec3ea2c9c44f1bc36f96d3e4cd9f8` |
| 2 | `def` | [equivOfEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/equivofeq.md) | 59 | `declaration-track:ae6741e19af47b817d372701c46ac1d23cb6f21972e94ddf1fa1d86353ac401a` |
| 3 | `lemma` | [strictMono_equivOfEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/strictmono-equivofeq.md) | 61 | `result-track:d25e9a21ef2994ac67a7fe2aed20d137dbe7189885c077efdfabc068cc4a4a35` |
| 4 | `theorem` | [range_eq_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/range-eq-univ-source-edition-2.md) | 74 | `result-track:f177408803f801df2980676e3a432f70779823ea60316080f90d8759bb12308b` |
| 5 | `lemma` | [image_symm_eq_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-symm-eq-preimage.md) | 76 | `result-track:b2da1c0e926c39a85a1f2a72fb7c32ce2a7b4050fda0e741f937794b1614ad81` |
| 6 | `lemma` | [image_eq_preimage_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-eq-preimage-symm.md) | 79 | `result-track:8a314ecd020f1e9f084c53a4d0c67ec571f49cae90160ee137674ca18783cb3a` |
| 7 | `theorem` | [Equiv Set Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rangeequniv.md) | 83 | `result-track:b42d342bed411b0982b04a599edad102ff0a7ca21874419098494a5073446a86` |
| 8 | `theorem` | [symm_image_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/symm-image-subset.md) | 89 | `result-track:5b7dfe10790ccac7a8930f6c3c90ea1f1f07ac5783d72456df6f0aa93581cb38` |
| 9 | `theorem` | [subset_symm_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/subset-symm-image.md) | 94 | `result-track:e11da9b8766f8bc6f39f89eeb65065b0d0cc6f86c1bb3326144af64b4a862acc` |
| 10 | `theorem` | [symm_image_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/symm-image-image.md) | 101 | `result-track:f465f87eaefad94ec4721b7f075ad73c7719ab5217bfac979f4abcfba380d50a` |
| 11 | `theorem` | [eq_image_iff_symm_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/eq-image-iff-symm-image-eq.md) | 104 | `result-track:8b3211b81ac17d330fd6e18a32b7bc5347464f4d652aae18fa262ee021aef928` |
| 12 | `theorem` | [image_symm_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-symm-image.md) | 109 | `result-track:c5e3cc1e7026356d9067a1fa33fa53eb7ae7d22d15ab09e3fa99ef849e2c2ad3` |
| 13 | `theorem` | [image_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-preimage.md) | 113 | `result-track:ad2e72b5a30490f106d33ab5af17a2e634881e030364166e46692649f90685c6` |
| 14 | `theorem` | [preimage_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/preimage-image.md) | 117 | `result-track:45d59773fe129fdd99eb43c758473fc59cfe1aa6c28cf551eb237e0ef30c5aaa` |
| 15 | `theorem` | [image_compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-compl.md) | 120 | `result-track:57f95b3a5e7d30801ff42debc37dde84e30a3367a89815c36f8747cadc73ed0b` |
| 16 | `theorem` | [symm_preimage_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/symm-preimage-preimage.md) | 124 | `result-track:41f832cc44f51db83ffe1fcb82ca247a1dcc3da1989c9c443bf9689395da810f` |
| 17 | `theorem` | [preimage_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/preimage-symm-preimage.md) | 128 | `result-track:ce037b919bcb74ab2f87b542a5ae0f8c574f8cc6b13a4891db38bdb9020597bc` |
| 18 | `theorem` | [preimage_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/preimage-subset.md) | 131 | `result-track:77f90e3b3ede2315fcd0fc88531c79b83c17b600e75a908138e5cc1755643562` |
| 19 | `theorem` | [image_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-subset.md) | 134 | `result-track:d9df4ac7e85460da5cbd841fcb4d27a5085e3263b53c0d0fc66af6f7d87a3af3` |
| 20 | `theorem` | [image_eq_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-eq-iff-eq.md) | 138 | `result-track:d3179fb25317f7317e1189ec78e6c60e67b165b348868b2d36100285be9e49a9` |
| 21 | `theorem` | [preimage_eq_iff_eq_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/preimage-eq-iff-eq-image.md) | 141 | `result-track:4bffdb9220f14bf39e3d84ee0ace3ce5503a49e89583cb97780ccd885b92433a` |
| 22 | `theorem` | [eq_preimage_iff_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/eq-preimage-iff-image-eq.md) | 144 | `result-track:96f51cf153b4ceae06694b52adf3e3c7234bbd09e5547dc94151c8cc730f6e4c` |
| 23 | `lemma` | [setOfPred_apply_symm_eq_image_setOfPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/setofpred-apply-symm-eq-image-setofpred.md) | 147 | `result-track:3cf9d239799a4ad559b8e3ae0c4e35b4286d085769d82d91124934031a0b351a` |
| 24 | `theorem` | [prod_assoc_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/prod-assoc-preimage.md) | 155 | `result-track:f6a83d7a3a0510ef1fe433fe6cbc53850385584614659aae8f9b66ef54fd97c0` |
| 25 | `theorem` | [prod_assoc_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/prod-assoc-symm-preimage.md) | 161 | `result-track:e2241e33e6c68d1dd958dc204e02a1bbafbb6460cef6816ae61c43810f98a6c5` |
| 26 | `theorem` | [prod_assoc_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/prod-assoc-image.md) | 168 | `result-track:024ffae5cdcc1effcc6d9d0f5014631966f9313529b326cbc53ade6ac341e1e5` |
| 27 | `theorem` | [prod_assoc_symm_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/prod-assoc-symm-image.md) | 172 | `result-track:6757076bfbe1de189df3541c9353d803502fdb35f7dd1e05357a082ab3af3fd3` |
| 28 | `def` | [setProdEquivSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/setprodequivsigma.md) | 177 | `declaration-track:93149446526b3dbc48177de112dd82c55f107467851a708b420124ffa4c673b1` |
| 29 | `def` | [setCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/setcongr.md) | 186 | `declaration-track:fc6428e5a24161e3b58c7e65cf22603faa5a96956bb04ec65b7faec0d7a5906a` |
| 30 | `def` | [image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-source-edition-2.md) | 194 | `declaration-track:f92ac245247b77642d8cc3ae1172d01139a2c2cfa5a119ee2d36cc9115c71f57` |
| 31 | `lemma` | [image_monotone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-monotone.md) | 208 | `result-track:07a17ed5fdcdfebc23dae0c2bd48df4eb80eea1d49260d04b3ef1530b177df74` |
| 32 | `lemma` | [image_antitone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-antitone.md) | 211 | `result-track:4a4249a19e86667919476d9d0ab7abca7fb20de2b7d0663316f18df4a6847509` |
| 33 | `lemma` | [image_strictMono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-strictmono.md) | 214 | `result-track:53100d61d6bd2e493eb4c8345e7fd33bbc4bd672e02bd493687f8301f2b2097e` |
| 34 | `lemma` | [image_strictAnti](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-strictanti.md) | 217 | `result-track:16adc799745f0f3f00df1998fc7d709e11d876e3bae4b3e903e1d3110b67be11` |
| 35 | `def` | [univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/univ.md) | 226 | `declaration-track:0ad9d53eee8b20dc9c646d2ceaa1be4b602375d0935af619f3b988704558c4c4` |
| 36 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/empty.md) | 230 | `declaration-track:25049541aa7537aa2582b49db3d4b10713fe21107a9f7b0ff498d5c575a20945` |
| 37 | `def` | [pempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/pempty.md) | 234 | `declaration-track:332e1e9e4bf94cbd427e7a67bbc646eb0ca1e9461dcf5c1a8ce884740cf1d884` |
| 38 | `def` | [union'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union.md) | 239 | `declaration-track:5b366abd59a8007903cfaa4f0fee6664f893aed335cfc006916a019169bc23a5` |
| 39 | `def` | [union](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union-source-edition-2.md) | 253 | `declaration-track:bdc016e75d6e6a0ff543477d2f6d781f8c757b7e2606700c56e3e6e71e91cdd4` |
| 40 | `theorem` | [union_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union-apply-left.md) | 257 | `result-track:928c4d17ff55e9f42c98e8f8f803ea1921023424e03ef3e84306dccd20dbdce4` |
| 41 | `theorem` | [union_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union-apply-right.md) | 261 | `result-track:91f16b1c7d8bb379cafd039c7d2be444c4762cf425b9b2177ed4a85535d8534f` |
| 42 | `theorem` | [union_symm_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union-symm-apply-left.md) | 266 | `result-track:d66f9f0d8dec072e428d7c59c1c97df828490efe1ea3aefacdade40fc81e3e16` |
| 43 | `theorem` | [union_symm_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/union-symm-apply-right.md) | 271 | `result-track:3ef9c461fa427dcffb620907e6f134ce85bbfb8102e0ad9a49275c49c07787c9` |
| 44 | `def` | [singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/singleton.md) | 276 | `declaration-track:dab18c26f9a62a6e4f552a64007e5b5260c407b4b57501ccb2fd8b379ca32922` |
| 45 | `def` | [insert](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/insert.md) | 286 | `declaration-track:7d1712122830282aa83d499f35eeefc13857200012add76a825353b80a936c69` |
| 46 | `theorem` | [insert_symm_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/insert-symm-apply-inl.md) | 294 | `result-track:a2156683cd26b4e1bc819bf1de6c5d158ebc6332a9c98225a79e5c0f8ef116ad` |
| 47 | `theorem` | [insert_symm_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/insert-symm-apply-inr.md) | 299 | `result-track:15f18fb0c51259588635ac7632c26cbd6158bf91d13e1f17506c563067a1c643` |
| 48 | `theorem` | [insert_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/insert-apply-left.md) | 304 | `result-track:6cbc5d89f7b9066405bee2b2cef8f873d552f789597dd2c24a0cf94288070c84` |
| 49 | `theorem` | [insert_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/insert-apply-right.md) | 309 | `result-track:2bfa71fda0a48595a0f6d103f3f192779c33c90c84b69c496f6b4ac400b8e83d` |
| 50 | `def` | [sumCompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl.md) | 316 | `declaration-track:b20356e956148f3c4b65986884793119ed93d02bdd1da2766413a182e40fdfd8` |
| 51 | `theorem` | [sumCompl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-apply-inl.md) | 320 | `result-track:d1ef552656e16f31347ac1c37df3dfb876c4f281a5acd247caf47cac4ddd482f` |
| 52 | `theorem` | [sumCompl_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-apply-inr.md) | 325 | `result-track:e456943907244a267e9f6ab838e267944303da280808e3cebb481313ab07c237` |
| 53 | `theorem` | [sumCompl_symm_apply_of_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-symm-apply-of-mem.md) | 329 | `result-track:37b4eeee91f64dc6fe5f2df540bc50762c0a5286e1c7284b2b229a14f6db5a0a` |
| 54 | `theorem` | [sumCompl_symm_apply_of_notMem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-symm-apply-of-notmem.md) | 333 | `result-track:b71093ab8e2df777608d7bae282a5d48af638a1f471e8b4a48692c9a9066c368` |
| 55 | `theorem` | [sumCompl_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-symm-apply.md) | 338 | `result-track:7e1cf4d76eb7e29d6afd0bf16d48075dac86e3b9ed7b2942028e7f574480bcc2` |
| 56 | `theorem` | [sumCompl_symm_apply_compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumcompl-symm-apply-compl.md) | 343 | `result-track:40cad01400835c04c39d364470c0edeb73f9598ad7c74d181d55d1770e06844e` |
| 57 | `def` | [sumDiffSubset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumdiffsubset.md) | 349 | `declaration-track:9ca6c6b417707b5269c2ad3df1d2e8e3901587c07fc36982008d006a72f937e4` |
| 58 | `theorem` | [sumDiffSubset_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumdiffsubset-apply-inl.md) | 357 | `result-track:663d1cb7295fff7ab8881f6b49b322a240acd71c0d830ce36d7f17b2a245fdc8` |
| 59 | `theorem` | [sumDiffSubset_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumdiffsubset-apply-inr.md) | 362 | `result-track:576cc79be7e8969eefff89dbb8204ccdf07aca3d787c4350ed7377a5acc0c055` |
| 60 | `theorem` | [sumDiffSubset_symm_apply_of_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumdiffsubset-symm-apply-of-mem.md) | 366 | `result-track:caec144d789744b58289a9eb5600131b5869314e83b4f1ef43d775aea9df4f82` |
| 61 | `theorem` | [sumDiffSubset_symm_apply_of_notMem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sumdiffsubset-symm-apply-of-notmem.md) | 371 | `result-track:f7e39c36ebeef3b0925a1a537a11d6f06c5eec5b5935b2baa6132e370a71daea` |
| 62 | `def` | [unionSumInter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/unionsuminter.md) | 378 | `declaration-track:d95df4c74b53d7092ce7570e9cfb52937e8cdb2c39246cf4dac2705cb2403cc2` |
| 63 | `def` | [compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/compl.md) | 398 | `declaration-track:e5c8cf95f01dbe5020980743e151df98b7ee549a9f7b2198ff938c812f3f632f` |
| 64 | `def` | [prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/prod.md) | 432 | `declaration-track:a93ed8be69acfeceb0d861d9f9bf9550c98016751bb609a00264c51b2f96197d` |
| 65 | `def` | [univPi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/univpi.md) | 437 | `declaration-track:5b236812db6a441ad1d64bf1e626d27590ab65cfb1ec53badf6304c89f802a15` |
| 66 | `def` | [imageOfInjOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/imageofinjon.md) | 443 | `declaration-track:862609fc16dc9039ae358549b9ba4d9366543ef59b376e8312779d87b6c38adc` |
| 67 | `def` | [image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image.md) | 454 | `declaration-track:1476aba2442a682f096d8337f60fede6990e6f5c8e5f0f14e1d77fc81a269011` |
| 68 | `theorem` | [image_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-symm-apply.md) | 458 | `result-track:822b939ecda3d7e6e4c08322be8452f42103c674f2f836980e07cb7c4a8e55d5` |
| 69 | `theorem` | [image_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/image-symm-preimage.md) | 462 | `result-track:67f68b0e49ad4d7989a28db98cab3a1e6387c84bd7c35e9747e3cf44417aa598` |
| 70 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sep.md) | 469 | `declaration-track:d25c60ef3fe2c6a13ce4f4c6bbde5b703c817044709ded00b86c9af16940c3a0` |
| 71 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/powerset.md) | 474 | `declaration-track:40d6e9aad7e64acced59ec0aa8dd2ee3df9501d357bc649f6a81e6ba9663d246` |
| 72 | `def` | [rangeSplittingImageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/rangesplittingimageequiv.md) | 485 | `declaration-track:32e16a35f82a94a8578a621b0877e8263acc24e6b42525ff84263c6fdf831184` |
| 73 | `def` | [rangeInl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/rangeinl.md) | 499 | `declaration-track:709c7185806217bc4cebe8b2ccc7bb8671075b573b9ed0a980b481d777dd81fa` |
| 74 | `lemma` | [rangeInl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/rangeinl-apply-inl.md) | 506 | `result-track:5e35e6589fbf73793442769fdf600f8dab61fed318b2df846f55a34f0ba713fb` |
| 75 | `def` | [rangeInr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/rangeinr.md) | 512 | `declaration-track:7f58a3537b846f66b6ebbfd396568625199405a4036fe4edd1e60d0ea7f2cf64` |
| 76 | `lemma` | [rangeInr_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/rangeinr-apply-inr.md) | 519 | `result-track:3efcdabba0275913bfe07bfa57e4ad9139e0ad3feeb8007f2e608937738d18c7` |
| 77 | `def` | [ofLeftInverse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofleftinverse.md) | 533 | `declaration-track:ef712c3545e69af613a775e07d931fdae980465ef285e51da23acdc2602b8109` |
| 78 | `abbrev` | [ofLeftInverse'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofleftinverse-source-edition-2.md) | 546 | `declaration-track:fa9e39229a8672c0ed0afa180d14f61d61d0657697c594cf24385db3353e2e43` |
| 79 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofinjective.md) | 552 | `declaration-track:f39ab7ede184cf824f6879b0a76dcbdbb5bd9042379d8dd55adf1c991d93e84a` |
| 80 | `theorem` | [apply_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/apply-ofinjective-symm.md) | 555 | `result-track:604d0138ea39584f53758707e80116d155ceca01b219adc89e4c57a1cc181eb7` |
| 81 | `theorem` | [ofInjective_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofinjective-symm-apply.md) | 560 | `result-track:1a754b4426f72244d904d1d07287147df3ae25fff41035a2d224648e7f479c91` |
| 82 | `theorem` | [coe_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/coe-ofinjective-symm.md) | 565 | `result-track:5fbce02815563e2e239723a5175a754e05f3487d64c47593604228780939ce8a` |
| 83 | `theorem` | [self_comp_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/self-comp-ofinjective-symm.md) | 572 | `result-track:4b4971877e2aa7853a9812d741df9fa67690d136735bdb902693800080d06a7d` |
| 84 | `theorem` | [ofLeftInverse_eq_ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofleftinverse-eq-ofinjective.md) | 576 | `result-track:664fd4c6906325b753664f7ab78762352c5fecc4bf4654c13f9998e923a063a9` |
| 85 | `theorem` | [ofLeftInverse'_eq_ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofleftinverse-eq-ofinjective-source-edition-2.md) | 584 | `result-track:70f805abd2b9096af1ac3c1b39a1cf7bb41bdac5a4430216a70f772e83e2f6f4` |
| 86 | `theorem` | [set_forall_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/set-forall-iff.md) | 589 | `result-track:8553638b36647f97d87f7357bbf9337685e2f7a8f6774747fba947e7e5be708e` |
| 87 | `theorem` | [preimage_piEquivPiSubtypeProd_symm_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/preimage-piequivpisubtypeprod-symm-pi.md) | 593 | `result-track:0e938ba52a4307249383b98ba5bca525c09d6ec9872159ceab6faabedd9c0480` |
| 88 | `def` | [sigmaPreimageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/sigmapreimageequiv.md) | 606 | `declaration-track:140864353f0bddae446d09b79171764e9f19bbf77275cc68ab66532db9be5dbd` |
| 89 | `def` | [ofPreimageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofpreimageequiv.md) | 612 | `declaration-track:818a97d5e3edb2c00f7db31533424b4041f577fbe87fb864c53516e44a19beb7` |
| 90 | `theorem` | [ofPreimageEquiv_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/ofpreimageequiv-map.md) | 615 | `result-track:5c2384dd25f826d26a48a08ab9ef27b1845624c5ac40efbc845da5ed6b0c3354` |
| 91 | `def` | [Set.BijOn.equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/set-bijon-equiv.md) | 623 | `declaration-track:6b53197970014c040057ed8df839aa13b67cc294966218f6d657ff12cdc2368b` |
| 92 | `theorem` | [dite_comp_equiv_update](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/dite-comp-equiv-update.md) | 629 | `result-track:b24195cf435e72a13e0d54770f34130c26d8cab4838faa8f6fc347522cbc26cd` |
| 93 | `theorem` | [Equiv.swap_bijOn_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/equiv-swap-bijon-self.md) | 645 | `result-track:4e9fb04defd54525512fecbfb459a0af6d83e80e5fa2b352ce0e5815d7c243be` |
| 94 | `theorem` | [Equiv.swap_bijOn_exchange](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedPublic.lean/declarations/equiv-swap-bijon-exchange.md) | 648 | `result-track:74ec878ac482cf97d6677964cec1571efac4206aaa34ea99a20fb27e8bc2f84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f13500e7c92ae303a0a1663e1cfddeb74c6643cc9446671a8d17ab02ef5d0633 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
