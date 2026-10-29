# Verification target: Algebra Big Operators Expect Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43b483189b452c445b957498d978c55b3cccf308",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43b483189b452c445b957498d978c55b3cccf308`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/finset-expect.md) | 63 | `declaration-track:78972afdd8ea1fbf4af7285badac0f330faa1ece34b227e02d86d7e144ba8061` |
| 2 | `syntax` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/syntax.md) | 80 | `declaration-track:ae4a96950096aba47b97654bdd09b0a96f4f06b174603b0196ed9d895c09de9b` |
| 3 | `macro_rules` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/macro-rules.md) | 82 | `declaration-track:2b3e9b43d799c8f4f428f51175cddeefe5fca1e81416abea10e4f4fa05b71fec` |
| 4 | `def` | [delabFinsetExpect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/delabfinsetexpect.md) | 96 | `declaration-track:690dfd8f2248b2a11e5c714be2ff29adcfec5b57b033f612d34fe5637f4d84b4` |
| 5 | `lemma` | [expect_univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-univ.md) | 124 | `result-track:4e039a15406377e1a322634263ab72366d03b48efa8ead7335c67c60488229e4` |
| 6 | `lemma` | [expect_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-empty.md) | 127 | `result-track:933094f30cd5374d57a3664f356e46935b6b94de369731b0a34295c3c2746e2b` |
| 7 | `lemma` | [expect_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-singleton.md) | 128 | `result-track:d77ddb902f09780f92bc640191477fe3d421a5db98f002127fa28f9c1d3005c8` |
| 8 | `lemma` | [expect_const_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-const-zero.md) | 129 | `result-track:ea6a3cb9941219561d452ee36c85f6f1861011cae93ce906d2e344db88554d9b` |
| 9 | `lemma` | [expect_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-congr.md) | 132 | `result-track:acd5df5e81c10af2e995c8d54b133f31ab34cfd5c4e09001d73fb5dafb0a7b0a` |
| 10 | `lemma` | [expectWith_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expectwith-congr.md) | 135 | `result-track:59046e119f4200fc19a55b1139dc6f7fcd9f40b43ea40b52b6cd56d41ff3e2cd` |
| 11 | `lemma` | [expect_sum_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-sum-comm.md) | 139 | `result-track:149c42aecaa911cd28fd9492092d18692d4046172db01507d74e3b89ee0a3764` |
| 12 | `lemma` | [expect_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-comm.md) | 143 | `result-track:e647baf8a84d05126a9ed1179d801fd7cc0f6afbd9f04b1ac39ffe46567f372e` |
| 13 | `lemma` | [expect_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-eq-zero.md) | 147 | `result-track:c64406fb6140d18b7363cea60065fb412f405af325f37c0606046d1fd5b5fe18` |
| 14 | `lemma` | [exists_ne_zero_of_expect_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/exists-ne-zero-of-expect-ne-zero.md) | 150 | `result-track:b6dc23f1607aaba7c72ce5dc789be15e7e2546cd695694edc284ea7610377989` |
| 15 | `lemma` | [expect_add_distrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-add-distrib.md) | 153 | `result-track:04f0ab0d01ddc021529045a7cac20a2b98322150fc161d6a36b68ae39510326f` |
| 16 | `lemma` | [expect_add_expect_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-add-expect-comm.md) | 157 | `result-track:6623cf18899bf10a88b9cc8f46c2b773ed55e0a93fbc653cc196903c631c409a` |
| 17 | `lemma` | [expect_eq_single_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-eq-single-of-mem.md) | 162 | `result-track:c081d2e7f40b62737588955ebc4d5bf98af9de3b881617da2f866853d2470dc9` |
| 18 | `lemma` | [expect_ite_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-zero.md) | 165 | `result-track:27a7e19e14a6cb9109451ef8582ea41b9167b2423d703799307980682ba1ff35` |
| 19 | `lemma` | [expect_ite_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-mem-source-edition-2.md) | 173 | `result-track:497eba5041964a379558fd9da15cab3a37e3413d314705958d60dd02092453d0` |
| 20 | `lemma` | [expect_dite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-dite-eq-source-edition-4.md) | 179 | `result-track:f49a72801a546a4318d13c9579ec040a83358e2f2908721edff8e60d966b7882` |
| 21 | `lemma` | [expect_dite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-dite-eq-source-edition-2.md) | 183 | `result-track:432d8e153e8ffc0fd5d627b496062fbcd56ae0f37fcbeef15fb5058b3a9169c3` |
| 22 | `lemma` | [expect_ite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-eq.md) | 187 | `result-track:41f8ae47a5ebf0acdf2e630af27c630ec70770b183525db11f9c22625977262d` |
| 23 | `lemma` | [expect_ite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-eq-source-edition-4.md) | 191 | `result-track:fe77cb847ae11a6021694432932a8fc8383ee6f890e8bd860bce56d43e9cb5ee` |
| 24 | `lemma` | [expect_bij](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-bij.md) | 207 | `result-track:26af9ed956c07398030827272f7501d0c54bfb3f79766cbc89fe0fb4529d85bd` |
| 25 | `lemma` | [expect_bij'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-bij-source-edition-2.md) | 219 | `result-track:7635eeaac5bc26985cef4ed166fed7e3f703bb9daf8edbc5f36dec909b888c64` |
| 26 | `lemma` | [expect_nbij](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-nbij.md) | 232 | `result-track:07ce224e3b62ea833a055b3a6293032804123a87abab7af339fff0b97581ef78` |
| 27 | `lemma` | [expect_nbij'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-nbij-source-edition-2.md) | 247 | `result-track:23fd5f8b3b8405d1a77c48a83451ece9450069560f5f7a895814799d39bb1119` |
| 28 | `lemma` | [expect_equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-equiv-source-edition-2.md) | 255 | `result-track:efe14e2fdfad2cc4e4041160370b9ea6ba39111d929970df56e4e15ed061234f` |
| 29 | `lemma` | [expect_product](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-product-source-edition-2.md) | 261 | `result-track:f94b0598ba8624958f158de4982b5c47b7fba07eab93033716e7faad19f56511` |
| 30 | `lemma` | [expect_product'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-product.md) | 268 | `result-track:d5ab1f0b204cdcf47320142899a36fd54f91205d34d661839f5092dac28a4f4b` |
| 31 | `lemma` | [expect_image](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-image.md) | 273 | `result-track:ed044f5aa8fb12effdfc434bdbaef9d332fc1023fe209d2cd8611eefb971376d` |
| 32 | `lemma` | [expect_inv_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-inv-index.md) | 279 | `result-track:5aa1791a65a940f64661b27013bb59743d60b9af021aceee5cd54a2345da148a` |
| 33 | `lemma` | [expect_neg_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-neg-index.md) | 282 | `result-track:1145b976c7f466122156e8a3ed3700354e2f94c29217d7dd3dff99f697f61ba1` |
| 34 | `lemma` | [Algebra Big Operators Expect Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/map-expect.md) | 285 | `result-track:684c8698ed2c08256f4da0c8f7ee6ee45d2cce76c820a6125e84c6b4ac2ab07d` |
| 35 | `lemma` | [card_smul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/card-smul-expect.md) | 290 | `result-track:65f6b29ca6ee194809f5850d14cb7eab3f812d4fd350c4fb19774179b4aba209` |
| 36 | `lemma` | [Algebra Big Operators Expect Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/card-smul-expect-source-line-296-occurrence-2.md) | 296 | `result-track:d78dee8ab9d397a004c7befcee958ee6b1987667170c611b2bd5b226b4354a73` |
| 37 | `lemma` | [expect_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-const.md) | 299 | `result-track:8edf982e6334a6dc021c946c4dffa6797c05bd3e2a7246fc35644595fbe5745e` |
| 38 | `lemma` | [smul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/smul-expect.md) | 303 | `result-track:e4b7619c491f5ae6973f047e9b66e40a50bd03c0464a7152d7d2551ddaca75c5` |
| 39 | `lemma` | [expect_sub_distrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-sub-distrib.md) | 312 | `result-track:449e9f3d0051b416c3d787adf02d27354068d3fd87bc677633c8b70ea76e6b29` |
| 40 | `lemma` | [expect_neg_distrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-neg-distrib.md) | 317 | `result-track:13c1f1fc06c0fb822281a96ca79adbe3608c4eaa1d9be6053b7fb9c8e8a41d6b` |
| 41 | `lemma` | [card_mul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/card-mul-expect.md) | 325 | `result-track:54afbb6201da94a57b12c25bb87c1946c0bbb84e01f033b6a578502b4d1bcf3e` |
| 42 | `lemma` | [Algebra Big Operators Expect Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/card-mul-expect-source-line-328-occurrence-2.md) | 328 | `result-track:924f7066849446ee44180b554dd1afe9acd93cce9e4620ac349c17fa70c4628f` |
| 43 | `lemma` | [expect_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-mul.md) | 331 | `result-track:35471e93ce8e80fb26c765815697285460af8bc3c0c578ee461c294dee80179f` |
| 44 | `lemma` | [mul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/mul-expect.md) | 334 | `result-track:56dc48059553aa836fd9fe35778a8e85005cdcae1f98ef695fd05a07f8142114` |
| 45 | `lemma` | [expect_mul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-mul-expect-source-edition-2.md) | 337 | `result-track:9858c10eb6d22013bb878b123519072a274c38a13a9a257e65f0065f5c227259` |
| 46 | `lemma` | [expect_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-pow.md) | 347 | `result-track:ce625ce8963728b432932c4fbe92ec3eef53ab92ba62eb43525580e432a3a746` |
| 47 | `lemma` | [expect_boole_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-boole-mul.md) | 357 | `result-track:3f585eeb0827c5a17f6371db81e8bf1ddff4b4b7fed86737dee6a92b27308b42` |
| 48 | `lemma` | [expect_boole_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-boole-mul-source-edition-2.md) | 363 | `result-track:9ac2f009c43b052c754cab98e493cf36e2cb30932cca8445fc57f35a0385e242` |
| 49 | `lemma` | [expect_eq_sum_div_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-eq-sum-div-card.md) | 367 | `result-track:11281e4ba515033fa30b2c20d92cff839464a686b10b966380d86367019be758` |
| 50 | `lemma` | [Algebra Big Operators Expect Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-eq-sum-div-card-source-line-371-occurrence-2.md) | 371 | `result-track:a19c84ae3ce2a46c841f5ef4b68ae5d7022c2e862fe1fa5e6620be36de6134ff` |
| 51 | `lemma` | [expect_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-div.md) | 374 | `result-track:223f98306c94462d0d9aa93c40c6afdba0ebd921d00231e93c0812c76e09aa76` |
| 52 | `lemma` | [expect_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-apply.md) | 379 | `result-track:af6cf7425b0b89412b58b1560ea160c4551f24b82e880a72d00421e257f3323c` |
| 53 | `lemma` | [coe_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/coe-expect.md) | 389 | `result-track:eeaef94b176bdd4c306847d09b75b5510db728f88f6d00f366c27e3163b37795` |
| 54 | `lemma` | [expect_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-bijective.md) | 404 | `result-track:8892d26d18eacb59bccccd1039d2ff6635f6b2e82d02aea18194710d4d364a79` |
| 55 | `lemma` | [expect_equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-equiv.md) | 413 | `result-track:a95049d246b8c574b448b871f909e640bce911e4c81d807e5ae4d8825a9b16a9` |
| 56 | `lemma` | [expect_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-const-source-edition-2.md) | 416 | `result-track:cc62805eb9fc00a19e3de8d614089f439aedda2d04f193a2bd8e1098763c1a61` |
| 57 | `lemma` | [expect_ite_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-zero-source-edition-2.md) | 418 | `result-track:e61fdcb75c9f2e7f393d5e177c7b314aae28352c7e2caeb9139ed95b8a6c29d2` |
| 58 | `lemma` | [expect_ite_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-mem.md) | 424 | `result-track:44909896ba9ba1d73377898fa1957d4d3c3a12e6fff2e888bbdef993b7367e46` |
| 59 | `lemma` | [expect_dite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-dite-eq.md) | 428 | `result-track:10a018fd5b459345811a23c77f594a08f363d2b700b20d8666ac678b7b3cab60` |
| 60 | `lemma` | [expect_dite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-dite-eq-source-edition-3.md) | 431 | `result-track:a4f0dff9d4f83eb7cd8d5db519d669dfbadd5f3f1d7b851ee02f932918863cec` |
| 61 | `lemma` | [expect_ite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-eq-source-edition-3.md) | 434 | `result-track:b88d06a8b23f8e33b70899b22bb8e5f284e7e2a1e8a26f0ff9042b2edfe5ad62` |
| 62 | `lemma` | [expect_ite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-ite-eq-source-edition-2.md) | 437 | `result-track:55947b1e65f54e31d3f87a61d01b0c3b6550d55e67311b4b8eaece460ad03d2d` |
| 63 | `lemma` | [expect_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-one.md) | 445 | `result-track:9fe41fc7b60171a7316571a198004682ac3040b4ce4130a87070d77c417c1caa` |
| 64 | `lemma` | [expect_mul_expect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraBigOperatorsExpectNamespaced.lean/declarations/expect-mul-expect.md) | 447 | `result-track:6acf0df8b657fc2425e435b21f80300bb1b841fa7ff0c1c2033b12a6c68c65cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a92f612f76137a5e718d496883cb685f10f0817cab4bc0b2f0d6ccd403141414 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
