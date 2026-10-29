# Verification target: Group With Zero Canonical Canonical

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad585a2d6da772a06eecec0e101185b89cdaf21",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad585a2d6da772a06eecec0e101185b89cdaf21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.WithZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AddGroupWithTop` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.TypeTags` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/linearorderedcommmonoidwithzero.md) | 32 | `declaration-track:b5a2cff253d060384b2a49091c6461181b9edb0938c910af0809ccb285131b0e` |
| 2 | `class` | [LinearOrderedCommGroupWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/linearorderedcommgroupwithzero.md) | 38 | `declaration-track:968e5d4cf600a1cb746a8805611a54ae35e0301b2270745142c79823b07e199f` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance.md) | 41 | `declaration-track:31b69f6f7dc3b050a18c5e40d0738009fea891376ddfc6186cf6ca2b30139eec` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-5.md) | 45 | `declaration-track:579e20dbbd215185df1c06b2e78fd0fe8544711b8fc8e970b2c75518976bdf61` |
| 5 | `abbrev` | [Function.Injective.linearOrderedCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/function-injective-linearorderedcommmonoidwithzero.md) | 57 | `declaration-track:9d4388d0a5b4e208bdf94fbe921ad707c4fbfdff1ef4bd8744c8c1bd36cbdea5` |
| 6 | `lemma` | [zero_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/zero-le-source-edition-2.md) | 69 | `result-track:cf211587fb07376d50e59bf400442581fedff2b451d9961c11b31c6319528c6b` |
| 7 | `theorem` | [not_lt_zero'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/not-lt-zero.md) | 73 | `result-track:5c827593035894fa4683931cfc339f5c2737469baf0a61b943a59980d99cdd4d` |
| 8 | `theorem` | [le_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/le-zero-iff.md) | 77 | `result-track:038997bb3fa8ec47c3183a768a3d201cb94d6711d6dc8864f88df20d8495bfb4` |
| 9 | `theorem` | [zero_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/zero-lt-iff.md) | 80 | `result-track:4f91a842e7fb85da91c4896adb337922a622d2f505fcd9146816f16214de621f` |
| 10 | `theorem` | [ne_zero_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/ne-zero-of-lt.md) | 83 | `result-track:abb08d0a5d02a1976be92a8b51b5752bc7bd6fd5761634405a17741aa37db8e2` |
| 11 | `lemma` | [bot_eq_zero''](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/bot-eq-zero.md) | 86 | `result-track:144b6b2582f47cba784f71f2a40d0ab21cdb3d152e914f04bb0cc32c796f80fa` |
| 12 | `instance` | [instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorderedaddcommmonoidwithtopadditiveorderdual.md) | 88 | `declaration-track:e13b740ff86b989ba440544c786ba7b4d3768dfc48618d578101a094965e0a12` |
| 13 | `instance` | [instLinearOrderedAddCommMonoidWithTopOrderDualAdditive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorderedaddcommmonoidwithtoporderdualadditive.md) | 94 | `declaration-track:4c708654254c0c9cfd3297f100d48841c0d8acc210b634b463867d710542df60` |
| 14 | `lemma` | [pow_pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/pow-pos-iff.md) | 102 | `result-track:279f0ae94c213396a854cfa150db65d14d95a65fc5d87e12d297c59cf4a53588` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:4829ef586f917da6df6cb7e4c9a26655e3b8c1fb0c85b1aee38a390fdba91e78` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-12.md) | 114 | `declaration-track:e6e8219fc585724be684903dd40fa0232449c2dbf3399293f0d4522988734b93` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-11.md) | 118 | `declaration-track:d1fbec7f3d9fa06d65c3604113b6df88dff626c802b7e3542f63f9abc0781a2f` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:329bd62df362cbdfff26389978593aa78a78d013c90af3aa542e0eec9cc15074` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-10.md) | 128 | `declaration-track:bcf93a10316a3ccafc106d9d9be69d9654d9520e5b695b3a6c0b28b940a7cd37` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-9.md) | 133 | `declaration-track:afef20f09ea0e31dc3b0c282ab36f3e9866454443dbcf6f3052cebce7330c1a7` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-6.md) | 139 | `declaration-track:6429a1542a644be6a2a4786df0761ad59cb563f8a04d8833bdbd96d61428c462` |
| 22 | `theorem` | [mul_inv_le_of_le_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/mul-inv-le-of-le-mul.md) | 144 | `result-track:211c9e9e80bd2ee3642caedfc04d6aed82d541e1f60d0fc7387f921b999a88b1` |
| 23 | `theorem` | [Units.zero_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/units-zero-lt.md) | 148 | `result-track:b3a86b593de5f351cc0da608f52d001a53f5976cf22e87a93c71c53d7f16eb85` |
| 24 | `theorem` | [mul_lt_mul_of_lt_of_le₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/mul-lt-mul-of-lt-of-le.md) | 152 | `result-track:f5e0b9a2dfcfc3dac719e2d7604fc48b9a6d628ca926a1d3ac3febb5d8ccfa03` |
| 25 | `theorem` | [mul_lt_mul₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/mul-lt-mul.md) | 156 | `result-track:1d80c1975a46fdf5fcf686941d2a3fc3cd10b5ed8dfb62b1f7cabd25c51212e9` |
| 26 | `theorem` | [mul_inv_lt_of_lt_mul₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/mul-inv-lt-of-lt-mul.md) | 159 | `result-track:26ea6c06b117e825114fecc8c7abbcc0279ffb02bea540f9953bf10840fb06c4` |
| 27 | `theorem` | [inv_mul_lt_of_lt_mul₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/inv-mul-lt-of-lt-mul.md) | 163 | `result-track:64d635e2bf45f7c47a5137e2a3d52b1b957dd07bf2adba40295b9e371f44d946` |
| 28 | `theorem` | [lt_of_mul_lt_mul_of_le₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/lt-of-mul-lt-mul-of-le.md) | 167 | `result-track:fbd6cb9aebea786273eabe21d0497cec349e50140e637b141ebf8306e0d1a13c` |
| 29 | `theorem` | [div_le_div_right₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/div-le-div-right.md) | 174 | `result-track:1d931e35ac3355d3337b040f9f0a148bcb0602e2c55091260e2ef7e38764f565` |
| 30 | `theorem` | [div_le_div_left₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/div-le-div-left.md) | 178 | `result-track:9662e4e483a5bf3ff4e6b7d95e3ec517564f8b4dcc01ab2ddcbca84a7c2c791c` |
| 31 | `def` | [OrderIso.mulLeft₀'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/orderiso-mulleft.md) | 184 | `declaration-track:e3a0e001bc7748b55e28f6df7e20d6d61812caa33787be8a5ef2a66d5f01b977` |
| 32 | `theorem` | [OrderIso.mulLeft₀'_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/orderiso-mulleft-symm.md) | 188 | `result-track:28109f28ad5b4d125ebe5ac97b083a8694f0a9a1378e1677c20e585da5d2d351` |
| 33 | `def` | [OrderIso.mulRight₀'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/orderiso-mulright.md) | 196 | `declaration-track:9988c60ee4ab4262127e996841e663f34d893bbf68cc19e001679280523efa11` |
| 34 | `theorem` | [OrderIso.mulRight₀'_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/orderiso-mulright-symm.md) | 200 | `result-track:647203c2b16f7179ce59b1d6efa841e1a71cbe569a3548d45ea2bfd67963c90a` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-8.md) | 205 | `declaration-track:9ca6c0b48d217daa227fdb5309eb580c96c9e28ac609d6bdc0af6addc02a3d55` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-7.md) | 209 | `declaration-track:742b67b1bcb12d09c255df229ea67844710ce08251a60496bc5d1a6887be422d` |
| 37 | `lemma` | [pow_lt_pow_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/pow-lt-pow-succ.md) | 214 | `result-track:33a1e2bfedb2857198db411b327e79fc57c3975ab289822d9dbb6caffb7374f9` |
| 38 | `instance` | [instLinearOrderedCommMonoidWithZeroMultiplicativeOrderDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorderedcommmonoidwithzeromultiplicativeorderdual.md) | 218 | `declaration-track:fbb25e9c249aec773dd3b1cf7804056f2f1b0fa18a30cda92ea70392ff65debf` |
| 39 | `theorem` | [ofAdd_toDual_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/ofadd-todual-eq-zero-iff.md) | 229 | `result-track:1cc6e05c714c8c5a7760565c3359a1deb2c946de5597d110845527c367b05d86` |
| 40 | `theorem` | [ofDual_toAdd_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/ofdual-toadd-eq-top-iff.md) | 233 | `result-track:0f60b7614bff1168786122c8f3f9ecfeac5b052a0e4620e4c75a83ea4fad3216` |
| 41 | `theorem` | [ofAdd_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/ofadd-bot.md) | 237 | `result-track:34f00772a1b70e849ec64f585406036afd4f47bcab6948b028798f06b24f2667` |
| 42 | `theorem` | [ofDual_toAdd_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/ofdual-toadd-zero.md) | 241 | `result-track:10f04aac484c4044a43f2a06aa73b9b2e26816d3dfe5341738167ab9c6d59c06` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instance-source-edition-4.md) | 244 | `declaration-track:56673482d9e3d77f07b2d758ae52f0903300451a957a302ba7a5f2af2709b585` |
| 44 | `instance` | [instPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instpreorder.md) | 255 | `declaration-track:6888e4269cf574666b6f7b3d91aac03b97c1d84ce031cb5e4fc1ea68b34d422c` |
| 45 | `instance` | [instOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instorderbot.md) | 256 | `declaration-track:ec12a5e094fabf4a5fe15bfbf3cc4f033771255d1b3d198335f5d325c92f5421` |
| 46 | `lemma` | [zero_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/zero-le.md) | 258 | `result-track:950233bb61966840e8f6c878c68072919e4a8e60cf33398a87f1bff673a47c3b` |
| 47 | `lemma` | [zero_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/zero-lt-coe.md) | 260 | `result-track:5ea35c75918d46db7d6d279dcd806a29f9a9e94b020a599c0edf799aa2a110f1` |
| 48 | `lemma` | [zero_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/zero-eq-bot.md) | 262 | `result-track:a5e2bfff3c4c4c6dcbb15a387519d144afd79d15a1d9f48a3f15eb6201ff028a` |
| 49 | `lemma` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/coe-lt-coe.md) | 264 | `result-track:412401ffa454bf86bdcfb34c284ba99e3b83c8db1d2df9f5bed94dac2a224f25` |
| 50 | `lemma` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/coe-le-coe.md) | 266 | `result-track:9781d4cfd15359baa8491be7b2f571240ff8c1041a82838748c966423c1c8f4b` |
| 51 | `lemma` | [one_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/one-lt-coe.md) | 268 | `result-track:4264365c437bc80daacfd40b07d0d6372885affde80343c4a13f89932a34be37` |
| 52 | `lemma` | [one_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/one-le-coe.md) | 270 | `result-track:5e10bd8da0766150d95252f2f3efb3bf04cde5e8b5f123faf9304d612e3336d2` |
| 53 | `lemma` | [coe_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/coe-lt-one.md) | 272 | `result-track:58256e015f823c10d36e42d4170ff16e97d1ac2cdac3c8510e34aca55816e120` |
| 54 | `lemma` | [coe_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/coe-le-one.md) | 274 | `result-track:33ba42d97485d4c9cb18509f7fa228966711d10ed14717f5888b19cd67e212ed` |
| 55 | `theorem` | [coe_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/coe-le-iff.md) | 276 | `result-track:c993a35837e3bb157aa01e66bb13cccee1328e9f38d490c378c7388f7f270f22` |
| 56 | `lemma` | [unzero_le_unzero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/unzero-le-unzero.md) | 279 | `result-track:0817a47006bd67e0e9e0cff248200e8f00293f7e99037e6b80f970f6cdb304fa` |
| 57 | `instance` | [instMulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instmulleftmono.md) | 287 | `declaration-track:09469e347b4e440486b19780e8d415675aed777a93ac10e3f10a0885783e3bbe` |
| 58 | `lemma` | [addLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/addleftmono.md) | 296 | `result-track:3e05cfc89252a40a10448d92fb0c918f9acf331d06d653a785f7fb0448cef1a1` |
| 59 | `instance` | [instExistsAddOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instexistsaddofle.md) | 311 | `declaration-track:42b685f5f473135ff04b7201896b5f2971684550e1a9d86ce6c262345ade6736` |
| 60 | `instance` | [instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instpartialorder.md) | 326 | `declaration-track:7e141d12ef2295980837df26a8ae7f4e2396ecd7f2172887a4ef87b1e5338faf` |
| 61 | `instance` | [instMulLeftReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instmulleftreflectlt.md) | 328 | `declaration-track:33ca99b82bec27a033893fb2e7ec666412d41599aca547ec425388e816ae870b` |
| 62 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlattice.md) | 341 | `declaration-track:e429ac242e7b7054084d0282677c729ef2290d132e750f25d7fbb33889a06023` |
| 63 | `instance` | [instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorder.md) | 346 | `declaration-track:d366f8fb0f33ef6949429de650fd39ef2e5e8242acca77eca771ed9998a69b45` |
| 64 | `lemma` | [le_max_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/le-max-iff.md) | 348 | `result-track:89309e144025f1a32c2bbca11f7693c0ad3895529dab264f29d2490710411ace` |
| 65 | `lemma` | [min_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/min-le-iff.md) | 351 | `result-track:b0a9c7d687e655dfc644ee2bdb5fd7473c800de682d6b50af90959c8ae36f6bc` |
| 66 | `instance` | [isOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/isorderedmonoid.md) | 356 | `declaration-track:67454e9895083d8293d6253b334198b88c7c63953f95a8e31ed36fec1a84ca24` |
| 67 | `lemma` | [isOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/isorderedaddmonoid.md) | 369 | `result-track:eb1d39c99c56f6880d464934cb898bbdf08251d2681430e5aeed391026c797c3` |
| 68 | `instance` | [instCanonicallyOrderedAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instcanonicallyorderedadd.md) | 375 | `declaration-track:b5350f296c70c65d82bab609b5ccd0b76e6de911f312d60e91f6048f4afdafb9` |
| 69 | `instance` | [instLinearOrderedCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorderedcommmonoidwithzero.md) | 385 | `declaration-track:9a57a9b008d572eeab16867ccbd0988f099a44c2035165a474d41e493c8ad67e` |
| 70 | `instance` | [instLinearOrderedCommGroupWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupWithZeroCanonicalCanonical.lean/declarations/instlinearorderedcommgroupwithzero.md) | 389 | `declaration-track:64fd1fd4b74e88a3903b7133a793fbadc5133c5d6246748b6827c49cb2fd54af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c1f4107cd8218ec5df4737ea5dfa64c81bc8437bdfce73bd186dc4404115bbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
