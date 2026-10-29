# Verification target: Algebra Group Basic Bit0 Add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7b9b9af3da0d884cad978683d9315aaf0f1aa5",
  "lexical_observation_count": 157,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7b9b9af3da0d884cad978683d9315aaf0f1aa5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comp_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/comp-mul-left.md) | 32 | `result-track:d7f7bb399efdf7a3a175dee3bc44db9fc71d0f2b4f63863f62a456f166e56824` |
| 2 | `theorem` | [comp_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/comp-mul-right.md) | 43 | `result-track:1196849bc72ef1d93c2a5b5c4f34f158a56e948b44f3b08fdb3e85d8a376d7d6` |
| 3 | `theorem` | [ite_mul_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/ite-mul-one.md) | 56 | `result-track:b2ed4a97818d1a9e942a597df02847abb9df9736542157f07b7d4daeea4c9bd3` |
| 4 | `theorem` | [ite_one_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/ite-one-mul.md) | 63 | `result-track:a81f215ec55a5ed281e028b458de0e714f0edd5dc6b33cff7770bdb7a76561a4` |
| 5 | `theorem` | [eq_one_iff_eq_one_of_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-one-iff-eq-one-of-mul-eq-one.md) | 70 | `result-track:240556da5c8abcdf7fa18e90d6c40d7add3258a543ad3069a89daacb77d15c35` |
| 6 | `theorem` | [one_mul_eq_id](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-mul-eq-id.md) | 76 | `result-track:bb86c7915ebd8129bed16ce9b5060c5b658237277597ec902c747f3e650c54b5` |
| 7 | `theorem` | [mul_one_eq_id](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-one-eq-id.md) | 82 | `result-track:0a7166dfeaffcfa6da8bf649edc7103db6faf0991263721fe37a9c67365685ab` |
| 8 | `theorem` | [mul_left_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-left-comm.md) | 94 | `result-track:7ce8e72b092e15d9a2de65b9ee78f231ab841ea75f5de1112a71daeb564c4d1a` |
| 9 | `theorem` | [mul_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-right-comm.md) | 100 | `result-track:fc1e4a53d266cf9eab92ef7b9baf5a4e78624a1f84cc04cdb5d601f838acd1c6` |
| 10 | `theorem` | [mul_mul_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-mul-mul-comm.md) | 106 | `result-track:4ab6912a216fd9026be7fb57c4c47f68482a040d324b4d9eb4c15e79b52ead5a` |
| 11 | `theorem` | [mul_rotate](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-rotate.md) | 112 | `result-track:1efce5b53e91124810595fedd50608646a03d574fbe88932db6e91e929dd8e98` |
| 12 | `theorem` | [mul_rotate'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-rotate-source-edition-2.md) | 118 | `result-track:a4cad912fb2e9ad3f59c20552d76235e8b790bf70b45a9317c23ade8d867d9c1` |
| 13 | `theorem` | [bit0_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit0-add.md) | 130 | `result-track:8e74832c7b8e71ba11346a55c8d839a5734bb1cf4b3d118e5d3b766d2c78e807` |
| 14 | `theorem` | [bit1_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit1-add.md) | 134 | `result-track:7bc36148854ef42eb154c8c8055deabe7c049543974a596de00c5e833fd19fdc` |
| 15 | `theorem` | [bit1_add'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit1-add-source-edition-2.md) | 138 | `result-track:8eabc7d1cbebf86da7dab4107e7a5a9c3ca30df71a50f252bccfd61e8db823db` |
| 16 | `theorem` | [bit0_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit0-zero.md) | 150 | `result-track:9e9ea8e9ca08dca36a8e7ecab3d1d6c552c5a701bd75c1fd367ba2b3d6db4be1` |
| 17 | `theorem` | [bit1_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit1-zero.md) | 155 | `result-track:535a2c6499bd2613e927aeb806012e0fc83d8639d1c43df4dfbdc137d84e5ada` |
| 18 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-unique.md) | 167 | `result-track:780001f21aa19c4efc2b3f4f9d9899da4246e27bab9ae6c86f5f4d0e7a672d90` |
| 19 | `theorem` | [mul_right_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-right-eq-self.md) | 179 | `result-track:47d03eae13f234c6c892f5075543f6d1c59223465d57eb5497985365764eda17` |
| 20 | `theorem` | [self_eq_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/self-eq-mul-right.md) | 186 | `result-track:c46833b7fda931284ff9cdbbf5fe55cfd795029d0e66c46daf69694cae8c1ef9` |
| 21 | `theorem` | [mul_right_ne_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-right-ne-self.md) | 192 | `result-track:d028084d5c44fd69383779b8d9fd1424d7fe44d9ac142e7b9d25147dfdfb6783` |
| 22 | `theorem` | [self_ne_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/self-ne-mul-right.md) | 197 | `result-track:316e33a12656fcdd747cea525d8fbd9c6638133c33be1caf75ad4bbb54187020` |
| 23 | `theorem` | [mul_left_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-left-eq-self.md) | 208 | `result-track:525b573f03219ef5ef12fea2a3d0f5cf50f747df964a1cf590337f932b68dac2` |
| 24 | `theorem` | [self_eq_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/self-eq-mul-left.md) | 215 | `result-track:d60439f87d674e414de40d7d0256b3b8a3d0d5bcdab1730a7f9b9d23437b32d8` |
| 25 | `theorem` | [mul_left_ne_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-left-ne-self.md) | 221 | `result-track:7ab8ebefd6ac9c989fd7632a62c14180a3bc8e7b29706e30570057b1fbf251e7` |
| 26 | `theorem` | [self_ne_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/self-ne-mul-left.md) | 226 | `result-track:6ca973fb1e936d5a0ab0ed8d87ddd9bb6091b973763781abda62cc47c8c2fa72` |
| 27 | `theorem` | [inv_involutive](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-involutive.md) | 237 | `result-track:77366bad29a4ea91fbe34e0d0dccb526835c6d5a4a5836a00a1962cd1eead1da` |
| 28 | `theorem` | [inv_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-surjective.md) | 243 | `result-track:6f51839674396a4f3436b7a08007f7d58294f9f774dae1b81354e4c42de881be` |
| 29 | `theorem` | [inv_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-injective.md) | 249 | `result-track:b661ffd436647616046c13ea8f7cb14f0c2eaf43191faaec407a1d29fd6a004d` |
| 30 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-inj.md) | 255 | `result-track:7b6c2c73e6ce1fa5fb9f8b4627931756b9cc6ced082e093f5aa4e027b337a875` |
| 31 | `theorem` | [inv_eq_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-eq-iff-eq-inv.md) | 261 | `result-track:4c1206adfb264664ed3a6e8b431cf167574f58a82dc3dd671968c9cfcbc930dc` |
| 32 | `theorem` | [inv_comp_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-comp-inv.md) | 269 | `result-track:68dbf46de00f9fe29442b914801765c25954c866401fd6aac04b8236b23e1a20` |
| 33 | `theorem` | [leftInverse_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/leftinverse-inv.md) | 275 | `result-track:1e23b4a1604158e2a1ce29ec384166ad5709b904dc16758f0172a058290a18d5` |
| 34 | `theorem` | [rightInverse_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/rightinverse-inv.md) | 281 | `result-track:c6a3cb73beb499102301a9cc910b278b8c4e2baee167739031ddddef68f72b23` |
| 35 | `theorem` | [inv_eq_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-eq-one-div.md) | 293 | `result-track:0a7b2efbcbb7a4e512bcca5b9a88108696cab0102973256866a71add8d2b7830` |
| 36 | `theorem` | [mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-one-div.md) | 298 | `result-track:e6e7b99200171e535dea7e63c7e79d05d60ddd31a285bad18feb09c1e9690d89` |
| 37 | `theorem` | [mul_div_assoc](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-assoc-source-edition-2.md) | 304 | `result-track:296636b30f802119ff62cbff093efc9f99017dbf1ac9e74ac37bf4d5b48994cc` |
| 38 | `theorem` | [mul_div_assoc'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-assoc.md) | 310 | `result-track:1f9b9162d687ac1e0afb900de8c25a8d52b28fae02d20321fe285adffcefa23c` |
| 39 | `theorem` | [one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div.md) | 316 | `result-track:f052ee0b4ca378e3a18c9d38cb168f72c19c87cfb404a15892cbc17eb9014995` |
| 40 | `theorem` | [mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div.md) | 322 | `result-track:c4ed0831f8fe942489d09ed88ffad01aeac283640308ba347c91d236f84c47e2` |
| 41 | `theorem` | [div_eq_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-mul-one-div.md) | 327 | `result-track:2d5d1ead907fecfd8be7b4e408c22846e37a0b770714b824583d7eb7c8eb6695` |
| 42 | `theorem` | [div_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-one.md) | 338 | `result-track:b21dd3a2c10b8120091496319d823cb92a209b2ab4e5bf3944fe4bc8de5ebc39` |
| 43 | `theorem` | [one_div_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div-one.md) | 343 | `result-track:55b9c22ba2cb65d3c24f91c6dbd1f4e792c8b815694e783604ca7b9c3641e2ea` |
| 44 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 357 | `result-track:efd91c42ed9ddf055b365ed3d4e1b2f7c198ff2c2dbc2869ae0792d7db21dd91` |
| 45 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 363 | `result-track:d3d1e6873c210cad5410de9e4ae469f43a070bade9d3e86848bda89084991d47` |
| 46 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 369 | `result-track:dee60e263273734163c609c33c643cb0892115e1e3c84f09c2d0fc5de2bc9eb3` |
| 47 | `theorem` | [eq_one_div_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-one-div-of-mul-eq-one-left.md) | 375 | `result-track:c02286960095be2871abc0763d81c99ddb34d61b6f7d059f403bcf1682c2be60` |
| 48 | `theorem` | [eq_one_div_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-one-div-of-mul-eq-one-right.md) | 381 | `result-track:d6134e553d796299a4f0e2fef17a06c7146d5ff3f52c3f08467c549245549744` |
| 49 | `theorem` | [eq_of_div_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-of-div-eq-one.md) | 387 | `result-track:3722d3741956d7621f3ff4eb5ade40bab0e60bc570fc3370b42e84b3723f15b4` |
| 50 | `theorem` | [div_ne_one_of_ne](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-ne-one-of-ne.md) | 393 | `result-track:13166adf645eef663e8cf07781937f8ebfc92d5a6b74678a4b19ab3cde1c4b1a` |
| 51 | `theorem` | [one_div_mul_one_div_rev](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div-mul-one-div-rev.md) | 401 | `result-track:12d48f84d93b1502dada17959227878c7db18dbcf532da719eac4fe68d486333` |
| 52 | `theorem` | [inv_div_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-div-left.md) | 406 | `result-track:57a6897e62e058106f1aad56b68cb6a615c14690c3df80fb360275af5f39954b` |
| 53 | `theorem` | [inv_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-div.md) | 411 | `result-track:82b65c3a35264947ff2506fd04fe0df917c18170fbeb37aec029be721610e60e` |
| 54 | `theorem` | [one_div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div-div.md) | 416 | `result-track:d7db900765bc6f6e7f152cef0b34dd17be3ce76f47289e4ecdc881ca98c9d138` |
| 55 | `theorem` | [one_div_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div-one-div.md) | 421 | `result-track:57e8c59f5a9b1ceba11f3ad66d87883d657f14c9b964ef25c446efe4ef12fc2f` |
| 56 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/instance.md) | 426 | `declaration-track:fc9478781a7dd9bf1b0aa25c88d4962e856869de375f0bb242cce29c3a8766c0` |
| 57 | `theorem` | [inv_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-eq-one.md) | 433 | `result-track:f338728cbc94e6824f18acf89c81a1ca079fb09ce2ccae08cd0c34ef99b3a9a5` |
| 58 | `theorem` | [one_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-eq-inv.md) | 439 | `result-track:42440578941b26ed2cb938c8ebaacd5ad1e6a25fbc7de63f67df5c55bcc0e575` |
| 59 | `theorem` | [inv_ne_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-ne-one.md) | 445 | `result-track:638c7fd27c72f6de92f599f1b481873ca4483a74c70c26061bf8f0ea271ad4a3` |
| 60 | `theorem` | [eq_of_one_div_eq_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-of-one-div-eq-one-div.md) | 451 | `result-track:a45a3a8e264d0fcbf1c785e685464b54297971424d31b28e533b9ea230cbd51c` |
| 61 | `theorem` | [div_div_eq_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-eq-mul-div.md) | 459 | `result-track:28ca57bb61b491f1c9945c6ea9056dfc883c632268a5b963ba34673635c2f718` |
| 62 | `theorem` | [div_inv_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-inv-eq-mul.md) | 464 | `result-track:6658e3c8ccae2a6802ec5dee2feb3832745bec1069a1748044ed419b725c72d4` |
| 63 | `theorem` | [div_mul_eq_div_div_swap](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-eq-div-div-swap.md) | 469 | `result-track:1b694bb049a58ae7873facd791727df2b9f46506480826541b4754028c2534ae` |
| 64 | `lemma` | [bit0_neg](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/bit0-neg.md) | 480 | `result-track:20045dcd345f418da433a0001fc9cd2b2878153b8efafc0dce5c5e04cff44317` |
| 65 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-inv.md) | 492 | `result-track:3f219ade23e82e9c1cc2182e4969dcde702249b6bf8e3e0c70a8ce6d64763d49` |
| 66 | `theorem` | [inv_div'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-div-source-edition-2.md) | 497 | `result-track:f137e77ea64a5b01e15d64b5dd4c46eb95b3563399ee050eb05029f2024b0960` |
| 67 | `theorem` | [div_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-inv-mul.md) | 502 | `result-track:a8a4a6aca81dca425b407e1070fa3afc15edd1d7c1e900760e1d07180410cbcc` |
| 68 | `theorem` | [inv_mul_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-mul-eq-div.md) | 507 | `result-track:da4ef60a8887f678a8b4c2597a848ba4557739180dc7cf4663e0b92accf11f00` |
| 69 | `theorem` | [inv_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-mul.md) | 512 | `result-track:8cbc46ed040e7856409669414a213d6da325d1153e49fc81e958c8c5c83db04c` |
| 70 | `theorem` | [inv_div_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-div-inv.md) | 517 | `result-track:07e99716bc82eb0bbf7074fcb13137fb80e53c3d61a86116fa17e81dafc0d018` |
| 71 | `theorem` | [inv_inv_div_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-inv-div-inv.md) | 522 | `result-track:05cb04535d0682bf1e2328d6e6a2342c40e2d0876c91ea4d107b76e8bd3ed361` |
| 72 | `theorem` | [one_div_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/one-div-mul-one-div.md) | 527 | `result-track:080e0a21744be21d83d5e01946b208d1c8fc6789c2dfd64c58f81bf1302fa8a6` |
| 73 | `theorem` | [div_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-right-comm.md) | 532 | `result-track:f53f5fbf7a29d70f1c39e72d5dbb5ebc38d662aa0caea8a72c2ce14da6723a24` |
| 74 | `theorem` | [div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div.md) | 537 | `result-track:c8e2e8d27c02f2281a64eddaaeefd76473714bec2cbb186a654f655bc4dace42` |
| 75 | `theorem` | [div_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul.md) | 542 | `result-track:057e81027120936c4e8312c4e98884cf7b1e32aa2442f897539c9c10f59f3909` |
| 76 | `theorem` | [mul_div_left_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-left-comm.md) | 547 | `result-track:68eec5fdab07b778c05b95aedf9e47fd4c81fd79162ee889df89a95fdd04de06` |
| 77 | `theorem` | [mul_div_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-right-comm.md) | 552 | `result-track:12d7e72d88d3da45a7bb799af8a1ad1460b583f7d62c26fce6d0b128cadbed96` |
| 78 | `theorem` | [div_mul_eq_div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-eq-div-div.md) | 557 | `result-track:1905cf5fcdefd7710b5dcae0e9628eee301d92f844f95cf6b591efac452aebc0` |
| 79 | `theorem` | [div_mul_eq_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-eq-mul-div.md) | 562 | `result-track:067fd2292f6b3b51a639345c8be6489f3b4c168fe7ef378e860be2babb639993` |
| 80 | `theorem` | [mul_comm_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-comm-div.md) | 567 | `result-track:a8f71634ea2047d4b74c09c3afe4046f557869229bb2cf91e20b7cacb47c1cef` |
| 81 | `theorem` | [div_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-comm.md) | 572 | `result-track:ee6fccda21de14766f49430a97e63e01c57ad7e7e9cd128b8add5ca4398aa398` |
| 82 | `theorem` | [div_mul_eq_div_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-eq-div-mul-one-div.md) | 577 | `result-track:fb22447e5a387e998bdbcce70610694f729556cac6d6ca6a86fb527cb4342549` |
| 83 | `theorem` | [div_div_div_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-div-eq.md) | 582 | `result-track:f6a53c8fc31440f74a796ddf81465e683dbd75ec01ab7e5b6330f33a7372d077` |
| 84 | `theorem` | [div_div_div_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-div-comm.md) | 587 | `result-track:a77edd4fb020906151ca6838dab2a3065107513757ddfe60fc96a2c0afcac7e8` |
| 85 | `theorem` | [div_mul_div_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-div-comm.md) | 592 | `result-track:631b66f6fe7bb34cc5fdc967292bd7611541488dcaa3f365d43949075a1f9962` |
| 86 | `theorem` | [mul_div_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-mul-comm.md) | 597 | `result-track:bea6a62a5c3986c3885f5b91852314e3d7b06e345b1d627cc8bad41978752bbd` |
| 87 | `theorem` | [div_eq_inv_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-inv-self.md) | 608 | `result-track:4fb6171acaee4b501b33b05ccbcd4ffdea8c5ec623451c39c2d4c4158a686213` |
| 88 | `theorem` | [mul_left_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-left-surjective.md) | 613 | `result-track:5a2974b536fc3d76e2230cddb9311067ff0e02f6c55bc08e3b2d510714f81131` |
| 89 | `theorem` | [mul_right_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-right-surjective.md) | 619 | `result-track:9279b81d7da3621fc1504dc7690d2f9c1f36c37873687fb1053e20ffb4972bda` |
| 90 | `theorem` | [eq_mul_inv_of_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-inv-of-mul-eq.md) | 625 | `result-track:36bdfd1e03a4021ba435f5473ce6a685c1df44980bb1ba1d8569cc219704acf1` |
| 91 | `theorem` | [eq_inv_mul_of_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-inv-mul-of-mul-eq.md) | 630 | `result-track:6c4b133b39cde28ae876098e13b1ab06348e7e780b3be69d7dca991b328dc3be` |
| 92 | `theorem` | [inv_mul_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-mul-eq-of-eq-mul.md) | 635 | `result-track:9e1cb8d57cac62d483117ce9de44433f3d05346f21256db42b2340ece59b295f` |
| 93 | `theorem` | [mul_inv_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-inv-eq-of-eq-mul.md) | 640 | `result-track:6d9f067ef1637614bb1082ff6f4a42ce3c44add3a2d0192755536f60b5b9bf27` |
| 94 | `theorem` | [eq_mul_of_mul_inv_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-of-mul-inv-eq.md) | 645 | `result-track:fbca2ff10a662735da9b0b4c26ab14ba26edfee45a250c84095d9c6429af9d28` |
| 95 | `theorem` | [eq_mul_of_inv_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-of-inv-mul-eq.md) | 650 | `result-track:9ce83478788fe56d6858ddd9ff925a1711ef9e9f9bf443847a400f80d47e2f40` |
| 96 | `theorem` | [mul_eq_of_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-of-eq-inv-mul.md) | 655 | `result-track:02fe99dbf4360315949178414cae1c6a981a77269f3a17a05935d8d1a2b5716e` |
| 97 | `theorem` | [mul_eq_of_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-of-eq-mul-inv.md) | 660 | `result-track:2298a1d8c190b4f62bba9a3dbf36f611c1acce0d69379271d882d7ae50f84c97` |
| 98 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-one-iff-eq-inv.md) | 665 | `result-track:9400abaf0d3d13941461d9b147478dc8b6ce5eac0a54ee7843e51354292a7aa7` |
| 99 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-one-iff-inv-eq.md) | 671 | `result-track:6d8da16602debbf72bf35419ab1df9f581665bca341436fcd00915467be660e9` |
| 100 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-inv-iff-mul-eq-one.md) | 677 | `result-track:68deb4dd5ff4ddefaba77bb3557c1989c4286c04357e213a536c4930c1a39461` |
| 101 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-eq-iff-mul-eq-one.md) | 683 | `result-track:198fe8bd6047e36d1a1ec54e2c03779312b12af275d44282799a4e1a6d9c4d7e` |
| 102 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 689 | `result-track:2dae0fa98cbb8f035d048cc389f002549b1a670ca7b473a0494143ebbf02158e` |
| 103 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 695 | `result-track:3c1d5f75599f7c57c663cac920a760c72ba73aa17c65ce653746f30b24076887` |
| 104 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 701 | `result-track:5cca848102c12728d28d4b552a7af7c2ee3da8cd8deced6317ad20d6ff16a7be` |
| 105 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 707 | `result-track:7ede1727dd50e37f4b07c017bafd91bd9c68fb9e8317df058d3be82cc6502876` |
| 106 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-inv-eq-one.md) | 713 | `result-track:b22cad555a20797022e749fc0e9d3f2077db2fd734e74c95e33590e2e076f884` |
| 107 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/inv-mul-eq-one.md) | 718 | `result-track:feb3fd90db00fe3ebc3df34799e7f6cdf77d22f15d29f4d4fb1b5e1fa951748f` |
| 108 | `theorem` | [div_left_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-left-injective.md) | 723 | `result-track:c500a1b13c42dd7745273c92485d5e229b559bf611797a05aee5a8ef41442772` |
| 109 | `theorem` | [div_right_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-right-injective.md) | 731 | `result-track:ae40e95c9ff97c5f21302d5d89a45c88e48b6330fd60e18097315f1d64b7a580` |
| 110 | `theorem` | [div_mul_cancel'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-cancel-source-edition-3.md) | 739 | `result-track:7dec2dd3900af9442210c8c0849b6bba2343bfaacb7aab4e9a838725c396331a` |
| 111 | `theorem` | [div_self'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-self.md) | 745 | `result-track:7a2c53b5f35bcc16ec8c72db1448786ce6dcf17ddc45a28c62a120f808878580` |
| 112 | `theorem` | [mul_div_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-cancel-source-edition-2.md) | 750 | `result-track:b17c5f14edb76147a372def53d23ed099d90b36e933cd60416446428ae9bc181` |
| 113 | `theorem` | [div_mul_cancel'''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-cancel-source-edition-2.md) | 756 | `result-track:52f5dcf5d1e3dd9c2f469a597e7d84c77536229ef4fd58b2cd52c2acd4d98fbf` |
| 114 | `theorem` | [mul_div_mul_right_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-mul-right-eq-div.md) | 761 | `result-track:b85fa000ce002e53ef6ebd57d60856304504e944a6ca5c0aa836912cf7b24c92` |
| 115 | `theorem` | [eq_div_of_mul_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-div-of-mul-eq-source-edition-2.md) | 767 | `result-track:d47d03991f9e7a12c3e013141361dbc572624666e7ef3b13a1081e3c230cd443` |
| 116 | `theorem` | [div_eq_of_eq_mul''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-of-eq-mul-source-edition-2.md) | 772 | `result-track:a4042638c5bb2aa77a15e1f881df51b2d6a1dd3977bca2d5630b7746aab69864` |
| 117 | `theorem` | [eq_mul_of_div_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-of-div-eq.md) | 777 | `result-track:9ab85c154a004dc014a57909ba340b09ffa009f48eff77067ce38c35198206da` |
| 118 | `theorem` | [mul_eq_of_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-of-eq-div-source-edition-2.md) | 782 | `result-track:f50346640555f0863c87d192645839d9034e7c173d91ee77dbdd25957f7f3ebb` |
| 119 | `theorem` | [div_right_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-right-inj.md) | 787 | `result-track:f3144ffd5a72328d1d726f8d0a4e3813f2b9edc860371b2e084188c2ffb6a191` |
| 120 | `theorem` | [div_left_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-left-inj.md) | 793 | `result-track:f026222cfaf64a32e61c4473e7e885e51b787fe1f5c049fa7caa82f381a6e8a4` |
| 121 | `theorem` | [div_mul_div_cancel'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-div-cancel.md) | 800 | `result-track:4a72fa60b2a9b9f172e22d43068a252c9bb80779b7ef88fa6317ff4d0dd87f55` |
| 122 | `theorem` | [div_div_div_cancel_right'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-div-cancel-right.md) | 806 | `result-track:b94df9943d6382a5c6879164a5d6ddeddd4b4a6a35e2b2fa31b9f6a4230d827a` |
| 123 | `theorem` | [div_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-one.md) | 812 | `result-track:eab424b38058d23d713901a22fc87b321fd9bd8aaf1369b14eff441b6b27e5db` |
| 124 | `theorem` | [div_ne_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-ne-one.md) | 824 | `result-track:124984a7c4d82ca6b14ddb4c93a67d40c1f9612070dc6f89c6f2584ea198b9fe` |
| 125 | `theorem` | [div_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-self.md) | 830 | `result-track:ab3c1ae0cf99f200fd2a6f36616efc05d501d366b7e5e9062af2194b16660362` |
| 126 | `theorem` | [eq_div_iff_mul_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-div-iff-mul-eq-source-edition-2.md) | 835 | `result-track:e86823b729f5fa9208aef3e173151fb4fd0089eeb5bdb41d2e96d756ba81f1a6` |
| 127 | `theorem` | [div_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-iff-eq-mul-source-edition-2.md) | 840 | `result-track:32bcd2d92f61712a2601eba3aa45eac67c926b2ac856fa00c7df07803651bbf5` |
| 128 | `theorem` | [eq_iff_eq_of_div_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-iff-eq-of-div-eq-div.md) | 845 | `result-track:bf475ac6954102a4880c66b62bd2cc8b857dfd75e835eac5c7ed8c1919439a98` |
| 129 | `theorem` | [leftInverse_div_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/leftinverse-div-mul-left.md) | 851 | `result-track:5f407f184e24d6752f2186c2c50d4505ef2f8fed7d55ebbd66d18b4f374af6b3` |
| 130 | `theorem` | [leftInverse_mul_left_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/leftinverse-mul-left-div.md) | 857 | `result-track:438d4b03e6b3f86c15aaa6a0815adefb92f0c0ec6c78ddc34eac9736292c3946` |
| 131 | `theorem` | [leftInverse_mul_right_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/leftinverse-mul-right-inv-mul.md) | 863 | `result-track:753ead9326a81972cdb569d5e5ef04e8be80bd68890dec13709dff944fc6e454` |
| 132 | `theorem` | [leftInverse_inv_mul_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/leftinverse-inv-mul-mul-right.md) | 870 | `result-track:b98ca5ebdaa2047a66113806ed60273e660c3ec1c298b384f35225c54ddc8fc0` |
| 133 | `theorem` | [exists_npow_eq_one_of_zpow_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/exists-npow-eq-one-of-zpow-eq-one.md) | 877 | `result-track:ea17483f94704b800e69a89f748572da5d3285da08f23cf44660e7f423a89669` |
| 134 | `theorem` | [div_eq_of_eq_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-of-eq-mul.md) | 899 | `result-track:861f49f59c182f67388f17f7f8eebd1af7e946835926975b7f062afa3c5ad9d0` |
| 135 | `theorem` | [mul_div_mul_left_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-mul-left-eq-div.md) | 905 | `result-track:87b8276a78a40a7ed934d514285f8fefcf3c6b4f670dc842059a6db0a880ff58` |
| 136 | `theorem` | [eq_div_of_mul_eq''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-div-of-mul-eq.md) | 912 | `result-track:15943df3820d24906841e5e8de58dd3828cd9b052a770145526bcf5a100f0140` |
| 137 | `theorem` | [eq_mul_of_div_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-mul-of-div-eq-source-edition-2.md) | 917 | `result-track:ad104a3ac0d8b819b02bb92d770da2f4e2677fe16c1c03c8835d4cfdf3c0287a` |
| 138 | `theorem` | [mul_eq_of_eq_div'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-eq-of-eq-div.md) | 922 | `result-track:d6936e0c08143f923e73d9e9b6bd177897a173088eb038cff49dfb2d9e919ff7` |
| 139 | `theorem` | [div_div_self'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-self.md) | 929 | `result-track:69ddb1faef8d31211a6eb40c7a9fa925d82b388df61134920a4b088c6bd9698c` |
| 140 | `theorem` | [div_eq_div_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-div-mul-div.md) | 934 | `result-track:d5fcaa5200362dd58b92224c1d5b5f04f7fd4074ff263e0fcc161e4937ecd826` |
| 141 | `theorem` | [div_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-cancel.md) | 939 | `result-track:1e63cdcb5ae92675328b6efd511705aa09c641b2103444c76e1c8c2e6b626f82` |
| 142 | `theorem` | [div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-cancel-left.md) | 945 | `result-track:9d424ff50e27688044be33b3b2c113b5c26710143d75bb4174a7b1e2694347ae` |
| 143 | `theorem` | [eq_div_iff_mul_eq''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/eq-div-iff-mul-eq.md) | 950 | `result-track:bcc1db313b19a1092ec834deed9c01b7026617355cad5e03de404fdaddd397d4` |
| 144 | `theorem` | [div_eq_iff_eq_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-iff-eq-mul.md) | 955 | `result-track:015104624e0cca1869669dfcbbcb89f6753cf022eb610b1389c33f8697707ed3` |
| 145 | `theorem` | [mul_div_cancel'''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-cancel.md) | 960 | `result-track:798e5724005fc2685c7adbce09019cb4d52284783228c309d885e812d5dc81b2` |
| 146 | `theorem` | [mul_div_cancel'_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-cancel-right.md) | 965 | `result-track:c19b077b8a6866bc3277b619fe8a1b2a87a9dc063a02485e0a30d6fe8219837e` |
| 147 | `theorem` | [div_mul_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-cancel.md) | 971 | `result-track:44855553efc4ea21d29c517a6762f8664df8b85745f95e7636d09bd219a82264` |
| 148 | `theorem` | [mul_mul_inv_cancel'_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-mul-inv-cancel-right.md) | 979 | `result-track:5808a72a4f9449b6fb06f9ae83b3728cbbfe2299b1b69c44014b9978ab9c879d` |
| 149 | `theorem` | [mul_mul_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-mul-div-cancel.md) | 985 | `result-track:c5e2d9063ac40324bdd4c7f870f1d63b9002339c3d2d03064d2ce68e13588e2a` |
| 150 | `theorem` | [div_mul_mul_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-mul-cancel.md) | 991 | `result-track:f69921a22a61f3e71259228fc9972871ad932d8a323a71245982829871c58d1e` |
| 151 | `theorem` | [div_mul_div_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-mul-div-cancel-source-edition-2.md) | 997 | `result-track:b7d5f79899e2de99e106baa1803f0a762b1ef6023d01ab2a4aaebc37707728b6` |
| 152 | `theorem` | [mul_div_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/mul-div-div-cancel.md) | 1003 | `result-track:f185548192e771d9a57390bd71ab8ab905ce247ac31b405171ab8f4c27e547c1` |
| 153 | `theorem` | [div_div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-div-div-cancel-left.md) | 1009 | `result-track:b250ea5dc3a23b87dcbf327baa0254bebd29b80c77bcf7e139385299503d149b` |
| 154 | `theorem` | [div_eq_div_iff_mul_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-div-iff-mul-eq-mul.md) | 1015 | `result-track:7bb233bfba0aa2699ea9113c6f50a56a56d71c07d18366e90ccc1b59c4a9b78b` |
| 155 | `theorem` | [div_eq_div_iff_div_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/div-eq-div-iff-div-eq-div.md) | 1022 | `result-track:bfa48b26051dd9f807e6658bf8c5149bb074a4968625b4f5b5aea182dfc76c97` |
| 156 | `lemma` | [multiplicative_of_symmetric_of_isTotal](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/multiplicative-of-symmetric-of-istotal.md) | 1034 | `result-track:1997e551f14f6efaaad4d7b96d0b287d37c4dd3637955bddb729720c2e06a9a6` |
| 157 | `theorem` | [multiplicative_of_isTotal](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicBit0Add.lean/declarations/multiplicative-of-istotal.md) | 1060 | `result-track:4f03e94c8d0f45bc59122847865d30135376af62b6bf4b71a598dc743086dfe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47d1b7d5b80cdb297956f356af3e72ab9b48516a2905e22cdd3b0b9f7947e866 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantddd9c65f283b386bf199550d356e7242477d938632ff5579dd09d9e528343ed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
