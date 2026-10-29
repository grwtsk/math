# Verification target: Homogeneous Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a8d265a697df1380a878d12941ddca72d475dd1",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HomogeneousPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HomogeneousPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a8d265a697df1380a878d12941ddca72d475dd1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean.json)

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
| 1 | `def` | [IsHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous.md) | 48 | `declaration-track:8591f2426871e83c9197f19a9df8262a8ed0d78778a111291e966f694f35e72a` |
| 2 | `theorem` | [weightedTotalDegree_singleton](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/weightedtotaldegree-singleton.md) | 56 | `result-track:e3ff1866535aaf225d28c41f4cd5de5a4918a687b641b87d89d1510de14f69eb` |
| 3 | `theorem` | [weightedTotalDegree_one](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/weightedtotaldegree-one.md) | 62 | `result-track:79f349e53761012bc9d555b17c9b590b1e627307f96f8177fc1b113025d3342f` |
| 4 | `theorem` | [weightedTotalDegree_piSingle](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/weightedtotaldegree-pisingle.md) | 71 | `result-track:34dbd894fff443b291991574ccae1917a39575be50e7b24387708a2cc7d00356` |
| 5 | `theorem` | [weightedTotalDegree_rename_of_injective](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/weightedtotaldegree-rename-of-injective.md) | 78 | `result-track:0b41f0a7f007d290a6e6c3f690ce2a39d0f97d0f1872c3625e57c99ba696b8bc` |
| 6 | `def` | [homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule.md) | 89 | `declaration-track:3f9b55e99ecad97e8c5b7aac29d23d92b496c6b1929936c61827450563883322` |
| 7 | `lemma` | [weightedHomogeneousSubmodule_one](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule-one.md) | 94 | `result-track:c2681770f3809d8131f561555a64f6e7a6bc5adbdc6a3b0949ae0fc29e160f3b` |
| 8 | `theorem` | [mem_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/mem-homogeneoussubmodule.md) | 100 | `result-track:02c2e7a1e5b378876e3896445290e6cf0389fc823abc584bf338ad1d23f774a9` |
| 9 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-eq-finsupp-supported.md) | 106 | `result-track:1abcc5485603455db8ddb5d11523d232319673ac77f0352c4ffc57780236eb09` |
| 10 | `lemma` | [homogeneousSubmodule_fg](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-fg.md) | 111 | `result-track:f49bd8116eccffd650be0f32d203643b1aeec342b3d990958c60b10a79c34361` |
| 11 | `theorem` | [homogeneousSubmodule_mul](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-mul.md) | 117 | `result-track:ac8a1615ca7424fa89f5621a85749b10414499c801d4095d6d9999e02fa4edce` |
| 12 | `lemma` | [homogeneousSubmodule_one_eq_span_X](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-one-eq-span-x.md) | 121 | `result-track:c954634e70b66a09b052fe1ca66c513ed76638c7ae2016f4776e3f77ad1698a9` |
| 13 | `theorem` | [isHomogeneous_monomial](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-monomial.md) | 129 | `result-track:8089c6c05b354da9438f12542d6ea75aeff55982a228b91c90c508a88e4f5d9a` |
| 14 | `theorem` | [totalDegree_eq_zero_iff](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/totaldegree-eq-zero-iff.md) | 136 | `result-track:9b40b2ddd296830f931ee15e9f0dfebd3f69c964cf1c5c0bd97d3948b1324cd1` |
| 15 | `theorem` | [totalDegree_zero_iff_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/totaldegree-zero-iff-ishomogeneous.md) | 141 | `result-track:ca6c291b8825054c80da29ad1e2a62557eef41d71591aafe3b6a3a7485be9e76` |
| 16 | `lemma` | [homogeneousSubmodule_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-zero.md) | 149 | `result-track:96a18974ffc8bde41d9a73e1de17b2e21e91607bcd0d885e0ded5be480b449fd` |
| 17 | `theorem` | [isHomogeneous_C](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-c.md) | 157 | `result-track:92c1f76e8814d2f830947cd45f108a0a44a5b690c8fc1da10fb1616c509bbda9` |
| 18 | `theorem` | [isHomogeneous_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-zero.md) | 163 | `result-track:db8fa6deef41abc65a215eb723488622fcfc43f826f946397be2b639653172a6` |
| 19 | `theorem` | [isHomogeneous_one](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-one.md) | 166 | `result-track:c0e64c139288941af0e4e5fcf8b40a7eb736e038d607251617b019d9885c44ff` |
| 20 | `lemma` | [isHomogeneous_of_isEmpty](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-of-isempty.md) | 169 | `result-track:5832786c369fa8b367571fbedf0f9a0e7ce6427b80ba9bb535605863c28c676b` |
| 21 | `theorem` | [isHomogeneous_X](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ishomogeneous-x.md) | 175 | `result-track:aa108018028a307f8e0612eaa0497c8379f1e9913ecffe935bc254b06ea0409c` |
| 22 | `lemma` | [monomial_mem_homogeneousSubmodule_pow_degree](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/monomial-mem-homogeneoussubmodule-pow-degree.md) | 181 | `result-track:b0b0b549ed83d857189c410f5dc1dfb087693d4be3bcf2ffd73234867c772f4c` |
| 23 | `lemma` | [homogeneousSubmodule_one_pow](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-one-pow.md) | 191 | `result-track:60f20322d7fe39aa7be8f0ca74f0f241b9cd055c63a74f14a02cdc22e20dfb55` |
| 24 | `theorem` | [coeff_eq_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/coeff-eq-zero.md) | 213 | `result-track:6734058b9cf65f7875cca7ca46387fba73cba4760e17bedf66be741ff290727f` |
| 25 | `theorem` | [inj_right](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/inj-right.md) | 218 | `result-track:310b834ae60333a0d038727de1c1440c5d7d907eff492734eb374077ebf6d3b3` |
| 26 | `theorem` | [add](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/add.md) | 222 | `result-track:0248152648c8f788d1253c9c28edacef423492efffe0825d9062eb6cae74d00e` |
| 27 | `theorem` | [sum](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/sum.md) | 225 | `result-track:e8bc1e20da5a2c30e3c4a091da1efdbb2ee104628af3f8db8df2f6372a5ca41b` |
| 28 | `theorem` | [mul](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/mul.md) | 229 | `result-track:ca2592a461991c97699356f9b73a87e6f8f6abe285ea0e6442cc3e1cf3d93351` |
| 29 | `theorem` | [prod](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/prod.md) | 232 | `result-track:12e5f6cb1bb7c4a41d4ef36af1a7749908da819071b8ab7a83ce143e0613c82c` |
| 30 | `lemma` | [C_mul](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/c-mul.md) | 244 | `result-track:c2906c9d535c26ba00c65c29340f64fba86507f385e9044bec1cb463f97554c1` |
| 31 | `lemma` | [_root_.MvPolynomial.isHomogeneous_C_mul_X](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/root-mvpolynomial-ishomogeneous-c-mul-x.md) | 248 | `result-track:42a1637c1b70c1db5e701742690396334d3bb5e65fb4e0c23da8ff2765a57281` |
| 32 | `lemma` | [pow](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/pow.md) | 252 | `result-track:adb0c414ce3e3ec4bd70864c798c5e98970b197d39bdbf8281f130c03a0e3405` |
| 33 | `lemma` | [_root_.MvPolynomial.isHomogeneous_X_pow](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/root-mvpolynomial-ishomogeneous-x-pow.md) | 257 | `result-track:67ce799ad3085a4bbbc61b8b08287eb02f497cf3a24ceafc29f186a46f95835a` |
| 34 | `lemma` | [_root_.MvPolynomial.isHomogeneous_C_mul_X_pow](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/root-mvpolynomial-ishomogeneous-c-mul-x-pow.md) | 261 | `result-track:305d9fa0da6fc2e8ecf4772f96c68ad201af2d6ac4a9dd3d7d4c3972bdc58838` |
| 35 | `lemma` | [eval₂](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/eval.md) | 265 | `result-track:16aafe323fd08d988ea64d321d05605cef795d4dd84f2065fcd71a50cb1546cc` |
| 36 | `lemma` | [map](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/map.md) | 279 | `result-track:f5971d0bac0514be22c03eb680ffab26ef6472bc9a7abd641293f5dec8967161` |
| 37 | `lemma` | [of_map](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/of-map.md) | 283 | `result-track:2daa929e27f521b4c1e949ca408ae25af827c06ee75f0707a6fa84d13daa3801` |
| 38 | `lemma` | [aeval](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/aeval.md) | 287 | `result-track:b20ef4be532dff7aec669e8fb45e840645c858fb4a4a9655e962d42ed3039be2` |
| 39 | `theorem` | [neg](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/neg.md) | 297 | `result-track:949f4f50668956a0c04d98e70c11bb3ac0cc05fd3cff1efc45ed30a2db2f9802` |
| 40 | `theorem` | [sub](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/sub.md) | 300 | `result-track:53cd8f1c0241536019c94b9d49eb59ec61197b8eaa96e188dcb7be12c2ff75aa` |
| 41 | `lemma` | [totalDegree_le](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/totaldegree-le.md) | 308 | `result-track:7fa1523cb05cf3b4c41f88048703f4b694de3164f580d74401712098a95dd766` |
| 42 | `theorem` | [totalDegree](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/totaldegree.md) | 315 | `result-track:bfdc7b204a9914f56c0b087747831c3d970e9fc2f2c37e0688509dea9d0a765a` |
| 43 | `lemma` | [degree_eq_sum_deg_support](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/degree-eq-sum-deg-support.md) | 324 | `result-track:82c9e510d5a666fe5f33d38a635408aa4ef27eb32b2bad53b3a27986756666e7` |
| 44 | `theorem` | [rename_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/rename-ishomogeneous.md) | 328 | `result-track:55253bebdf80495611d456b88832a47f90d3052d7792c73a09ac3cb3e219aa78` |
| 45 | `theorem` | [rename_isHomogeneous_iff](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/rename-ishomogeneous-iff.md) | 337 | `result-track:357a7376a1a32252223be85e499b5641f89616dc656016f4419da998598559e5` |
| 46 | `lemma` | [finSuccEquiv_coeff_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/finsuccequiv-coeff-ishomogeneous.md) | 345 | `result-track:98370c59633965de4f314b04846e0547325e351f2d2a16d9774491d521c6d942` |
| 47 | `lemma` | [coeff_isHomogeneous_of_optionEquivLeft_symm](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/coeff-ishomogeneous-of-optionequivleft-symm.md) | 359 | `result-track:93199aa28330fa468d0b6e817d88732b2be9a11f8ae22c3f9063483706821c11` |
| 48 | `lemma` | [exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/exists-eval-ne-zero-of-coeff-finsuccequiv-ne-zero-aux.md) | 378 | `result-track:ed3a0425ae4d5077963a84f8558d504d161f6684f426ba7c3092226b52fa6d67` |
| 49 | `lemma` | [exists_eval_ne_zero_of_totalDegree_le_card_aux](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/exists-eval-ne-zero-of-totaldegree-le-card-aux.md) | 418 | `result-track:52f77664531da39f247257f5c96caa91dbbbf45cdda962c31b826b4e677db2d9` |
| 50 | `lemma` | [eq_zero_of_forall_eval_eq_zero_of_le_card](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/eq-zero-of-forall-eval-eq-zero-of-le-card.md) | 460 | `result-track:f94b163dd514b5f4e9d2d36d8d0bab4a4e19b75362b5f0f1fb23e79c6f811837` |
| 51 | `lemma` | [funext_of_le_card](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/funext-of-le-card.md) | 475 | `result-track:b138701e120191ace700ff347ee00d272b21581129cabc9208a54ee38e769bd9` |
| 52 | `lemma` | [eq_zero_of_forall_eval_eq_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/eq-zero-of-forall-eval-eq-zero.md) | 484 | `result-track:e162d2359669740333dc343d4b3be852f8611554f637d772b0ce415b89b4184b` |
| 53 | `lemma` | [funext](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/funext.md) | 491 | `result-track:61cd23342d090494e6c6dcc4fd0b7570811ac17727ef5ab96b1550ca9fdd3c0d` |
| 54 | `instance` | [HomogeneousSubmodule.gcommSemiring](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-gcommsemiring.md) | 501 | `declaration-track:a03bb239670cf69d7089cf5faf01d309ab22ed30a16f6082fba41f972bf181f7` |
| 55 | `def` | [homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent.md) | 514 | `declaration-track:1445a9c2a9e3670c64c2c8fad7c05e99b58f7e88ef71a552f1cd578c99f2b2a8` |
| 56 | `theorem` | [homogeneousComponent_mem](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-mem.md) | 523 | `result-track:27992c5d94d61faeb771129db8581e1120140a9a2058ad10432d34f4fb184aed` |
| 57 | `theorem` | [coeff_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/coeff-homogeneouscomponent.md) | 527 | `result-track:b67157299136f19d96b7fadd075b05fd48d3618648781d135e6759d1a4f0deeb` |
| 58 | `theorem` | [homogeneousComponent_apply](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-apply.md) | 532 | `result-track:37ce00628b92c76e011c735286d2dd1dc0a909f2a5c81c6d58b8e277cabc4cf2` |
| 59 | `theorem` | [homogeneousComponent_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-ishomogeneous.md) | 537 | `result-track:8f38ee63f0cb888c09f0b9c36ba5d236f0b8bf14255ef224572841bd5661dda9` |
| 60 | `theorem` | [homogeneousComponent_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-zero.md) | 541 | `result-track:d4476d5ac690e999f00a3f8e5732a6fb8021cf2fe86066c90ddb7fae7fc4145e` |
| 61 | `theorem` | [homogeneousComponent_C_mul](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-c-mul.md) | 545 | `result-track:8a94036f05f166ca8237f5e0ce88bd43b259933071d36079f48b8c8654af1529` |
| 62 | `theorem` | [homogeneousComponent_eq_zero'](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-eq-zero.md) | 549 | `result-track:13cb614250f6482d2b447acb67434ff03920feac1dec74a50b36a885d1662f61` |
| 63 | `theorem` | [homogeneousComponent_eq_zero](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-eq-zero-source-edition-2.md) | 555 | `result-track:a26365912ccb97a895d8f9ac73029effb06f578c5f0af3fb85f168db4c8bc869` |
| 64 | `theorem` | [sum_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/sum-homogeneouscomponent.md) | 560 | `result-track:3ec3214dbb1f83e9e98249daee748873620e60e3b63192e1dfa34bb7ce5fde0d` |
| 65 | `theorem` | [homogeneousComponent_of_mem](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-of-mem.md) | 567 | `result-track:2d7c72490ba2866bcdcaede72d090a1169abaffa133f713cd3d3da274d7cfc4c` |
| 66 | `lemma` | [homogeneousComponent_eq_self](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-eq-self.md) | 572 | `result-track:e707a3aa633491bcbf0dfcd9ecaec59bce545d61630b03664dc5aad0c5e12f36` |
| 67 | `lemma` | [support_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/support-homogeneouscomponent.md) | 576 | `result-track:96e197398822c41440b5b3be9ed46d891da6b317062ede81af354b74b21c2c8c` |
| 68 | `lemma` | [rename_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/rename-homogeneouscomponent.md) | 581 | `result-track:d5e87b564ce3b6b1f074707c7f4ca43329c4c0b6f66564e6178b37fab9175e0c` |
| 69 | `lemma` | [HomogeneousSubmodule.gradedMonoid](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneoussubmodule-gradedmonoid.md) | 600 | `result-track:fd6ce4ef17a4307ebfd5625794fce9fe749958ebbc998415368f8638b5f37733` |
| 70 | `abbrev` | [decomposition](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/decomposition.md) | 605 | `declaration-track:e772589e3c406b86ea76cca845f56b97b0731dfe60e5070361e61f53e065f698` |
| 71 | `abbrev` | [gradedAlgebra](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/gradedalgebra.md) | 615 | `declaration-track:d494bc2a8d3bcd3f36160b26c9fa6d5c9bcdfeab2bd44087734aa9f9e4b8e73f` |
| 72 | `theorem` | [decomposition.decompose'_apply](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/decomposition-decompose-apply.md) | 618 | `result-track:f287b7bdfba6c688582461561b33070aebb15eee56fa8223366c09a7f597d608` |
| 73 | `theorem` | [decomposition.decompose'_eq](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/decomposition-decompose-eq.md) | 622 | `result-track:0215cc85d8589ccfdf6039e0faa424d77cc50b688eef6501fe4f538f31a4064d` |
| 74 | `lemma` | [mem_iff_homogeneousComponent_mem](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/mem-iff-homogeneouscomponent-mem.md) | 631 | `result-track:4cc897430df0690c7d7377cb90568e8f88a53f6dc0f029338f712b4cbe423ea2` |
| 75 | `lemma` | [homogeneousComponent_mem_of_mem](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/homogeneouscomponent-mem-of-mem.md) | 636 | `result-track:c9260c302e9f440dd0cf1780687bfcdf2973136f05ef4dc0d23339dcee84c862` |
| 76 | `lemma` | [Ideal.span_eq_map_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ideal-span-eq-map-homogeneoussubmodule.md) | 647 | `result-track:37ac9cad5a710ff9bb6d5cbb2c153e12dd3747f612a23a9ed2b9ac606de55f17` |
| 77 | `lemma` | [Ideal.span_pow_eq_map_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ideal-span-pow-eq-map-homogeneoussubmodule.md) | 657 | `result-track:4867a60b76bf3916c79d999fc0b78ab477b5e7457f91042b20f2c93847c2155c` |
| 78 | `lemma` | [Ideal.mem_span_pow_iff_exists_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ideal-mem-span-pow-iff-exists-ishomogeneous.md) | 667 | `result-track:6c841d8f735208c6fdcf2c8af2cc9d0d58b3d1600e67ee5e4283177971055808` |
| 79 | `lemma` | [Ideal.mem_span_iff_exists_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousPublic.lean/declarations/ideal-mem-span-iff-exists-ishomogeneous.md) | 675 | `result-track:5287f9d1fb0af42e252eacc8aff91edb18734318c2abeaddfa73c3b29fd36dcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35ed348e132b338c62977872c7c79aeb1ac79b6030656ed43eae3963a2596413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
