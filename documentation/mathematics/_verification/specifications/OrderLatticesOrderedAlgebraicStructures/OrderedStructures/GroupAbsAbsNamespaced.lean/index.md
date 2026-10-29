# Verification target: Group Abs Abs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10623931f148b40b4181b4a79772332b22a68b3",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10623931f148b40b4181b4a79772332b22a68b3`.

Source path: `GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/instance.md) | 36 | `declaration-track:8029a8d02d62c9a8e5a0ecd5bb37df9ff33002c6c89a5f2b8c7f58a85b60a396` |
| 2 | `theorem` | [abs_eq_sup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-eq-sup-inv.md) | 42 | `result-track:85919a8b9280b2ea45ed1c7f37d5dc3585bb8e85d0b0dd05d90f6979766880cf` |
| 3 | `theorem` | [abs_eq_max_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-eq-max-neg.md) | 49 | `result-track:4b08ca5f58b7309714c533ac4449c3a6be18ce337cb61a42020ad27d46461b35` |
| 4 | `theorem` | [abs_choice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-choice.md) | 53 | `result-track:acbd16ae1d7f6c6f66ea3bedb8b4d55338a37f7bd822af32bbc5d0f1211acf3e` |
| 5 | `theorem` | [abs_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le.md) | 57 | `result-track:1eafb1dbe5f6a4d2de32f7172d7821ff3c3b5e19d9fa4d4b50eea797191ed152` |
| 6 | `theorem` | [le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/le-abs.md) | 61 | `result-track:713e9d637c68ed4c04479e74dcc549dce9f7b1f277ea630544488cf89b8b6bd8` |
| 7 | `theorem` | [le_abs_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/le-abs-self.md) | 65 | `result-track:969625c3f5e58e0c3619c09e1f10cefba41caa85ef099d397537d340784ef541` |
| 8 | `theorem` | [neg_le_abs_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/neg-le-abs-self.md) | 69 | `result-track:1c6c6798852706061a4579b2e4b9209b2920bf18da2f1ef10206d9aeca42586f` |
| 9 | `theorem` | [lt_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/lt-abs.md) | 73 | `result-track:7d8ea4c40aa52f45cfa698bfe38fd97779dae1690787567356eb9941707ace7e` |
| 10 | `theorem` | [abs_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le-abs.md) | 77 | `result-track:f24dae3c313264282606a62c1006b0c47ed2da6f8dbe75ba887f5ee543a08da9` |
| 11 | `theorem` | [abs_by_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-by-cases.md) | 81 | `result-track:3dd8011b625a35c6478dd8201d8058f439c3e11af85276daa95c5a9496cf2c0b` |
| 12 | `theorem` | [abs_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-neg.md) | 92 | `result-track:ce2675530c2e0a9643f538308b570e4f8ba9fc62806f818718f22e3353f75e3a` |
| 13 | `theorem` | [eq_or_eq_neg_of_abs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/eq-or-eq-neg-of-abs-eq.md) | 95 | `result-track:4305399aa2cec93a50e6f864d3c4b6a92db0b209422b5ec2f633177bbd2aedd1` |
| 14 | `theorem` | [abs_eq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-eq-abs.md) | 99 | `result-track:13a7dc8cfec3010f7dc4f0a9e94524ab64d595e0db729c1002e9e00a5600629f` |
| 15 | `theorem` | [abs_sub_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub-comm.md) | 107 | `result-track:054c64009a6c9a4d09953dcbea5c1b49b4194df6dcb83bf9a119d24d8c2fed37` |
| 16 | `theorem` | [abs_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-of-nonneg.md) | 115 | `result-track:a2411aaac632d6a828e8efb6f2edb8f63c8ac749293f77b3a23763143a48e27e` |
| 17 | `theorem` | [abs_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-of-pos.md) | 119 | `result-track:1965adf449ebd77a950019a0c222ef854b8615b8657403063777d0e1dcd3e463` |
| 18 | `theorem` | [abs_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-of-nonpos.md) | 123 | `result-track:87b58e563eaa17e66b905f1bba5a9fdf7df9d113a66d2be62e10b1d6d0ceb0f4` |
| 19 | `theorem` | [abs_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-of-neg.md) | 127 | `result-track:8caa9de41a68679e61c9b5f53d246d77c41b201c1fcee4398b916b43430d053b` |
| 20 | `theorem` | [abs_le_abs_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le-abs-of-nonneg.md) | 131 | `result-track:233f2c7d46323e82ff60f67af665549af65721276c9282db2287f9f199622fe7` |
| 21 | `theorem` | [abs_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-zero.md) | 136 | `result-track:f2a52925a2ba1e926eb3c36618ee6d5d1b4172cc50dd4fd5dcf0e965f9895c14` |
| 22 | `theorem` | [abs_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-pos.md) | 141 | `result-track:59aa4860cc98388ec6f5e8d1d941b14ef07fb395d1d4f43c50de194f99e6db6b` |
| 23 | `theorem` | [abs_pos_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-pos-of-pos.md) | 148 | `result-track:f497534a8fdf7a7b04a7fe63d6ba822a705cef02fa78d0d42785165f343d2274` |
| 24 | `theorem` | [abs_pos_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-pos-of-neg.md) | 152 | `result-track:602223bf86241c95c6c97c261845abdc351da6fdb4969d45d9796f3ab7ef0e1a` |
| 25 | `theorem` | [neg_abs_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/neg-abs-le-self.md) | 156 | `result-track:e9dd818eda34774efde00bd9e1e2539deacae9d8db5f6db880201df8f5dcbf04` |
| 26 | `theorem` | [add_abs_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/add-abs-nonneg.md) | 167 | `result-track:7986473d39e46cb3786fb9f8dc65959230fd436af911728a2e2c5c254b95715d` |
| 27 | `theorem` | [neg_abs_le_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/neg-abs-le-neg.md) | 173 | `result-track:cb775292c59aacb4bb4e9ef129240e63057c311271aa494fd51684cabeb3d621` |
| 28 | `theorem` | [abs_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-nonneg.md) | 177 | `result-track:8772f60457826ef1efe129e64ad46783bc2697cfff4f48869f8d8792eb481eba` |
| 29 | `theorem` | [abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-abs.md) | 183 | `result-track:9ae1be51a2d77d356ff3f0aa070b440b159bcb433f3373dea91abb112942863e` |
| 30 | `theorem` | [abs_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-eq-zero.md) | 188 | `result-track:539673c01aa26b2f3a31257ea4a7a8c8c14d1f344e184f8a992239cd657f02e4` |
| 31 | `theorem` | [abs_nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-nonpos-iff.md) | 193 | `result-track:f23cbafdb324eed64a3df5f120c7eae4df347a7e52cad94a336b7f276c7241bb` |
| 32 | `theorem` | [abs_le_abs_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le-abs-of-nonpos.md) | 199 | `result-track:a9d64ff1b16b0db3dc578ef08a10eccc0d99747d13299b384ac9d373d2e66321` |
| 33 | `theorem` | [abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-lt.md) | 204 | `result-track:69f4ee2ba0653a3c8201ee213a67dbe7f620c3e221ab4c5cd34093e820f92952` |
| 34 | `theorem` | [neg_lt_of_abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/neg-lt-of-abs-lt.md) | 208 | `result-track:0464e0a8ab10f2f697b815ae94e9035e531d93a214426980c0e39e097aa667d3` |
| 35 | `theorem` | [lt_of_abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/lt-of-abs-lt.md) | 212 | `result-track:590a637d8d049b2319c5e249da457d779596384cd70e02fbf2ae8bf3f2d790ce` |
| 36 | `theorem` | [max_sub_min_eq_abs'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/max-sub-min-eq-abs.md) | 216 | `result-track:acc4713cc88c067967021974ce5fd573dbd5972173f997c897457907c6311705` |
| 37 | `theorem` | [max_sub_min_eq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/max-sub-min-eq-abs-source-edition-2.md) | 224 | `result-track:dbbf36c868503b6b94c112c7ba96b52f07faa7f75b2cee38fe790f8d0d9ec099` |
| 38 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/example.md) | 240 | `declaration-track:cae87a0ea9f9cfb1255bd0ece8f966690840fcd51291a3c5093ef88f897857bc` |
| 39 | `theorem` | [abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le-source-edition-2.md) | 242 | `result-track:769734f49a31fc2103a87f8c6f60a7b4e475e48d6b1b934c649d99645e69e741` |
| 40 | `theorem` | [le_abs'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/le-abs-source-edition-2.md) | 245 | `result-track:98b0c6f8eb6b2f2ce024e06fe6b45a6f02d269e0a9ac142999a5697ed4d5f69b` |
| 41 | `theorem` | [neg_le_of_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/neg-le-of-abs-le.md) | 248 | `result-track:1af457f900e5e8b3ad4501fda7b1fca326d95663da97724b89e17792b2678841` |
| 42 | `theorem` | [le_of_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/le-of-abs-le.md) | 252 | `result-track:0ea3879a9fddf105e8e092cfcb8371a4def0a50708e1f16d343c75604523fac1` |
| 43 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/apply-abs-le-mul-of-one-le.md) | 257 | `result-track:9052be05ddbb8fad974c26144637e9ade7d80e40bd93612cb61e92d58545bea3` |
| 44 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/apply-abs-le-mul-of-one-le-source-edition-2.md) | 266 | `result-track:999a14b634192026ef9f8b0714434df078e0f1d9b5e4ced89278a1139d24dccf` |
| 45 | `theorem` | [abs_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-add.md) | 274 | `result-track:55402c5ba01a1eb23d613d39ba088b0e726d0a0b24a864075813e122db915bb4` |
| 46 | `theorem` | [abs_add'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-add-source-edition-2.md) | 281 | `result-track:7edef5f99208696faf3a36162d527087e748bf55cc5a6a21f88b74538dbc82d8` |
| 47 | `theorem` | [abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub.md) | 284 | `result-track:efe06af2994ace8a121f4a8090b20d2be89df9a901cc4087abebc9a30a0ad5c4` |
| 48 | `theorem` | [abs_sub_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub-le-iff.md) | 289 | `result-track:66c2cfb74ff2aba6e9fd23a51ba0d2637da2a431f755bc313188fd1c74ba3a9c` |
| 49 | `theorem` | [abs_sub_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub-lt-iff.md) | 293 | `result-track:122d5f5685e8ed0fec2909238fe7115f265033a96f6e2638729c8d6d10c5175e` |
| 50 | `theorem` | [sub_le_of_abs_sub_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/sub-le-of-abs-sub-le-left.md) | 297 | `result-track:d7ddde0640d891cd45f6e57fb8342ba18650df3d6c5693270639592474eb604c` |
| 51 | `theorem` | [sub_le_of_abs_sub_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/sub-le-of-abs-sub-le-right.md) | 301 | `result-track:112ff513e6061f4bd75801d1df124d763f6199c22648015a0823d916ab2e21a5` |
| 52 | `theorem` | [sub_lt_of_abs_sub_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/sub-lt-of-abs-sub-lt-left.md) | 305 | `result-track:afb13c6b4c70e56d6cf33a30e6f37b679cebd00e62bc21454fc3203cbbc5e7b9` |
| 53 | `theorem` | [sub_lt_of_abs_sub_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/sub-lt-of-abs-sub-lt-right.md) | 309 | `result-track:c68c192d2295235a65cbb538b16ab65a11d283a91d875a0fd991d11d39b13452` |
| 54 | `theorem` | [abs_sub_abs_le_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub-abs-le-abs-sub.md) | 313 | `result-track:4160b32b192c983d197afd0dabc914960d4dbcf41fc10193fafdf0e2a7ed1f32` |
| 55 | `theorem` | [abs_abs_sub_abs_le_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-abs-sub-abs-le-abs-sub.md) | 320 | `result-track:f606e8c2220c56254e354232f52cff655a042ac4e2d7e5cdb894853ba51821f5` |
| 56 | `theorem` | [abs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-eq.md) | 325 | `result-track:d2e72b550b5de4eb307b1e64df1d9a49900368e9a53a7fae1de3f5454835878a` |
| 57 | `theorem` | [abs_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-le-max-abs-abs.md) | 330 | `result-track:c2ced37b65a0631bd3e331b6a989a911381063d213941022d84ec5192c0bba7c` |
| 58 | `theorem` | [min_abs_abs_le_abs_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/min-abs-abs-le-abs-max.md) | 336 | `result-track:e9a576549f683ca37933ab26f21ce475ee7c382ca4f2dc9d9d13dfc7c319cb87` |
| 59 | `theorem` | [min_abs_abs_le_abs_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/min-abs-abs-le-abs-min.md) | 341 | `result-track:9472cf17fb5cd9575c45bba30921dccb9c4c3e8718e95b601a37b063b6859471` |
| 60 | `theorem` | [abs_max_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-max-le-max-abs-abs.md) | 346 | `result-track:5370144ddf44de1cfadcbb6f8d61ed31bb0c25754ed506b66e8bbbe3e5ff6a4c` |
| 61 | `theorem` | [abs_min_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-min-le-max-abs-abs.md) | 351 | `result-track:31a67c5786497dae8e81c021cf2a1020c4612fc8ba6469372d887dfaf3baba55` |
| 62 | `theorem` | [eq_of_abs_sub_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/eq-of-abs-sub-eq-zero.md) | 356 | `result-track:2965c9618095a19481e65d7f960d94be43aa58f2ab1512e132e2a1e706cd5435` |
| 63 | `theorem` | [abs_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-sub-le.md) | 360 | `result-track:3597ab15afcacf69ecae23ebfb0f7df95df83e0f48519cd69953299917b9b9a7` |
| 64 | `theorem` | [abs_add_three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/abs-add-three.md) | 366 | `result-track:ae47957ac15fd5d888b1bf5799e766d8e573f85d6204e9ddea134e7698be8f09` |
| 65 | `theorem` | [dist_bdd_within_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/dist-bdd-within-interval.md) | 370 | `result-track:bd65e5859e01d3857c591fa2bd78397faf52b13c5122bd78f2a7b57c172f2eb7` |
| 66 | `theorem` | [eq_of_abs_sub_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbsNamespaced.lean/declarations/eq-of-abs-sub-nonpos.md) | 375 | `result-track:8c7b44495f231cd2ea1c248ecc54c59ed13129883292054173464072974ac0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8aad509efaff4735503c6c966a4b2e00750d1aca02a12826d8f138e216296f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean","GRWTSK/_verification/specifications/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
