# Verification target: Opposites Namespaced Op Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c4f12c9b3c6c165ec18ea388b2e781b0b40da98",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variantaeac3d19e7bb2f8c6764798be1a223bd4891e36178534991f08235ee0bf059ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c4f12c9b3c6c165ec18ea388b2e781b0b40da98`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variantaeac3d19e7bb2f8c6764798be1a223bd4891e36178534991f08235ee0bf059ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variantaeac3d19e7bb2f8c6764798be1a223bd4891e36178534991f08235ee0bf059ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/preopposite.md) | 67 | `declaration-track:442ea1de3baa31b572683c7c3ec82dd4a6a923a9d2c94ce1289ebbc40a3ff389` |
| 2 | `def` | [MulOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/mulopposite.md) | 76 | `declaration-track:9af3b83a7db42ea38f6c5374410062a503f73c87700772e657992e55319c53cd` |
| 3 | `def` | [op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op.md) | 94 | `declaration-track:9825f1ff0496f1da783c0d83e58e75ca0bba5584ce6cb82165839b10b622144e` |
| 4 | `def` | [unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop.md) | 101 | `declaration-track:f7cd8e94289a5d68384d09ea17b27b69f7c3a7044c43d5591da25c06ee62041a` |
| 5 | `theorem` | [unop_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-op.md) | 107 | `result-track:0b6bb87f15c0ddf138c2e13bb3f687ab62dfbae8bfb2573b910f69c12bf45547` |
| 6 | `theorem` | [op_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-unop.md) | 112 | `result-track:0ec10bffc669435bc83ee3dff2df685d6c1f1b41b13936a407aadbd4f242e640` |
| 7 | `theorem` | [op_comp_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-comp-unop.md) | 118 | `result-track:d8686a701f17d0fe51c7b32591eb63e0a79dacb6a1a9a5f74ba97e88ed4a6af4` |
| 8 | `theorem` | [unop_comp_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-comp-op.md) | 124 | `result-track:604f509258c80301776b6fe1c64cbfb4912d8e111e5363b5c836280dd6956b95` |
| 9 | `def` | [rec'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/rec.md) | 132 | `declaration-track:b9233825532a7461e6d393f9ec459ebf57b07911374e1b80cdbacc351de7e70f` |
| 10 | `def` | [opEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/opequiv.md) | 139 | `declaration-track:95c8e388505f87f53626205ee4e015ead315802566534e34152ead41a9c92c9a` |
| 11 | `theorem` | [op_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-bijective.md) | 147 | `result-track:f92acba81823d555d9a1b98765d5b79cb0ced04195dd9d6688b9a2444aa90e74` |
| 12 | `theorem` | [unop_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-bijective.md) | 153 | `result-track:099dd9be0eed9e05ba5f77aa8f5af4ffb2ca8fcaa2694b42c76e426573b4550e` |
| 13 | `theorem` | [op_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-injective.md) | 159 | `result-track:072536b7f78340a5a606ac18fdfea581ad0e3babacd8997cb04cf6d890240783` |
| 14 | `theorem` | [op_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-surjective.md) | 165 | `result-track:6bb8b5342b135bbc3665ce66c44f663b77ef20172214287e3f839cd26f22379d` |
| 15 | `theorem` | [unop_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-injective.md) | 171 | `result-track:6001912287e9198879ecedccdadb780b34a330ecd330076577b473826bf3bb1d` |
| 16 | `theorem` | [unop_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-surjective.md) | 177 | `result-track:e954bd80abc59f312d441dfecf36f79b2be707907c63efe5d92ac7de219cd8d5` |
| 17 | `theorem` | [op_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-inj.md) | 183 | `result-track:ad953763a7f457640f26a14b7a7f23ffb8141837c044895c5d448cafeeb054a7` |
| 18 | `theorem` | [unop_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-inj.md) | 188 | `result-track:1e8c565058315027cfb5b6c9d290102fb16e399ce62a4c514780689619c78c3f` |
| 19 | `instance` | [nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/nontrivial.md) | 198 | `declaration-track:9daacba4b0d6adcd517c98dfa3fdccd993fc547eeecb4c0a8546f67a9c6f7f28` |
| 20 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/inhabited.md) | 202 | `declaration-track:1717884d765cbd9c981059d8bde9f40e696dab16bed684968c77dd28e0466904` |
| 21 | `instance` | [subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/subsingleton.md) | 206 | `declaration-track:de5ca65f5fbecb4f92354586b522b1cdb3991ce084dfc87feeb71bf535233685` |
| 22 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unique.md) | 210 | `declaration-track:d31895bddc62ba1b6bcb5c860ca79c63bdfda0a667e1d3769018a7d39639d0d0` |
| 23 | `instance` | [isEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/isempty.md) | 214 | `declaration-track:10456d8e7b6a556e2fcb0a538519d55c5d733500c48a5dff359d9b96a8565f8a` |
| 24 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/zero.md) | 217 | `declaration-track:08abb547c4333ad90583d0e2ab6e60e3fc6dc1cd5f571f4b00c0fd74b232019a` |
| 25 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/one.md) | 220 | `declaration-track:530fba56edcbaa3f5e849a6a53b2a50a1a99082285a9bd701d69e2b575c672ba` |
| 26 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/add.md) | 222 | `declaration-track:1eb8a5b215e74d9e0a88a375e25dea5c4fb8e8be0f15c423e3609d221e962ed1` |
| 27 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/sub.md) | 224 | `declaration-track:bfd45c685d2fab414be3c639538c9b4bbdf9e45202e96abe22d4978448e71ab8` |
| 28 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/neg.md) | 226 | `declaration-track:f970a37918a352944eb49a3f2efaced3195a72aaac7f97edc10ddd11f314a378` |
| 29 | `instance` | [involutiveNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/involutiveneg.md) | 228 | `declaration-track:c6ee74a1b7a977e7b356285f9e06da67efeb0cb1f2bd12c40a659bc317cdb80a` |
| 30 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/mul-source-edition-2.md) | 232 | `declaration-track:8960cb231f99d1113fbe64a6456caf933bd7d9699581e455f2f359e4a0a8a713` |
| 31 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/inv.md) | 235 | `declaration-track:462c2eab8ebad5b3f8ced899b98d71bd5198d544580ad5cab876c3163ff66112` |
| 32 | `instance` | [involutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/involutiveinv-source-edition-2.md) | 238 | `declaration-track:41260a90293ef1d3027f70de5ed35ab62ec566b5de1661cd4e1b331446410aa8` |
| 33 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/smul.md) | 242 | `declaration-track:b4625222bed1513a38b7062ac61a6a2836756464fe8a4a45a8eaab67396e9509` |
| 34 | `theorem` | [op_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-zero.md) | 247 | `result-track:f60625f65e33ab1ecd60d1bc8a42ff6a2deac4d79273aa8340ba86f2a7b1ee83` |
| 35 | `theorem` | [unop_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-zero.md) | 252 | `result-track:ad0aa25c596fd635072c1d9e40372190ab56a72008622e158d75326ab103a6c8` |
| 36 | `theorem` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-one.md) | 257 | `result-track:1fc86648cbefb0b76bafb8ac5444ecf7a0584e77c0442e46fe1e968618efe355` |
| 37 | `theorem` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-one-source-edition-2.md) | 263 | `result-track:90f733faedbe4b9ac3c0e454823a94c633881e1e1ac079c5342a6c09b4814097` |
| 38 | `theorem` | [op_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-add.md) | 271 | `result-track:c855b8e81f1a0303f6315c62781b7b7699b1cc270c49240bb199945ac3eb6a63` |
| 39 | `theorem` | [unop_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-add.md) | 276 | `result-track:3ea49920cbe7c9a53f0afe3a423063799bd3a55442b385436ff60f273f3efc67` |
| 40 | `theorem` | [op_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-neg.md) | 281 | `result-track:69878817648a83e46918760355c9522e3a5b647d705f023e6f2776190917d769` |
| 41 | `theorem` | [unop_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-neg.md) | 286 | `result-track:3b883f3f9fa4a3d0a12df477124328566b879c04004cade1d953a7819bdd150c` |
| 42 | `theorem` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-mul-source-edition-2.md) | 291 | `result-track:6888b3127fe78fce2f43840b5a51fff5da28d1684df58b2679ad3fd30ffa4784` |
| 43 | `theorem` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-mul-source-edition-2.md) | 297 | `result-track:95b077cccd3dd72402e14b9bed9bfdaac034c788f2871591c159f27f785fefbc` |
| 44 | `theorem` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-inv-source-edition-2.md) | 303 | `result-track:d1e477f54685837b19ca07863ccb71fbb6453a873e8159e59b307b48a381fec4` |
| 45 | `theorem` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-inv.md) | 309 | `result-track:1bb0797a0e3c84a416e7e4e3a3e1a5b651e0aa101056529401842c357725ae2a` |
| 46 | `theorem` | [op_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-sub.md) | 315 | `result-track:bf62901ddf0cc33b7483b934093e8580c0f81e0e41547f9f8fbd61952ed5b5ad` |
| 47 | `theorem` | [unop_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-sub.md) | 320 | `result-track:5ec277669d9aea7fb37ba6c030f8cbd4c10bb335650dfcbadcc6f265eaf064f8` |
| 48 | `theorem` | [op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-smul.md) | 325 | `result-track:bb05581a398c7b476cb2577e6402f81937d53e96f9fe5fcb6c14188b3d8b5558` |
| 49 | `theorem` | [unop_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-smul.md) | 331 | `result-track:91fb106288a7b650ba1115d2355dd46218ee9b3a65187b6363aa3569b9790f74` |
| 50 | `theorem` | [unop_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-eq-zero-iff.md) | 341 | `result-track:fb3af7dc1d8a2c385d3f8e1f3a2dcc24814e3c0290db48ad145f4b10269ed70e` |
| 51 | `theorem` | [op_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-eq-zero-iff.md) | 346 | `result-track:80094e56f69af0d521fbfce8eabcc2b0999e76fb2139f35f34074fdb58615238` |
| 52 | `theorem` | [unop_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-ne-zero-iff.md) | 350 | `result-track:4c138c3fdb99f5ed4e3b7cbf41b5933382da24e7231b43261f4fdc42dd7962ac` |
| 53 | `theorem` | [op_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-ne-zero-iff.md) | 354 | `result-track:d47b67b4a85f4fcc47c11607b3caec3f5d555dd5be943b5456cd162ad57f5a88` |
| 54 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-eq-one-iff.md) | 359 | `result-track:2ee323d7e72db41e2a3a6ef49c3e293218cf39389812b8524c2e15a1fb551888` |
| 55 | `theorem` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-eq-one-iff-source-edition-2.md) | 367 | `result-track:c7d55aeb02ecf829d62cd3d8ec8f89080e3774e47261dcfed0f48c3fa84e5ce1` |
| 56 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/one-source-edition-2.md) | 376 | `declaration-track:b16d7bc42edf8191001576c23648d42840d6243a33371fd4914d57c9e1365193` |
| 57 | `theorem` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-one-source-edition-2.md) | 379 | `result-track:ce5bcefb86f6b27d90ee83d5659b3f1a8704a16456254b3232ffe7976b28c5cc` |
| 58 | `theorem` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-one.md) | 384 | `result-track:1d711de7b4f0bdc9f1999d252802998a5dbe1aa89971635c291508d0685b070a` |
| 59 | `theorem` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-eq-one-iff.md) | 389 | `result-track:750b297032694a9e3a7b56d6f486c92ca3b393c4a22e2ee3f7231a9fc55135ba` |
| 60 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-eq-one-iff-source-edition-2.md) | 394 | `result-track:5cf2484f4f817db425c7a09ab2f87419c94a7b94327d0f336490e603fdcf0a59` |
| 61 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/mul.md) | 400 | `declaration-track:38249c05853a970a52a02a45ba1ee7fe93596bffea00387d11a167d5684307c6` |
| 62 | `theorem` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-mul.md) | 403 | `result-track:3754282cb6ad8966318a603ff85f6542ed2ad4cbde9f01776f3856dde64ff621` |
| 63 | `theorem` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-mul.md) | 408 | `result-track:6ad5fd828842c14db63fc90705af60d4aa2e214e332da08060dc3c92212ea7f8` |
| 64 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/inv-source-edition-2.md) | 412 | `declaration-track:e5c693c768f5862aa0ffefd112c7d49ed84f85c671793d7414e39ff03e64d48a` |
| 65 | `instance` | [involutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/involutiveinv.md) | 414 | `declaration-track:0f39f6e66a3009d23f06a4a2554eb7749276284196d5a8648bb82a1323187906` |
| 66 | `theorem` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-inv.md) | 418 | `result-track:6301a5f64c1d11e2ba3d22c29e549d6144116b20fa46cceac9fd42f33c0d51f6` |
| 67 | `theorem` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-inv-source-edition-2.md) | 423 | `result-track:3198e6526bb2b3f60e3e356e9aa2f4da2c0988701f445c57cb87a6bf999c4dfc` |
| 68 | `instance` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/div.md) | 427 | `declaration-track:1ec12d4fc4e484ec2ce1ceb6bbc4ed60c9874c2c2d2acaee3a42f0a2a49de09d` |
| 69 | `theorem` | [op_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/op-div.md) | 430 | `result-track:f9df3ae2744730329fe91c7019dcdd3cb428d0355a26fcfed8d6db688162d750` |
| 70 | `theorem` | [unop_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedOpZero.lean/declarations/unop-div.md) | 435 | `result-track:8071753952065c8d1a8bfcba6f94210fad2cee1aa9ea2f955be99b9308b059c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d59e1d43a6cfe79ae55b7b8504fae690b282cdf323e3f992080a6f63545cf757 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variantaeac3d19e7bb2f8c6764798be1a223bd4891e36178534991f08235ee0bf059ce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variantaeac3d19e7bb2f8c6764798be1a223bd4891e36178534991f08235ee0bf059ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
