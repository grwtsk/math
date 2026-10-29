# Verification target: Ring Theory Multiplicity Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "444a107e19247b6889c7d55808d01e9936973bbe",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `444a107e19247b6889c7d55808d01e9936973bbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity.md) | 44 | `declaration-track:924d77bd292fa94c68dc0d98f8f3ca1c0ebf301326f2c940e6357e516623cfe0` |
| 2 | `def` | [Finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite.md) | 56 | `declaration-track:adbe01f79ae2e56d91ca79ba8c34f020abb350406a0e51d823be163e6c5faf43` |
| 3 | `theorem` | [finite_iff_dom](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-iff-dom.md) | 60 | `result-track:479a9e3c9eab99670a587760848326f8b36ab04eb48e6740814b930ddc179710` |
| 4 | `theorem` | [finite_def](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-def.md) | 65 | `result-track:d5e9b53c91329d8d2bc53971cd4fa8bf17d341964f8c4e4ebd3b511dfe06fd9e` |
| 5 | `theorem` | [not_dvd_one_of_finite_one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/not-dvd-one-of-finite-one-right.md) | 69 | `result-track:dfc2cb2b2326ff0dc7e131888df4d622d238597168e79e309a2e434aef364074` |
| 6 | `theorem` | [Int.coe_nat_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/int-coe-nat-multiplicity.md) | 74 | `result-track:5c9870b552ac3b47ba284c5ea2003919973545d07fcdf50fafdb22bfe254af43` |
| 7 | `theorem` | [not_finite_iff_forall](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/not-finite-iff-forall.md) | 85 | `result-track:246f25d7fd8edb717c5a4413a413b518810e1ab4384add5b9e42e941c20cf6d7` |
| 8 | `theorem` | [not_unit_of_finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/not-unit-of-finite.md) | 95 | `result-track:0d4bea8f70821d2bcd9a2a3b7ddcb6b35e672efcac079cf49f3915840633a8fa` |
| 9 | `theorem` | [finite_of_finite_mul_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-of-finite-mul-right.md) | 100 | `result-track:52a9c314e7a2e12c9e103fab8fd7e6fe06c53b3aea8069c55a27975e0ad34181` |
| 10 | `theorem` | [pow_dvd_of_le_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pow-dvd-of-le-multiplicity.md) | 106 | `result-track:02929873e8805c4a36eec2bbd99c1816015f8819d737c3630c8d0dc8cfab4dc4` |
| 11 | `theorem` | [pow_multiplicity_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pow-multiplicity-dvd.md) | 117 | `result-track:e1ec10766e68d4fe04d1756628242e6cc3c52e42fd2996dd62f3b2f3b5a8d63b` |
| 12 | `theorem` | [is_greatest](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/is-greatest.md) | 121 | `result-track:a647c6e656ea816f0f29b85d4e2341cd731d4a070a6a22741fb42edc46650e7f` |
| 13 | `theorem` | [is_greatest'](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/is-greatest-source-edition-2.md) | 125 | `result-track:d500618c7bf2f45e779993b4dfa1b83a81d034a716dd0ea5d6e5c82ea939fb2a` |
| 14 | `theorem` | [pos_of_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pos-of-dvd.md) | 130 | `result-track:061577f18ab6ed08aa3f947f5792e0fc7f657330e408a9a725a78ae04b43b682` |
| 15 | `theorem` | [unique](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/unique-source-edition-2.md) | 136 | `result-track:9d27052cb92e5a2b7f7213cc3c1aa2e7e27ee8728d58fe127c7ff24cb242a3b6` |
| 16 | `theorem` | [unique'](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/unique.md) | 144 | `result-track:672abc1c1c0e5d28982fa496dbc6a49343f2c85d81e9ef79be2001db0b8b9e86` |
| 17 | `theorem` | [le_multiplicity_of_pow_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/le-multiplicity-of-pow-dvd.md) | 149 | `result-track:abe31535a3a655a7c39817e94affd3dbe68195746d232a439a263374d7c333cc` |
| 18 | `theorem` | [pow_dvd_iff_le_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pow-dvd-iff-le-multiplicity.md) | 154 | `result-track:bbb956149777fc197d46f3d70853544aae55d5714f9c459f64a01a6253993b49` |
| 19 | `theorem` | [multiplicity_lt_iff_neg_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-lt-iff-neg-dvd.md) | 159 | `result-track:6435c307442116bc10cae133566e227365caeb93a7bcc3f4303bdbbf31b63419` |
| 20 | `theorem` | [eq_coe_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/eq-coe-iff.md) | 163 | `result-track:e61a52e1973cbbc785e3ff3ee549631ed6798d55f06db9ecb647f45267f5fc49` |
| 21 | `theorem` | [eq_top_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/eq-top-iff.md) | 175 | `result-track:f3a2c9493399b1c86d6f6cca116a8c239dbd92b6dd402eb5aa33b245d5a32a47` |
| 22 | `theorem` | [isUnit_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/isunit-left.md) | 189 | `result-track:209d19b4c67dc8addcf89485a6ba93e850b5a9e2dbef41f7dc1e8eac7d68769c` |
| 23 | `theorem` | [one_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/one-left.md) | 194 | `result-track:adf6aa33c07dac120ce0f72d9300b5ca883929f2ec56312915375a147f44b9b2` |
| 24 | `theorem` | [get_one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/get-one-right.md) | 199 | `result-track:88b5015f8bca9759df4adf81c637a8d95dca4f4a5d15fe0fba9200220d4856e8` |
| 25 | `theorem` | [unit_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/unit-left.md) | 205 | `result-track:eb8b3eaee81a8af327b87c6dea161b8aab5ab11a96125c1969b7578f43a07cef` |
| 26 | `theorem` | [multiplicity_eq_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-eq-zero.md) | 209 | `result-track:9c2711ff123ae580b6823563e0d5a4da29b3b0f2d41829404eb38f059a9a7e9e` |
| 27 | `theorem` | [multiplicity_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-ne-zero.md) | 214 | `result-track:5baa3049d0317e9801ca88d7d06916c5ad1311a4a7e5f0eb8e622667d335c8b3` |
| 28 | `theorem` | [eq_top_iff_not_finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/eq-top-iff-not-finite.md) | 218 | `result-track:a3e9c3391717e99175f87b5310ebc4d0f3e8dd8478067f43dde5a4af86e7163e` |
| 29 | `theorem` | [ne_top_iff_finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/ne-top-iff-finite.md) | 222 | `result-track:0d6fb41a154bf003866a3f3ae855c95aafdbc760f8a8ae0a5b7ac62dd3cc8ee1` |
| 30 | `theorem` | [lt_top_iff_finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/lt-top-iff-finite.md) | 226 | `result-track:c8fd92585cbeb3910c4869133ff9f474f73e6d5980e9049408a7137a0875166b` |
| 31 | `theorem` | [exists_eq_pow_mul_and_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/exists-eq-pow-mul-and-not-dvd.md) | 230 | `result-track:0c3de6eb687fa9ac4b1894fdb846d50e18ccdfcb196aef76c21cc7bcf375c7fb` |
| 32 | `theorem` | [multiplicity_le_multiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-le-multiplicity-iff.md) | 242 | `result-track:0eeaafc670758122361e68dc99d9812d241a5caa7a7b9846389acd75a0960ab7` |
| 33 | `theorem` | [multiplicity_eq_multiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-eq-multiplicity-iff.md) | 253 | `result-track:b4716044a978552ef65b6624d6881a44eadc89870d78e362a3ecd3f3bb432bf9` |
| 34 | `theorem` | [multiplicity_le_multiplicity_of_dvd_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-le-multiplicity-of-dvd-right.md) | 262 | `result-track:5d4de0088a0ab8000a514e323d68087688c7f40dfc91983bb38f2aa9b6a72146` |
| 35 | `theorem` | [eq_of_associated_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/eq-of-associated-right.md) | 267 | `result-track:9ac9ae35a12b4d7b9070540a725fd06564f9a67b36dc365dd5183f420016d762` |
| 36 | `theorem` | [dvd_of_multiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/dvd-of-multiplicity-pos.md) | 273 | `result-track:9309f53984c1ffcdd01f0fc3fb7bd41a43867be3f1cef42510b5edbeb8eb58fe` |
| 37 | `theorem` | [dvd_iff_multiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/dvd-iff-multiplicity-pos.md) | 279 | `result-track:dddf978813405d6fad095209b0a384b574a3fd3100af09e2c2c58f9270510c18` |
| 38 | `theorem` | [finite_nat_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-nat-iff.md) | 288 | `result-track:5554336e946cce2e4f8de58b4df036b966f5ea16988b29adbbcba8d4dd33d505` |
| 39 | `theorem` | [finite_of_finite_mul_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-of-finite-mul-left.md) | 314 | `result-track:bb0e475e3ca46f051e52d6c0471354aae536fe791eaafa5dd732d2a75bf7d50f` |
| 40 | `theorem` | [isUnit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/isunit-right.md) | 320 | `result-track:439a18e447b909c0c410bf9ea0b2d82e7f545a66cfd001ca856ea39ab773c607` |
| 41 | `theorem` | [one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/one-right.md) | 327 | `result-track:0753d1de184a793d35469d1da1fb6726c0426d070fc2d7ec6478f31780ead28d` |
| 42 | `theorem` | [unit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/unit-right.md) | 331 | `result-track:41281238665727a796f193ce25a9dbe147ff85f32a95bb354d1e5527e5332e2e` |
| 43 | `theorem` | [multiplicity_le_multiplicity_of_dvd_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-le-multiplicity-of-dvd-left.md) | 337 | `result-track:9eb5e4b838970db41ecb866630bbd2737c939db106b03f9fea581cc12bfa72f5` |
| 44 | `theorem` | [eq_of_associated_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/eq-of-associated-left.md) | 342 | `result-track:b3715c36d1d85e406fd1af33a6a898fa07636ea213743c3cc7fe0f88abf101c7` |
| 45 | `theorem` | [ne_zero_of_finite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/ne-zero-of-finite.md) | 357 | `result-track:9b08e813c46950bd69011ce9a6c8d8bb940f0ab31bfddb83d1f2e1536d897764` |
| 46 | `theorem` | [zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/zero.md) | 365 | `result-track:67b1de986445d4e6204340a5ac36344224136339228f532f955f2507973f559c` |
| 47 | `theorem` | [multiplicity_zero_eq_zero_of_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-zero-eq-zero-of-ne-zero.md) | 370 | `result-track:5b5b221b952d5813fbe300fbbac23c10b4e98813c9734dd541a71deee9af141f` |
| 48 | `theorem` | [multiplicity_mk_eq_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-mk-eq-multiplicity.md) | 382 | `result-track:a4a4fe6d15efe36cc0718f53d01a5449a79bc4fc90fed24a382cf82c16774d8c` |
| 49 | `theorem` | [min_le_multiplicity_add](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/min-le-multiplicity-add.md) | 409 | `result-track:b5e82b3a4a273efdf17647f0c91b535e0d9cf42745dc666405be11cd491d6a0c` |
| 50 | `theorem` | [neg](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/neg.md) | 427 | `result-track:9bf13954338ae798e40c6d5b57f6b7aa889cb83133073e19dc2422c09751a00d` |
| 51 | `theorem` | [Int.natAbs](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/int-natabs.md) | 436 | `result-track:6ef2a9bf5479fa5d6878ec12f5de8a5a5d5ebf80a1d93da7a9c3db06a5a59f7f` |
| 52 | `theorem` | [multiplicity_add_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-add-of-gt.md) | 442 | `result-track:931dbe18b05fb23f2c34a3a123f80c718223534141fc5a7112ed94f40df0f72f` |
| 53 | `theorem` | [multiplicity_sub_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-sub-of-gt.md) | 460 | `result-track:437bb99ca4a59fc5e0e0ec1c80a5064581d293a23b40be0e6729efa6fa4c0ed2` |
| 54 | `theorem` | [multiplicity_add_eq_min](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-add-eq-min.md) | 465 | `result-track:135d8a8371441916e616c43170db6a9e8c6c2490263423d1bf520a1402f5cbc5` |
| 55 | `theorem` | [finite_mul_aux](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-mul-aux.md) | 483 | `result-track:13087ad5b6f938c05005b77f42b6661643e4302eb8cc1dd4a2fea7a1a163d538` |
| 56 | `theorem` | [finite_mul](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-mul.md) | 517 | `result-track:485df1ac683231e66c20e7c042f7c6a08f2c9b9607bfed5100e0ace8f067a693` |
| 57 | `theorem` | [finite_mul_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-mul-iff.md) | 521 | `result-track:3df7b208359b9d7a5b5bb22d3d8e9317a7a4dfbfd2d2795efa0e3ddf4ffbf211` |
| 58 | `theorem` | [finite_pow](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finite-pow.md) | 526 | `result-track:114080f1f6e3a68561a755f442d6809c520c3968beee81e42aadf6e33b7df408` |
| 59 | `theorem` | [multiplicity_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-self.md) | 534 | `result-track:d583b33406d6151ac5e377a8766028704504e752916a3166023b4532b12ac232` |
| 60 | `theorem` | [get_multiplicity_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/get-multiplicity-self.md) | 541 | `result-track:e922f4860115bb7ba1981c3e33f639f041b85d494465ee3ba3eea034aa5c3195` |
| 61 | `theorem` | [mul'](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/mul.md) | 551 | `result-track:3b6c4ad651407a5317ad4591031553d46af50e12d4869df49b783192913466fe` |
| 62 | `theorem` | [mul](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/mul-source-edition-2.md) | 581 | `result-track:ae70b31597569dcbc7dfeaa2e19f7bdcdaf5e4414fd87c721f2f3258a420a745` |
| 63 | `theorem` | [Finset.prod](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/finset-prod.md) | 593 | `result-track:295dbce485a024386b4f9ee987b48be1b8f6bc1e7f30a702c8725d1f86a21c21` |
| 64 | `theorem` | [pow'](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pow.md) | 604 | `result-track:1284b367ce4a91438c5297f09431700baafeea21e359c5a4650c8321c6dad11a` |
| 65 | `theorem` | [pow](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/pow-source-edition-2.md) | 614 | `result-track:9fd4c335eddcd63eb63c9253a083605634ce8767c9c58c3c464c5ae4f240b736` |
| 66 | `theorem` | [multiplicity_pow_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-pow-self.md) | 619 | `result-track:11ef95d7f3a703211ccaa3575d05e0760330d614448e8ec2698bc848ef949363` |
| 67 | `theorem` | [multiplicity_pow_self_of_prime](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-pow-self-of-prime.md) | 627 | `result-track:fd6eee2756e4f72d2eab451ef00c69be2d118c7fcfcdb7eecddabf1cf26fdf25` |
| 68 | `def` | [addValuation](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/addvaluation.md) | 639 | `declaration-track:dd14f1f052aa9e4693a9e46be4ada1cc144fbc6a243f7e571d3f9b1152ea59e7` |
| 69 | `theorem` | [addValuation_apply](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/addvaluation-apply.md) | 645 | `result-track:a5247c97a4a98cf91404eb0acd563e8234e2efaf4dcc6b236215abc20c84e1d9` |
| 70 | `theorem` | [multiplicity_eq_zero_of_coprime](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedSourceEdition2.lean/declarations/multiplicity-eq-zero-of-coprime.md) | 657 | `result-track:bf722282061c49fdbd4d30bf9d6279d12028f4c711f4612841bc83cb16efd3b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6049397d87f35c037597b681c6939585a406d1118e3aab7b4e73db78ee74295e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
