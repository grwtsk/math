# Verification target: Free Group Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5969a9c4cb5e6e94bee97ea489dc20c3be391df7",
  "lexical_observation_count": 143,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5969a9c4cb5e6e94bee97ea489dc20c3be391df7`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeAddGroup.Red.Step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freeaddgroup-red-step.md) | 71 | `declaration-track:a6397825097c0d6fbdf52729b8656d3a4cc3eef22c85e114642b9df818476441` |
| 2 | `inductive` | [FreeGroup.Red.Step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroup-red-step.md) | 78 | `declaration-track:828515bb2d8e4e06607ca3ca0f63f64c13a1878af9ab6f52289d4e0f90bd0b78` |
| 3 | `def` | [Red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red.md) | 89 | `declaration-track:655e1e069643fb5c5950bc50c3665f9ad54b56379835d0a76fe8aaa2505b7acd` |
| 4 | `theorem` | [Red.refl](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-refl.md) | 93 | `result-track:e1602979ad99be5545a0af5e33d3aa61432586176414d8bb5042e75bdc4585aa` |
| 5 | `theorem` | [Red.trans](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-trans.md) | 97 | `result-track:5f454da5ce23090970c65a0fcb63e3322c9637619d5a2ec161891a17cfa627d7` |
| 6 | `theorem` | [Step.length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-length.md) | 106 | `result-track:6b5a5ba8920a8f71e07c7fdac103ae4ce792695086e2dad1f1c34eb4bf8128f1` |
| 7 | `theorem` | [Step.not_rev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-not-rev.md) | 110 | `result-track:8d902d6808b9765b81add84b35bf5438c0674c1ff5de08b6af92f61468d9fab1` |
| 8 | `theorem` | [Step.cons_not](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-cons-not.md) | 114 | `result-track:c474aaa3772886b946cbbb666de3e4cfe0f57755a2f0d3f3dc18a72d65225425` |
| 9 | `theorem` | [Step.cons_not_rev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-cons-not-rev.md) | 118 | `result-track:49e3baa233550b5dbd4b3377fb88ab6c08adb4a1e48cea7b4b1643b6733ab8f3` |
| 10 | `theorem` | [Step.append_left](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-append-left.md) | 122 | `result-track:97dd5a1f3b971f9d9f907c3e6b87950ac9dc21cc987bb936465c9d49072f62b2` |
| 11 | `theorem` | [Step.cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-cons.md) | 126 | `result-track:a654ab9947fe159c7b81900b1ed3f68179add22393e57d0d6b6a1d3d06471d8f` |
| 12 | `theorem` | [Step.append_right](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-append-right.md) | 130 | `result-track:22d4d7ff5c70b7dc312f4473e71e090cc411f329f6da7d491c6119400996dafe` |
| 13 | `theorem` | [not_step_nil](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/not-step-nil.md) | 134 | `result-track:86cd9c5b0817dc5bd0fb628442d0336b9d12aa03ebc983f8dc776fd3d2d7ab08` |
| 14 | `theorem` | [Step.cons_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-cons-left-iff.md) | 141 | `result-track:2f41ef1cb6f2772941c8fce0ba44a4ab48e4da2cf98e34a6542634f1f682894b` |
| 15 | `theorem` | [not_step_singleton](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/not-step-singleton.md) | 151 | `result-track:05bc51f5093c0b0e9be16d6dc5e631ead7001a550d6429c63cbf5e9dacc18d00` |
| 16 | `theorem` | [Step.cons_cons_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-cons-cons-iff.md) | 155 | `result-track:5ac81e80f7da257a5e749aa35ced9cb71662fe74e2c56156754a3813534c7a1d` |
| 17 | `theorem` | [Step.append_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-append-left-iff.md) | 159 | `result-track:719d80b8fe3f5c5e5518fa0d90121fa4ab79fb3b71b832c1c3eefb7bb2e226c7` |
| 18 | `theorem` | [Step.diamond_aux](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-diamond-aux.md) | 164 | `result-track:f5a5474d0df4212267464fb0ad42969db64628e08251eb0384a08d533f57da32` |
| 19 | `theorem` | [Step.diamond](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-diamond.md) | 182 | `result-track:b1290243c37a2960e9cd18a2b45ca03f22a2fa6964b739f7785d030c498f7b0a` |
| 20 | `theorem` | [Step.to_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-to-red.md) | 188 | `result-track:8d3baa09b78e76a0634dc474679955243b30f18958a2aec6ab7a29fcecc425a0` |
| 21 | `theorem` | [church_rosser](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/church-rosser.md) | 198 | `result-track:1c715771358a9526b22bbd54b79720d30f7e42d9cc6d97de8e2a55ff257729a9` |
| 22 | `theorem` | [cons_cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/cons-cons.md) | 205 | `result-track:e24727fafdb4e57d93ccee4aced5d6d169e0aa0dfa4286680c8b4f99723f22e6` |
| 23 | `theorem` | [cons_cons_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/cons-cons-iff.md) | 209 | `result-track:901fd6136d40504b7422d2ce24aa93404eb6b9564d71cf205ac8acfb150e4424` |
| 24 | `theorem` | [append_append_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/append-append-left-iff.md) | 230 | `result-track:103a18570e5f7791a2e51c101fe9722db512b96e1c1eeff9a926468cab7c9493` |
| 25 | `theorem` | [append_append](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/append-append.md) | 235 | `result-track:60f36791a7183e6e189e5afc21008e26ed4140052eb8e82208aee8281d2af8e4` |
| 26 | `theorem` | [to_append_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/to-append-iff.md) | 239 | `result-track:34f8fb97508a3624f4b596ffd642e735081ebecffa01722ae4fbc89be9786e39` |
| 27 | `theorem` | [nil_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/nil-iff.md) | 261 | `result-track:f2d6794060f3a451e4954e724c60af3e5f1cb6f71a370e3815552cdd79bdf87e` |
| 28 | `theorem` | [singleton_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/singleton-iff.md) | 266 | `result-track:5d2ef72f09ba220fad6a3e8f481f7fbc4b1524f92849fafb8fa542e9d16ef834` |
| 29 | `theorem` | [cons_nil_iff_singleton](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/cons-nil-iff-singleton.md) | 274 | `result-track:7737bedae6a7c875cc18b0e0ae0ffa347752d1c9a5bd433dd6970535b078597d` |
| 30 | `theorem` | [red_iff_irreducible](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-iff-irreducible.md) | 286 | `result-track:f97eb444e6a995f5b3d4b5eab55de4d09f1abafce0e74be52b746b553e0b4721` |
| 31 | `theorem` | [inv_of_red_of_ne](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/inv-of-red-of-ne.md) | 301 | `result-track:9464c9c745e277a6e14a6c5257aefbadb38936a4ac755fb2a0482eb7c9600d54` |
| 32 | `theorem` | [Step.sublist](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/step-sublist.md) | 318 | `result-track:70fb5338bbaeb1b6c871410143fcf02819aa8ddd3ec66203a1892bc42f3e62f3` |
| 33 | `theorem` | [sublist](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sublist.md) | 324 | `result-track:e6980a813009ebdf5988e4ee99f844452080d7a678ee1f4737a657e30abcc044` |
| 34 | `theorem` | [length_le](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/length-le.md) | 329 | `result-track:3caa3f83e6e3bcc000ff97f2402f702aa0b0ea4c8edafe4efbeb8e8e94421c9a` |
| 35 | `theorem` | [sizeof_of_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sizeof-of-step.md) | 333 | `result-track:a74026ee331521f2d743a196d25f5fa799dffaa90a11feb796548bac50f40ef7` |
| 36 | `theorem` | [length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/length.md) | 345 | `result-track:accb2dc7d8eab844f44c00d4b1e7f8a9869479a7727f951b5e2e50d3c445674a` |
| 37 | `theorem` | [antisymm](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/antisymm.md) | 354 | `result-track:82c8d1da8f2a6ef3bdfed8e43f3ca651be2b5c255899a637b2cea427ff8a7582` |
| 38 | `theorem` | [equivalence_join_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/equivalence-join-red.md) | 360 | `result-track:295be52afe6d805520f5a199e20a5e09cfd6c43e2aea52d8a9cccaa50fb96bc9` |
| 39 | `theorem` | [join_red_of_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/join-red-of-step.md) | 367 | `result-track:7d02daeb0ebaf046f02ed194bae503a196fe7252dcfbd24b3f1132a221bb145d` |
| 40 | `theorem` | [eqvGen_step_iff_join_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/eqvgen-step-iff-join-red.md) | 372 | `result-track:95bbcb86d93b8cb48700cfcd02ee0a78e414bd5c83f25ded045baef85757dc00` |
| 41 | `def` | [IsReduced](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced.md) | 386 | `declaration-track:a00c44f0c83f9764bfb1b03301258e4139996775a99c57ba6316220538e10178` |
| 42 | `theorem` | [IsReduced.nil](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-nil.md) | 393 | `result-track:dd1ed38f7f5fdc86c1081843d5f964b214fd4490f292e5bb728f00cbb1ecc0ba` |
| 43 | `theorem` | [IsReduced.singleton](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-singleton.md) | 396 | `result-track:2801137daf927136445b74bc88b99f84b1d3ac37d8c85f0b133ddf86b2216b90` |
| 44 | `theorem` | [isReduced_cons_cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-cons-cons.md) | 399 | `result-track:2977d989f5de59605cd45b4fc2ea556d591e1d5716900f2402e817da342c9f44` |
| 45 | `theorem` | [IsReduced.not_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-not-step.md) | 403 | `result-track:be4bbf8fff67e79c7210ff81af56ea635cb2c68c6fbc7dc5087c517d7b1878cc` |
| 46 | `lemma` | [IsReduced.of_forall_not_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-of-forall-not-step.md) | 408 | `result-track:4b07a2b1b6573f73d233df48c510dc8a8dfff1af05fbea45e222cf9b3954850e` |
| 47 | `theorem` | [isReduced_iff_not_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-iff-not-step.md) | 422 | `result-track:5c2f894a6f64f9ec315488939eb3730a2124e1a1a8fa00af9a6a64615a4f7fb6` |
| 48 | `theorem` | [IsReduced.red_iff_eq](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-red-iff-eq.md) | 427 | `result-track:d9b9549deb750d83797891540ae2e35fef1a9320b8bfa2bce2a48187e6fe8c7b` |
| 49 | `theorem` | [IsReduced.append_overlap](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-append-overlap.md) | 431 | `result-track:7bdbb686645c172e0427075fc5b64220ba9f92ba05d49e5c488b796c3dc50875` |
| 50 | `theorem` | [IsReduced.infix](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/isreduced-infix.md) | 436 | `result-track:1e799953f8a34da5502ba0c1dd4172296a926eac15d2a3c09651847a40c94cc5` |
| 51 | `def` | [FreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroup.md) | 471 | `declaration-track:c15a3e1e6108b8b695f45d7c3b94b5611d0b7ac46700636178a4449777c8227a` |
| 52 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/mk.md) | 480 | `declaration-track:d7ee68b43047a0b8893aa5bcec14679cb948c609a8017848e56a2c3aae9bcff7` |
| 53 | `theorem` | [quot_mk_eq_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/quot-mk-eq-mk.md) | 484 | `result-track:9ee4f19b60f461a57c74ef36635d29e780b91c433ab0c444156b3adff7870283` |
| 54 | `theorem` | [quot_lift_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/quot-lift-mk.md) | 488 | `result-track:8b24d6e7d20ab6fcd597d8cb7494787be591667ee42ddaa1b9344b35e95a1bbc` |
| 55 | `theorem` | [quot_liftOn_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/quot-lifton-mk.md) | 493 | `result-track:908d02fb6e06eee25f84abe0adb7b14fa582b362d1ed1bc967d98da07d618bc5` |
| 56 | `theorem` | [quot_map_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/quot-map-mk.md) | 499 | `result-track:32f85f308b2dd962c787a59d1581a3c24a847bd852188d62b7387fcf441c4560` |
| 57 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-8.md) | 504 | `declaration-track:9e3a6566596311ab737961aaf1b2c5ed1bbe6a03f87d21ef94a124ea3c25d1e9` |
| 58 | `theorem` | [one_eq_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/one-eq-mk.md) | 508 | `result-track:09bc20eeb7dff37685530efa1f9be93a7ad3265787316a17ff91f49cec2b018a` |
| 59 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-7.md) | 512 | `declaration-track:9dc0d3c74d2be9dc132e96946880ad89f0cb52bcc2dc7da9419074fe276c019f` |
| 60 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-5.md) | 516 | `declaration-track:679ff22660dfc341a0a88d218f803fe65e22566e73af1319315357edfeef2cca` |
| 61 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-4.md) | 519 | `declaration-track:23b4032068f74d235561ba971a42a4eb811eec0541356602849d3ee7761b5395` |
| 62 | `theorem` | [mul_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/mul-mk.md) | 528 | `result-track:8839789cae3a0c977f701d4af62d6b7afe8d010fa78021ab05bd9995e34280a5` |
| 63 | `def` | [invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev.md) | 534 | `declaration-track:e32babbc542046a5cd339784fb67ff6c05a044254908a04053feb503aae0f69e` |
| 64 | `theorem` | [invRev_length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-length.md) | 538 | `result-track:3d6625bb44acde0e15d5f8b77dc7700fb62fe9237366cfb1509e3d88e7aedab1` |
| 65 | `theorem` | [invRev_invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-invrev.md) | 541 | `result-track:d5efa44e79c28d6e24ed54ea8ddcdf041795d46f36ba5b3b10ad09c2a528709a` |
| 66 | `theorem` | [invRev_empty](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-empty.md) | 545 | `result-track:01a7ab58b6f2dd950d4e6050a5d82c887f3f2e19161947928a51c9c00e9480b1` |
| 67 | `theorem` | [invRev_append](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-append.md) | 549 | `result-track:cb03009be06973693afe547a28372ec01cfdc89f78d227b9096e75f3da8b2835` |
| 68 | `theorem` | [invRev_cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-cons.md) | 552 | `result-track:0e0f2b23d40da942e6e5ca8078425dac251931a6162947927ba67b007ec7b0f9` |
| 69 | `theorem` | [invRev_involutive](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-involutive.md) | 556 | `result-track:080bca0547c15fcb1ef3d0330fa788154f68b7541e135a501fba2c42a86876d6` |
| 70 | `theorem` | [invRev_injective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-injective.md) | 559 | `result-track:f33ad036dea44fefdd707cc04f68d68af70dab176efdf3fa7734360b0f9d2d36` |
| 71 | `theorem` | [invRev_surjective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-surjective.md) | 563 | `result-track:20d71d7e4970cbece138747df95a849e528a0bace561f86848b048731a016a8a` |
| 72 | `theorem` | [invRev_bijective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/invrev-bijective.md) | 567 | `result-track:a9c88417c0dda815c8e0963c28a369e3b18b0d8ae4c63842be6f86ece57524e8` |
| 73 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-3.md) | 571 | `declaration-track:169b4eb8ada23b413e945f8d41a8586dd24bd9dd933b8367d9e4d934f95dc1d9` |
| 74 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/inv-mk.md) | 579 | `result-track:ed79bb4a21927a77608821fb9a5bfd04480a6f8f7e249613a3bca0495adb180a` |
| 75 | `theorem` | [Red.Step.invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-step-invrev.md) | 583 | `result-track:bfa739663e98bd5dcc27a8ddbd1d9d9e81c2e56e2916a4423b118a905dcad97c` |
| 76 | `theorem` | [Red.invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-invrev.md) | 589 | `result-track:da11f934a136e9653e0ca4e74397d84e47f67c9b2919b6a393a1124255650f1b` |
| 77 | `theorem` | [Red.step_invRev_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-step-invrev-iff.md) | 593 | `result-track:5d2649011b67fe338a2eaf8ea8f1fbb7bdbdfd5dd07218a2b0a0c4c72c40aaea` |
| 78 | `theorem` | [red_invRev_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-invrev-iff.md) | 598 | `result-track:d55535df2e8283151b5eb66db590dc321a2453b5c2cd458c1332b5be84b0b272` |
| 79 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance.md) | 602 | `declaration-track:0eda92d6978e7e1780ae354a0b1058265fa41dd65e53007cdb33e7bf45662547` |
| 80 | `theorem` | [pow_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/pow-mk.md) | 613 | `result-track:b297f55f19f249396bf87b03a9ae135357e5754e8367db35a61fe52f959e7b5d` |
| 81 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/of.md) | 622 | `declaration-track:28e40d7e15ed6134929c02ab5cec6d9e15e2f5bb71852b912d4a1e9abc6e8d2d` |
| 82 | `lemma` | [induction_on](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/induction-on.md) | 626 | `result-track:8ccd2c906d65b7e0379f6cba12063d0f5ce24b46f2607858bd00798d40a12715` |
| 83 | `lemma` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/ext-hom.md) | 637 | `result-track:5e15176688f797cbebc2597269cdcc59c7ffe22660a71bed5c1666670f71e85d` |
| 84 | `theorem` | [Red.exact](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-exact.md) | 647 | `result-track:ce9b2e6e34828218d409a74a6f6372d78462cd0850ffc5b5c285dd5405a46a80` |
| 85 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/of-injective.md) | 654 | `result-track:9019063218da67e0730d54f142cf832a9b8839a071dfff754cb79041a5f4dbca` |
| 86 | `def` | [Lift.aux](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-aux.md) | 665 | `declaration-track:441a9847af2278b942eaeef26fe9dc091167fa627ef188e3cf288e86b9bc7a06` |
| 87 | `theorem` | [Red.Step.lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/red-step-lift.md) | 669 | `result-track:d65725eb1630077bc0b2abc521532b3801a1605c9f652f3b4201399e5b0b5caa` |
| 88 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift.md) | 678 | `declaration-track:e5a1f254d44060e02e186f19546b62e9f9ee15503004abe3a7c134a20c207840` |
| 89 | `theorem` | [lift_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-mk.md) | 689 | `result-track:95bc9e0ee4f9372c4bc9a9ce2fe7ca4ce3062894b0d22a9626878e684bb23fd8` |
| 90 | `theorem` | [lift_apply_of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-apply-of.md) | 693 | `result-track:676fe8e3a4d801a4d6830208c06364c2e09dca443850f37807c4176bcfc9ebd3` |
| 91 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-unique.md) | 696 | `result-track:1a5ee4b3d7377ed6288d2e1cf68e286d2c1f8a849b96c83de219116399bf5ae4` |
| 92 | `theorem` | [lift_of_eq_id](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-of-eq-id.md) | 701 | `result-track:aec9eda6da99c7e8ab031048feb03ade90670bcfaa00c206c7c7517256f7a448` |
| 93 | `theorem` | [lift_of_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-of-apply.md) | 705 | `result-track:4bf2ca8e57ba400c8430eded19c899d2e72b7ca6832a13c8f58afd740838a0aa` |
| 94 | `theorem` | [range_lift_le](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/range-lift-le.md) | 709 | `result-track:18908779a248554c760e7aba2362a070dc66d754f8cec74fdfda0fe0e892d846` |
| 95 | `theorem` | [range_lift_eq_closure](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/range-lift-eq-closure.md) | 716 | `result-track:e32ebac6ac7f128b4cab1e5b563169429458017cbec317047ce3c41bd75fa483` |
| 96 | `theorem` | [lift_surjective_iff_closure_range_eq_top](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-surjective-iff-closure-range-eq-top.md) | 723 | `result-track:e6f446b17d0c574124d26cc1c466f309cd59a657b5a4e81f70008937d88ad074` |
| 97 | `theorem` | [closure_eq_range](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/closure-eq-range.md) | 728 | `result-track:976f66118be5ae6acbb986bbd711b2e68046cd88d481f19b816ad1cbde02310a` |
| 98 | `theorem` | [closure_range_of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/closure-range-of.md) | 735 | `result-track:527bac6ce21804314a7e6bea8301264d9475c303962bfb6e157fbe789f985089` |
| 99 | `theorem` | [lift_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-surjective-of-surjective.md) | 741 | `result-track:eb8c0e553bfb5ec62dc9605d021aa2f06d1d975600abc7ac7b4f7d938081c65d` |
| 100 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map.md) | 756 | `declaration-track:5d896d38f44cf964961160eb4bbbe70731ff205ab104e3749e93ce2f4cb182a2` |
| 101 | `theorem` | [map.mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-mk.md) | 764 | `result-track:a008a5a908c42d021f22b5f3a3d038fec39194891734f2e6cf8de4594b49b391` |
| 102 | `theorem` | [map.id](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-id-source-edition-2.md) | 768 | `result-track:9b963ed38b885a9592a1ede222df1bcbd021f5a97e0b2f57e350a52228f7a805` |
| 103 | `theorem` | [map.id'](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-id.md) | 771 | `result-track:2e2760be97411d1bdd7f79486c4c3c86efde3aaa89ec1736cfb00de8909cbdc8` |
| 104 | `theorem` | [map.comp](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-comp.md) | 775 | `result-track:21004e576a31a84d28924f688a2c12a38a5a10ffa8cc1be9659aef27e67eed7e` |
| 105 | `theorem` | [map.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-of.md) | 780 | `result-track:ad1f70a7bd8faa8e93393c4648e2eccba23f02ed524cd1a03afe97a09e0c0366` |
| 106 | `theorem` | [map.unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-unique.md) | 784 | `result-track:42f6ba1baf223020aa127dc07be4a897c59d23d698125a0b7a4aae0d25332766` |
| 107 | `theorem` | [map_eq_lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-eq-lift.md) | 797 | `result-track:2a28fe3bd79ae44dcbd0e31748f00c4bb796974606fd0f3ec6e41739378a55e8` |
| 108 | `theorem` | [range_map](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/range-map.md) | 801 | `result-track:fbde966c8ada9c2538b1ab628564cafec1fbe6fb150fd815d312281fa30ac5b8` |
| 109 | `theorem` | [map_surjective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-surjective.md) | 808 | `result-track:579480bff4a7c77be911eb4e3a1b9433a83271cfde63551f099503a472bd3835` |
| 110 | `theorem` | [map_injective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-injective.md) | 815 | `result-track:9557b89c7592aef1c7cb64dc3e5b9b799fa3e0269212eecb8043a5c713ae83cd` |
| 111 | `theorem` | [map_bijective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-bijective.md) | 826 | `result-track:959b4fe1f2b8fd156896abbd1b37403565c334cdc4a90e6a7c066baf183cf7da` |
| 112 | `def` | [freeGroupCongr](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroupcongr.md) | 835 | `declaration-track:6d63575a91710e863bd98d4846724a716ab040c8c21584bc7ba30e79f3095b7a` |
| 113 | `theorem` | [freeGroupCongr_refl](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroupcongr-refl.md) | 843 | `result-track:55572def3ddf3643ca62b8b9d1a2451cf6d94581c207bb94e10ad6d164aae2b8` |
| 114 | `theorem` | [freeGroupCongr_symm](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroupcongr-symm.md) | 847 | `result-track:754d203206a93b4e44a69e11b57e5e924145ed58c2c7095365a98148f0419790` |
| 115 | `theorem` | [freeGroupCongr_trans](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroupcongr-trans.md) | 851 | `result-track:b568de7c68fef26f8a0516d418eaec1bc0d8db50c5b06aa979fcedf3e66dcfe5` |
| 116 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/prod.md) | 865 | `declaration-track:5208f903e4b6b164ca4248b6ccf7bbc7773e023452656e73dd7bf3e0d74472b6` |
| 117 | `theorem` | [prod_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/prod-mk.md) | 871 | `result-track:1c20431b81bb661ab448baa8e8617977c6e0c0681e6ebdcce2f72d88ca318c4e` |
| 118 | `theorem` | [prod.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/prod-of.md) | 875 | `result-track:88a2201e931e235805da638a0329d730a44acd87d5c64454f3c9baa4548d5fc5` |
| 119 | `theorem` | [prod.unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/prod-unique.md) | 879 | `result-track:56910d79b56d2000f5a2035d6d08fd93aecf0bdf0a9fdbdcd2e3ac850fab5f97` |
| 120 | `theorem` | [prod_surjective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/prod-surjective.md) | 883 | `result-track:a4b1e66467a9e2bed53307ce6c8bb58fc088e5fe115d27d44909951d8b755883` |
| 121 | `theorem` | [lift_eq_prod_map](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/lift-eq-prod-map.md) | 889 | `result-track:0f909aa30e11c44e07b31570e8486c947490577ff82b5762b274554344c67e3d` |
| 122 | `def` | [sum](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum.md) | 898 | `declaration-track:9f202a547d11b690f4dd734d9b65921600f1430888cdb3b766d4d91321c3222f` |
| 123 | `theorem` | [sum_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum-mk.md) | 904 | `result-track:ebd216a8107d03b93969426e37c9c26fb68bac8a7e980eb225433e301aac5fc0` |
| 124 | `theorem` | [sum.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum-of.md) | 908 | `result-track:d11a07add8aa8fb77651719b1fcc947cf831556a695fa0134d9df82935ecbcd6` |
| 125 | `theorem` | [sum.map_mul](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum-map-mul.md) | 914 | `result-track:f0e834f8d97f098f01bcf27efa38e5cb3057d4b906f941bee0efa7f564a66fd9` |
| 126 | `theorem` | [sum.map_one](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum-map-one.md) | 918 | `result-track:b38e411ae8563a666034b3e2c8c7771a92b16558d5cbecde4e66119e2f89d643` |
| 127 | `theorem` | [sum.map_inv](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/sum-map-inv.md) | 922 | `result-track:dd16066bf842641bca1d2d69e46dfe061f27bfe3511c38fc53ed221564c4c333` |
| 128 | `def` | [freeGroupUnitEquivInt](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/freegroupunitequivint.md) | 928 | `declaration-track:a0eba581510a7c1bdaee137b1a64bb52bda5f27b9a3abc1eb41788a7df664b33` |
| 129 | `def` | [equivIntOfUnique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/equivintofunique.md) | 951 | `declaration-track:bac76a1cde502c9e038de1355f6c5968f1ccf7afb9bb32c1b4d2a71318c8c125` |
| 130 | `def` | [mulEquivIntOfUnique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/mulequivintofunique.md) | 967 | `declaration-track:59b83068aca3e4151ae67bdd32f55648f2689e0dbd0a2cd8ab34538f08aa9034` |
| 131 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-2.md) | 975 | `declaration-track:1420ec1b1b9b47c4f5ed4e5914b278a9637690746fd993c9b637711f66b825d8` |
| 132 | `def` | [_root_.FreeAddGroup.addEquivIntOfUnique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/root-freeaddgroup-addequivintofunique.md) | 979 | `declaration-track:66c900467a8f5b2d84a0af06021f317d494df68e1729dcd25df1fe5a32a35293` |
| 133 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-9.md) | 992 | `declaration-track:be7e17735c47b80bc035f6ca12c4f1a28c1279fa1cebfe6b8e18be68dbc2c914` |
| 134 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-6.md) | 1001 | `declaration-track:8c2ab69df39fa98e9fa44b9df810488a6cde0729879fa9a5aa7b599f8e70cc02` |
| 135 | `theorem` | [map_pure](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-pure.md) | 1007 | `result-track:292684f80ef6b245e5e3f81efa4886369d727dbfd578c110d0970463ae00a32b` |
| 136 | `theorem` | [map_one](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-one.md) | 1011 | `result-track:204c8cd030e26498887a7e870492c7700f945369026c013c5915bff39300770e` |
| 137 | `theorem` | [map_mul](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-mul.md) | 1015 | `result-track:7b86b1032adc771882876f05acf76266e18a73b9b693c471983f938f40ded6b2` |
| 138 | `theorem` | [map_inv](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/map-inv.md) | 1019 | `result-track:17b080952185527e626d4e14f8067a7d79fa095c968c30de18369854c6634054` |
| 139 | `theorem` | [pure_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/pure-bind.md) | 1023 | `result-track:f71cdd67e3551cd7ab19467eaa1f33f2840780661f29ae16a70d745b22945692` |
| 140 | `theorem` | [one_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/one-bind.md) | 1027 | `result-track:9263f532d1e25c3234dd19435e7cc78463c645ef3ef992ccbf2a05bc1079618c` |
| 141 | `theorem` | [mul_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/mul-bind.md) | 1031 | `result-track:7c40e5fc5014fbdc5f565054c784e5005b0865a922cd1d498456d370db04429c` |
| 142 | `theorem` | [inv_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/inv-bind.md) | 1035 | `result-track:b11b08527f39c965b31f6881874da2120adf7bba4a8df8701c52f2a4bbf63880` |
| 143 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasicPublic.lean/declarations/instance-source-edition-10.md) | 1039 | `declaration-track:f38d054d8ebfdf1cffc83afc530ef5fa0e6cdb0b39ae48632b14a0c8a724fab2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0b46b91638bb5251e77f22ac3b9692da53fa90a645c0fc164c7c0be2a776f35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
