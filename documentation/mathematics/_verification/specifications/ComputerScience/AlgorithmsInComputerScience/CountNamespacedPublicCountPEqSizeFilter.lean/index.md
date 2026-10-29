# Verification target: Count Namespaced Public Count PEq Size Filter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34741ee44d4ab6dc5f47a6241d2a19095bd0a63c",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantdbe465c69ff50b09d316a310bdc20674cdb82abf0b6aab583541a7902f49dd1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34741ee44d4ab6dc5f47a6241d2a19095bd0a63c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantdbe465c69ff50b09d316a310bdc20674cdb82abf0b6aab583541a7902f49dd1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantdbe465c69ff50b09d316a310bdc20674cdb82abf0b6aab583541a7902f49dd1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Count` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Count Namespaced Public Count PEq Size Filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co-source-edition-3.md) | 45 | `result-track:9770a6d9b1556a642a16584a7ce11b9d26949083f61ce2b47667a207b4c3fd8f` |
| 2 | `theorem` | [countP_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-tolist.md) | 53 | `result-track:12fb1028eb0cfd13ca8ffba61bbe14d9d755eec6972fe3ddc3f8fad2f30e503c` |
| 3 | `theorem` | [countP_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-empty.md) | 57 | `result-track:73a7904a2a13648f3e80a7b7eeae166de3c33650bc969e891b2687cffce5b771` |
| 4 | `theorem` | [countP_push_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-push-of-pos.md) | 59 | `result-track:0448fde0685f705809dcf271e841e552e2e8c25379f17467af4e4758eaefdc3d` |
| 5 | `theorem` | [countP_push_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-push-of-neg.md) | 63 | `result-track:b8d050693b75ea63932ebac09e4bb2b6f467f772af0fe5a00e0ebb861602c4bf` |
| 6 | `theorem` | [countP_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-push.md) | 67 | `result-track:e2e5bbf0fa773423f8fcfe41aa16f8401454728a42855d9362fd994c261fe07f` |
| 7 | `theorem` | [countP_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-singleton.md) | 72 | `result-track:82835e2085cc273e0e0112db2e47ff6eaf6c63ae83a74d2893f4589e8e91cc7a` |
| 8 | `theorem` | [size_eq_countP_add_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/size-eq-countp-add-countp.md) | 75 | `result-track:7aa37c85fc63b4afd0fcf1b7a144fd37c4ac04aa3890d908f41808535ea463e9` |
| 9 | `theorem` | [countP_eq_size_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-eq-size-filter-source-edition-2.md) | 79 | `result-track:f1e9d1f4a20f9e9b8338bbe7dbccc2cc2881233a4695b8ba678981e9ebcb1eb3` |
| 10 | `theorem` | [countP_eq_size_filter'](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-eq-size-filter.md) | 85 | `result-track:1a337a1e9a6cff0dceded90f181d74180f063b91bc39058b6ab4e985b0ba8980` |
| 11 | `theorem` | [countP_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-le-size.md) | 89 | `result-track:c5290dd168f777071c2f40265207fe75db0b11fa820631cdc772252c02fdf11b` |
| 12 | `theorem` | [countP_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-append.md) | 95 | `result-track:87847986c1a6d3a065feecd3df42e73d37f2875e8841aab5c8715b9e3fee5604` |
| 13 | `theorem` | [countP_pos_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-pos-iff.md) | 100 | `result-track:fa61200e6b36b9cabb69ff5fbe6f3dda6dd8e0be0dac4b30bd3c3b011241e72c` |
| 14 | `theorem` | [one_le_countP_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/one-le-countp-iff.md) | 104 | `result-track:8e11736a4a93d9a940f223ea351e4e6baf58e6edef19725c66390778c898bf8a` |
| 15 | `theorem` | [countP_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-eq-zero.md) | 107 | `result-track:04b3ee2ae51b30e530eeebd5f0ba0e89b52fc633ee80f471c37863f49acd7e83` |
| 16 | `theorem` | [Count Namespaced Public Count PEq Size Filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co-source-edition-4.md) | 113 | `result-track:b187400c04a4775a1e74aad6b58abd8834be51f72cd21154b9638580302e8b9e` |
| 17 | `theorem` | [Count Namespaced Public Count PEq Size Filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co.md) | 117 | `result-track:2959c4595a576fc8fee1d9483379c92008dedc8a731a93eb8b063459eda7b594` |
| 18 | `theorem` | [countP_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-eq-size.md) | 123 | `result-track:a344812e4a79754b0ce5c14bf22ef8d30df186d95c923241cd6a4511742a162e` |
| 19 | `theorem` | [countP_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-replicate.md) | 127 | `result-track:3f861233b9e1821352f2d37776dc7378121afdc2e9ab89e4dde577dae38de786` |
| 20 | `theorem` | [boole_getElem_le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/boole-getelem-le-countp.md) | 131 | `result-track:814e506c1997d0f8f09c58a3facb9716072502fd728dab8eb902e34d20b8e096` |
| 21 | `theorem` | [countP_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-set.md) | 138 | `result-track:f6d76d861d6a6391963f8778c696a865665652d7586dbbe1070672a044e3c2c7` |
| 22 | `theorem` | [countP_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-filter.md) | 144 | `result-track:3465cb20234266d92d68ac00bc139127b2b9114503456afe3cc804e54401983e` |
| 23 | `theorem` | [countP_true](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-true.md) | 149 | `result-track:c8065bc5d15af733561c6ad0e24959c198c739908b08af23e2cdc47f60f4f13a` |
| 24 | `theorem` | [countP_false](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-false.md) | 153 | `result-track:c0b210e9c3914d6f2d0aeb6f149b876988fddb633bdea5957139523a8d7d777c` |
| 25 | `theorem` | [countP_map](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-map.md) | 157 | `result-track:2a35746fc0a049c89684d323f03f7950ac8a191b59458e59fbb6786232cc10d5` |
| 26 | `theorem` | [size_filterMap_eq_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/size-filtermap-eq-countp.md) | 162 | `result-track:571f2c081bf80ab87f61abb675368ab481be333954551ece7bdd1f2d8d70725b` |
| 27 | `theorem` | [countP_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-filtermap.md) | 167 | `result-track:20d9aa193d6882f905f45f7ef192f83265abe9e3e11d6691c4572e10ab1902e8` |
| 28 | `theorem` | [countP_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-flatten.md) | 172 | `result-track:050a13d56bffb07126243a416d80005e356d2b6ff345361aaebb9197dd0e3f8d` |
| 29 | `theorem` | [countP_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-flatmap.md) | 177 | `result-track:4481b0db228cb889c73fe0de22fc556bbc2762b85a36274172d51eb0ac4c78b8` |
| 30 | `theorem` | [countP_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-reverse.md) | 182 | `result-track:4a15514cfaf39ff2d7ee174ade17e1adfe39556c4df14900486355967c8a7493` |
| 31 | `theorem` | [countP_mono_left](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-mono-left.md) | 186 | `result-track:747446dba3e7c271aeb7223c12011750a2ca399a6730f0f3d808b814f7e18451` |
| 32 | `theorem` | [countP_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-congr.md) | 190 | `result-track:17fdd3a8e86c8828b96fb1276159f4705a9ebf38a7b4baffe83f6754bb22691c` |
| 33 | `theorem` | [Count Namespaced Public Count PEq Size Filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co-source-edition-2.md) | 202 | `result-track:3488be394af2d67e75ec4c869c1e76ec6461ebd91b05fc4db905a1424adb234d` |
| 34 | `theorem` | [count_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-tolist.md) | 205 | `result-track:1c046ce03340d3d025e50a43ab84c48bde5170aa4eee032d534f84b0c158d8df` |
| 35 | `theorem` | [count_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-empty.md) | 209 | `result-track:d2fbbc6c24307a6a04d5c5c2512e00347f8fe536392c14bb68242bd6e2fded2d` |
| 36 | `theorem` | [count_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-push.md) | 211 | `result-track:e6bcb390d325d3a927ecad0f6923c85ef9b9ff82fce9bba8ab9e3ca22b1f80cd` |
| 37 | `theorem` | [count_eq_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-countp-source-edition-2.md) | 215 | `result-track:ead0f83554c2624a8ad637c0e354d0f27cae329f935b69f033b3a9797c685a9e` |
| 38 | `theorem` | [count_eq_countP'](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-countp.md) | 216 | `result-track:d1146cbde0933a4287be44bf2654ea746cc7d4d138a21f8d2020b3bfa9c37385` |
| 39 | `theorem` | [count_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-le-size.md) | 220 | `result-track:c0680cd19ac4e2e3959219c23716d534b2cfd0c629a5ab56987105880d5ee448` |
| 40 | `theorem` | [count_eq_size_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-size-filter.md) | 224 | `result-track:e866814538d88cdaadb59a77bb81de15a3bb1c93416215081c6e554d56be3b91` |
| 41 | `theorem` | [count_le_count_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-le-count-push.md) | 229 | `result-track:657e35d2346fae8f7d1ef1c483b06c27cbba127ecfc006d5f3da9a8c6528fae0` |
| 42 | `theorem` | [count_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-singleton.md) | 233 | `result-track:aac5c5be0cb12e0bc6f775492481c995467c82d1f6cb95048d5ced1a53ecf84a` |
| 43 | `theorem` | [count_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-append.md) | 236 | `result-track:906c05df59fa548b3178092be4a1a652623777f84351a241790895bb2d3de82e` |
| 44 | `theorem` | [count_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-flatten.md) | 239 | `result-track:c094316561abc4af28cb6149f61a4c4cb0bb51c6ea0003e243b14249c84a4b75` |
| 45 | `theorem` | [count_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-reverse.md) | 244 | `result-track:346d99bb169834338cc04c81d8c0891e808b1635d161540ffc4d86848982bdf3` |
| 46 | `theorem` | [boole_getElem_le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/boole-getelem-le-count.md) | 248 | `result-track:1921aa9c5beb652d9a8c563e72f20e1fe47f6745055b9abce97ae48cfe72ae64` |
| 47 | `theorem` | [count_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-set.md) | 254 | `result-track:aeb492b6ac33b29e1063886290b3c72ce178082834b79074095f064c8494dc0b` |
| 48 | `theorem` | [count_push_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-push-self.md) | 260 | `result-track:2258693c127fd15d0e589c0e28148ec4a446f7b29b971d01e73a2ca64b619466` |
| 49 | `theorem` | [count_push_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-push-of-ne.md) | 263 | `result-track:042ab7a3bba10f745a37fd6c64887e757cdb27806ed28cbfec38174a7d5fa70f` |
| 50 | `theorem` | [count_singleton_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-singleton-self.md) | 266 | `result-track:a67523b90f2fb3de7a4ad73229fa5ca19aceded20eca284547206223e8b907a6` |
| 51 | `theorem` | [count_pos_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-pos-iff.md) | 269 | `result-track:334079264b8a3d4bf6a5c6f20ea269e5d6625d59048e2747b49db45cbbd9442b` |
| 52 | `theorem` | [one_le_count_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/one-le-count-iff.md) | 272 | `result-track:6e74089a243dbe7af3e2c213d89b06cbbb0315084befe10c07debe0de42f71a7` |
| 53 | `theorem` | [count_eq_zero_of_not_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-zero-of-not-mem.md) | 275 | `result-track:a121dae4fb899d59b9e40f73c2760b3ab841dcab321a2924e9785df88a98d024` |
| 54 | `theorem` | [not_mem_of_count_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/not-mem-of-count-eq-zero.md) | 278 | `result-track:1395c43536a47cdde198fb45aaf07d63f1be49bc0c933762a7768ebc3f840c27` |
| 55 | `theorem` | [count_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-zero.md) | 281 | `result-track:9dd125359aca750f44694299f56dd6d3b3b94c61007d84c2e77233d7c8f81727` |
| 56 | `theorem` | [count_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-eq-size.md) | 286 | `result-track:696a96897b526978f5d10c5d7a43e547d985833c00dfab5fa637fb718e466f79` |
| 57 | `theorem` | [count_replicate_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-replicate-self.md) | 292 | `result-track:f610ff9c253ae77f3bfdb25e9bb31b36a227ab836aebe69e27c47bf9a4fb1878` |
| 58 | `theorem` | [count_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-replicate.md) | 295 | `result-track:83085f9f74921462c6ceac458b0570e868994edd8797373a0871ec6f047a0af1` |
| 59 | `theorem` | [filter_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/filter-beq.md) | 298 | `result-track:af175c803fbaaa38b6c3b863203ec5d9560304e74ce55d21fa5caf6423d95bf0` |
| 60 | `theorem` | [filter_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/filter-eq.md) | 302 | `result-track:ce74bf5cbb5afc786d88c550bfff5845be866b49ad685ed735f065f3a57dd88d` |
| 61 | `theorem` | [replicate_count_eq_of_count_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/replicate-count-eq-of-count-eq-size.md) | 305 | `result-track:289b5ad16131db7edabd0e6812b6415cd39d066324f2ab67d411edfa128e06e8` |
| 62 | `theorem` | [count_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-filter.md) | 311 | `result-track:b52fc4c9a165974a9588146e351793834790121ca839a9ad604d27f751015860` |
| 63 | `theorem` | [count_le_count_map](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-le-count-map.md) | 315 | `result-track:e907eddd1c2cdfe42b5704220fc4170eb684e4861ee743a4f110f4e327b3ae5f` |
| 64 | `theorem` | [count_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-filtermap.md) | 320 | `result-track:e56a678d4909211cc4895fdf60e46ff4c7bb9f1e96c49f4d7f05ffdcdb2e1670` |
| 65 | `theorem` | [count_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-flatmap.md) | 325 | `result-track:ece0c3d39f48a4c731c86f020ac44a546e18d3ef255aa96d81b782601a3e9271` |
| 66 | `theorem` | [countP_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/countp-replace.md) | 330 | `result-track:4627bac26b0cfb2dfba652cbf4afe8feebb635a64c6704b76a2f4da0ca28ad43` |
| 67 | `theorem` | [count_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-replace.md) | 336 | `result-track:87be064b0b413f5282d3b395a88a6b31e82573cc5076ac8abfbedf3e8a9095a9` |
| 68 | `theorem` | [count_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-erase.md) | 341 | `result-track:a2d2a66f0e5b201f0bcadeb69e52c5ca027430eb29590e9e1f3ee3fa9f28e8ee` |
| 69 | `theorem` | [count_erase_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-erase-self.md) | 345 | `result-track:f6b09d4fbcb2874a69b2e89647ee0b9051f6910ea4b3a8772fc6a221b0e0640c` |
| 70 | `theorem` | [count_erase_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/CountNamespacedPublicCountPEqSizeFilter.lean/declarations/count-erase-of-ne.md) | 348 | `result-track:8431b9af90fb801e1c345a521882e89826f7bcfa4a25c5128e3ace210f1e4157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84ef369062364a8ef5fe7f1359835665adef07d1279c1bd1e34232eb9c9d4799 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantdbe465c69ff50b09d316a310bdc20674cdb82abf0b6aab583541a7902f49dd1f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantdbe465c69ff50b09d316a310bdc20674cdb82abf0b6aab583541a7902f49dd1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
