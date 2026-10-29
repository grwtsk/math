# Verification target: Abelian Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f80d97203b5dee61a6e48759746642c5befc84d",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f80d97203b5dee61a6e48759746642c5befc84d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean.json)

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
| 1 | `class` | [LieModule.IsTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liemodule-istrivial.md) | 48 | `declaration-track:4490902578c95f528487f3d39b9f8ba534a21ac1fdff30516f530aa1b67af358` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/trivial-lie-zero.md) | 51 | `result-track:a09dd4b36c149dad70007c77e5d2711433d2a923d61c6d2dee546aad20b38d96` |
| 3 | `instance` | [LieModule.instIsTrivialOfSubsingleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liemodule-instistrivialofsubsingleton.md) | 55 | `declaration-track:3089070f16872e8e776a1b10b7ea41db8ac238d601aba62df56ecc8fe754d8bd` |
| 4 | `instance` | [LieModule.instIsTrivialOfSubsingleton'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liemodule-instistrivialofsubsingleton-source-edition-2.md) | 59 | `declaration-track:a92e03a1a736723fc12c2f00b17de4de7371b6a172bae4978e2beb0cf71ac519` |
| 5 | `abbrev` | [IsLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/islieabelian.md) | 64 | `declaration-track:b011538942d9a6fb4a6e2a04710feb79f54af1c05b764cf9c84ac587fccc0c50` |
| 6 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/lieideal-islieabelian-of-trivial.md) | 67 | `declaration-track:579a3c4e7fbea5e1e12a3545f73a453aef2c1436614da6dc2741cc009b6064d0` |
| 7 | `theorem` | [Function.Injective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/function-injective-islieabelian.md) | 71 | `result-track:198c213412eca2c71da076a9f1ef74442ce5cc9dfaa201d9f0b9dadea9dd5cd2` |
| 8 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/function-surjective-islieabelian.md) | 80 | `result-track:86ba6c5d7bd733186520ecab1c46b969e4572729911f32d052f57af32b377eb9` |
| 9 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/lie-abelian-iff-equiv-lie-abelian.md) | 88 | `result-track:6c1352b2715ab78311c6a1cbf8724dd0cb04859678f27db25f5db18c29d91dfd` |
| 10 | `theorem` | [isMulCommutative_iff_isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/ismulcommutative-iff-islieabelian.md) | 93 | `result-track:c392b55156841aa795dc28fa827411a343252cfceab82c8771b3d6a9ded88524` |
| 11 | `theorem` | [LieSubalgebra.isLieAbelian_lieSpan_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liesubalgebra-islieabelian-liespan-iff.md) | 101 | `result-track:2381299b6b8ea21b2a3a88b5e40b182cc185648b0a90c2236dfdfdfb2e6a3d52` |
| 12 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/ker.md) | 147 | `declaration-track:e34164f4482378f5b6d53b9ebdf21d6184b698f7cb3e704ec11fe598deaa0cad` |
| 13 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/mem-ker.md) | 151 | `result-track:2e870f3e7c05297acae9c2bb5c3ac2e0566661e6b8a6c6c3f231a84a2adbe0f5` |
| 14 | `lemma` | [Abelian Namespaced Public](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-liemoduleist.md) | 155 | `result-track:d5245a8fac02f4c2fd68629baec077210545504434649e27e828a5f484ce1502` |
| 15 | `lemma` | [isFaithful_iff_ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/isfaithful-iff-ker-eq-bot.md) | 164 | `result-track:28157977427a0a0b8976979bbfdd88f75118ff759eacdc1cd71cb3b5c5b88d96` |
| 16 | `lemma` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/ker-eq-bot.md) | 168 | `result-track:821d476fbb1276dd1de91ffb1508dc511df70fc2964331a4ef1d696a23367dcc` |
| 17 | `def` | [maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivsubmodule.md) | 173 | `declaration-track:d3ab215d96ad48a558bd09fbedc29bfee7da8f4176ab2d928540ae7f8f374d54` |
| 18 | `theorem` | [mem_maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/mem-maxtrivsubmodule.md) | 181 | `result-track:b47c8aa2c8e350cae61bacae66cc2b704988b9a2f07e23b6874cbd69b526baad` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 184 | `declaration-track:f3e595bc837a998d65e347c262a79948601549301680fc9e3876b671c4845c93` |
| 20 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot.md) | 187 | `result-track:4c58751096f1d5b58c72420146935112c38006ac902372eacf471277322cecef` |
| 21 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/le-max-triv-iff-bracket-eq-bot.md) | 194 | `result-track:e5c765e0e46a3146c77807c8bf4f3e403f63a8f9318485385d903860569f0fdb` |
| 22 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/trivial-iff-le-maximal-trivial.md) | 203 | `result-track:3f193ccbc2d037066649bd849c0c3844faea788f357ff097359ac06a476daea0` |
| 23 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/istrivial-iff-max-triv-eq-top.md) | 208 | `result-track:0a4fb79ac6b1adca3efee147594bf815c8bc9a34df6d4cd00d54bdce8692020c` |
| 24 | `def` | [maxTrivHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivhom.md) | 217 | `declaration-track:2cb081b0f4de2822cf3ff603ee3a91c3a5f843fe8739b50894ee50c3f2ef50f3` |
| 25 | `theorem` | [coe_maxTrivHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/coe-maxtrivhom-apply.md) | 226 | `result-track:3051aa228ece0828f8b2d5f667517b4385a351bca18380bb29d66874e61b7099` |
| 26 | `def` | [maxTrivEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivequiv.md) | 231 | `declaration-track:e7a0f9a80ddb11845ade741a372b26847dc6fc97eafe274b8e467d9993f93708` |
| 27 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/coe-maxtrivequiv-apply.md) | 239 | `result-track:568393f7c128d7dd6c73e29efb75d93e9e6d7f962c96004c8e0bdf07cb09cc48` |
| 28 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivequiv-of-refl-eq-refl.md) | 244 | `result-track:0d2a93a780e7c77b18275a9ca6ef3b685f66cd75cca5dbd7fed2e72230cd3b93` |
| 29 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm.md) | 249 | `result-track:96c5983442186599f77ab2ae41f12741d54a65f1cb69c7720532c1099737bf0e` |
| 30 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/maxtrivlinearmapequivliemodulehom.md) | 255 | `declaration-track:8729e3efdb51768716e0b3e97fc38325bd5b194fc767077d8bfcd1e24d8e5577` |
| 31 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/coe-maxtrivlinearmapequivliemodulehom.md) | 268 | `result-track:03d16f037cf74a2caac4a7fc5a847ba6071a3bf278c835f4b14f7dbbf25eb1b8` |
| 32 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm.md) | 272 | `result-track:e04f7c569f2087d126a8d5757b2b6b330313fe0db4f0399bc6d6c53de7d70dd3` |
| 33 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom.md) | 277 | `result-track:817b77525ab31f2ca1fcedd2ac6c7c729a0b7c0adb5c6fa77b68a8c599ff838e` |
| 34 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom-symm.md) | 282 | `result-track:7b9d8fbc3a43c23f798082a43e48b38c5a0938fe25f0531d9103c44a396f964e` |
| 35 | `abbrev` | [center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/center.md) | 293 | `declaration-track:8b2dcc5c34bf97bd766b54e8b433cc550f4378ba5cd24cb2226207c56e892dab` |
| 36 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 296 | `declaration-track:bce7b2bc9927d6eee0db15d308b9cc07978261535ad63e8ba30f99f6e54cc87a` |
| 37 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/ad-ker-eq-self-module-ker.md) | 302 | `result-track:26ed14045d304e6b77ab199c8c31db551ea6b96faf1e52405abd2f7e37a5e2d6` |
| 38 | `theorem` | [self_module_ker_eq_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/self-module-ker-eq-center.md) | 306 | `result-track:67225201b8fea421e116c8cf1e365ba84c312c6dc7cbf9f2263c71e96c3a4098` |
| 39 | `theorem` | [abelian_of_le_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/abelian-of-le-center.md) | 310 | `result-track:0ac9dd5dffc102885750457d2ab852dd737a7a69a54ae11d77a3cd4d74931f2a` |
| 40 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/islieabelian-iff-center-eq-top.md) | 314 | `result-track:de3f0ad976cf1100d798e9800f966dca9ae70e5f0871c91cf3282e8cbc96a8e6` |
| 41 | `theorem` | [isFaithful_self_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/isfaithful-self-iff.md) | 317 | `result-track:ff422faea2831a2ac82d2edd43dfe5dab0b86d44d0e623996a31b7eaafb1d8e7` |
| 42 | `theorem` | [center_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/center-eq-bot.md) | 321 | `result-track:6bdae2c1b6eb9a2c7aee46ccd5c1d20271a77f5a7de783b69edbb0268d391b4b` |
| 43 | `lemma` | [commute_toEnd_of_mem_center_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/commute-toend-of-mem-center-left.md) | 335 | `result-track:e2aa056689d635cd58a433ade4bfb13406e83dcdfb06e6b28fc51015db0a9e33` |
| 44 | `lemma` | [commute_toEnd_of_mem_center_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/commute-toend-of-mem-center-right.md) | 339 | `result-track:5917a3913b2ebb9486cfcfcea2f5f424e7e08c20af6644c873e9e432f2856e52` |
| 45 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liesubmodule-trivial-lie-oper-zero.md) | 356 | `result-track:bba35c7609d13a91a798bcba56e6f9262a27ee65de3870f944eb5dbc8f82da0b` |
| 46 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot.md) | 361 | `result-track:49232ce5b1abd454391058b0af56e2a54614630230479bfffb378cbd4d07b6a6` |
| 47 | `lemma` | [lie_eq_self_of_isAtom_of_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/lie-eq-self-of-isatom-of-ne-bot.md) | 372 | `result-track:a3941fb7799cb908667dc0492c0f254f007358f5c87901faf577f8aec054e387` |
| 48 | `lemma` | [lie_eq_self_of_isAtom_of_nonabelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/lie-eq-self-of-isatom-of-nonabelian.md) | 376 | `result-track:3aefe0ecde7a196a0d2159e423de7a58e8f237c67a1639b0b2268998f4f05043` |
| 49 | `def` | [TrivialLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/trivialliemodule.md) | 388 | `declaration-track:c9adedf6eb1c9e0f929a735872f619ac626cea20350b76d6216763627258a3c4` |
| 50 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance.md) | 394 | `declaration-track:028ceee54bcea757d0084395467f0b123d7f6a3cd4b6f324e7fbf47ed75104fa` |
| 51 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 396 | `declaration-track:d19903c1cb9d8151f74e2986f38bef80e8f695713c9f785864533ecc92be7c23` |
| 52 | `def` | [equiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/equiv.md) | 399 | `declaration-track:e88e2803f6bd3dda1dec379b9c4863511a2ac72ca82db3b3cc28c87fa292e33e` |
| 53 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 401 | `declaration-track:f80850d3c98aa60c71bda17ef7b7a7a0604f9a01784955f3d89224dc95f28e73` |
| 54 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 407 | `declaration-track:93aeb9d5983794d34acb9ba5b55b6212d658fc5c88cd150e211c159b196ce783` |
| 55 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 410 | `declaration-track:36a39bf5eb2ca7b27acb50f3d66c1fa6d279f43ab56fdc5252d70d8baae22910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05896f775dd3b021583f3bd18abfab333d1fd661d12fdb0ef94851d95700fb3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
