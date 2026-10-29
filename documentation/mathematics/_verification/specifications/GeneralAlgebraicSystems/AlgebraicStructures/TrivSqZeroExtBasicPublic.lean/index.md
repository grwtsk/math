# Verification target: Triv Sq Zero Ext Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba76f7b04ecf154170ced7e3cfa80b3162c7ba51",
  "lexical_observation_count": 168,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba76f7b04ecf154170ced7e3cfa80b3162c7ba51`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean.json)

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
| 1 | `def` | [TrivSqZeroExt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/trivsqzeroext.md) | 69 | `declaration-track:69b224ef23a16a44cd7d4e04b27da54b4bb329e759721843d6361f07de8619f6` |
| 2 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl.md) | 85 | `declaration-track:351fe45f82accefb9ce2568d54f300a37c73fe1fd966f86d5b241a9be2523336` |
| 3 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr.md) | 89 | `declaration-track:1bc75f6015fc66248404ce4119f5d2a44c0fe2be6d25ebcafa62e0346e74b0ff` |
| 4 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst.md) | 93 | `declaration-track:f9ff114aea63ef661b4d0d308f64ee691458fc8c6377f65af0b48852e35fae9a` |
| 5 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd.md) | 97 | `declaration-track:a182a01469e9395446ed6ba64081790d63166e504bf83f3bd2c2efcfb74b6654` |
| 6 | `theorem` | [fst_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-mk.md) | 101 | `result-track:c2b76604494e9256bd3f36877af04b4fe4828b2e1bf38f09f684ca2553482643` |
| 7 | `theorem` | [snd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-mk.md) | 105 | `result-track:18e9b5d7cf4fc5722007e440d5b754b204d864f58b2b1229cb6cd3f0b04fd7a1` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/ext.md) | 109 | `result-track:947b29a98b7d5b37f2e7dc1402447cd1cc4eacf21ddbdc4fb58e96cae750c39e` |
| 9 | `theorem` | [fst_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-inl.md) | 117 | `result-track:6df16a1f82d5462c911d74c5037551eb03f28486cf5a123a6a32981452a1f04c` |
| 10 | `theorem` | [snd_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-inl.md) | 121 | `result-track:d114aa3ddb8dec0a9de8aba116274b4abe785f5e1965474235ef325f20d22c95` |
| 11 | `theorem` | [fst_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-comp-inl.md) | 125 | `result-track:4565922519bf71eca875eb0a10b5596c7302b5390b99e11286ebb03c8c1b41f1` |
| 12 | `theorem` | [snd_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-comp-inl.md) | 129 | `result-track:65b4880f6e50769794d3b89cafa0de341e5dbb593dbd98aafe037b88a9debb4d` |
| 13 | `theorem` | [fst_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-inr.md) | 139 | `result-track:e5bed9cb76a391c9401dd0d2ab800909b9781d54750bf6a622cb00596c1729fc` |
| 14 | `theorem` | [snd_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-inr.md) | 143 | `result-track:fdcb36bd57de6c8f5e615f828014b834e20d1c690067cb91b84efc7683284e77` |
| 15 | `theorem` | [fst_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-comp-inr.md) | 147 | `result-track:d7b9bd1ad87fa8eab9db238d11f81a48f53b9e950419f0c8ca872efa58876d97` |
| 16 | `theorem` | [snd_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-comp-inr.md) | 151 | `result-track:d6cfc4fde13f666491cad23bac9c4ed390cc2cf964a3c4efb284ebd9ef8b2d6e` |
| 17 | `theorem` | [fst_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-surjective.md) | 156 | `result-track:2387e4b4fa39c36b34e6251aa6a4b04711025de7cc6e0b4b9e8b6ebc42903b30` |
| 18 | `theorem` | [snd_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-surjective.md) | 159 | `result-track:2511ee933c0295c3173937ecfe92aac59b1fab832ba790d30ac0a5dbab96156a` |
| 19 | `theorem` | [inl_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-injective.md) | 162 | `result-track:80abcd6eb81d6ac32585f5cd2a527e9665570215c5603a3f135235a3531f80fc` |
| 20 | `theorem` | [inr_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-injective.md) | 165 | `result-track:40ac1a7c1e8ee42232b2a2b34d8bb37e7eb1f1092d1b534c5ceb8e85fee0caf2` |
| 21 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inhabited.md) | 179 | `declaration-track:5688a8dd6efcc72483db02e61fff2848aa66725869637cc1a31f53c48df7b61e` |
| 22 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/zero.md) | 182 | `declaration-track:ce9d3a853d9369c609f03dc0c74f1daabc12818fc834d5c09577ea88d03061bb` |
| 23 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/add.md) | 185 | `declaration-track:dff535c25f042aa5f2299cd7e6e7abfcf797aab0c62467c8de7ceff230eeca64` |
| 24 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/sub.md) | 188 | `declaration-track:6579fb5d93f7e96621f0a8afc71d9fc57da5daf271cc86e20926a90637f3793b` |
| 25 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/neg.md) | 191 | `declaration-track:853605a49aab870c4cd244a2d30dc2dfe41edba7ee55256da7c5099e2c509b94` |
| 26 | `instance` | [addSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addsemigroup.md) | 194 | `declaration-track:7bd443c36dc2ccc0d747d35563eb61860b64a55012a126c279ecbc48054ca51d` |
| 27 | `instance` | [addZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addzeroclass.md) | 197 | `declaration-track:0c1ce7ce4512a36cbfe0af7f26b2cbd9a4029b7bc2e449c75f0d94e36b41966b` |
| 28 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/smul.md) | 200 | `declaration-track:d637b9ed38ac162f8bbe6e110ebc4b9d75473b847b0cb79b866f3490e3c06f84` |
| 29 | `instance` | [addMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addmonoid.md) | 203 | `declaration-track:5b469a124bdcdefb19be6724db49c5a8c991153f1d87e78fb21dbac5a32aa54a` |
| 30 | `instance` | [addGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addgroup.md) | 207 | `declaration-track:9baf5c0d104dde17fc815106d7ec7e3698f54ea9222f97761320b33942ff3e40` |
| 31 | `instance` | [addCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addcommsemigroup.md) | 211 | `declaration-track:13aa49fb268f808f9932caf9a64183de0fbc49341b60fbce8e1dcfe1d0486d86` |
| 32 | `instance` | [addCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addcommmonoid.md) | 214 | `declaration-track:ad3d9572af52b419a9a9c24d3f58f37b3c941b95f73e8e5301b5dc0fab5b04e6` |
| 33 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addcommgroup.md) | 217 | `declaration-track:e818bac5e4365f0db601058e19752d6235103e233f98ef600bddca277f2ff7c2` |
| 34 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/isscalartower.md) | 220 | `declaration-track:480058804076ee8d8e3ddfbede188665d7c35ab191c6528b5073b10d88017bf8` |
| 35 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/smulcommclass.md) | 224 | `declaration-track:3e4288024cc9953ba0627e503396f05e606e9945c139846267dd1e1be836693c` |
| 36 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/iscentralscalar.md) | 228 | `declaration-track:036b0dfacfb3d4f3eabf655b7b63d2ac2600177783583c51975b28947349381c` |
| 37 | `instance` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mulaction.md) | 232 | `declaration-track:c4684bdfea8e6c1612c40cffe5d41c2854f8d50efe59cdb698d8add7e24a6d42` |
| 38 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/distribmulaction.md) | 235 | `declaration-track:b5d64714eede8083a0c85b3318362b8b2aab5ded685fd3acca1aa8d483b0813c` |
| 39 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/module.md) | 239 | `declaration-track:d84aeafcba9c1b35383bb80a584c5675c20968f9bac9ef805942b4663d1223dd` |
| 40 | `instance` | [instNontrivial_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instnontrivial-of-left.md) | 244 | `declaration-track:aef1e073b583bce83e0aa49e7be50bb0933e77215bedd46e4e4e404ba65ac74b` |
| 41 | `instance` | [instNontrivial_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instnontrivial-of-right.md) | 249 | `declaration-track:cfeeb574fb85bddd54ec67afd0d6cab2b0947628895985f1a39776171f36122c` |
| 42 | `theorem` | [fst_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-zero.md) | 254 | `result-track:15e5fe00a4582902b8315bb0d45933cb1fca9dfab77b0fd65a4b49ad9e9ba9dd` |
| 43 | `theorem` | [snd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-zero.md) | 258 | `result-track:db4eef5bdd17096406aacebd79fd4ec1260aed5abc40d6cc3d31ec91d0538cb3` |
| 44 | `theorem` | [fst_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-add.md) | 262 | `result-track:b4715dc44b795e69efca8ef2744e7b830283d2d854aa87ffacedcad20c79ed6b` |
| 45 | `theorem` | [snd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-add.md) | 266 | `result-track:f6e41031ce815501335740ad5662ae762312cb2c252a852da3537c573a4adcf2` |
| 46 | `theorem` | [fst_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-neg.md) | 270 | `result-track:ef5850f4fab3b69b46854694cd03e92d27afe5c02541b11602d7885711c1c056` |
| 47 | `theorem` | [snd_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-neg.md) | 274 | `result-track:569890e047da2ab82fb65465a3abb0d3a4c5eb2e022e06ab34a2a7b44895d6ea` |
| 48 | `theorem` | [fst_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-sub.md) | 278 | `result-track:9d1a6c0745a638123f086b0758273575f55bd28159da0cfd8dba511c4cf8f3da` |
| 49 | `theorem` | [snd_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-sub.md) | 282 | `result-track:9123984ac2773119756b83dadaab1a4d3dc80deb602c6ae734be5d11d08e1169` |
| 50 | `theorem` | [fst_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-smul.md) | 286 | `result-track:d1af3803a26ecca8ef6d0e10c2cc6678509706d2d284f72a3c1a4d1d78bd06a0` |
| 51 | `theorem` | [snd_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-smul.md) | 290 | `result-track:1d1a490fc2255026379bea6a0481fa7d02dbe5ae01c71463ef50e0ea1e3c18a1` |
| 52 | `theorem` | [fst_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-sum.md) | 293 | `result-track:fa4e429f536b0640edb50e85e069aee6b08bf6d81308907de264fbee63ff5bf0` |
| 53 | `theorem` | [snd_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-sum.md) | 297 | `result-track:810858aee9c6f525cf691215c57128cd2f718e528fc3f189fb860cb06f175722` |
| 54 | `theorem` | [inl_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-zero.md) | 306 | `result-track:43dfa5864dd3ede514ae160be780fedf7197328dc27878b6fa358d9c9d288fd8` |
| 55 | `theorem` | [inl_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-add.md) | 310 | `result-track:bba71c81407e904d0b0ad9f88e2b01f739b97b54ab8fec0356fd2599db167e7c` |
| 56 | `theorem` | [inl_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-neg.md) | 315 | `result-track:532834174530165fd1ce70490dae58c724ebbb8c6977800d462bfe922744f39c` |
| 57 | `theorem` | [inl_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-sub.md) | 319 | `result-track:ad27ab9778f43a288e8ec69077730dd3d25dd463c7ede2837521812bdc4b76bc` |
| 58 | `theorem` | [inl_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-smul.md) | 324 | `result-track:bcb0f949de489507638e4bd9575a1e8661ce334256ea27d01c6dde4cbd76f07e` |
| 59 | `theorem` | [inl_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-sum.md) | 328 | `result-track:1e482534328bbc01f95a6b826c103e963ede076fb1c70157f46edf3eb5efb10c` |
| 60 | `theorem` | [inr_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-zero.md) | 339 | `result-track:0fc8add93ea48e9b081bc89ef6c899dc4ae5f8f2d053a3760e041552ad8739c0` |
| 61 | `theorem` | [inr_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-add.md) | 343 | `result-track:b5391da005a8005c89263bf1ccfc774226c89d808107b895ff8d9ea6002d6444` |
| 62 | `theorem` | [inr_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-neg.md) | 348 | `result-track:1b350c7f546adc8a84544d3a1b41118b9cb700716a8e73fda5a6379d0962e7ed` |
| 63 | `theorem` | [inr_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-sub.md) | 352 | `result-track:c07d8ac9a20c26570fb09936921945d2f4e33e6b26fe3457ee5294523a98556a` |
| 64 | `theorem` | [inr_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-smul.md) | 357 | `result-track:853885736336035d8e2c19aad4582ec7fb7cadf170e06fbb8b5a036925f900d9` |
| 65 | `theorem` | [inr_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-sum.md) | 361 | `result-track:25284424834466bfa74f13ef9244ff72e21f55c744b430caa0f9b9b8198cfe7f` |
| 66 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-fst-add-inr-snd-eq.md) | 367 | `result-track:9c399c3cdc4e9284f1ff5b14549fa2d45352e882417fd88a9385fc0ffac504a3` |
| 67 | `theorem` | [ind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/ind.md) | 374 | `result-track:329ac50e47390749f468b9bb7c2310ba8b911cae0fb47792b1bebd1a287fb28f` |
| 68 | `theorem` | [linearMap_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/linearmap-ext.md) | 380 | `result-track:1ebc34d16a9930da961382ed36f2307e2aaed361a4522c262a263468547cc7ac` |
| 69 | `def` | [inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inrhom.md) | 389 | `declaration-track:14f4b5d3208f5667689235688220f60671baa154e64afaeab7b63d94bd32dc41` |
| 70 | `def` | [sndHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/sndhom.md) | 394 | `declaration-track:1fbab927182d78e4ce57531012a48709eebe03ad118f4125190b41bd9d8751d2` |
| 71 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/one.md) | 406 | `declaration-track:c8f3bdc1b08211b5731e30488d3a0aeca056f629bc1e40e22c357db680bb064a` |
| 72 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul.md) | 409 | `declaration-track:44e8dab3bc5f6c64e6afd5fe3e2317e896f6c1bb846fe8fbad02e385e3942de4` |
| 73 | `theorem` | [fst_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-one.md) | 413 | `result-track:5a6e5ed0538c3e209b099e00ef0dc473ac83f0a60e8054412abedff3a29444f3` |
| 74 | `theorem` | [snd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-one.md) | 417 | `result-track:4b45291b431d075cc8b45a21dce4c9670ff682e089f7b9ed6eb8beed93ec39f3` |
| 75 | `theorem` | [fst_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-mul.md) | 421 | `result-track:2eb0b2073cfd4c32ebc177b3b7bd225ab53cb2825064c31843a370022d555eae` |
| 76 | `theorem` | [snd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-mul.md) | 426 | `result-track:27e579cfbc78aa62b6e6ba4606ef4b2b06b46cfa039afc87c4b799dbf6b94656` |
| 77 | `theorem` | [inl_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-one.md) | 435 | `result-track:1cea598cacc02b75532ee3e99711ee3bf20c0148fe44f7b630ec3a39c6ef64eb` |
| 78 | `theorem` | [inl_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-mul.md) | 439 | `result-track:38a2333e17d683ce4957296fd2a0dacaf3b4dfcf1c7a99df69b31cf82bfcdcdc` |
| 79 | `theorem` | [inl_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-mul-inl.md) | 443 | `result-track:f450c2459b02bb552a26c833e6b11dcb3142b630cc866a6e46e8b178442d5576` |
| 80 | `theorem` | [inr_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-mul-inr.md) | 454 | `result-track:4c1c6d14a521f084a9e1bb5abad5e9adef432009d1c03b24caa80d446749e5ba` |
| 81 | `theorem` | [inl_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-mul-inr.md) | 461 | `result-track:6891c08462a03cf20ff2b9bdd3ef492952bc7992ddb2c26eb85e77613b7ee4ab` |
| 82 | `theorem` | [inr_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inr-mul-inl.md) | 466 | `result-track:81101bd27572801589a4b92ed4493cb7dd977dc3ae939d69f129458c65e616b1` |
| 83 | `theorem` | [inl_mul_eq_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-mul-eq-smul.md) | 471 | `result-track:f737fac2fae3d66c303b5cf133833d70807e73bef6ea11ae7092832f050c3e86` |
| 84 | `theorem` | [mul_inl_eq_op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul-inl-eq-op-smul.md) | 476 | `result-track:7cd0b5465bb4d24c5f94ee423112529b1ac662a531689fffa8ccd5fdef9d1258` |
| 85 | `instance` | [mulOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/muloneclass.md) | 481 | `declaration-track:8324c0abc4b0f1e03dc9be100d547f8b77b60c8f58233ac6e71eae271d5f50ac` |
| 86 | `instance` | [addMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addmonoidwithone.md) | 490 | `declaration-track:fdee33f5a6aaaed1f3c81c1ac1f97c0f1f725796c2bcd660671d64624911e906` |
| 87 | `theorem` | [fst_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-natcast.md) | 496 | `result-track:31a81bec9eccb44e40b6d6d0a55d24927944d4aa1a707f1cf5d82527fd5d22fe` |
| 88 | `theorem` | [snd_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-natcast.md) | 500 | `result-track:9ecbb99141f5752a627e9256162dd05b7c95742c17cb0a89c1136a68b0e1209c` |
| 89 | `theorem` | [inl_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-natcast.md) | 504 | `result-track:220978caae2950ef3cc330411d9e6cd84d273f583dc2ea0100857d7e80b30ea1` |
| 90 | `instance` | [addGroupWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/addgroupwithone.md) | 507 | `declaration-track:e5f489f913dbbe77973259972e07af47a7ee10088ea5c82e6a867c77e155cd72` |
| 91 | `theorem` | [fst_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-intcast.md) | 513 | `result-track:c3ba8b73e0043734b296556d9bb52d807a6d4c6f2fbd777c3a7ecadfc909cffb` |
| 92 | `theorem` | [snd_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-intcast.md) | 517 | `result-track:0c0651488ba4c25319ed01d441670a166afb6c1de3ce99b00a37ae129b736ece` |
| 93 | `theorem` | [inl_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-intcast.md) | 521 | `result-track:ffb621e680c8a34b18317542574518af5093d1fb42d905684cb503073c52b4d9` |
| 94 | `instance` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/nonassocsemiring.md) | 524 | `declaration-track:29d7ce5db93f99db7fa631cd7904ed27629b8d6c19831d64d467216139310dcd` |
| 95 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/nonassocring.md) | 545 | `declaration-track:890fc26cfde6698abb6a6bfb03981f23e3f7c4f8c6237e208713873616904e17` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instance-source-edition-2.md) | 557 | `declaration-track:3ae11adbc734a2738a6e75953340bac6de5612948ea2b5ce465fbdd6c1f60696` |
| 97 | `theorem` | [fst_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-pow.md) | 563 | `result-track:64603ea2bd5e2798e6dcad719ea8e11d1bfe0b2f7da99703b18c34715a582a1e` |
| 98 | `theorem` | [snd_pow_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-pow-eq-sum.md) | 567 | `result-track:799332721b425f71c8b0b21ddd495cd34b0570c64a9b26f1121b1f88f9f9d053` |
| 99 | `theorem` | [snd_pow_of_smul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-pow-of-smul-comm.md) | 572 | `result-track:0e192b106a68edc024c40de9b366797e9b7f0f3a9980c85688b336b7c55b7968` |
| 100 | `theorem` | [snd_pow_of_smul_comm'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-pow-of-smul-comm-source-edition-2.md) | 590 | `result-track:68b128d94062f5388020e6b1e97f84e94ec1dc325445737c9c5aacf8b87dd460` |
| 101 | `theorem` | [snd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-pow.md) | 596 | `result-track:4e67f85748613113b738ed33ff4dea885f2c6a5033dba33c35583ae3159b33e4` |
| 102 | `theorem` | [inl_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inl-pow.md) | 601 | `result-track:4daea0dc98d9a615ffee849ac7783dd7d149aa2e47dae6b283a3381a05df2b94` |
| 103 | `instance` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/monoid.md) | 605 | `declaration-track:c2efcc3c5d3ead17804128473f044494dea30f390d8bdec762b6194e3b7e3318` |
| 104 | `theorem` | [fst_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-list-prod.md) | 627 | `result-track:cd6b70b33f177b6d210cb6518d5cb36341847b342b096922dde8211ea381948a` |
| 105 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/semiring.md) | 631 | `declaration-track:2532ca27f6ebcf597bdcf9d49828d0400f0766ea73f238de225c5b7140a7e350` |
| 106 | `theorem` | [snd_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-list-prod.md) | 636 | `result-track:542facc7f7d13094659852012abde3bdc21b3f8a00a983bce71f74b1680fcff3` |
| 107 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/ring.md) | 651 | `declaration-track:cc881278f4c20241570c236899060bc3a6e16b5a030919fa6772e0cce3e4b7ae` |
| 108 | `instance` | [commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/commmonoid.md) | 654 | `declaration-track:46a8a5fd72aa97823c59ab9afc2e237d78ca4b56a6ffc60a48414607ebc24437` |
| 109 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/commsemiring.md) | 662 | `declaration-track:8e2c601b5bb752f1ad30b074054433ca073f295ce8ba85c7c598a692b0e4ec7a` |
| 110 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/commring.md) | 665 | `declaration-track:8b0e7f5ca9d0bf64e92af87b3db9b95ba5aa25125d803f85f910f6f129a34e67` |
| 111 | `def` | [inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inlhom.md) | 672 | `declaration-track:f86b2c53ae79b140293cd5a2ee296643d2b10be2e34ae376e79c83b65b5d641f` |
| 112 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instinv.md) | 688 | `declaration-track:ff9212fc4fb2ea230fe7516e0bae187124ef1f7fe9a1f57ebfa1f66079cba26c` |
| 113 | `theorem` | [fst_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-inv.md) | 691 | `result-track:e66aba70df8a286f6ab9b96b80e92b713f0c5bd9eaeff05dc103ecac89822e57` |
| 114 | `theorem` | [snd_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-inv.md) | 694 | `result-track:251d1ce3a2e5c35e43d0327afa28a50fd3c8fdc29d1726f4802b9e4bcfb75e27` |
| 115 | `abbrev` | [invertibleFstOfInvertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/invertiblefstofinvertible.md) | 705 | `declaration-track:d861de6d29759b86830273eb08a49adb01ad824a50816894743c98a4a5a1e1ea` |
| 116 | `theorem` | [fst_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-invof.md) | 710 | `result-track:a5d37fa934e178a1234a732f57ad60d9c44e9d7e561148aff597e934cfdb7a6c` |
| 117 | `theorem` | [mul_left_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul-left-eq-one.md) | 714 | `result-track:ca86abc280fc3c71f7196b149b07e3f694c8522247e70c6f2ab7bed963327214` |
| 118 | `theorem` | [mul_right_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul-right-eq-one.md) | 721 | `result-track:1fe1f23a0a78305744fc7ee0219bc96467e96f2d9abed41f95ff00205d8c4d05` |
| 119 | `abbrev` | [invertibleOfInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/invertibleofinvertiblefst.md) | 731 | `declaration-track:1c2e83070d050f92aa9cbdcaf7d075bfdb4b1ec0c85cfaa7f3ed6eb03b7da70e` |
| 120 | `theorem` | [snd_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-invof.md) | 740 | `result-track:23abcc09cc2dc44a8f8e8811aee9504fd33bb266098d584988c5c757f155067d` |
| 121 | `def` | [invertibleEquivInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/invertibleequivinvertiblefst.md) | 749 | `declaration-track:ca340cd38953d0808886a3819a79a7b3debefb72f4b5419a73e06b65e887666f` |
| 122 | `theorem` | [isUnit_iff_isUnit_fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/isunit-iff-isunit-fst.md) | 756 | `result-track:473879b2d7564f376e9bfd7074e667ed1f0c19b244bd7911d9497fcbe80e7475` |
| 123 | `theorem` | [isUnit_inl_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/isunit-inl-iff.md) | 760 | `result-track:682a6d767fd3d844079a197df7d835dfdd2a7dfb3ad11c71d404770f490c6dc8` |
| 124 | `theorem` | [isUnit_inr_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/isunit-inr-iff.md) | 764 | `result-track:b171fbd249686de7f423dc272bae33e35fe99a2f05b19506b5d1a2b1a8c88c7c` |
| 125 | `theorem` | [inv_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-inl.md) | 773 | `result-track:a91c6093815f8aff938290f03f4a335f3520973153db2bc6198a662c46d16afa` |
| 126 | `theorem` | [inv_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-inr.md) | 780 | `result-track:3ab7cb6befd2362dde0408fc494e18485170bca6070e491ca55997ff02d3c2b4` |
| 127 | `theorem` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-zero.md) | 786 | `result-track:f2540c651ca891d14ed5c2361134165329061ce2e2682c3b8e2a6a1f3c9e5d42` |
| 128 | `theorem` | [inv_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-one.md) | 790 | `result-track:89fc5d70d66385687ab0e133b2e498c39adf2e4b243effe73ca3f6be592cff09` |
| 129 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-mul-cancel.md) | 793 | `result-track:bab132d682f662e031c2fe82e1bebd52eb486c0ae70837fa82e18f24117fa43f` |
| 130 | `theorem` | [invOf_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/invof-eq-inv.md) | 799 | `result-track:66426dd9901102d1f80d5c99e4e2c6426a7cde4d2695830aa68d3f281f37faea` |
| 131 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul-inv-cancel.md) | 803 | `result-track:7034fc30ac98329cccccde33990627c0e2f64a0b0b6885c7fc23ba986bc9e24f` |
| 132 | `theorem` | [mul_inv_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/mul-inv-rev.md) | 808 | `result-track:74161f4adcc8bf921701a8da588dc0f7e849d8e72a9f7502b824536519b3f97a` |
| 133 | `theorem` | [inv_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-inv.md) | 821 | `result-track:6711c09c91ce7b03e7692ca1bc4f56c4fe3db9f738816f2103b8810a3790853f` |
| 134 | `theorem` | [isUnit_inv_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/isunit-inv-iff.md) | 832 | `result-track:c60de0aefbbc556f1ebb2448f2c02e9fbbbf09b3783416cf4fc52c06ddf31def` |
| 135 | `theorem` | [inv_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inv-neg.md) | 841 | `result-track:44733db52f454441e8db18a8e02c9662b2ac6beda047bd1d6121d5d7520ce7c3` |
| 136 | `instance` | [algebra'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/algebra.md) | 854 | `declaration-track:817bcda8a92a222f67b8de37fc8c89638aa670b637a4ebded38392b9545283ca` |
| 137 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instance-source-edition-3.md) | 869 | `declaration-track:a6ed14b01200ae0ecfbc0075e444e1e514c062efe8c62ec02005ae6172e4b848` |
| 138 | `theorem` | [algebraMap_eq_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/algebramap-eq-inl-source-edition-2.md) | 872 | `result-track:d1fb08727b44a5585f55cf1461721b4b1c0d0f84aaaae880da3aa1d2c6f3cedf` |
| 139 | `theorem` | [algebraMap_eq_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/algebramap-eq-inlhom.md) | 875 | `result-track:7e3773b00a64139e853b3275acc5b8e39e56107dfa46bd15f2a38bf695e592b3` |
| 140 | `theorem` | [algebraMap_eq_inl'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/algebramap-eq-inl.md) | 878 | `result-track:c8fd0c3e9128ef60c381019d190555f9faf4a35b2d9b5c03507f4ab9ff75641a` |
| 141 | `def` | [fstHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fsthom.md) | 883 | `declaration-track:3b2c3f9d6ed0549e3ffd0de4a4035f7c65ea8e038626942b814cffc4d3634edd` |
| 142 | `abbrev` | [algebraBase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/algebrabase.md) | 893 | `declaration-track:9242d6929a4f7a568f65e496f058edc751526f0aff173f2baff8a24f9c63052b` |
| 143 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/instance.md) | 900 | `declaration-track:289fb45431112d51353f8c37187db33dc9038b088da2751be0b30a9eb4ef0f55` |
| 144 | `def` | [inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/inlalghom.md) | 905 | `declaration-track:968cfa13079d045f3347981704f56625b4f8992fd5febbc836d2806106522359` |
| 145 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/alghom-ext-source-edition-2.md) | 915 | `result-track:f19425e59d43bab1dbe051ea49baa13cec5d23c7371a24033a819849567cc8cd` |
| 146 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/alghom-ext.md) | 921 | `result-track:886aa223ef9a459e45b86822c63e2b6a6070dee63b15027031fdf9109c0c3a9f` |
| 147 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift.md) | 946 | `declaration-track:7647fb98d2e00991334dbe8b6ad3d99634cf55034eebbea5eaa890f490da70bf` |
| 148 | `theorem` | [lift_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-def.md) | 959 | `result-track:fdb2896188865e45ed2e9c0dc1629f05807794b0b78bff9dd33b107f2c0ff1c1` |
| 149 | `theorem` | [lift_apply_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-apply-inl.md) | 967 | `result-track:6f95d173f2535f97b490c5cfd97e270ac16fd93b87a8f710237b0b93bab61fd8` |
| 150 | `theorem` | [lift_apply_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-apply-inr.md) | 976 | `result-track:a965fb822f244134c4d2344ff053b58e0306270a0d653cad465a41fba084caa4` |
| 151 | `theorem` | [lift_comp_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-comp-inlhom.md) | 985 | `result-track:65eddd0db8864c9af6f4151cc67b4b3729cd8bd598f7a79e28ce13913905fb70` |
| 152 | `theorem` | [lift_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-comp-inrhom.md) | 993 | `result-track:69d6b5f19a2f271ca24524ec5b2e1e595aa8aebeffb0f8fe74ddb1b6d400af32` |
| 153 | `theorem` | [lift_inlAlgHom_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/lift-inlalghom-inrhom.md) | 1002 | `result-track:94bb9670c2cfb90a18e3c8426c655e257f1f1e4c0d8453e10bb04a90d5868db9` |
| 154 | `theorem` | [range_inlAlgHom_sup_adjoin_range_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/range-inlalghom-sup-adjoin-range-inr.md) | 1010 | `result-track:9c6d15d317b3729c93d181c49a705fe55cab803f9befefff965ca23126d579d9` |
| 155 | `theorem` | [range_liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/range-liftaux.md) | 1019 | `result-track:a6fe0b8a8caa81e6e7c59c32ca4b4f37cde9076a23b78cdb730adbff36593925` |
| 156 | `def` | [liftEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/liftequiv.md) | 1035 | `declaration-track:497ef8049a45d5d2d63923d2e4bded7631abb00dad93fefe00499cb7680e4e3e` |
| 157 | `def` | [liftEquivOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/liftequivofcomm.md) | 1052 | `declaration-track:0b9900832d3c845072b9f73bd32c0884d85d35fa035e5ec7138e7b19bd726f1f` |
| 158 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map.md) | 1072 | `declaration-track:0565976a16be7d9084a8566938dc4984d1656d50a9b6c030b2f37f951199783e` |
| 159 | `theorem` | [map_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-inl.md) | 1076 | `result-track:4c1417368e22b2a9455b8feb77f2e80471cc588bd83c4ef398b29a8610dded47` |
| 160 | `theorem` | [map_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-inr.md) | 1080 | `result-track:4591378c2a9e2a8018c22f722e24941bb583712f579688aa2dff059ff0a930fa` |
| 161 | `theorem` | [fst_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fst-map.md) | 1084 | `result-track:e50ec005993a374c7643a9b179d5fdfbc2511de6211408922c94b63fae0edcb6` |
| 162 | `theorem` | [snd_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/snd-map.md) | 1088 | `result-track:96a6d53d549af05177adb61a5489afa047d35492352f4e3f997d7be5e6c04f2e` |
| 163 | `theorem` | [map_comp_inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-comp-inlalghom.md) | 1092 | `result-track:e24a5d5b3bd844830eb24a72d322698f96aa982d21fdda194114eb6b444d24ba` |
| 164 | `theorem` | [map_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-comp-inrhom.md) | 1097 | `result-track:b45e48ba3f646a2a72d3c1b4833a6528bfacc926bf4d972bcb6eb6d208cfdef0` |
| 165 | `theorem` | [fstHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/fsthom-comp-map.md) | 1102 | `result-track:6f629b4238283792a2990a1ac9e2d37536c4f325dc0cdaee5ec2601330a189a4` |
| 166 | `theorem` | [sndHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/sndhom-comp-map.md) | 1107 | `result-track:4d56d047de6f2c46c29c354984a333b8152bc6cd89f69fcc71ae5341f80ace23` |
| 167 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-id.md) | 1112 | `result-track:6ba38867ff521f31f3d55d24e3a4d1e512012b90b7a0769e537b10aa4daa4338` |
| 168 | `theorem` | [map_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicPublic.lean/declarations/map-comp-map.md) | 1116 | `result-track:93381bc53d95150e26f0b9977d08430941be248f8018a3bc8ff25ba83d13260c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ebe86d68cdf6bf0bf536649ad0c067957a6ba6522aad6fbb050a6bbcb5f4246 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
