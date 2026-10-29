# Verification target: Arg Namespaced Abs Mul Exp Arg Mul I

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/index.md) · [Full source](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Angle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg.md) | 39 | `declaration-track:c7b8874f051071152f9c688ebaf1d545f65d4a7a03dd114c0ba90fcdf0061734` |
| 2 | `theorem` | [sin_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/sin-arg.md) | 44 | `result-track:02985cb7f30fa7af0c8caba8cb96a5cbdb97012af3b3ff1697f5775a63a1de90` |
| 3 | `theorem` | [cos_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/cos-arg.md) | 51 | `result-track:5bc5846b33f0dd45ba1b41d87fc70e58df5cfb9d54127f990140f3de6ba06e22` |
| 4 | `theorem` | [abs_mul_exp_arg_mul_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/abs-mul-exp-arg-mul-i.md) | 65 | `result-track:507edd4d1342531744f68ceb2dcd919c5f2da0215be7a44d98e90b11584bc0d7` |
| 5 | `theorem` | [abs_mul_cos_add_sin_mul_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/abs-mul-cos-add-sin-mul-i.md) | 74 | `result-track:04d07db60910ed6076c43b59049c3aea41859697bcb9cadb27c2dd1b9404027f` |
| 6 | `theorem` | [abs_eq_one_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/abs-eq-one-iff.md) | 79 | `result-track:6a9da31fcb3dbfcc54cf8c3c792c0e12e4b249f4193c535d2cff31ee4ecbc57a` |
| 7 | `theorem` | [range_exp_mul_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/range-exp-mul-i.md) | 90 | `result-track:fdb44388c8cc675771644a9ee4a1ddc105f5b9f73acc653b162eebe9d6c1013a` |
| 8 | `theorem` | [arg_mul_cos_add_sin_mul_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mul-cos-add-sin-mul-i.md) | 96 | `result-track:2b6217644317217ec14c450d3f57d1edbcfeb968a31a25840ff61545be066db5` |
| 9 | `theorem` | [arg_cos_add_sin_mul_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-cos-add-sin-mul-i.md) | 121 | `result-track:17f05ef3e9b5314e2cee6604d68be0e21b3f0b5d50c984931e60fe0b7deec3b8` |
| 10 | `theorem` | [arg_zero](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-zero.md) | 127 | `result-track:a46a48ad70d6eecdc38fcf027b57a5dd420f1701bd2c7c5cc312f8dee25c65f5` |
| 11 | `theorem` | [ext_abs_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/ext-abs-arg.md) | 130 | `result-track:b7f8f59a31c1154ce64cd256907bcd6ed15e7575fe4f06f43f2aa8c65567b091` |
| 12 | `theorem` | [ext_abs_arg_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/ext-abs-arg-iff.md) | 134 | `result-track:1847c9992a660024ab0df433a28a93f85709ad2f3951f4ee98608cc98155a4fd` |
| 13 | `theorem` | [arg_mem_Ioc](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mem-ioc.md) | 138 | `result-track:fe705897caad84dce61d101a7b60455962bead28a3767021f79b8e6b5b3d7278` |
| 14 | `theorem` | [range_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/range-arg.md) | 151 | `result-track:c0a5a32d4e0652d5dc7fa4a5a8d29d0393efea81a22efb7f3c4d5c878d9f2aec` |
| 15 | `theorem` | [arg_le_pi](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-le-pi.md) | 155 | `result-track:4f8b226793bf5a0d7fa8887f36cf8ab7d7fa5f9724a3b4602ca91daa37d26b99` |
| 16 | `theorem` | [neg_pi_lt_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/neg-pi-lt-arg.md) | 159 | `result-track:ecf7e7969ed06e39b53785b6d0e1d2b2f1fac494f70c60ae94c261d8c60b274b` |
| 17 | `theorem` | [abs_arg_le_pi](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/abs-arg-le-pi.md) | 163 | `result-track:1ba6a5af20470eeab351294d211d384789f3f8e7987a8dd096016e68160671d6` |
| 18 | `theorem` | [arg_nonneg_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-nonneg-iff.md) | 168 | `result-track:5303c64fa21884f87ce91fa1d2b70e4a0d7762fa73df83f13e4efc696383f7d4` |
| 19 | `theorem` | [arg_neg_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-iff.md) | 181 | `result-track:2eac36f8d489c42bcc28ae3b858f84e76dc6d907e8d78f5e7a5304f9e9d80691` |
| 20 | `theorem` | [arg_real_mul](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-real-mul.md) | 185 | `result-track:1f8f6ed1de630bdf981a7187e27a9b0ce816ee08a860fbf1235086b6409f32c0` |
| 21 | `theorem` | [arg_eq_arg_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-arg-iff.md) | 192 | `result-track:2689547d1dfbbe2043450fe35a35a7d181c3c11d0867e41da5f43e1b1d390694` |
| 22 | `theorem` | [arg_one](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-one.md) | 201 | `result-track:d852766096113ae81cf005e4a2c31cc3f4a23381dfb218adbfd1c25ce7b491d7` |
| 23 | `theorem` | [arg_neg_one](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-one.md) | 205 | `result-track:b49db7bc1dcdb2bffe983ed6ef3f35a4b5d8ffaae2aa5e76d330f9b1b995b203` |
| 24 | `theorem` | [arg_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-i.md) | 209 | `result-track:4c8add2106bda4c754638131a7d66361d5714e243c76c16ff5c4656d5b268d5e` |
| 25 | `theorem` | [arg_neg_I](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-i.md) | 214 | `result-track:d057838b57df327abe58de5dd4298f3b1485fcc8316b22bb3d1f0377e489a261` |
| 26 | `theorem` | [tan_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/tan-arg.md) | 219 | `result-track:b796001382a9f3cb25089535334f943d52defc3568a17ae913beb6f2a2fbec38` |
| 27 | `theorem` | [arg_ofReal_of_nonneg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-ofreal-of-nonneg.md) | 225 | `result-track:5bb2565369d790b145c8da15bb2befedeef583315dcabede10ff5b47246b6554` |
| 28 | `theorem` | [arg_eq_zero_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-zero-iff.md) | 228 | `result-track:99f22fab7d77281c55a364e29b5c71b9c0b9aa643dd8898887573d4f4af177bb` |
| 29 | `theorem` | [arg_eq_pi_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-pi-iff.md) | 237 | `result-track:7585ccbc35ee9180c235ec3abf2f8b3b01ba4a5d7e69088e375e2c67a511b2c5` |
| 30 | `theorem` | [arg_lt_pi_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-lt-pi-iff.md) | 249 | `result-track:5a41db1d54cd816ec81dabc2376c41c58223cfe7e1fc7b4b2bd079fd33ea057f` |
| 31 | `theorem` | [arg_ofReal_of_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-ofreal-of-neg.md) | 253 | `result-track:f4a58dd01a4baaef01bd25658a9dbebf0201b02579b651cf757eb719abd38867` |
| 32 | `theorem` | [arg_eq_pi_div_two_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-pi-div-two-iff.md) | 257 | `result-track:b233223c8074fca61ec6272045a0825cb23b92b4b4cbef3939648ac1ead0b91e` |
| 33 | `theorem` | [arg_eq_neg_pi_div_two_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-neg-pi-div-two-iff.md) | 268 | `result-track:ebc3ae28e9e1f4f3ed773948b3962d16d1a50849f7964165dc0c3ee124d19e93` |
| 34 | `theorem` | [arg_of_re_nonneg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-re-nonneg.md) | 280 | `result-track:21981652607289a2cc7fe403048379d10ff1787ffe1af1bad0183b2e238fc2c1` |
| 35 | `theorem` | [arg_of_re_neg_of_im_nonneg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-re-neg-of-im-nonneg.md) | 284 | `result-track:3062c0c945ecb061196aa0f9ee690bd7ea977f8af2d40bd623c6167d09bfd878` |
| 36 | `theorem` | [arg_of_re_neg_of_im_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-re-neg-of-im-neg.md) | 289 | `result-track:09065132f714b88e3f5c6760fda1628b84e0b78feb14241cd6c1b3d16bb4832c` |
| 37 | `theorem` | [arg_of_im_nonneg_of_ne_zero](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-im-nonneg-of-ne-zero.md) | 294 | `result-track:e7e3bac968cd1e46c9eb7bf12441df60f2d843b8eae85ae9cf7b8bce46b73eb8` |
| 38 | `theorem` | [arg_of_im_pos](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-im-pos.md) | 299 | `result-track:27da6fe8edf00db27dc60fcbe305a0a1f73e2a43eb939be362b6db17d1f13f19` |
| 39 | `theorem` | [arg_of_im_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-of-im-neg.md) | 303 | `result-track:0c6fe31c467248c25eed7572a13170043a86f9cf73660289eb6cfb94a6a48800` |
| 40 | `theorem` | [arg_conj](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-conj.md) | 309 | `result-track:dd3b5d507d8caf4719deedd12ea1d52f9cfa5023ca5d80cb351bcd12edf351b4` |
| 41 | `theorem` | [arg_inv](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-inv.md) | 325 | `result-track:1d5246485793283050499f7e72b4107b33e36ffc5983dc7e0aabb3fcafa4698c` |
| 42 | `theorem` | [arg_le_pi_div_two_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-le-pi-div-two-iff.md) | 332 | `result-track:d54077fd16afca840fc62ecda70731552c43bbd141f4729f61be3d876b954188` |
| 43 | `theorem` | [neg_pi_div_two_le_arg_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/neg-pi-div-two-le-arg-iff.md) | 347 | `result-track:f9b7fc028137255a2b88be66c562788e6e6dd93b2068634fd70a7f06150ce27a` |
| 44 | `theorem` | [abs_arg_le_pi_div_two_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/abs-arg-le-pi-div-two-iff.md) | 363 | `result-track:0db66509ee71ab654b10fa8725602ad5dcc7191fe534ef3459f83902ada84cce` |
| 45 | `theorem` | [arg_conj_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-conj-coe-angle.md) | 369 | `result-track:d72a128504af5f1612a333c1d1eb732bf55f04f1f123169b0c53881e3061a824` |
| 46 | `theorem` | [arg_inv_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-inv-coe-angle.md) | 374 | `result-track:ff697ebfeef81f1efc829bc0f677ae824d37f455732174b81fc4385b1a8daebd` |
| 47 | `theorem` | [arg_neg_eq_arg_sub_pi_of_im_pos](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-eq-arg-sub-pi-of-im-pos.md) | 378 | `result-track:cb4591078f7800ebe30bad12355fb872cb74a7dbb9b0a45f9a290c8174487a4a` |
| 48 | `theorem` | [arg_neg_eq_arg_add_pi_of_im_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-eq-arg-add-pi-of-im-neg.md) | 383 | `result-track:15a2f5900e4fe808697a499a7d258f31e2a0d3d64a6566fc169f1df5ce870e34` |
| 49 | `theorem` | [arg_neg_eq_arg_sub_pi_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-eq-arg-sub-pi-iff.md) | 388 | `result-track:4dd1ac66da263669d7bc70fd384b2678e9212e8609686c6ab862c9b0efc68cad` |
| 50 | `theorem` | [arg_neg_eq_arg_add_pi_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-eq-arg-add-pi-iff.md) | 403 | `result-track:00ee9780060b84f02618932e722d9360137627842e1470902a7f769619a8831d` |
| 51 | `theorem` | [arg_neg_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-neg-coe-angle.md) | 418 | `result-track:79323d826a4cc72f938f083b07f38bc36c6da148ed86f4b28094f1aeaa0d1ebe` |
| 52 | `theorem` | [arg_mul_cos_add_sin_mul_I_eq_toIocMod](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mul-cos-add-sin-mul-i-eq-toiocmod.md) | 431 | `result-track:d7fb93856e66357954229f22e3db0f71a0874750ae7bf5a099f088172950cb6e` |
| 53 | `theorem` | [arg_cos_add_sin_mul_I_eq_toIocMod](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-cos-add-sin-mul-i-eq-toiocmod.md) | 441 | `result-track:c1eb14e2a6103a2953f8ef6cdecb2aed876cebca4a7b4e8479ddd160d443b731` |
| 54 | `theorem` | [arg_mul_cos_add_sin_mul_I_sub](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mul-cos-add-sin-mul-i-sub.md) | 447 | `result-track:d7078a35468fe989d38d5bf7043f2fe3ccc9f0f13fcc34f29f158fc8adb7e87e` |
| 55 | `theorem` | [arg_cos_add_sin_mul_I_sub](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-cos-add-sin-mul-i-sub.md) | 455 | `result-track:e60223c31675671d46e08a095951b02dd5b7933b40712325356c9a45bc0beb5b` |
| 56 | `theorem` | [arg_mul_cos_add_sin_mul_I_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mul-cos-add-sin-mul-i-coe-angle.md) | 461 | `result-track:b44e6bf8d8889da2fb61f0415df40d50a4f2e52479d94b6da733f3dd0772fb48` |
| 57 | `theorem` | [arg_cos_add_sin_mul_I_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-cos-add-sin-mul-i-coe-angle.md) | 470 | `result-track:2819277c81c2c3419fb922ea9e121617884c104c40bca7839549b7b3e0a207bc` |
| 58 | `theorem` | [arg_mul_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-mul-coe-angle.md) | 476 | `result-track:262f2a10fd0120317b5bdf2f7dec9945c35d103e851391c2c0e32ea48abfddb8` |
| 59 | `theorem` | [arg_div_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-div-coe-angle.md) | 487 | `result-track:802efda1973249b495e04e1ac99320b36d2f7c40aabcd2ebabfd879695b5fb02` |
| 60 | `theorem` | [arg_coe_angle_toReal_eq_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-coe-angle-toreal-eq-arg.md) | 493 | `result-track:1e737d412aed4292808e5088a33b8e3f5bdcc4dea27b092a4b27ad183985575f` |
| 61 | `theorem` | [arg_coe_angle_eq_iff_eq_toReal](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-coe-angle-eq-iff-eq-toreal.md) | 498 | `result-track:0ac2e28c0cea314ad570e2598232dd4ed1ab65bf81bec62164d742bf652a3c5a` |
| 62 | `theorem` | [arg_coe_angle_eq_iff](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-coe-angle-eq-iff.md) | 504 | `result-track:9cd334ad34815f90598cb00bf8e252af1eac2ebca269d786dc3466bdb5699ed8` |
| 63 | `theorem` | [arg_eq_nhds_of_re_pos](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-nhds-of-re-pos.md) | 512 | `result-track:cf03a79f24fad952a512eb9a394874eaa59ff09c3ec7b2036700459fc8eaad4d` |
| 64 | `theorem` | [arg_eq_nhds_of_re_neg_of_im_pos](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-nhds-of-re-neg-of-im-pos.md) | 516 | `result-track:b10fa5d4fdf7fcfe31cf20e364772afacff64933abbbffc49dca20e68c7f9d5a` |
| 65 | `theorem` | [arg_eq_nhds_of_re_neg_of_im_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-nhds-of-re-neg-of-im-neg.md) | 525 | `result-track:7e16f8b5a12776080a84487fdd561b008bc1bf496bb2f8777e1fb7a998191ded` |
| 66 | `theorem` | [arg_eq_nhds_of_im_pos](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-nhds-of-im-pos.md) | 534 | `result-track:062d6ff4a4c42e1f4e174d911ae7897fc7462d23cd3c57292a8fc875a361caff` |
| 67 | `theorem` | [arg_eq_nhds_of_im_neg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/arg-eq-nhds-of-im-neg.md) | 538 | `result-track:694987cf589b04634220821f7a8d04f58902a046929f4131b2526e0899b7da2f` |
| 68 | `theorem` | [continuousAt_arg](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/continuousat-arg.md) | 542 | `result-track:a0be7fb5014ae3202ffd0ba9d296a6c2936f5ea53f4e96fdf6de442e6b66cc0f` |
| 69 | `theorem` | [tendsto_arg_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/tendsto-arg-nhdswithin-im-neg-of-re-neg-of-im-zero.md) | 560 | `result-track:481c04d8b65d8b518f1e138433695612420215722e20fe5d8c8d1be21b6bec9d` |
| 70 | `theorem` | [continuousWithinAt_arg_of_re_neg_of_im_zero](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/continuouswithinat-arg-of-re-neg-of-im-zero.md) | 582 | `result-track:3d22c953d44ef685a07abac8b3c8b759bef096d8718de75a35ab298340e70581` |
| 71 | `theorem` | [tendsto_arg_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/tendsto-arg-nhdswithin-im-nonneg-of-re-neg-of-im-zero.md) | 600 | `result-track:0913aad86483cc631fb9bbe8d715a6471ffc42d4969db727cb6b207c27f327c9` |
| 72 | `theorem` | [continuousAt_arg_coe_angle](../../../../SpecialFunctions/ArgNamespacedAbsMulExpArgMulI.lean/declarations/continuousat-arg-coe-angle.md) | 607 | `result-track:f7bc5053fa94462f66b768210a27315dc6cbac50fa7e4878ed0bfb4a59e17f79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d2b3bae4d2e5d6c7bb6f77769928127227c643103ffa158c54549c8cc92ec48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
