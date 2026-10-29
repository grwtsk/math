# Verification target: Algebra Operations Smul Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf200b85c96312a8a3f7d77dee0e54f4eb248bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Bilinear` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Kleene` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Semiring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.BigOperators` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction.Pointwise` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebraMap_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/algebramap-mem.md) | 58 | `result-track:5204704e422d90324dcbd76deed4e9518df54e8be0e5c1357b9eb29b64cdff88` |
| 2 | `theorem` | [mem_one'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-one-source-edition-2.md) | 62 | `result-track:eb263245490a18f7a1d6f75b134a8abed8090fb72ebd9c78b6f7d1b2569891c5` |
| 3 | `instance` | [one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one.md) | 81 | `declaration-track:f90fde1cebbaabc3006fc18d90b2ca5c3e6c446061a5f33f5358d05b30dcd7d2` |
| 4 | `theorem` | [one_eq_range](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-eq-range.md) | 86 | `result-track:ad99dc810053aa3757cdad3894519769caf424eb3d40e9e3904b862d3abccf91` |
| 5 | `theorem` | [le_one_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/le-one-toaddsubmonoid.md) | 90 | `result-track:d4863c47947fe08f1f0eef6dd155ae3dcd2981d878fc32c0013a889ef9e51e05` |
| 6 | `theorem` | [algebraMap_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/algebramap-mem-source-edition-2.md) | 95 | `result-track:f62f1a92c54fa2424950244ce08b099a4f5c695a2d8aae5bd89f42918a0f1c19` |
| 7 | `theorem` | [mem_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-one.md) | 100 | `result-track:5de91db43f3774437fbca78a1e1c80268d29ee81c1f289de0a60683a10fe5034` |
| 8 | `theorem` | [toSubMulAction_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/tosubmulaction-one.md) | 105 | `result-track:6804258ae22a08f91a83d7b0722fc048a3b4daa2b0b3c570a41a2673e50b0954` |
| 9 | `theorem` | [one_eq_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-eq-span.md) | 109 | `result-track:11334ddd12b3a70fddd33e1a85fb608a2100c3c487cc26d4ea49959fe18e767f` |
| 10 | `theorem` | [one_eq_span_one_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-eq-span-one-set.md) | 115 | `result-track:ee6417177cd41a979300468bc29a9156921acb5c35912cc94b2cd00f29dfa4ad` |
| 11 | `theorem` | [one_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-le.md) | 119 | `result-track:4a15436467f4f602d289407520c6a62ef1c8d0a03c8d1879c5bb2dad89b2c6c3` |
| 12 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-one.md) | 124 | `result-track:207bbff2090b057b29b64acec75a40a141267805de7bf2c8e36bf7c30d9df437` |
| 13 | `theorem` | [map_op_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-op-one.md) | 131 | `result-track:d6a6377debce8c5c217c94a94033a8b62ed139dbdf6b5431de8cf30e92d30ef6` |
| 14 | `theorem` | [comap_op_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-op-one.md) | 139 | `result-track:6f2af43652005057371a85d88e1b08f40a2fe67541f2d03e431e622eb5981b32` |
| 15 | `theorem` | [map_unop_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-unop-one.md) | 146 | `result-track:b5aa75756483f29e92e6963c4d94984409907ec71a1344fa77edb644e083ffd4` |
| 16 | `theorem` | [comap_unop_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-unop-one.md) | 152 | `result-track:01cec7edc6e2f5f72a498b6cded97dd1607f2c53709ba517804f2b7395699614` |
| 17 | `instance` | [mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul.md) | 159 | `declaration-track:cf7d484e434e0665eab93504668e71001ed9f7faa18e9ceffca7d519fa01e50f` |
| 18 | `theorem` | [mul_mem_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-mem-mul.md) | 163 | `result-track:661a383342b3ce15660186268a87b18ee261a379aa56cc5eedacd3554511831d` |
| 19 | `theorem` | [mul_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-le.md) | 167 | `result-track:67bc38b7a6820fc6bfd83c0e9eef7a0bb8e9208e7de014ce5d6709e8824e216b` |
| 20 | `theorem` | [mul_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-toaddsubmonoid.md) | 171 | `result-track:ef36ddfada567c7ebc9ca64c890e84acfeaea95c9003182829dc0b1383d2b52c` |
| 21 | `theorem` | [mul_induction_on](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-induction-on-source-edition-2.md) | 179 | `result-track:bb53c72c165c6f42b8c9c9dad495ad3b63e365eb1ec3324616fcd315811e9948` |
| 22 | `theorem` | [mul_induction_on'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-induction-on.md) | 187 | `result-track:1a90865d1a4442ca07910978ed2b47a3813d00df1e2d65fc867341c65b859b99` |
| 23 | `theorem` | [span_mul_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/span-mul-span.md) | 199 | `result-track:1a9b62f7d82e3cb7aa1050984b8c02ae329bea866907c7eb2c6dbfcac18eb2ad` |
| 24 | `theorem` | [mul_bot](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-bot.md) | 208 | `result-track:7f386423616cfce2ebb6ee2455f5026562d9ae01e15a93f0822a709d254ebc1c` |
| 25 | `theorem` | [bot_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/bot-mul.md) | 213 | `result-track:622f06f4fdb6b1b4b3b81586a09889d47d6f1176fd826279e3d6351403b3d976` |
| 26 | `theorem` | [one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-mul.md) | 218 | `result-track:6d374d8a869e188d4ad79782161203ff58aca66b2b906ed9e3cc5e1f16a97458` |
| 27 | `theorem` | [mul_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-one.md) | 224 | `result-track:fe1c1e2b1471f5e6e255f7ccd334f485ac42eec1867109f3cc83094f962ae60f` |
| 28 | `theorem` | [mul_le_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-le-mul.md) | 232 | `result-track:9d638e257c04962a2391b29c2a0a2e08411948e49cb9117ebd28280a048f06cc` |
| 29 | `theorem` | [mul_le_mul_left](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-le-mul-left.md) | 236 | `result-track:d50c7b2860dd969ab694e8d9a8a7c5714abbfbe81688d0eb4f1b3fdccef8465a` |
| 30 | `theorem` | [mul_le_mul_right](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-le-mul-right.md) | 240 | `result-track:978b227889303cac394a93db1ccc1f66fe8cc22ed6ffe45ff319baf34d61c17c` |
| 31 | `theorem` | [mul_sup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-sup.md) | 246 | `result-track:83c851e8504bee201a784df0835af89546d3374278c46eec0a71a5e9e6e8dbcc` |
| 32 | `theorem` | [sup_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/sup-mul.md) | 250 | `result-track:2cf828047919622c17621bca32f7adf15f52ae6451190f3fd430b79ab9eda32f` |
| 33 | `theorem` | [mul_subset_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-subset-mul.md) | 254 | `result-track:c6c29359d130dfda40baa50ca68c8adb61bb0bd4503406c173306836c03b2b82` |
| 34 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-mul.md) | 258 | `result-track:534c0974569bd3622f043da900ea5776406b6372f93628d1c94e65bb88485c9c` |
| 35 | `theorem` | [map_op_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-op-mul.md) | 279 | `result-track:aaae9ed5d3a1f17812a7a8af5be355e70732bd56c84811af64b842e1a4f784fb` |
| 36 | `theorem` | [comap_unop_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-unop-mul.md) | 294 | `result-track:24a6d594a9814da5e90453d542ba15aeed16692d4cddaff09acb65ff6197a208` |
| 37 | `theorem` | [map_unop_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-unop-mul.md) | 301 | `result-track:be69c9942bcc8bb51e9d7055ed1583a64ad556820a203f9ce5b99b71dec5dea2` |
| 38 | `theorem` | [comap_op_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-op-mul.md) | 312 | `result-track:b0f2411f3551cf322f6b2a9b85f9461fc827c29a693a497c72e78e85f80de1e9` |
| 39 | `def` | [hasDistribPointwiseNeg](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/hasdistribpointwiseneg.md) | 326 | `declaration-track:a5ba46c5d0b506e24e7b366aa4a3f53e53e9459bebd4feacd760d995c90f927e` |
| 40 | `theorem` | [mem_span_mul_finite_of_mem_span_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-span-mul-finite-of-mem-span-mul.md) | 338 | `result-track:eaed5a422a2cca93037c807432c5e9e7831eb22d8e7b283e0fdc27c9ce10b14f` |
| 41 | `theorem` | [mul_eq_span_mul_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-eq-span-mul-set.md) | 351 | `result-track:e33f4626b06850708129008a85d6e548b15e20b849c1bc2a53f3101275044b3e` |
| 42 | `theorem` | [iSup_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/isup-mul.md) | 355 | `result-track:871ec5201ebf1eede5e981c146975de660cde1e2874f80bdfcfc1438e7191c6c` |
| 43 | `theorem` | [mul_iSup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-isup.md) | 359 | `result-track:948a1e1ef6be909cb5d3b6543efc831c13f9ce0a17f6a245ce40ff2404edbc18` |
| 44 | `theorem` | [mem_span_mul_finite_of_mem_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-span-mul-finite-of-mem-mul.md) | 363 | `result-track:a997c83f2049ffb1afc6db13e00f8db10d341fefbd005d0efa36ab26bd9882ff` |
| 45 | `theorem` | [mem_span_singleton_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-span-singleton-mul.md) | 371 | `result-track:213f5ac9ad029d7836a7fa56fbbfb06faf7a860c3a995bf001c8eb9c8f8ee86e` |
| 46 | `theorem` | [mem_mul_span_singleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-mul-span-singleton.md) | 377 | `result-track:36519b1b3cdce020067e867ed86f92361eab7c8626924e6e98ccf9c68edeeebe` |
| 47 | `instance` | [idemSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/idemsemiring.md) | 384 | `declaration-track:243eb5551dc97ab8657bac915034eb187d924c372f070bbd831d7aa509f436f9` |
| 48 | `theorem` | [span_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/span-pow.md) | 400 | `result-track:3b12d3b39ab11e46ffa50d48873b86dcaba901890901ff7bf40b42db3067fbbe` |
| 49 | `theorem` | [pow_eq_span_pow_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-eq-span-pow-set.md) | 405 | `result-track:758342b6183f8ffb5844cf1ed6b3ba8fd4dcc9c8b98696c4c153c59d0f0c4c19` |
| 50 | `theorem` | [pow_subset_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-subset-pow.md) | 409 | `result-track:f0ccec3686b4a4bc17e385afa3c494d1234cdea2744e4fa111a063d868ed5a78` |
| 51 | `theorem` | [pow_mem_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-mem-pow.md) | 413 | `result-track:42194a6f90cf95b6ba85749e51c96fdb894b4f88fdab908f68b868ee87aea7e4` |
| 52 | `theorem` | [pow_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-toaddsubmonoid.md) | 417 | `result-track:095ee0713367d39f68179177f59d99556518ada37397e8952da857f7f26ac76d` |
| 53 | `theorem` | [le_pow_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/le-pow-toaddsubmonoid.md) | 426 | `result-track:2e4c1d07204115e04c9f4a03deedf50f3f83410e9b5fbd12a76b3f391eee371d` |
| 54 | `theorem` | [pow_induction_on_left'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-induction-on-left-source-edition-2.md) | 435 | `result-track:2e37efa3a1d85b614a3f75d4cafa0170429c7002a06832d81beee951fc3dc331` |
| 55 | `theorem` | [pow_induction_on_right'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-induction-on-right-source-edition-2.md) | 453 | `result-track:2bf10b8e5d67bfb10d9675f26a1408d41d619f2b571a3de1028387ef3ccda599` |
| 56 | `theorem` | [pow_induction_on_left](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-induction-on-left.md) | 479 | `result-track:1ceef8f07fcd8c2698c8012eb1e8004f6772cb1572b595e72c3037577e48bc37` |
| 57 | `theorem` | [pow_induction_on_right](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pow-induction-on-right.md) | 491 | `result-track:18150340be4e22887f1ef9a51adbadd0183aa0d4533dbc2b3a0aef5610167d68` |
| 58 | `def` | [mapHom](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/maphom.md) | 501 | `declaration-track:33576eea78c5fce293d5a261a60e8dad802be0c7ef17e976a16d9343ca48a2fb` |
| 59 | `def` | [equivOpposite](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/equivopposite.md) | 512 | `declaration-track:68b2dd48e60fbd977b81aded4d88e3c9733349dd49f877a64c45cb58d5f3d1a6` |
| 60 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-pow.md) | 521 | `result-track:badd56effe9f94643bc8c2899693bade18437acc04408d5b1f60297004245d43` |
| 61 | `theorem` | [comap_unop_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-unop-pow.md) | 526 | `result-track:79f70745518eb01b601d02426bdf09a1324ea71adb79f5513f07f14962b4e961` |
| 62 | `theorem` | [comap_op_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/comap-op-pow.md) | 532 | `result-track:f4debe43cfe5e3aa109874b12e948aa849705dfe039e73ac467584cd47cbc462` |
| 63 | `theorem` | [map_op_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-op-pow.md) | 538 | `result-track:87593dee7860afd335ff230c06dcd85722c47ae1e8de0ffb103f34e98c250b17` |
| 64 | `theorem` | [map_unop_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-unop-pow.md) | 544 | `result-track:f90cac5760c38f097e08f00a234931f11ad10e853a895bdb007f056e8d9fb1e2` |
| 65 | `def` | [span.ringHom](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/span-ringhom.md) | 553 | `declaration-track:58bd047eb05409a846e6fc41afd558bbad5f1d444e7a625ac9962e794c9c65fd` |
| 66 | `def` | [pointwiseMulSemiringAction](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/pointwisemulsemiringaction.md) | 572 | `declaration-track:ca076b03acadfdc051534aae46b3e626adf058df7e3bad2be416f02bb6dabad2` |
| 67 | `theorem` | [mul_mem_mul_rev](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-mem-mul-rev.md) | 591 | `result-track:94292982d9e14016d197052dbcafade68d2a8917e1aea2c43e40c26545d86cf8` |
| 68 | `theorem` | [mul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-comm.md) | 597 | `result-track:e889a52c7333e0048211ed26e144e2bfe0075173ed9c6a8335dcf32d8974229a` |
| 69 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/instance.md) | 603 | `declaration-track:1852b6908eb09296f4f2deda4cc5e2a999ffd229670dd52999567719acba8316` |
| 70 | `theorem` | [prod_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/prod-span.md) | 606 | `result-track:378bdaba39ca33577c1aadf84ccd68864c23d5de1a5612e6e32f58fc3ee60faf` |
| 71 | `theorem` | [prod_span_singleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/prod-span-singleton.md) | 615 | `result-track:8a91032e4d0f33ca668161952aaa7b24f05ba3bfeb739ea1e1627a2d3c69986a` |
| 72 | `instance` | [moduleSet](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/moduleset.md) | 623 | `declaration-track:22bea63cbea0a80c4235eb81250205f7aff3c69f90a92b3f4610d601ed544597` |
| 73 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/smul-def.md) | 640 | `result-track:b9442342aca94d19279f90421209495c3f2ba5f4195d0dab55fd979a6fac87c8` |
| 74 | `theorem` | [smul_le_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/smul-le-smul.md) | 645 | `result-track:f1ef8177207f4af1a303054b131472b1aa4fb63c4d6dc21c1421711c30f05d3f` |
| 75 | `theorem` | [smul_singleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/smul-singleton.md) | 651 | `result-track:0434fcde72e398dc0e7e18022abb9bd2c2ad8ef3379fc6668e4f635a69c0c9b7` |
| 76 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/instance-source-edition-2.md) | 674 | `declaration-track:52f5d10dea37b087accf0e8e377ade00af32fbe9df16bb9a56868f79ab836fb3` |
| 77 | `theorem` | [mem_div_iff_forall_mul_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-div-iff-forall-mul-mem.md) | 687 | `result-track:157a23de4cfce05978ab131080723475253df70951ef5b48bd23525d26121edf` |
| 78 | `theorem` | [mem_div_iff_smul_subset](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mem-div-iff-smul-subset.md) | 691 | `result-track:56c83c707f2b323a74d4f0952221a10e983fcdb7f203340ba8724a93bb8f98c4` |
| 79 | `theorem` | [le_div_iff](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/le-div-iff.md) | 698 | `result-track:1a08a4a67ecaa5d1cdf949d9ad57161b58e540a033c74778514ed4caa792be84` |
| 80 | `theorem` | [le_div_iff_mul_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/le-div-iff-mul-le.md) | 702 | `result-track:7373fb8ca215ce89ad0c2349563607cf6eb543b2669c1ecea4194499955e132c` |
| 81 | `theorem` | [one_le_one_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/one-le-one-div.md) | 707 | `result-track:b583878f8d03f2a0aa369cfcce673ec95fead2bd29a61a429e7972c595bf87f2` |
| 82 | `theorem` | [le_self_mul_one_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/le-self-mul-one-div.md) | 713 | `result-track:70be31d91dfadabd4c1a40bf9f5d438f90cec835a904330d5acbcf1ab4f2249b` |
| 83 | `theorem` | [mul_one_div_le_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/mul-one-div-le-one.md) | 718 | `result-track:cbe499ccb57668fa25cdbd6600b609d85ad11c641d7c8440d6976a45c005aa9d` |
| 84 | `theorem` | [map_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsSmulDef.lean/declarations/map-div.md) | 727 | `result-track:83b6b1df49c424218ab752bcb75c2ebcb5dc766d3ea56f9dd4115748cad39cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5dc10ddef362dbf573ae12644436b53650f2fae832bc6691e36660a280a313b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
