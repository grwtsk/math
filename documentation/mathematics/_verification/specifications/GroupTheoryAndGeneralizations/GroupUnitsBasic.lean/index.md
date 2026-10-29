# Verification target: Group Units Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66cc185e226215bcc4c96c3d727617a6d195d494",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc5e3035cc0624254d9e4c92aae867390f334880d3cf9db7ed74ee2890fce2961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66cc185e226215bcc4c96c3d727617a6d195d494`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantc5e3035cc0624254d9e4c92aae867390f334880d3cf9db7ed74ee2890fce2961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantc5e3035cc0624254d9e4c92aae867390f334880d3cf9db7ed74ee2890fce2961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unique_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/unique-one.md) | 37 | `result-track:4d870075bacbe7ac74dca0f861314d36a364c7b1ac23bfe7cd9ebd8f35cd815f` |
| 2 | `theorem` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-cancel-right.md) | 49 | `result-track:8251d9749197251916b86b6f1e2eb7fe0131dfe5f65e9637e0be18ad2b2d553e` |
| 3 | `theorem` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-mul-cancel-right.md) | 53 | `result-track:51a2cf73cd13010046517d04722e4b304bc9560f0e52748f60d3d333c774c250` |
| 4 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-right-inj.md) | 57 | `result-track:2bcc6f09e9ccc3e1b47b4a90d4617dae799c4d11feb3106535a38518b3997da8` |
| 5 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-left-inj.md) | 62 | `result-track:9a8c8783bacf8d22427843ef5c64339151b442ef1ae6ae9f7a198a7973c2d1a4` |
| 6 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 67 | `result-track:039f722bfd3e122e28a505c78975103eb95f8b8759738a2884861842355713cf` |
| 7 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 71 | `result-track:74a5ddcb9a3efdec9c3d39fa3c6a90488b784481a47838b5aff3c471c343164a` |
| 8 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 75 | `result-track:8f02b0b22e48d2237ffcf7cdffa3ef3e465c2a579b1fa0399caa1510afd55c28` |
| 9 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 79 | `result-track:67e62d48b9a82dc46783810102a586a13ba8eb6a7ad05f8c5f5a63ada3a1168a` |
| 10 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-eq-of-mul-eq-one-right.md) | 85 | `result-track:5b42ad7063ac9521cceb6574e415277a6c4ce525ae2c69ae535bd98c0b41165e` |
| 11 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 91 | `result-track:b328375b53056fc2cbd49dd82538612bfe8d8823c591be86ddabceac18cb207b` |
| 12 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 95 | `result-track:0c5bf67e132e0504671f879fa51d15b0fe6a4dd95cacb03ceb4725a1e7ac8af9` |
| 13 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-eq-one.md) | 99 | `result-track:6937e95753b4e0aa4a16d0afb23bc8b1876b74363dc65781c2e6f807747d860b` |
| 14 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-mul-eq-one-source-edition-2.md) | 103 | `result-track:ce6a967d76e6b5f5251cd93584c6f9556a9e0cee3d70c94d611a5478e89b6cf1` |
| 15 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-iff-eq-inv-source-edition-2.md) | 107 | `result-track:ae357bc215d78921167d3495c41334d3cdd667dab28919b502d685372e79da6c` |
| 16 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-iff-inv-eq.md) | 110 | `result-track:4c11327ebffe1645737db4601bf1f9203f9ec37a32ce331dea12df2f5088cb28` |
| 17 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-unique.md) | 113 | `result-track:c7a94d0d83353d507b0873c76d0bc4621dcf3de9007236b4e5878c86c4ff2984` |
| 18 | `theorem` | [divp_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-left-inj.md) | 125 | `result-track:99f6ff988a9047ea56408fd37c730e7e624095e7506a5e965f9dfb923fd75eaf` |
| 19 | `theorem` | [divp_eq_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-eq-iff-mul-eq.md) | 131 | `result-track:60ee4f398fd0fd0c9a717cdb70d78a4c7038890bca8585285f31fd10cf1096e7` |
| 20 | `theorem` | [eq_divp_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-divp-iff-mul-eq.md) | 135 | `result-track:359281e230faa6814f81c1766478964f9bb813a94f18edd6ce823a9d0a9a4d4b` |
| 21 | `theorem` | [divp_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-eq-one-iff-eq.md) | 138 | `result-track:ce237e2a252bf0eb1239e84bce05fbad88c4b05a270d2c0f4345b91b1e10d0da` |
| 22 | `theorem` | [inv_eq_one_divp'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-eq-one-divp.md) | 145 | `result-track:003341b9095a7495c2c878dbb2363fe25a06247f7c1ed336a161f27a6a5ac5be` |
| 23 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-right-source-edition-4.md) | 155 | `result-track:cc8d5989d49ab9ef586a9c2598a331683e2833b1016bb86f0f776390c4cc8de4` |
| 24 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-left-source-edition-4.md) | 160 | `result-track:831874818ef3aa51887d5b7eae57d7156618a561763b9fc442b70c1908b39b0e` |
| 25 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-source-edition-3.md) | 164 | `result-track:80d86703b3c8faf58c0e0e066f05c606ad678cd6634b2dfb18062a2429687265` |
| 26 | `theorem` | [mul_ne_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-ne-one-source-edition-3.md) | 170 | `result-track:5d665c3296a2c97ced52bfd1d7fe026ae328cbed90e2fd2ab4cec3dfdfff32e5` |
| 27 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-right.md) | 179 | `result-track:0b9c838d92c51d7f38c19b9740c244ac2fa982a57b492463beeee8b5a934a512` |
| 28 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-left-source-edition-3.md) | 184 | `result-track:5b675f5f56df3894a0e92fcdc839e48e7ae6abfad34ee90c34c042af8c15dc36` |
| 29 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-source-edition-4.md) | 188 | `result-track:cf704a9efdeca3f8e8b5e1a4d69bd58d8c33bbbc0b7766adfe3fadcde40efc94` |
| 30 | `theorem` | [mul_ne_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-ne-one-source-edition-2.md) | 194 | `result-track:19a8bf71420ffc9dfa24bfbcf872ad0e24a5312fd55c2fb55e07681c0c06bd85` |
| 31 | `theorem` | [eq_one_of_mul_right'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-right-source-edition-2.md) | 203 | `result-track:6decb218081f44def02f3adeeb6511906befc37e2da2cb7c5f8773c32077094e` |
| 32 | `theorem` | [eq_one_of_mul_left'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-left.md) | 206 | `result-track:0018d3e7350d64ba70fddff47ed40df88ef4a69498b3d1d465cec3956207cd53` |
| 33 | `theorem` | [mul_eq_one'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one.md) | 209 | `result-track:31f86fac9d0acd47c3c6b27a64142dfe5641fa41cc677259add7dff1d7505848` |
| 34 | `theorem` | [mul_ne_one'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-ne-one-source-edition-4.md) | 212 | `result-track:c312437ffc23bbf2311b6020cc147302f6b2a12bee73b15e214933bbf32de35b` |
| 35 | `theorem` | [divp_mul_eq_mul_divp](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-mul-eq-mul-divp.md) | 221 | `result-track:a9742d356a8d80fa198e63531daaa3764949d7ab383a8178d7309562342bad3e` |
| 36 | `theorem` | [divp_eq_divp_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-eq-divp-iff.md) | 226 | `result-track:2785375bcd7edb01895836102f8762476dca55013e28b91ca9bb95d11750233a` |
| 37 | `theorem` | [divp_mul_divp](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/divp-mul-divp.md) | 231 | `result-track:5c8f8ad80951f22f1835355e5ce91c50ff03f96b942c2d8238e9a04b29c53a82` |
| 38 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-right-source-edition-3.md) | 237 | `result-track:bc4c0920ecd1c07a70ca611e9d447bc01176c51dc462ae31daecd0487ec9cdb6` |
| 39 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-one-of-mul-left-source-edition-2.md) | 241 | `result-track:243a4fcdcb12f147678033d26d37a93d64c04f34d72cc6a8d5691f9c3253983b` |
| 40 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-source-edition-2.md) | 245 | `result-track:4ba6e2cfc6dde4cf9cf5a3c46dfa4eda70276342fa59bf30cec9dcf6dea70c70` |
| 41 | `theorem` | [mul_ne_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-ne-one.md) | 250 | `result-track:07065df144f85093c1ae3e5d5e4ef2c0db6b5890f83c99fb54e776b16cf54610` |
| 42 | `theorem` | [isUnit_of_subsingleton](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/isunit-of-subsingleton.md) | 264 | `result-track:e9603678ba2423881faccc5bdcc5dfa84d295a9452905a0d744b32b52616b417` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/instance.md) | 268 | `declaration-track:0cab2024d98b59415969a396f2af93e7184e4ccd8128c13f357007ab10db8aca` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/instance-source-edition-2.md) | 273 | `declaration-track:d5ed33f3e4a58f17b84b7746d0aa5f2bd843dab3e080d8adb27bdb6439ebf445` |
| 45 | `theorem` | [units_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/units-eq-one.md) | 279 | `result-track:84c747daaad39a68bb8a1c404fd5b32165876f05bdb82e1c04dfdff058c2dc06` |
| 46 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-left-inj-source-edition-2.md) | 290 | `result-track:e06fcaee69b63bb690b2b801ab1f1e1b4768420a85a4fb89cea12fd085f6b511` |
| 47 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-right-inj-source-edition-2.md) | 295 | `result-track:ccf578cc89ded97f151a73ba4e6e3fb538c0872038912d824a98264ac9e7cf51` |
| 48 | `theorem` | [mul_left_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-left-cancel.md) | 300 | `result-track:abdf8bada1897dee05147ed78e5fc7bda194db982cd60c3b4a543e9ba12a4287` |
| 49 | `theorem` | [mul_right_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-right-cancel.md) | 304 | `result-track:0c157fe14d8304e6ad69b276e60970dc285da39c2d0ab0e9c9bf633ff1d25004` |
| 50 | `theorem` | [mul_eq_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-right.md) | 308 | `result-track:681ba9ff3e96eb59b6ae8cb3690ad21147155acb5c586e3a09f6a1f4d94a971c` |
| 51 | `theorem` | [mul_eq_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-left.md) | 313 | `result-track:9769d25c4d636a7a6123b2e42c49749ba8614634d9315103f8b48c687fb561bb` |
| 52 | `theorem` | [mul_right_injective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-right-injective.md) | 318 | `result-track:074ca5720ae735b7aa10ced2bc03be6c3f158be91ef7029f0da6d99f8ad61c86` |
| 53 | `theorem` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-left-injective.md) | 322 | `result-track:ec45448d5ca6807f9f493039ae0a50b8fa08a2548d4398cf4713794031ce4d7f` |
| 54 | `theorem` | [isUnit_iff_mulLeft_bijective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/isunit-iff-mulleft-bijective.md) | 326 | `result-track:5ed891510713b3f3fc62d22b2faaa3a3f4e4b47cb1bf5f5199f710c6abc4d4ae` |
| 55 | `theorem` | [isUnit_iff_mulRight_bijective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/isunit-iff-mulright-bijective.md) | 333 | `result-track:a61d2e42471dc1168e1c3932f0c789ebcee1d070f7942f35a8f76d122d4e91d5` |
| 56 | `lemma` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-cancel-right-source-edition-2.md) | 345 | `result-track:e6af1edf0291eae720256d2bcb86061c952509d1fa9ae0d7291306aebaa68fe4` |
| 57 | `lemma` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-mul-cancel-right-source-edition-2.md) | 349 | `result-track:afe1383205f7eb999d9e7b49171106b9984c45dea2d359ff9b8e2b62826dc663` |
| 58 | `lemma` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-mul-inv-iff-mul-eq-source-edition-2.md) | 353 | `result-track:555faaf68432179e299018ee7c80f373e83abb6db37f21f231f4f5f12db52b8f` |
| 59 | `lemma` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-inv-mul-iff-mul-eq-source-edition-2.md) | 357 | `result-track:a0f6607daec0e7d3aa32a41900a61678e72ff55d0d4084e1ab32843ed415f5c6` |
| 60 | `lemma` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 361 | `result-track:42d61cbf6fa5b93cade05ce28e98b5093841e20f1886727312e0d5d84433a5c8` |
| 61 | `lemma` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-eq-iff-eq-mul-source-edition-2.md) | 365 | `result-track:e7503eb3d17fce31905b2fedacfc88c776bb7db13168fe8380e3568c48fadb53` |
| 62 | `lemma` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-inv-eq-one-source-edition-2.md) | 369 | `result-track:ad9032e07937f49f93db69c2a11d26b349b930620f86cd5a8a901cc00966ee34` |
| 63 | `lemma` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/inv-mul-eq-one.md) | 373 | `result-track:cdfa2e97263ce584ff7556becb793dc64a015cd427baac5b49c3b96349464de9` |
| 64 | `lemma` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-iff-eq-inv.md) | 377 | `result-track:7ffc38cabf410013343da407147d0ba6a7106da1661806ef0c7a87fd34c3612a` |
| 65 | `lemma` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-one-iff-inv-eq-source-edition-2.md) | 381 | `result-track:d1ef7f633e8a7b69783adaadef7d2cd33159b17f60b3da886c62fd9fadf69b91` |
| 66 | `lemma` | [div_mul_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-mul-cancel.md) | 385 | `result-track:c93bb0bd120a16c40a82f036fb8fb4843173772230059c854534d5153cc280d8` |
| 67 | `lemma` | [mul_div_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-div-cancel-right.md) | 389 | `result-track:228457abe9b3015b0d8944ae5114131d3f07e2e0d651590d1430ea9b4493bb8d` |
| 68 | `lemma` | [mul_one_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-one-div-cancel.md) | 393 | `result-track:4548784663998c7ac7b7751d4c0798e7db11ba1b4bae7d195279d967ff45df93` |
| 69 | `lemma` | [one_div_mul_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/one-div-mul-cancel.md) | 396 | `result-track:13a342c9ffe2479df64b91f22ea7001387b54fd661141b1348c5d9d098f93a08` |
| 70 | `lemma` | [div_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-left-inj.md) | 399 | `result-track:e6fb74a2569bb17c53f2f5ca95e7fa8246ccd0ec5224e8b287d789c072b97141` |
| 71 | `lemma` | [div_eq_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-eq-iff.md) | 404 | `result-track:02a4890dafedbfa9ca6c47041acea533f40481bf7cdd4cd182574a47fd9fcf9f` |
| 72 | `lemma` | [eq_div_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-div-iff.md) | 408 | `result-track:5d7e5f3530caf2d3195ff7fe486d9fa3e402e9c883354b3332a3e50e82c9809f` |
| 73 | `lemma` | [div_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-eq-of-eq-mul.md) | 412 | `result-track:916216b66ad5100fd2cafcf98aae45a1b6fcebc421ba5135ebaff0ae9dc3fe37` |
| 74 | `lemma` | [eq_div_of_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/eq-div-of-mul-eq.md) | 416 | `result-track:5bd7e45ae4c142642058d9c7cd36608dd72671a39237e3fcc6fd53526526f89e` |
| 75 | `lemma` | [div_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-eq-one-iff-eq.md) | 420 | `result-track:a05dfc20acbed0f8b2dbc6b36076279c7a451d7c9d9c18f41c191d5fe467d968` |
| 76 | `lemma` | [div_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-mul-left.md) | 424 | `result-track:f5989f87aff9135197db48f1f42fa1bc0835061ca25d9504f8497400f02b2413` |
| 77 | `lemma` | [mul_mul_div](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-mul-div.md) | 428 | `result-track:cdd739c8503fb91ebadd9a9fce415fa8a8572c5942fa8e90d0f021bcf1c95725` |
| 78 | `lemma` | [div_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-mul-right.md) | 436 | `result-track:c67395d68335b411bbdb3fed655394555fffcbec0132f58df2fb4ac147cd1240` |
| 79 | `lemma` | [mul_div_cancel_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-div-cancel-left.md) | 440 | `result-track:30bf36af287ba518c269129b356f8e01555e75a8eec3b06194de8586b785b11b` |
| 80 | `lemma` | [mul_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-div-cancel.md) | 444 | `result-track:c163ee82fd498fd681ffc99fe2118a33ac52fb1f688c9042992835c422f41219` |
| 81 | `lemma` | [mul_eq_mul_of_div_eq_div](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/mul-eq-mul-of-div-eq-div.md) | 448 | `result-track:c9c3bf4354fec8fa078ed522a6135c157f830d3efad67dfefc941ec6a4141dfc` |
| 82 | `lemma` | [div_eq_div_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-eq-div-iff.md) | 453 | `result-track:6f54225089f4c13f9e2f4afe0bad180daeca4754cc6cdadf1e855454a9911495` |
| 83 | `lemma` | [div_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-div-cancel.md) | 459 | `result-track:24ce9a66522ffd3b51efbd93e3d4042b98a1542d509c528adbbc6f09d3d1c5b8` |
| 84 | `lemma` | [div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasic.lean/declarations/div-div-cancel-left.md) | 463 | `result-track:d88f42999bee4a96b2ac3b7db1509cf891adc52fe836ccdc81f2128558efdca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cb0cb015cd49168c5f17ad3b0aaac5de15124081b912c960434c6baa7b0abdf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantc5e3035cc0624254d9e4c92aae867390f334880d3cf9db7ed74ee2890fce2961.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantc5e3035cc0624254d9e4c92aae867390f334880d3cf9db7ed74ee2890fce2961.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
