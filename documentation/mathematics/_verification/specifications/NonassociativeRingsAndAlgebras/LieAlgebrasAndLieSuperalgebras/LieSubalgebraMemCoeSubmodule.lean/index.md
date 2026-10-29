# Verification target: Lie Subalgebra Mem Coe Submodule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8e013ec2a204e0542ed61fca8f0876a49f7b3e5",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant859bbe56ad35da21d38592a782dc5b3744b92258a851eb79ef4322e5ccd77066.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8e013ec2a204e0542ed61fca8f0876a49f7b3e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant859bbe56ad35da21d38592a782dc5b3744b92258a851eb79ef4322e5ccd77066.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subalgebra/Variant859bbe56ad35da21d38592a782dc5b3744b92258a851eb79ef4322e5ccd77066.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liesubalgebra.md) | 41 | `declaration-track:d8a67a530be079d7051861e32b5c0c4a2af8ba210b905c0ef8c773f35c52e4f1` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-14.md) | 47 | `declaration-track:eed45b6d1fc6b919dfa58ee38f7133464a3252961e1cf874bb71331f25e54cfc` |
| 3 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-8.md) | 52 | `declaration-track:85f7c7d5eb0f4b2041e9b7de4b068e1e5f9f5013f9c75b9b5367a692dee852ab` |
| 4 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:46c6dd5bbf9e7f97781251bcfaeeab71320ec028b446a6d95c6539e55b2d8b8a` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-6.md) | 60 | `declaration-track:617694bdb08aa6c96d7a0433a2ebb8e798a9c93e5d2a0517040b6a9ace60afd0` |
| 6 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-12.md) | 69 | `declaration-track:d9f1e2ba4e1b88c58655281bfb5d16651441a7a946d0fcd58df882741c327915` |
| 7 | `instance` | [lieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liering.md) | 76 | `declaration-track:8dde7c0b6dca2c2d788f3cb559696a4ddcd4c0806253e89b768354aaab70a011` |
| 8 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-11.md) | 101 | `declaration-track:c96530fe66a0640be67e83dca71d6318be50c6a4de235450ca598b4e226b44ec` |
| 9 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-9.md) | 104 | `declaration-track:a2e7607a9e065b82e82eadf177ee2f5175917f3d3cef95b3f6858658c45e6b10` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-10.md) | 109 | `declaration-track:b53a6f1c6096cbc085e526d284164c17b3dd3fcdae24705985b511b4283a24f9` |
| 11 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:4248ffbd0bf76d0579eeb198f1b114238894b00df3659ff7ce6720c12c76c641` |
| 12 | `instance` | [lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liealgebra.md) | 119 | `declaration-track:99793bb5a94283e3f5dd892ea7456dcb2460476a268f2ce7fdd15b1531ac16a4` |
| 13 | `theorem` | [zero_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/zero-mem.md) | 129 | `result-track:75983a37589755bc6223e1c0ec66d563fc37e0a0a7e0b606fa4449a6f7100b05` |
| 14 | `theorem` | [add_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/add-mem.md) | 133 | `result-track:a842e4c56f226786b193eb0f118286416c9d796a163652a6bd50d4e7daafeeac` |
| 15 | `theorem` | [sub_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/sub-mem.md) | 137 | `result-track:45fdb65720cd5d36c5e967605fb04e7134688a08ab0e2c551ac4f4b86ba72506` |
| 16 | `theorem` | [smul_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/smul-mem.md) | 141 | `result-track:9dffd4973748a1d5d519e52cab1e6baf70de79a3c367be4249dae25835b84d40` |
| 17 | `theorem` | [lie_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/lie-mem.md) | 145 | `result-track:33dc83e24aac3df219054ce980389f399cea752594497f0939e13d6276e60400` |
| 18 | `theorem` | [mem_carrier](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-carrier.md) | 149 | `result-track:7d5fb34d6a6f7653564431fbf606469929c8c06eef8d9ab087c8e36d303fc4ad` |
| 19 | `theorem` | [mem_mk_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-mk-iff.md) | 154 | `result-track:70488689c4bd9c52dc13c8fe07c2f7cba72ebd9540b19450aa04efb0a30cebaa` |
| 20 | `theorem` | [mem_coe_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-coe-submodule.md) | 160 | `result-track:1c2b7e2284b82df3b63e44bc1810bb441af86ee2ec34af148d015109a4371dbc` |
| 21 | `theorem` | [mem_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-coe.md) | 164 | `result-track:eadfd34811fd72635aad249feb9f13027b006fdd382e7b7e54e03f6fdf767297` |
| 22 | `theorem` | [coe_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-bracket.md) | 169 | `result-track:352a43d997fd332cf3771507af4af703a0111d3ea4935af1d59491a0e731d878` |
| 23 | `theorem` | [ext_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ext-iff.md) | 173 | `result-track:0ce405b75885ef9dab795f79f5ebc451049b969fd39d8f9d5baac311538d4835` |
| 24 | `theorem` | [coe_zero_iff_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-zero-iff-zero.md) | 177 | `result-track:d5317851397a55bd4be22270c66df72419b717734a60085f3b691be3afe620c8` |
| 25 | `theorem` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ext.md) | 182 | `result-track:c93e1b4b7f540a390950daf09d4be06e4e3125adda2bb2db4d1f0f8ef323fb20` |
| 26 | `theorem` | [ext_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ext-iff-source-edition-2.md) | 186 | `result-track:fa68f3b04ab595255dda2b6342fdc0c2f7f1a18164ee562787fbfcd7a38f8208` |
| 27 | `theorem` | [mk_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mk-coe.md) | 191 | `result-track:724aa86f322c0d05425d4d06dd6b7ea0477092a9e1e80b1351ef9497f55c269e` |
| 28 | `theorem` | [coe_to_submodule_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-to-submodule-mk.md) | 197 | `result-track:72c1f79d498ede1aecfa6e2d5bd18a5b3bfbb1d65bd5c4b21d7e84e536631202` |
| 29 | `theorem` | [coe_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-injective.md) | 203 | `result-track:acf9ede8aaf9cff3ce9a75fb0a3850dea76a2484d9bd68f58df7561baefa89ce` |
| 30 | `theorem` | [coe_set_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-set-eq.md) | 208 | `result-track:071f9578d77866d01258a04683df0ecc4096a5a2c715c657695ce23fa296105b` |
| 31 | `theorem` | [to_submodule_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/to-submodule-injective.md) | 212 | `result-track:fd0bc16131c3c6e2dd8761fb9a52e38a1df0ee2b2f670ab4b3a21992c1b8a58d` |
| 32 | `theorem` | [coe_to_submodule_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-to-submodule-eq-iff.md) | 220 | `result-track:1bd73bf115bec451122e761524ef6b269a76e37032d0375f1927bc6cd04fbd28` |
| 33 | `theorem` | [coe_to_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-to-submodule.md) | 225 | `result-track:df18f5220e91c80235560c9694be18e959f184ebaf72722497cec2d8f42b26a7` |
| 34 | `instance` | [lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/lieringmodule.md) | 237 | `declaration-track:3e81d52f7a2fd2176626a7d694563bb10fed1b55ba9475cad541df3eb6c67248` |
| 35 | `theorem` | [coe_bracket_of_module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-bracket-of-module.md) | 244 | `result-track:31ba0f2cb5f1266a3d8b5b4bd0452acb6dc1f022d4c98caa223bbb0e4663b14b` |
| 36 | `instance` | [lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liemodule.md) | 252 | `declaration-track:9f32847b8da4c190da5e9c41cfd31a98da0e611be2b34cd1f118c6a8f5f9d4d1` |
| 37 | `def` | [_root_.LieModuleHom.restrictLie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/root-liemodulehom-restrictlie.md) | 259 | `declaration-track:110471aca8901e3a163a011153560c747405d85b1be6dfc65f8e60c6ed60b2a9` |
| 38 | `theorem` | [_root_.LieModuleHom.coe_restrictLie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/root-liemodulehom-coe-restrictlie.md) | 264 | `result-track:37d9d3615782a5f504b932b689a8e33c9597c452a5ee0cf43721b4a0dd3b8cf9` |
| 39 | `def` | [incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/incl-source-edition-2.md) | 271 | `declaration-track:eb32e5c1b3d35c2aec041013aa24f8f19c59bcf8252023082ed8e199f82d30b2` |
| 40 | `theorem` | [coe_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-incl-source-edition-2.md) | 277 | `result-track:ce20e94eb52124fb2079442a002613d2d11b0faf4521c9abf3d786126d299813` |
| 41 | `def` | [incl'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/incl.md) | 282 | `declaration-track:6d13e47107194c8e7fa5228ed765dc141aedd432ce9ffb838756d638a8b383d6` |
| 42 | `theorem` | [coe_incl'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-incl.md) | 288 | `result-track:ac86b9848af29799df852374de3c9b4b8062a4140dd53b585f90192aba6819d8` |
| 43 | `def` | [range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/range.md) | 301 | `declaration-track:d78e77328698418aa36b382d622ae735c987e7ac374d4b64c5b49372b3325fb9` |
| 44 | `theorem` | [range_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/range-coe.md) | 309 | `result-track:4520ed15354c793fa11d7ed9e1e716c95088b3da93efc1ff3a8ef335886262fc` |
| 45 | `theorem` | [mem_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-range.md) | 314 | `result-track:66dac0aa93123d2e11a9a71354132182be8d43f3e3ae909d342fe10973460209` |
| 46 | `theorem` | [mem_range_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-range-self.md) | 318 | `result-track:e37191e7092d31127182f2f2ebe5390ccb2388272cc7872880ebd8cb16bc8da4` |
| 47 | `def` | [rangeRestrict](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/rangerestrict.md) | 323 | `declaration-track:5fd5a48165903d8e9167efc28a7f92c863e6506dd4fe5357dddf57a678821ad3` |
| 48 | `theorem` | [rangeRestrict_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/rangerestrict-apply.md) | 331 | `result-track:bd8e3aeaffc48a86bd706c8dc502997a558add27c70ff20d350af67c7f5ca83e` |
| 49 | `theorem` | [surjective_rangeRestrict](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/surjective-rangerestrict.md) | 335 | `result-track:cba91ddc1c7339f7d71ade0b0e31be2a573ef85a17da7da6c61613d917fcada7` |
| 50 | `def` | [equivRangeOfInjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/equivrangeofinjective.md) | 343 | `declaration-track:bd774c3226246142a068e87da37ccb027cb3575294b4b27206e0e1833d4f0ff7` |
| 51 | `theorem` | [equivRangeOfInjective_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/equivrangeofinjective-apply.md) | 351 | `result-track:38ea1a0cc723139de09185a5f3b02ff6b9041f6f0facc2e405fc271abe53af8f` |
| 52 | `theorem` | [Submodule.exists_lieSubalgebra_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/submodule-exists-liesubalgebra-coe-eq-iff.md) | 358 | `result-track:2d4a75dafec59b9fe9c4dbf91a3e24b67fcbefab76a07124e3dd14580c8caa30` |
| 53 | `theorem` | [incl_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/incl-range.md) | 372 | `result-track:77b44a2f6f09404d1018f5c8356a0d1285a5d9386b1cc7bcdbe0403e8790b721` |
| 54 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/map.md) | 379 | `declaration-track:5b86cd69f54ce56f6ca2a0a79e6a74adfa79dfa8d0c06ba09eba68d322e91bd1` |
| 55 | `theorem` | [mem_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-map.md) | 393 | `result-track:e34d89074fa64c3b5ee9f41a8c34d657d2dbaad32591500849808b611f6baece` |
| 56 | `theorem` | [mem_map_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-map-submodule.md) | 398 | `result-track:d596adc2008976130c2d2da322f56bb88383d981a6120611a76f550632f6551c` |
| 57 | `def` | [comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/comap.md) | 405 | `declaration-track:b1d2c597e81d2a1d743bd2c1d92491a2c1f38320e9b0371723d39c9094aaa067` |
| 58 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-15.md) | 416 | `declaration-track:f883a0230d8eae64479c01a635d61c75afc1394385d4087bf3065bdebf6bfa0a` |
| 59 | `theorem` | [le_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/le-def.md) | 420 | `result-track:2bb2d1596075838ba9e0cc6cee8cbda8b3fd7506395b933ead1427609a3a7a81` |
| 60 | `theorem` | [coe_submodule_le_coe_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-submodule-le-coe-submodule.md) | 425 | `result-track:11a00e346160f3675078c83648d5d7d519f6f06c00fb430870b1c92bdff3f567` |
| 61 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-5.md) | 429 | `declaration-track:4f3bc421664cc045e1d49773a57dc576b5b389892ff3df84a2159e74e1e64b60` |
| 62 | `theorem` | [bot_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/bot-coe.md) | 433 | `result-track:d5feca60294b714c9d0d6f041ce345d9501eb960de5db8c3bb1eb130deed750d` |
| 63 | `theorem` | [bot_coe_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/bot-coe-submodule.md) | 438 | `result-track:55dae460bc13359f97d63aa15ae33b93ece00cc34e5c7a52efeafac750a97d00` |
| 64 | `theorem` | [mem_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-bot.md) | 443 | `result-track:838678f0df1730902517d1b64853d8ab18e564f0dad44da87b39b98036c6690d` |
| 65 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-13.md) | 447 | `declaration-track:de8665f4e1490f157df5766c9189a591ae8ab632b4b03546b13e76e63777c297` |
| 66 | `theorem` | [top_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/top-coe.md) | 451 | `result-track:8539cbadd537ce9aa242587ecdaa1841783f64d3df80033eb382a777a9dd3ae3` |
| 67 | `theorem` | [top_coe_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/top-coe-submodule.md) | 456 | `result-track:653c3f9d17c738f5ac85881186b2554ede3083c0a879b0498f6953f6cbeacffb` |
| 68 | `theorem` | [mem_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-top.md) | 461 | `result-track:e48358e6792a3879029b7e081046cd900e18074fe5aebb3aa01dd5541cd2a053` |
| 69 | `theorem` | [_root_.LieHom.range_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/root-liehom-range-eq-map.md) | 465 | `result-track:c7971502f619ce09e7cd233280a0d223e0d4e6b5c34a41a7f5fa33910e8571cf` |
| 70 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-3.md) | 470 | `declaration-track:44e8037951bdea81b19ee575c790ace09935460bb3e0d4375a11a1e26571dbb2` |
| 71 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance-source-edition-7.md) | 475 | `declaration-track:622911568ab923db21d1a244937442911c28237f292cf1c1ad7dddb89e3ca944` |
| 72 | `theorem` | [inf_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/inf-coe.md) | 485 | `result-track:9d3d8eef66f68351dc0739143d3ad31d4974f2def5bb208330b48564f33924bd` |
| 73 | `theorem` | [sInf_coe_to_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/sinf-coe-to-submodule.md) | 490 | `result-track:ab056fb728d8497b2705271b4da4815d5ff822d3fca929b74691de5c610ca0bd` |
| 74 | `theorem` | [sInf_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/sinf-coe.md) | 496 | `result-track:53232b2484e2ffcc1b847cf9b95d4012b82b60b832bf8e113dd19a049d466b1d` |
| 75 | `theorem` | [sInf_glb](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/sinf-glb.md) | 502 | `result-track:573233d090858b8dcfa636d82699c8cf6f176aacd15e0a4d6feeca2803c1033e` |
| 76 | `instance` | [completeLattice](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/completelattice.md) | 515 | `declaration-track:55095222cad7b87e8ab7516b5cee4ad22123cf23c7122ae2641c981929921cbc` |
| 77 | `instance` | [addCommMonoid](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/addcommmonoid.md) | 529 | `declaration-track:9d15931f3e833be7cc8fe5b8248a51dc5b1d9c6e688588367c4757fa445e6b76` |
| 78 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/instance.md) | 538 | `declaration-track:0de50ab5bedb4dcee92c552e17c0d411ae78aa9b5544cf3cdb2600c5cf884dca` |
| 79 | `theorem` | [add_eq_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/add-eq-sup.md) | 546 | `result-track:7454032ce2c2fe129fd97eeba7875f50da5d26a8b5d534fed0d54fa46307657a` |
| 80 | `theorem` | [inf_coe_to_submodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/inf-coe-to-submodule.md) | 551 | `result-track:65ba5810b9923df9b4a07056841214c9c7b9dbd934a605431872a9d61c9bbfbe` |
| 81 | `theorem` | [mem_inf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-inf.md) | 557 | `result-track:8b0986ff3d4b53c3edb56c7ed72c836c6cd188bf29f35275385f4a2ddaef6f0e` |
| 82 | `theorem` | [eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/eq-bot-iff.md) | 562 | `result-track:d997a81721a230a5d241560f3e43fc8134f97c202d38db4f1e2551febc1cdab5` |
| 83 | `instance` | [subsingleton_of_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/subsingleton-of-bot.md) | 567 | `declaration-track:f2e6131ca4ac3728462a97265f5a774352ffa9c6155ac955017c5e77d7528aba` |
| 84 | `theorem` | [subsingleton_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/subsingleton-bot.md) | 573 | `result-track:7e52fb55f8a5676bd2364ec485a233a28004c04f47e893b3b26948b7b76e9467` |
| 85 | `theorem` | [wellFounded_of_noetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/wellfounded-of-noetherian.md) | 579 | `result-track:3b3577160272776cf760d90bf43f1c41458136af4792a7ba8de4f34d7111022c` |
| 86 | `def` | [homOfLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/homofle.md) | 597 | `declaration-track:c2c45a9452beb0c12c5fcfa3ccf6d8f2337d0afab6355559d44fdc4022c0742a` |
| 87 | `theorem` | [coe_homOfLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-homofle.md) | 602 | `result-track:e7051ceca3a8e210a83d214772e24f4daa5f2d442db2258e918f186db0181d62` |
| 88 | `theorem` | [homOfLe_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/homofle-apply.md) | 606 | `result-track:8e99456fdb8eea913e7dce6248f73d8080506d3d980c1990c826a5bb996709e8` |
| 89 | `theorem` | [homOfLe_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/homofle-injective.md) | 610 | `result-track:b1e6de1e4101e2eaeb979b62523e57c8cacfece7b1aa8bebd9afa44f708ebc2b` |
| 90 | `def` | [ofLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofle.md) | 616 | `declaration-track:a4ec3adc64e951453f06f1c3208fd058b984ba0b66f4d2333df08c4718825744` |
| 91 | `theorem` | [mem_ofLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-ofle.md) | 621 | `result-track:06a1fb14ae1ff32c75ceb327a0af43f23273cf6a1207c4b2a206b979690924c0` |
| 92 | `theorem` | [ofLe_eq_comap_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofle-eq-comap-incl.md) | 630 | `result-track:3240789ae16fcb003573497256b8f2b28f3ca90b31c248e923013e2cd2601fb7` |
| 93 | `theorem` | [coe_ofLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-ofle.md) | 637 | `result-track:418e1e6c50441807aeaceeb6e4a288b76e0f6005dd67ad151abca8c7d67458dc` |
| 94 | `def` | [equivOfLe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/equivofle.md) | 643 | `declaration-track:ffeb015b92d4c765516d8bb4333595d28d5bfc0aa2e970fc18d1c90a6a359d97` |
| 95 | `theorem` | [equivOfLe_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/equivofle-apply.md) | 648 | `result-track:f856dab247d1daa6ea0d428ab4d6382a144b845d3551ecf7c803a71d056e057d` |
| 96 | `theorem` | [map_le_iff_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/map-le-iff-le-comap.md) | 654 | `result-track:607adafb88b473df1e4e22077f7b625f4f4c525a5d8ac9bf3cd0fec75092af86` |
| 97 | `theorem` | [gc_map_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/gc-map-comap.md) | 659 | `result-track:4a3a75a06b7cefd16a6532ab886f1980e01df2116c0c1d2baf2a97f333d1b735` |
| 98 | `def` | [lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liespan.md) | 669 | `declaration-track:f4f55ca3cc7c40bd04ef90597ee763d44649474c3d762f23af3da851c70ce100` |
| 99 | `theorem` | [mem_lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/mem-liespan.md) | 675 | `result-track:71e6da752273021aa00290f50a2f0a852336fafd5baf2cb2ff7f4d778c922e39` |
| 100 | `theorem` | [subset_lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/subset-liespan.md) | 681 | `result-track:0d363fe8cc5c4fb02a23ce37a9ddab34f2b758ade75e2e744de078afbec85b8d` |
| 101 | `theorem` | [submodule_span_le_lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/submodule-span-le-liespan.md) | 688 | `result-track:abfb485caf5138700b48b900d8a6db8efbf18200c0102f62beea4b5cc1cedf97` |
| 102 | `theorem` | [lieSpan_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liespan-le.md) | 693 | `result-track:cad01d7bfb02630d2c4e8e50daa24ab72f860bacb500825e8fed0a8740991b70` |
| 103 | `theorem` | [lieSpan_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liespan-mono.md) | 701 | `result-track:953af2267d70a40a052f18d36eac0a8cef07531d51cdd26409e510ea1f2e4598` |
| 104 | `theorem` | [lieSpan_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liespan-eq.md) | 706 | `result-track:21a3248cdafc082b18ffafb5c0e89828ee58d13c082d54030e1bd2ac54370e92` |
| 105 | `theorem` | [coe_lieSpan_submodule_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/coe-liespan-submodule-eq-iff.md) | 710 | `result-track:768a18d4076c6e3a680a51c5ccb926c386d532ec8593bf94937222cbc35a5ad4` |
| 106 | `def` | [gi](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/gi.md) | 722 | `declaration-track:7e2056aea45bf92b5b1bfc8a474344f47415676727c0ae93943dd17bb2f916fe` |
| 107 | `theorem` | [span_empty](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/span-empty.md) | 731 | `result-track:6b57b626206ed4e0115e91069a2225b4c1d86e49a41df9060d620bd3120c6711` |
| 108 | `theorem` | [span_univ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/span-univ.md) | 736 | `result-track:0feb01783debf1733ac0db5e9017028a88a4df23d751a5c954f58535fb1bda02` |
| 109 | `theorem` | [span_union](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/span-union.md) | 742 | `result-track:74e923987aae14296c1ca9e4e112396b8792548a65534114f0007169e8dadd4e` |
| 110 | `theorem` | [span_iUnion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/span-iunion.md) | 746 | `result-track:b72c4b1820c0353beb94b75dd52b48285116691136e1018999d9dc3e3be3b4a2` |
| 111 | `def` | [ofInjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofinjective.md) | 763 | `declaration-track:bac5cec5af2e9e59b5fbd02f58a16ba32fb44b4230db30c782db702e16a2b124` |
| 112 | `theorem` | [ofInjective_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofinjective-apply.md) | 769 | `result-track:c5c45dd8d688412692190663254c7fe20a1090160da32d94bd0e69e2801c2c78` |
| 113 | `def` | [ofEq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofeq.md) | 777 | `declaration-track:eac9e9848a21fa21836354b6be3e138acd4af537cce45a769e2c894c8cb16b82` |
| 114 | `theorem` | [ofEq_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofeq-apply.md) | 786 | `result-track:384cb6e86135148b770a84d8fa5cc11a0ddc1ce7cdb491889c7d877ea99ddfa0` |
| 115 | `def` | [lieSubalgebraMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liesubalgebramap.md) | 795 | `declaration-track:c2c96fb05e5b8ceac3072388aa1253295c499078f47394cc9c411bade101e183` |
| 116 | `theorem` | [lieSubalgebraMap_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/liesubalgebramap-apply.md) | 803 | `result-track:6b9d8b061a882b46f601f3c255c369d12fcee94c0e51ed05887c3537ca4e9363` |
| 117 | `def` | [ofSubalgebras](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofsubalgebras.md) | 809 | `declaration-track:54ae2aa6e891020a36095fe30a0f54fd2f72fb6a33930b484f9e981af932c6f5` |
| 118 | `theorem` | [ofSubalgebras_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofsubalgebras-apply.md) | 819 | `result-track:5ca24e63683ac976dcb982d1b25cd07798b8dda23b46c232123202cb2db5e264` |
| 119 | `theorem` | [ofSubalgebras_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubalgebraMemCoeSubmodule.lean/declarations/ofsubalgebras-symm-apply.md) | 824 | `result-track:4f1ea3a1d8a036da6e4e65be2f8ada2ac8e9ee44504a5d2988c50c491b589d71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1de7907a2734b29a33b2d4a7cb62ebb3c4da662b7c87f715d699e214ec40e74d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant859bbe56ad35da21d38592a782dc5b3744b92258a851eb79ef4322e5ccd77066.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Subalgebra/Variant859bbe56ad35da21d38592a782dc5b3744b92258a851eb79ef4322e5ccd77066.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
