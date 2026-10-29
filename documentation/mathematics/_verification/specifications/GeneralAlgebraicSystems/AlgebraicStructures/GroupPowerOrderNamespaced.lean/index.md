# Verification target: Group Power Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86c9d4946f41bed779d13e1990d9f6dfcadc197",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86c9d4946f41bed779d13e1990d9f6dfcadc197`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.WithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_le_pow_of_le_left'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-of-le-left-source-edition-2.md) | 48 | `result-track:d2292410410857d5cf848b3f65825ddab36832327b6544e1645a04b6d606fbab` |
| 2 | `theorem` | [one_le_pow_of_one_le'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-pow-of-one-le-source-edition-2.md) | 58 | `result-track:5d9a976d1a53353d448b24126b1d7b03c84c4914afb656e19c3c3ff4ba8b99ef` |
| 3 | `theorem` | [pow_le_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-one.md) | 67 | `result-track:09896a324c10aac48ef0f25b5aaec5f9a7af67511ca8a7ad279f3b9fe08dbdd4` |
| 4 | `theorem` | [pow_le_pow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow.md) | 73 | `result-track:3a5361a136ef87d89834e142d08ab1141c433436cece81795ec7d67bc84a536a` |
| 5 | `theorem` | [pow_le_pow_of_le_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-of-le-one.md) | 82 | `result-track:740a8dab75e9f32f68615e2a03b033889e66171f430262b9130daf510e72becd` |
| 6 | `theorem` | [one_lt_pow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-pow.md) | 88 | `result-track:737a3874574972ced2ca4f6d9fd5278bd345dbe6db6c33d127bc7ba95fa0a1a3` |
| 7 | `theorem` | [pow_lt_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-one-source-edition-2.md) | 99 | `result-track:be7c8d3e1d4f17c3d0371b70aa9f85afba82661ae925cc6390d8a2acd17c741e` |
| 8 | `theorem` | [pow_lt_pow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-source-edition-2.md) | 105 | `result-track:bb14ec947f6c9ebfde78b8c7f8f4415c25bd79d2ddfdda32c31fadfd02231389` |
| 9 | `theorem` | [pow_strictMono_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-strictmono-left.md) | 114 | `result-track:c6f53bad4d7713e03841fd5a52bd4c2126b2f9c2fc38463cce75d285c34e702d` |
| 10 | `theorem` | [Left.one_le_pow_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/left-one-le-pow-of-le.md) | 120 | `result-track:c9a4808c1dcba07baf5cd1579987ab454e64d82ab06689c6c5fb90670cdebd0a` |
| 11 | `theorem` | [Left.pow_le_one_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/left-pow-le-one-of-le.md) | 129 | `result-track:c7259b1445b622de3dd051c57dae9c50076e2d3e97a190aba3f8a972a34c89ec` |
| 12 | `theorem` | [Right.one_le_pow_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/right-one-le-pow-of-le.md) | 144 | `result-track:8760b3808d624aee9b5422448f15edcf7b55a8e9ac95b79d7a59e90d3a7fbdf4` |
| 13 | `theorem` | [Right.pow_le_one_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/right-pow-le-one-of-le.md) | 153 | `result-track:976fe58619a495e7fc2018d5c6c09cf3964a9efe351a4e42730b4dd71f53c5fa` |
| 14 | `theorem` | [StrictMono.pow_right'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/strictmono-pow-right.md) | 169 | `result-track:62ee07bdb2b4a8bee563bc65319b0ce63e8bd147c2d3c290a78e031f8874b066` |
| 15 | `theorem` | [pow_strictMono_right'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-strictmono-right-source-edition-2.md) | 180 | `result-track:89d6528d57312eceb658f749a6f5b18a1aec23607556369d3ef673b08d84ce8d` |
| 16 | `theorem` | [Monotone.pow_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/monotone-pow-right.md) | 193 | `result-track:9b6b7d9c373d19bb3d43ff559bfc71f7e2cfe32503a407479890e5ed42b270e2` |
| 17 | `theorem` | [pow_mono_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-mono-right.md) | 202 | `result-track:04777021d8c926f55c29b67d4347696943f52ef7d47d727bdd2e1f6383bddf83` |
| 18 | `theorem` | [Left.pow_lt_one_of_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/left-pow-lt-one-of-lt.md) | 210 | `result-track:f584282a0454195a4e5613ebb7cf01460773882e81358378975f165da18a5fde` |
| 19 | `theorem` | [Right.pow_lt_one_of_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/right-pow-lt-one-of-lt.md) | 221 | `result-track:369f41ffe8e4cf1963b522fcb72f4401c7bba625aec1f061076fcdebe8cd6230` |
| 20 | `theorem` | [one_le_pow_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-pow-iff.md) | 242 | `result-track:4c241e29f73217272498fb196e45e22c1f23cd6317608ea599dc392ed29d78a1` |
| 21 | `theorem` | [pow_le_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-one-iff.md) | 248 | `result-track:572f3f9aacba2019db784ce8c6d6ceb63bf27027fb134cfabab239c920401dcd` |
| 22 | `theorem` | [one_lt_pow_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-pow-iff.md) | 254 | `result-track:780dd005efafb4d2e46e3f5d373e2663f1ed9f867b958dabde5e020fc5608e2f` |
| 23 | `theorem` | [pow_lt_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-one-iff.md) | 260 | `result-track:8291892800d011add5881eadd00b770f1816a7dd77512b19708825d7697de892` |
| 24 | `theorem` | [pow_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-eq-one-iff.md) | 266 | `result-track:d6fcbbffa1d1272a68c0c69b8a9832894505c88161093b57200f67d085ab69cb` |
| 25 | `theorem` | [pow_le_pow_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-iff-source-edition-2.md) | 275 | `result-track:e238c25872eee95e518734487902de6143d586f0a1f5d970e948e6eefbffbdba` |
| 26 | `theorem` | [pow_lt_pow_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-iff.md) | 281 | `result-track:2f55a3317e29806403426eee58aed3270cd0f8795c68bb53bacda9399f657f25` |
| 27 | `theorem` | [lt_of_pow_lt_pow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/lt-of-pow-lt-pow.md) | 293 | `result-track:8b044fbdcf789c528ba987de69e405794c5b06836d4bb9d8c131fa2fa7dac13e` |
| 28 | `theorem` | [min_lt_max_of_mul_lt_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/min-lt-max-of-mul-lt-mul.md) | 299 | `result-track:735a108ada40f07df5ef271551013397177de9fcaac6ade0943400e631882365` |
| 29 | `theorem` | [min_lt_of_mul_lt_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/min-lt-of-mul-lt-sq.md) | 309 | `result-track:25bf1b308d082dd5f7032275e9db80a984a6a95f9a29c134eeaec6b4bbbfaaa6` |
| 30 | `theorem` | [lt_max_of_sq_lt_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/lt-max-of-sq-lt-mul.md) | 315 | `result-track:8fc2b42b6564414d40e680dddfdf7e19d901d530f4c4ecbe1fd2fdfd14d00867` |
| 31 | `theorem` | [le_of_pow_le_pow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/le-of-pow-le-pow.md) | 327 | `result-track:08a8f9a1bf358cb88dcd90197915c7cdb29b529d43ac5f8c3032b53796aaea7d` |
| 32 | `theorem` | [min_le_of_mul_le_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/min-le-of-mul-le-sq.md) | 333 | `result-track:d68069a6eed7cdc6ef12faa762e5bbb7c6c418a79a043c959b5116ed9d93d1e8` |
| 33 | `theorem` | [le_max_of_sq_le_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/le-max-of-sq-le-mul.md) | 339 | `result-track:6f58815b7791e008efb26778dd1af6dfb5bcc4e72fea1e0041e8ca444f908776` |
| 34 | `theorem` | [Left.pow_lt_one_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/left-pow-lt-one-iff.md) | 347 | `result-track:30298872e8fe4bde524cdd9cc7ecc0abf5f0e8cd7f0626938f0e0b15095f2174` |
| 35 | `theorem` | [Left.pow_lt_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/left-pow-lt-one-iff-source-edition-2.md) | 353 | `result-track:fc86038d3308e83f8bc19ebbaa65b348011c197e67f0e1c3a740d7e1189e8431` |
| 36 | `theorem` | [Right.pow_lt_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/right-pow-lt-one-iff.md) | 358 | `result-track:04f25074e7be89298fd5e17d4daecd284793d0c966561e08beebe95398666fcd` |
| 37 | `theorem` | [one_le_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-zpow.md) | 378 | `result-track:aaa1a6abf55ce9480a9599ddaa16f9522d5c5bd95b4d9d39ebd9d0baf1f4a27e` |
| 38 | `theorem` | [pow_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-pos.md) | 391 | `result-track:17925a8ffc991d6141c61097b6ad6768288a63ea51af0f877ca62574219d1265` |
| 39 | `theorem` | [zero_pow_le_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/zero-pow-le-one.md) | 401 | `result-track:ee1785825b03662655e79cb48807d8054a87b322bb5f667d8b0f9c599fd4ec71` |
| 40 | `theorem` | [pow_add_pow_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-add-pow-le.md) | 408 | `result-track:7d51d80b8aadbca4809bae28484a8b0db5ab34361f0c3480925bb81693b45758` |
| 41 | `theorem` | [pow_le_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-one-source-edition-2.md) | 429 | `result-track:57da22b9f98bd83a7969fba2596405fc86dc5c1e6f559ababb9c0ae3306f3408` |
| 42 | `theorem` | [pow_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-one.md) | 434 | `result-track:32c110016d5eee2b0a737314c53dbe183df1b137385650cbbe151ec1b022dab9` |
| 43 | `theorem` | [one_le_pow_of_one_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-pow-of-one-le.md) | 441 | `result-track:30d038167df80149db5d969ef65edcc4562d655ebc63b71578da1411cabb960e` |
| 44 | `theorem` | [pow_mono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-mono.md) | 449 | `result-track:138c9246111fdf76dd39eedeec93b18eb557bd2f22a2180656bf631c31eb5f79` |
| 45 | `theorem` | [pow_le_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-source-edition-2.md) | 455 | `result-track:67cf65c169a927535d36b0dde513e2515c73daf9c5ae0ded496252a991fd52ef` |
| 46 | `theorem` | [le_self_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/le-self-pow.md) | 459 | `result-track:8bc6540bd877196defa1d0889d01d34570c1497b32adb363fb53fd62182eefee` |
| 47 | `theorem` | [pow_le_pow_of_le_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-of-le-left.md) | 464 | `result-track:9f91dcb13927749f588b75616e17d648427ff29c913fd98a3af66cc68670906f` |
| 48 | `theorem` | [one_lt_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-pow-source-edition-2.md) | 476 | `result-track:cdcd7ea54f068a3899f99989196dac454b50729bbf44b3a24bc3cae5f6656231` |
| 49 | `theorem` | [pow_lt_pow_of_lt_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-of-lt-left.md) | 489 | `result-track:ecded9543de31eb282be54f5cb2469e8791ee4fa76adfd9aeeefc1c41c8a941f` |
| 50 | `theorem` | [strictMonoOn_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/strictmonoon-pow.md) | 496 | `result-track:994a1187eaf0ed3487971f9e4cc80d6623e1476c920c735e1a252090ff3e224f` |
| 51 | `theorem` | [pow_strictMono_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-strictmono-right.md) | 500 | `result-track:75a52b42f80af26282cf8e1a92e84af11476f3462980e8f7b1637103d3d940b8` |
| 52 | `theorem` | [pow_lt_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow.md) | 506 | `result-track:3280b56de75508f6b0e43a1d818d1a1205560cd5c277b9aab8950dc0bc4dcf36` |
| 53 | `theorem` | [pow_lt_pow_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-iff-source-edition-2.md) | 510 | `result-track:cc8c535c87f56a5da768c2416e3ede9ef6990e95a409d3c439284cb93ce212a4` |
| 54 | `theorem` | [pow_le_pow_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-pow-iff.md) | 514 | `result-track:a157ea48dcec7f0a8322c7ce8def7d3d4da389b4b489adce88c3b2690ce8bef2` |
| 55 | `theorem` | [strictAnti_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/strictanti-pow.md) | 518 | `result-track:8d89e591a282962de718c230ca6bee3b7c9644593f8e7b0c15af03b305cb8f7c` |
| 56 | `theorem` | [pow_lt_pow_iff_of_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-iff-of-lt-one.md) | 523 | `result-track:0801d56017af76abe63c15be15b65689ab23fb6919400812014584a9f02be44c` |
| 57 | `theorem` | [pow_lt_pow_of_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-of-lt-one.md) | 527 | `result-track:f61719e2c581b6c30f48184e909af16be461eff05134c738e71f9fa9a3dd1e2e` |
| 58 | `theorem` | [pow_lt_self_of_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-self-of-lt-one.md) | 531 | `result-track:739fc77891dc3e3f72192c00fbba29b8a597c238b4a6db01ff756a6586680d21` |
| 59 | `theorem` | [sq_pos_of_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-pos-of-pos.md) | 537 | `result-track:33ca219a15223ba5cddf0ebeace63242373654407dbb4d96f0546e950a51a122` |
| 60 | `theorem` | [pow_bit0_pos_of_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-bit0-pos-of-neg.md) | 549 | `result-track:713dfeb1050aaf7ed9a917bf356eceeaa39050ef58c64b8c10156f5dcb394f5e` |
| 61 | `theorem` | [pow_bit1_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-bit1-neg.md) | 554 | `result-track:fab5b580aa73de14f8bb0a614db902e963a83605642751ba3821189fdf4e1c19` |
| 62 | `theorem` | [sq_pos_of_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-pos-of-neg.md) | 559 | `result-track:3ae5cb28d74606695fbf080f1297f83741d4320d2e6b018aec0d7bebe7043bd4` |
| 63 | `theorem` | [pow_le_one_iff_of_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-le-one-iff-of-nonneg.md) | 569 | `result-track:db96332cb8c0d6d9ef9a28839b75ddac5d20c83ccaa0073be48e1ee03be5a1bc` |
| 64 | `theorem` | [one_le_pow_iff_of_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-pow-iff-of-nonneg.md) | 575 | `result-track:f8003262b0a7d7f92f7e6e226d9f2db9a2afa4a7f795b78b3058ef32f517441a` |
| 65 | `theorem` | [one_lt_pow_iff_of_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-pow-iff-of-nonneg.md) | 581 | `result-track:2b948ff7d937a79f729abdf2b09798ef1d8c1783403f4f34012a286d77f15134` |
| 66 | `theorem` | [pow_lt_one_iff_of_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-one-iff-of-nonneg.md) | 585 | `result-track:f887c2de40c21971c6ef09bec4a5db1c2ecf15d9b32c41a373d2b6d7e755a553` |
| 67 | `theorem` | [sq_le_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-le-one-iff.md) | 589 | `result-track:e4feb7db872efc947de84d42f7ed6bd91290480cd18066f51730840f6f9a4d80` |
| 68 | `theorem` | [sq_lt_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-lt-one-iff.md) | 593 | `result-track:4ce2cd295e24abcf4712932fa11c8c2b92bdc3cfc8f76624cd356a1b92fbfc58` |
| 69 | `theorem` | [one_le_sq_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-sq-iff.md) | 597 | `result-track:e03d9e9eafa25f6091bdaa4ac6e385d625da9d555444b5aeefa0fa8ea48fd571` |
| 70 | `theorem` | [one_lt_sq_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-sq-iff.md) | 601 | `result-track:f58d5723b49a939d81e0b70203f77918a78f1c260294792828bd5acf26d8105d` |
| 71 | `theorem` | [pow_left_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-left-inj.md) | 606 | `result-track:b9da6dab81a99bcd5887ada4bddf148ff3baac162473cc3d3ca1f803ae98f21f` |
| 72 | `theorem` | [lt_of_pow_lt_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/lt-of-pow-lt-pow-source-edition-2.md) | 611 | `result-track:a841ee18b6fc8b60e8a4cb9679581d8b4636f778d697668cd9a787c35084f78d` |
| 73 | `theorem` | [le_of_pow_le_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/le-of-pow-le-pow-source-edition-2.md) | 615 | `result-track:0b1562d6d7909f837270f0658d7a44dd95218f31300f181aa6a37249f509728d` |
| 74 | `theorem` | [sq_eq_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-eq-sq.md) | 620 | `result-track:9277f5776d9773e3dc0385edc2d5dbee3a9c44c14adcfcc2802dff344ab32114` |
| 75 | `theorem` | [lt_of_mul_self_lt_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/lt-of-mul-self-lt-mul-self.md) | 624 | `result-track:508056f033977cdc8d9a8c12dc41d1293afbf35b41336b0e6cbe771715a3892b` |
| 76 | `theorem` | [pow_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-abs.md) | 635 | `result-track:ad3898141280a757aeb71c4209d02cef04d674ab1d18872408d88db86adc2580` |
| 77 | `theorem` | [abs_neg_one_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-neg-one-pow.md) | 639 | `result-track:fb659d04317b9b66e82cf26a9260f150cf2060841236a8eb11d71962be8fb754` |
| 78 | `theorem` | [abs_pow_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-pow-eq-one.md) | 642 | `result-track:10d16336db3190ed7dc3bf469a5d3c8380ac771ff96e9bfed681a32f1ee7f1cd` |
| 79 | `theorem` | [pow_bit0_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-bit0-nonneg.md) | 650 | `result-track:e0a32edacf28ff7bb0da0d28687d03cfad71f7f4100868fc966b8e5a18895b23` |
| 80 | `theorem` | [sq_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-nonneg.md) | 655 | `result-track:1892547a710ffa93a50769f6674858d0032d9547279298e03bcecd33d85c915c` |
| 81 | `theorem` | [pow_bit0_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-bit0-pos.md) | 662 | `result-track:fc7ff0e92e5cb7a50c7d5695d12767a9da617e8cf86848f1a9608417c822ff7a` |
| 82 | `theorem` | [sq_pos_of_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-pos-of-ne-zero.md) | 666 | `result-track:1236e81a0174b7e746eef4daefc366ecf62b450b66d1b88885c0bb52fdc6e809` |
| 83 | `theorem` | [pow_bit0_pos_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-bit0-pos-iff.md) | 673 | `result-track:4ea5abdf955960ae4f23b21bdbd5a6c401bb4749d397cdf84335a0d56e40e8b7` |
| 84 | `theorem` | [sq_pos_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-pos-iff.md) | 682 | `result-track:6e871774fe659de3d2304dcfe72456e068ef69cc0aaf2f8bd3e96b459676dd6a` |
| 85 | `theorem` | [sq_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-abs.md) | 690 | `result-track:c3875e8e360448d13088b7c0e79f6293229377033a28eda0fe62ceee22641aa7` |
| 86 | `theorem` | [abs_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-sq.md) | 693 | `result-track:32f6a6a7b4d0e5c8ce949008d3213d3ce783f6993cf210bab20cef794e662230` |
| 87 | `theorem` | [sq_lt_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-lt-sq.md) | 696 | `result-track:824c31140d4240ec119737ed44c338a6bd0075e8e355542211f0ad6495acac0c` |
| 88 | `theorem` | [sq_lt_sq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-lt-sq-source-edition-2.md) | 701 | `result-track:f1afa80b266cfbc4a18502f264f7642576edda17c5d1c782d59fc92de17616bb` |
| 89 | `theorem` | [sq_le_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-le-sq-source-edition-2.md) | 705 | `result-track:8d5c45e8fa30c42f8700a95399eaca2cc7676539dddfb0122dd0b45c387477d7` |
| 90 | `theorem` | [sq_le_sq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-le-sq.md) | 710 | `result-track:14b96be2840d9fc0e914acbca15f3914f0b091e12996f3a09f19b418d0e07a91` |
| 91 | `theorem` | [abs_lt_of_sq_lt_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-lt-of-sq-lt-sq.md) | 714 | `result-track:64b788b96c2050f2881df80859124e49cf0ac76fe09be2036cf29d949fb2440b` |
| 92 | `theorem` | [abs_lt_of_sq_lt_sq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-lt-of-sq-lt-sq-source-edition-2.md) | 718 | `result-track:f0bb70414888acec638164df1afd7524d9f5675603a530a61f4ca94dcdf55ff1` |
| 93 | `theorem` | [abs_le_of_sq_le_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-le-of-sq-le-sq-source-edition-2.md) | 722 | `result-track:58afc23f812e3840820a3697c67b28c8fa8e7ad2c280fd9ef136078261f1861f` |
| 94 | `theorem` | [abs_le_of_sq_le_sq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/abs-le-of-sq-le-sq.md) | 726 | `result-track:2a6dcdc5fac69e1756a4827cb0f1d8c1cb7b08d6c59f5c17ac99828a74b43e9b` |
| 95 | `theorem` | [sq_eq_sq_iff_abs_eq_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-eq-sq-iff-abs-eq-abs.md) | 730 | `result-track:2b0b9531609db4879ef7d9061841334ecd807972c7a5012993834741ac1510ba` |
| 96 | `theorem` | [sq_le_one_iff_abs_le_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-le-one-iff-abs-le-one.md) | 735 | `result-track:4f1136964a2444f7437a659b0678a06010da1429b211bbd0d7a1832b1f27e406` |
| 97 | `theorem` | [sq_lt_one_iff_abs_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/sq-lt-one-iff-abs-lt-one.md) | 740 | `result-track:d545a16c4b72afbbbdba56b8e61aa1657969a269e4c49e8696b8c7a9854f46b8` |
| 98 | `theorem` | [one_le_sq_iff_one_le_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-le-sq-iff-one-le-abs.md) | 745 | `result-track:93e4f7811ed5ec4e2988b58fbcec2a910a29d35c56decd119cf08b3de6347eca` |
| 99 | `theorem` | [one_lt_sq_iff_one_lt_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/one-lt-sq-iff-one-lt-abs.md) | 750 | `result-track:28ee939216e591f90f4aecd6feee459c6911b9f775b452b5aeb459818f9c1c3f` |
| 100 | `theorem` | [pow_four_le_pow_two_of_pow_two_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-four-le-pow-two-of-pow-two-le.md) | 754 | `result-track:85d32d04eb6cc632de3a25cbfe6edcb5cda8ef814d5ddaff31c914d61a012af0` |
| 101 | `theorem` | [two_mul_le_add_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/two-mul-le-add-sq.md) | 765 | `result-track:b3fd4166ac860a07a92b7481e1060b882e74c5b48657d8de1e070f91eed9d465` |
| 102 | `theorem` | [pow_pos_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-pos-iff.md) | 778 | `result-track:946085359fe3b9a460645a7ea739054fe1657b1b70aa9cbd4dc2d1d2b6d5370d` |
| 103 | `theorem` | [pow_lt_pow_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-succ.md) | 788 | `result-track:d6c3b6406a316063837b3f0138d7860665dd176f86dd01680461af16f6c5e600` |
| 104 | `theorem` | [pow_lt_pow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/pow-lt-pow-source-edition-3.md) | 793 | `result-track:e593099b90ae6d01ee5b96644be2392edd5ff50a3d7c6f21e2df1c2a12716c80` |
| 105 | `theorem` | [map_neg_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/map-neg-one.md) | 804 | `result-track:94a04882c62766043a65895e8748f2c667fe7327043b1dbd1789d107252f066e` |
| 106 | `theorem` | [map_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/map-neg.md) | 809 | `result-track:c0911211cf1aea928329cee86e91542aeb7a7752693c4a6c94e22580b679616c` |
| 107 | `theorem` | [map_sub_swap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupPowerOrderNamespaced.lean/declarations/map-sub-swap.md) | 812 | `result-track:3f8d68a42d125587c7c3407566aea72a9bbe4287b0ffcbd288bd574f26442ec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff3e44681db944a8fb5cd17a09c5764911cd2ab6d5353ba7a7f2c268b6c07817 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
