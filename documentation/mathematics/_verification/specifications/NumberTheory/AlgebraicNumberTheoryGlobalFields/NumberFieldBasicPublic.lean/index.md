# Verification target: Number Field Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f96ad5d92ab1aa56fff76d250d1a4749565425c1",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f96ad5d92ab1aa56fff76d250d1a4749565425c1`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NumberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/numberfield-source-edition-2.md) | 45 | `declaration-track:cbc1f5e8e4bd52f452c4b711a4667b7e1430128898ee1439ad2f4153e9a673be` |
| 2 | `theorem` | [isAlgebraic](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/isalgebraic.md) | 60 | `result-track:055815df665589bd6075461aa3ceb256321b4913114efd6eed3111cb52abf9ad` |
| 3 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-14.md) | 63 | `declaration-track:75bd73d0b30d5d318571660e5d0ba0175d3c5bba4e5bc1207c27652d0df88fc6` |
| 4 | `theorem` | [of_module_finite](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/of-module-finite.md) | 67 | `result-track:cbac430452383d10f739e0846fa35a6bff33cf96e9d3e953cba2fc2e51f8767d` |
| 5 | `instance` | [of_intermediateField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/of-intermediatefield.md) | 74 | `declaration-track:575de0fda4257a4a632ac2d532229fbb886196e2207a9cfd42eb53090f63e576` |
| 6 | `instance` | [of_subfield](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/of-subfield.md) | 79 | `declaration-track:5e6716b1200b701fc117e245cf6f7150dc52cfc5a39c7b9e58270f2cc606d24c` |
| 7 | `theorem` | [of_tower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/of-tower.md) | 82 | `result-track:ca19fe8219eb3de94a987c062351b685bf5626615f2c28b18a33474f320d6a04` |
| 8 | `theorem` | [of_ringEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/of-ringequiv.md) | 87 | `result-track:37548826de1d3c6d95c1f66ece331383acd3c67e7ea79ff6a240e6b809fc5779` |
| 9 | `def` | [RingOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ringofintegers.md) | 104 | `declaration-track:e679f81c9e31e6cb936ee0232889d90e399f345c301ac2de977a608828012df0` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-17.md) | 112 | `declaration-track:9e08f03c746f4ca7f3c6494965bb0345c3084ebce6df97a5deeae99d618445ba` |
| 11 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-18.md) | 115 | `declaration-track:a550b58839ec52faa5ea895395b52463376f6912bf1d1ed5a3a4ea930c4477a3` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-26.md) | 118 | `declaration-track:f2909acc984e65a791c324d450ac75223431d5315f97cf8bbbf350eba12f5ec2` |
| 13 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance.md) | 120 | `declaration-track:0907ace80638da9656f56f62d03752ec8c7312f955ceab4ea40a474ba0e719ec` |
| 14 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:3b3dc54bf84e262d49e3ac260ee2ab677973781d689e8feb5f6ed0eabd11e33b` |
| 15 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-5.md) | 127 | `declaration-track:393bbffe58ccfc9124aaddfbfb349b0066d05f849bc5cdb3abdac3375cd26d1d` |
| 16 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:38863be6f9ac989e99efe38a6349cd6f6f181b4359bf80bd4c8ba0d64f1c1b9d` |
| 17 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/example.md) | 134 | `declaration-track:40c6ff57aa838a58f3bf251e328b85958b607e1a18b5173e490b96271b5769cf` |
| 18 | `abbrev` | [val](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/val.md) | 141 | `declaration-track:da627e04e0c57a6c5dc8eb6458bf1c7093e6956d51267a035228888fab5846c4` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-8.md) | 144 | `declaration-track:50d942bc4016dfbd0ebd14ca4950d29eb00093b093bfbfd1bc848db67c3d3d7a` |
| 20 | `lemma` | [coe_eq_algebraMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/coe-eq-algebramap.md) | 146 | `result-track:356edf07f46199c88cdbe062462b2269b87fc77f022939e6a36415d7f8009321` |
| 21 | `theorem` | [ext](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ext.md) | 148 | `result-track:f6d8d6a89a0fba03d853b1cd42448365ffb7b3a5117e137d6db1f43a5569e0a0` |
| 22 | `theorem` | [eq_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/eq-iff.md) | 152 | `result-track:9185074d8f54edbe3625c7135943e0f67ac687972cc2cd98b971ee6302b90f46` |
| 23 | `lemma` | [map_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/map-mk.md) | 155 | `result-track:61a50f96a8af29df51bd6705db8fb0e8e84512acac75ea8f415a5d2def5d6255` |
| 24 | `lemma` | [coe_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/coe-mk.md) | 157 | `result-track:59999d957803989e07b0949785f982fab7d58acfd684b9f74d739d2b5fdc97c8` |
| 25 | `lemma` | [mk_eq_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-eq-mk.md) | 159 | `result-track:fa613f6d24fb80d36d64f19efdd77a01815b25013dbda2fad42d315b0ce3d7a9` |
| 26 | `lemma` | [mk_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-one.md) | 161 | `result-track:9bfcd62764fcb22abaea31b64594d3ba9b5dd646142970b5a77e8d52a7a5314a` |
| 27 | `lemma` | [mk_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-zero.md) | 164 | `result-track:3e9ccccc5ad83ae3b4bf587b1a7f40af70eaa885242e7de0ff30f2457d054fdc` |
| 28 | `lemma` | [mk_add_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-add-mk.md) | 167 | `result-track:627b331284cf44de0fe9cf5a428ab456e3b3fde84ac202cf189a1d755278bb24` |
| 29 | `lemma` | [mk_mul_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-mul-mk.md) | 170 | `result-track:3ae03a97592bb680eb03ae9e74c2e1aa2cf59117609d66a89ff3962aa0112ed3` |
| 30 | `lemma` | [mk_sub_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mk-sub-mk.md) | 173 | `result-track:19af1323539040bef891993b1cdc3db253cc5193db6747c7044d9c963d4e5baa` |
| 31 | `lemma` | [neg_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/neg-mk.md) | 176 | `result-track:fd027461b165801d81d1e21f039711ded1b6419642a49abb6e7f8f45e6226b32` |
| 32 | `def` | [mapRingHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapringhom.md) | 182 | `declaration-track:759bfdc265ef2f2e1fb41ced9905faeff3a292cfdee5be5e648b3a3ca703110a` |
| 33 | `theorem` | [mapRingHom_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapringhom-apply.md) | 190 | `result-track:de354f9bf9c0542ff1eb281fa0d33278bc8b11c5dc1505fc640f089de3cc5d6d` |
| 34 | `def` | [mapRingEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapringequiv.md) | 195 | `declaration-track:4b516d9e557724ead856cc47d8af94340218295def1a10299f65e783d7a967da` |
| 35 | `theorem` | [mapRingEquiv_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapringequiv-apply.md) | 201 | `result-track:0725e3b1259f8ec5a31c469a72d9d5cfd5d7ef0a94297e26595e88c1aeb1e3f8` |
| 36 | `theorem` | [mapRingEquiv_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapringequiv-symm-apply.md) | 205 | `result-track:47a6fb625e035ef437073dbf456d4bf96598c0e45a58ebae4fc4971562e12c5c` |
| 37 | `instance` | [inst_ringOfIntegersAlgebra](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/inst-ringofintegersalgebra.md) | 212 | `declaration-track:22d647227b1d199853d66eb237e8c0c31286b0a6dbc0ac8a1d3d9415558e34a9` |
| 38 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/example-source-edition-2.md) | 216 | `declaration-track:dfbeeb05576350cb4fb559d531cc6b27e0737a1bedbac0aba2d3837a3e0bdf62` |
| 39 | `def` | [mapAlgHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapalghom.md) | 222 | `declaration-track:36c8b279add0702c36cf29c6b2b929a93adb2a27ff74c9732293283543439318` |
| 40 | `def` | [mapAlgEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mapalgequiv.md) | 230 | `declaration-track:f42beb0cc48173587aefd5e8b0fa8e1cfeaa0485abadaaedda4a5c3e4f285dee` |
| 41 | `instance` | [inst_isScalarTower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/inst-isscalartower.md) | 236 | `declaration-track:befc5aae5d367bbfaa43c9f98dcb2188e795510fadaf6173d68e9c5ab6ef6d6d` |
| 42 | `lemma` | [coe_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/coe-injective.md) | 247 | `result-track:97ef17c4c2f42d54bdeb63683fb383785ee521a0198f7d0ccc8e21402c4203f6` |
| 43 | `lemma` | [coe_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/coe-eq-zero-iff.md) | 255 | `result-track:19c3f34b3282739cd22190532f5264dedf41885e788e3bc35f5ecdd1a60e023b` |
| 44 | `lemma` | [coe_ne_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/coe-ne-zero-iff.md) | 263 | `result-track:83a1922e82391712f8d64f4c6023136799898af4de72add404e918ee9b4d1da3` |
| 45 | `theorem` | [minpoly_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/minpoly-coe.md) | 266 | `result-track:86f463b217d8e9623a9fbeb8fdf8921bbb27c36927dd611de455f3c5f57e4358` |
| 46 | `theorem` | [isIntegral_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/isintegral-coe.md) | 270 | `result-track:5c7932537dd6eabf8d902ccfbfd261bb66d83cb767d62ce77ab4cc26a7e3530c` |
| 47 | `theorem` | [isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/isintegral.md) | 273 | `result-track:c17bb9747d6ebf8716716d04f23f69240a1f969835fae87b80294a804c3e7f33` |
| 48 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-20.md) | 278 | `declaration-track:c0e5b813786f35258434ec49d0bc5ef7cc1eedba4187e335bf460e76b661e0fe` |
| 49 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-11.md) | 281 | `declaration-track:6b80cde81568669edd7c1855b89409fc6f10952b0332de8436148ffd5eed0810` |
| 50 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-13.md) | 284 | `declaration-track:72eea469dbb309bf745e4d311f45b63c624aa877d8daaa2e38f5fc066de1df6d` |
| 51 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-10.md) | 287 | `declaration-track:5f00c07f20e6bf9dc501e8028d95a1c9ad20d50d8879a0bf0b8ecba5126e9ab5` |
| 52 | `def` | [equiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/equiv.md) | 291 | `declaration-track:3f8e8565165449ca293426787de53b30766996b946a5a22ffc28c76844c4033d` |
| 53 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-2.md) | 297 | `declaration-track:0b8892b3d6e6fb5e678b0bc4da7a3021bb47e756880f20a9194a1511d71c1313` |
| 54 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-7.md) | 301 | `declaration-track:431063240cb3da1226b4d4567656d80d36c417a4c71a7050e97589edd69f156b` |
| 55 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-23.md) | 304 | `declaration-track:cd2933597e8b104825e2eb231651358f6c7298e7f42544dbdb32cb7253d01715` |
| 56 | `theorem` | [not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/not-isfield.md) | 308 | `result-track:2e26bf9f495804795d8795c0591f94a30cc2664ee48a3b7fae38c87639298414` |
| 57 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-9.md) | 314 | `declaration-track:591288d3bbbc52a47deb4034fc09d6d443c9386da79f8e355552af0285615f35` |
| 58 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-19.md) | 317 | `declaration-track:a76f0670bf88be978eac3e9b7cf117effbf74694946c6c9bf467cfdc3935e1e4` |
| 59 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-15.md) | 320 | `declaration-track:856f180c1f93a64b3c9997e37a43aeaba328d04e008decb7a3e448a67aa2cf22` |
| 60 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-24.md) | 323 | `declaration-track:d27f57c5570bc429992405d46e96edd4dd4e87fd1704d55350479d60c1f27de9` |
| 61 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-22.md) | 325 | `declaration-track:cc4dea083ad88a976d09e31f2b66363013939fedd667307c33a17f8bd307b785` |
| 62 | `def` | [basis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/basis.md) | 329 | `declaration-track:4010b9aa220bf9c665ef906ee947873b971bba71d88a795c4bb4bc57627079f4` |
| 63 | `def` | [restrict](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/restrict.md) | 336 | `declaration-track:c40c2894b8392456e5ca942421b361c2050d81e7d238a5b7ad31dfc29792ff6d` |
| 64 | `def` | [restrict_addMonoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/restrict-addmonoidhom.md) | 341 | `declaration-track:74a4394791ed941952e5178ceea808658056e7bc3a587f6022a1b64400744d2e` |
| 65 | `def` | [restrict_monoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/restrict-monoidhom.md) | 349 | `declaration-track:617b521463ddbc1625e872c216a56ffeb5e921b63381fadf46b50ced9f444621` |
| 66 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-25.md) | 358 | `declaration-track:de7effa0b9ab4222d6acb1999e978c1d7d391d586ef819dfdb6f43b23251c3d0` |
| 67 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-3.md) | 361 | `declaration-track:271bca3b4de5b106e7c94b1203ec4ef11f3ea04522d399949563b9f883439fae` |
| 68 | `def` | [algEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/algequiv.md) | 365 | `declaration-track:58f8298567f341b3ca4a94ba571e7e805027dd70832626c5d97227f804f6f45c` |
| 69 | `instance` | [extension_algebra_isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/extension-algebra-isintegral.md) | 370 | `declaration-track:875deb0cfc4e6d8bd45e2779722083874b2c04692232719c5d2ccf394633e29b` |
| 70 | `instance` | [extension_isNoetherian](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/extension-isnoetherian.md) | 374 | `declaration-track:bb98502c6318faa175a74770b3dc2037da3630ca30f3b20ee4c3cd2856138b08` |
| 71 | `theorem` | [ker_algebraMap_eq_bot](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ker-algebramap-eq-bot.md) | 378 | `result-track:c3ff0fee3a4bbbd6120c6e8d3545c0affcc9290eaa487f80e126f1869a6c60b0` |
| 72 | `theorem` | [algebraMap.injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/algebramap-injective.md) | 385 | `result-track:e4270d9baa926587690da4ae370e67caa4556b5cf796760cc51e30235e3cb30c` |
| 73 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-21.md) | 388 | `declaration-track:ca1f9c4db5c341d89c64ccc9246b1cc81c235f04c4ab9cfe33c9de0942f765ff` |
| 74 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-16.md) | 391 | `declaration-track:916aefd77d11485b7e3e697e0f597c1cd27399c038b7043fb90f28bd81badcb3` |
| 75 | `def` | [integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/integralbasis.md) | 400 | `declaration-track:de7168191287ad64784fa33659cb020331f6f7502476fc28d5f821fdfe3ebbcd` |
| 76 | `theorem` | [integralBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/integralbasis-apply.md) | 404 | `result-track:4c6494e1829bff42121aab9a93b9b01a0ac65cc7d22d645ee2808a12712eac13` |
| 77 | `theorem` | [integralBasis_repr_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/integralbasis-repr-apply.md) | 409 | `result-track:7a02fe42030dca335ed10f45ecd9fc93be69cb0cf445aa73fdaba9ac1da26c03` |
| 78 | `theorem` | [mem_span_integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/mem-span-integralbasis.md) | 414 | `result-track:efcf6aba4f17a0cb28628a18e6c2d602417ae8e5ad4f42ee6d8e8c344d4c7422` |
| 79 | `theorem` | [RingOfIntegers.rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ringofintegers-rank.md) | 418 | `result-track:06628b910edbda401673566b38a27324e97be7d96127b4bf0fb2f6344c13f82e` |
| 80 | `instance` | [numberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/numberfield.md) | 427 | `declaration-track:0c65562066791e04e6a9053c57d39ea9ef83736ca015101244df725bb717d3bf` |
| 81 | `def` | [ringOfIntegersEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ringofintegersequiv.md) | 430 | `declaration-track:59f9852848045fe064122e8addf66d99e44ac9cbe953bf458bdf27ca50daa03f` |
| 82 | `theorem` | [ringOfIntegersEquiv_apply_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ringofintegersequiv-apply-coe.md) | 434 | `result-track:58c813de9c005d81d9e35b81d91f73ccb66df9fb852620b76645899778419484` |
| 83 | `theorem` | [ringOfIntegersEquiv_symm_apply_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/ringofintegersequiv-symm-apply-coe.md) | 439 | `result-track:726afd29374ab74e9f2b5feaf10d790215c3819033188590a2a8c6623911158b` |
| 84 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicPublic.lean/declarations/instance-source-edition-12.md) | 449 | `declaration-track:6c5df133dabcff66b81522937eafedc807f8a7c8ffb1d375b62a24318723dcd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dce917906f5aa69fca8a3a73a55b8e4e4740060867a18889624117b1394d70f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
