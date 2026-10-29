# Verification target: Non Unital Subalgebra Namespaced Coe Subtype

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096628a0c6fae58094b4b02571219715aa7e540c",
  "lexical_observation_count": 176,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096628a0c6fae58094b4b02571219715aa7e540c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.NonUnitalSubring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.NonUnitalAlg` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.UnionLift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/subtype.md) | 42 | `declaration-track:219beda26559829603bb885e25bfd296cfe26e7a0dd54cbc98272932422f7694` |
| 2 | `theorem` | [coeSubtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coesubtype.md) | 46 | `result-track:a3257cbab039b9dcd6020edf9c87887bf997e1c796d2282dfd9ebdd86e9e3880` |
| 3 | `structure` | [NonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/nonunitalsubalgebra.md) | 54 | `declaration-track:0d49640416de45dcc649d326219bf59a7086b5eaa9f69fb69136071160f5f810` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:5737083746b1ef41ba43f8b07f9304cc66621ba9aba057ca16dc985ace1374dc` |
| 5 | `instance` | [instNonUnitalSubsemiringClass](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instnonunitalsubsemiringclass.md) | 76 | `declaration-track:3be7930ce758c97542ed3c6280eae76c5896bfd94bd13691900a56b6c851368c` |
| 6 | `instance` | [instSMulMemClass](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instsmulmemclass.md) | 82 | `declaration-track:acd929bb98a5338c7af16148eaf66e122d47544697c0e5e30b9de16f3f82422e` |
| 7 | `instance` | [instNonUnitalSubringClass](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instnonunitalsubringclass.md) | 85 | `declaration-track:4dc4e8d5ca03e638134d50b34f41db7f5f4040415104dac882f3224d718522a9` |
| 8 | `theorem` | [mem_carrier](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-carrier.md) | 90 | `result-track:ef2eea1145ee68be9d3a701460fe1548ca4cdf173dd1cca4b69ed96f1e8add82` |
| 9 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/ext.md) | 94 | `result-track:ca63002d1b986efc74f99d04998ed5a792bbe10845d52376876f38ef755b1fd4` |
| 10 | `theorem` | [mem_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-tononunitalsubsemiring.md) | 98 | `result-track:42813e9746108ff4308342159945edfac0bd8060344c8b13486981ab0507d3c9` |
| 11 | `theorem` | [coe_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-tononunitalsubsemiring.md) | 103 | `result-track:233874673f4d17f39c0f186df11398e3ac2d38ee0dba807873a053f3a5399b6b` |
| 12 | `theorem` | [toNonUnitalSubsemiring_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubsemiring-injective.md) | 107 | `result-track:af9a1656efae37d4bc1cc1746c515fa8b0e06b19dcdaf02e3fe0bf6d856a29c9` |
| 13 | `theorem` | [toNonUnitalSubsemiring_inj](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubsemiring-inj.md) | 113 | `result-track:e69eeefc271a3a382cc39a3d330d90e50591e81ef401be84169bda2116bd7a76` |
| 14 | `theorem` | [mem_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-tosubmodule.md) | 117 | `result-track:4f90574cb0eda8d9ea6eefe257cdd520c99b17e845181e2617fc5c95057940f4` |
| 15 | `theorem` | [coe_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-tosubmodule.md) | 121 | `result-track:f3d9e2f485184b448d7e897eec06a8e32caeb779d709fd41cedf4fb3fe50ada3` |
| 16 | `theorem` | [toSubmodule_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule-injective.md) | 124 | `result-track:2d7967fe54f9ca6c222f3e00611589fdd90be4f68d055af12980a95b33bb7072` |
| 17 | `theorem` | [toSubmodule_inj](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule-inj.md) | 128 | `result-track:ef50b8785b90cca2bc39dd1918a1c0ad5f8aeb504ffceb735803e4bd368b17c5` |
| 18 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/copy.md) | 133 | `declaration-track:7db453042531dd43830240dca7c0a0973afc777de916e6239cb0f7dc2f2635ab` |
| 19 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-copy.md) | 142 | `result-track:575d04f7a2664f75f7f483dae80acabc87718a8b697daa7688775b3e35d66db9` |
| 20 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/copy-eq.md) | 146 | `result-track:1aa2e813adfaa1579db3ee8002b21ee99f1a87492438463b54f32b4d16c2ab61` |
| 21 | `def` | [toNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubring-source-edition-2.md) | 152 | `declaration-track:e99446a4b994ae7c6d10aacb8543f1346abce3795e969eb65b4a56d6d1ef3d07` |
| 22 | `theorem` | [mem_toNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-tononunitalsubring.md) | 158 | `result-track:327c0fb8646eb6a23ba5571fa4359f968724afc15db6212de69864a4b6293b40` |
| 23 | `theorem` | [coe_toNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-tononunitalsubring.md) | 163 | `result-track:e6a02dabe07685677d103980b8340ef3fb9ee03c1a040b2b077c93817b41211f` |
| 24 | `theorem` | [toNonUnitalSubring_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubring-injective.md) | 167 | `result-track:11bf5f349565479efaaffeb3251131c3947542b01504acdb3b5cdc3f7a88fe96` |
| 25 | `theorem` | [toNonUnitalSubring_inj](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubring-inj.md) | 172 | `result-track:1ec86777dee374477ffd7ee34bcdd11dc4fd94a74033f28a9feaba30f3a4d42a` |
| 26 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:98589f03026a7201cc663ee6397dd8db245f6f2bd48f58ff6a22d0a8ae3e0453` |
| 27 | `instance` | [toNonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsemiring.md) | 185 | `declaration-track:261514a9e53e96a7d7f5c06bc5f54d040c8614b8c378141199269227232c831c` |
| 28 | `instance` | [toNonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalcommsemiring.md) | 189 | `declaration-track:c0d06b9bd511444879c7b56ef5dde03157d7deeabcb595c0445a478fbf211edb` |
| 29 | `instance` | [toNonUnitalRing](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalring.md) | 193 | `declaration-track:3d4ac58a4a7082dd425e31db27e0c8d95a4affbfbb02b71ddc38c0c5534a1a35` |
| 30 | `instance` | [toNonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalcommring.md) | 197 | `declaration-track:a10eb0b966abfed6a5b9c562713ace84819aa71417dd51a9c0f6a8a6c40e1851` |
| 31 | `def` | [toSubmodule'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule.md) | 204 | `declaration-track:b570aab05327f36f27c78b65cd99a08595873e827a46e077e9b01e32cba73951` |
| 32 | `def` | [toNonUnitalSubsemiring'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubsemiring.md) | 213 | `declaration-track:31400b6816a4aca307bba9cf07bfe1425d633fb020866c16399af5f344820f28` |
| 33 | `def` | [toNonUnitalSubring'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubring.md) | 222 | `declaration-track:6c9e799f1e1e464cb730e8c637009a8e8fde996efd0cf63f5ccd64e301a55d37` |
| 34 | `instance` | [instModule'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instmodule.md) | 234 | `declaration-track:6936e46eaa1aab928d1f1167de4fa58f8f5f29db20ab7268aed5ca8659d9eb4e` |
| 35 | `instance` | [instModule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instmodule-source-edition-2.md) | 237 | `declaration-track:7cc6611221d9d97a05a18412779b9df5791dd520d373ec31c86023219f057a9f` |
| 36 | `instance` | [instIsScalarTower'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instisscalartower.md) | 240 | `declaration-track:1cdff69c5786ab17c6ccccdc2f4e7011ded3a49195c7d4aed1dfe144b9a0c676` |
| 37 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instance.md) | 244 | `declaration-track:3cd907f6f4ac23408be0bde6cc033cdf4fe45de660ec097ef778f71f55dd6e44` |
| 38 | `instance` | [instSMulCommClass'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instsmulcommclass-source-edition-2.md) | 247 | `declaration-track:bcea7bb3cc846b551d52d22d04e19863eb84d8dfda6fa4970734090f0f67d858` |
| 39 | `instance` | [instSMulCommClass](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instsmulcommclass.md) | 251 | `declaration-track:8cc5cefd767d29fdbd2123b7752bd41f833ffd51cf37a8d8312918188bb84d8b` |
| 40 | `instance` | [noZeroSMulDivisors_bot](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/nozerosmuldivisors-bot.md) | 256 | `declaration-track:d32050160726511104b7b7aa7ffe18bef2ca89bfb203a31d477b486a7e4f14ef` |
| 41 | `theorem` | [coe_add](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-add.md) | 261 | `result-track:198c8f7d08f256a57498aeb9dd20db5e2d3c5af75267a07e89c8572db081ba8f` |
| 42 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-mul.md) | 264 | `result-track:1396bf0720356795cb66619794bf44fd15e9a5d2848aca0b3bd339ad085883ca` |
| 43 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-zero.md) | 267 | `result-track:a8b6e0a683c60a31748e037b9e1f0dc0c28fe4bdbec0d81af4564048de30485e` |
| 44 | `theorem` | [coe_neg](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-neg.md) | 270 | `result-track:6a1c3cda63afab4b7368cfcf0c7eaa1a17ebc7bb7b46d5d8e4d7c57d1c146af5` |
| 45 | `theorem` | [coe_sub](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-sub.md) | 274 | `result-track:7d96a5b739910372b5ed1156e4c54820a9eb86f2d1f2fc53270e16f714671cd4` |
| 46 | `theorem` | [coe_smul](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-smul.md) | 279 | `result-track:804ee30c766439f3ae9790b3ef40db3123b2de0a2517a579a21d2d8a6f289385` |
| 47 | `theorem` | [coe_eq_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-eq-zero.md) | 283 | `result-track:c78e7ae44320fdcb89136e11f20eb60673e3ca2c43db1cd8f3dc15bb26f457f2` |
| 48 | `theorem` | [toNonUnitalSubsemiring_subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubsemiring-subtype.md) | 287 | `result-track:a347a8f4e7380fa2e39eaa5573dd6f20f9ad5e52cec7622afb0f400b379ac5df` |
| 49 | `theorem` | [toSubring_subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubring-subtype.md) | 292 | `result-track:2fac393034c17b22504d09aa42a38fc846c7b110196d1d420b2774c247dff90e` |
| 50 | `def` | [toSubmoduleEquiv](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmoduleequiv.md) | 299 | `declaration-track:dae0aa6f3ede88f2838e21b2bc31bc286dfd665777bcb9be02867130dc858fee` |
| 51 | `def` | [map](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map.md) | 303 | `declaration-track:8e7308145b51bc14121210028ab62e7cc0d839115b9d556922367dbb81181ee6` |
| 52 | `theorem` | [map_mono](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-mono.md) | 309 | `result-track:a61d9a488fa8a69826d00a633d4280c346ad397b8b71a68e71048cfaac65007d` |
| 53 | `theorem` | [map_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-injective.md) | 313 | `result-track:cdd1cb1fecdec82e57999be8e286230a40c9a5cb90486a7b2973cc8e3435c922` |
| 54 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-id.md) | 319 | `result-track:ddc01d60bac2ae9385226d8ed20066e51db479cd9f2d310fc1306d68100aea35` |
| 55 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-map.md) | 322 | `result-track:c18625a43ca62fd83f4372425fa6f47b202fb568510415d3ebc066d898112555` |
| 56 | `theorem` | [mem_map](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-map.md) | 327 | `result-track:2ab4657720242283c453754f791b55f17a4f6c4136e7856e8c2f0ef822431d96` |
| 57 | `theorem` | [map_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-tosubmodule.md) | 330 | `result-track:79caabd2fad6e3d344f8bd55f2711b488d3c9b261e9a1b680a95b22d28e66dbb` |
| 58 | `theorem` | [map_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-tononunitalsubsemiring.md) | 334 | `result-track:001628576db54a409d9c65beb872736be328e2367546a9004e24301afd04bda4` |
| 59 | `theorem` | [coe_map](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-map.md) | 339 | `result-track:cafd175a04fb7244261fcb7214659d670c966d049bce9697d8b575759176518c` |
| 60 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/comap.md) | 343 | `declaration-track:e4586279529f1f55a2fc0ea3c44811aece2c1da0b8a7fb08c4b22f1f19ec4872` |
| 61 | `theorem` | [map_le](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-le.md) | 348 | `result-track:b611a2718193b31931e84b91e2c5b42e3118081fbc33fff067053fb9e046f7fc` |
| 62 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/gc-map-comap.md) | 352 | `result-track:d7aadf06c3f1933c84cb51058ef4dab9871c0a966bd282338b0866c78c728cc6` |
| 63 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-comap.md) | 357 | `result-track:e8300e71cc2f1d18d2e98e340a7c6c7a3577daba8e268e6fba5c0908ea83cb1e` |
| 64 | `theorem` | [coe_comap](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-comap.md) | 361 | `result-track:b44fbd4aa64a436994d5a4ce78b988ca203152475bf27fc1765b548eca187a9c` |
| 65 | `instance` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/nozerodivisors.md) | 364 | `declaration-track:f0553bb6f453bd2f44881880dfe7effb5ac7d1b3ca046b96cea2ff91fa00e1b5` |
| 66 | `def` | [toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubalgebra.md) | 375 | `declaration-track:1d058c967d3a2ebd5830a027d9ec4467153da68850e372ddce2f13a81d2087f9` |
| 67 | `theorem` | [mem_toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-tononunitalsubalgebra.md) | 381 | `result-track:eb3de58f3554be771008fb309982bef3ceb33c9f2a66e3c5040c6e1b7b52d6c1` |
| 68 | `theorem` | [coe_toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-tononunitalsubalgebra.md) | 386 | `result-track:503a9fc5ed83607965f57d6a2dabd27e20b9c09810d2792095cc84d80d5d4a9f` |
| 69 | `theorem` | [toNonUnitalSubalgebra_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubalgebra-mk.md) | 390 | `result-track:550e5d00994dc26a9f1134d4f759779dec0468881a1513c8145495fde4a3a872` |
| 70 | `theorem` | [toNonUnitalSubalgebra_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubalgebra-tosubmodule.md) | 396 | `result-track:fc42f252b47073574f9195d75ae30d7e892f3e6105a49f0ec1afacfe6a5da433` |
| 71 | `theorem` | [Non Unital Subalgebra Namespaced Coe Subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule-tononunitalsubalgebra.md) | 401 | `result-track:675136d6164055fc7f8d45ca6e9d2cc0ba8b8e87fb0772d823f8561fffb6c3fa` |
| 72 | `def` | [range](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range.md) | 415 | `declaration-track:3e495f282e34466951c374eeb45970e93de1a7410b77d7c4d7501ec6a4db94c1` |
| 73 | `theorem` | [mem_range](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-range.md) | 420 | `result-track:e85c2fa249e03b0276a4d0fadf1752b18f51c48a7bfc48a60115487cc7af1618` |
| 74 | `theorem` | [mem_range_self](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-range-self.md) | 424 | `result-track:c4de0a05a4d33bb28d7c75da62a6c77dc57e3dba916796e62fae5fea0ff69280` |
| 75 | `theorem` | [coe_range](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-range.md) | 429 | `result-track:4f0ea274bf81495ad273951040eb81bb3df7f6a0b39dfd304382b3a349ae919d` |
| 76 | `theorem` | [range_comp](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range-comp.md) | 435 | `result-track:4a1d988bac92944ceb3e1f156750d945c9953b187b4ea8a0b5d7735ee95a9b9f` |
| 77 | `theorem` | [range_comp_le_range](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range-comp-le-range.md) | 439 | `result-track:33841d6ce47296cf1c1721a3572da303669762a415453555e288f01b0f4f9022` |
| 78 | `def` | [codRestrict](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/codrestrict.md) | 444 | `declaration-track:0f3880860ef7c0cb79bada55c84ea1c626257cea4426e6cb6a141b12b4c74e61` |
| 79 | `theorem` | [subtype_comp_codRestrict](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/subtype-comp-codrestrict.md) | 449 | `result-track:5a15c422388bc8114cc6e39410525dc7d9ef6228d3523383758f23fbdf55a2c5` |
| 80 | `theorem` | [coe_codRestrict](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-codrestrict.md) | 454 | `result-track:041ce41065c9046e7203a643316f3b16c764495e3bed8b136069d4613e598b4e` |
| 81 | `theorem` | [injective_codRestrict](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/injective-codrestrict.md) | 458 | `result-track:6cc7a48b8d18f7ef46dd444a04ac2ee9848e34ca55ef0702e450859623ba43a1` |
| 82 | `def` | [rangeRestrict](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/rangerestrict.md) | 466 | `declaration-track:89237672466a720eebf727d3704eaa0f6d0034004a27e8bb00e11d1a0f209774` |
| 83 | `def` | [equalizer](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/equalizer.md) | 470 | `declaration-track:04b007c03a6e5034dc7d815456a2f2e1d0204afcb17d1095d9c6c252b6ccf7a8` |
| 84 | `theorem` | [mem_equalizer](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-equalizer.md) | 481 | `result-track:e73456e280693e090d809230a2709b69cb61b13c34cb39da1a50f79cd8dbb083` |
| 85 | `instance` | [fintypeRange](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/fintyperange.md) | 488 | `declaration-track:d12ab6dcc77cdb1b2135702a4d5055e4cab11417f3afa40ab8d61191667a4b6e` |
| 86 | `def` | [adjoin](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin.md) | 503 | `declaration-track:44cc61a069e15b001155d4fe653d63a999ebe9a1f9ff966fa5bcdcf8095de4fb` |
| 87 | `theorem` | [adjoin_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-tosubmodule.md) | 520 | `result-track:359c021e6cc5118db02df2a9f291ac7d1d6993ffa28afb8e20ad0c3f7a3da36e` |
| 88 | `theorem` | [subset_adjoin](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/subset-adjoin.md) | 524 | `result-track:2f35fcb5b0dd03995da05e0fc6f728e5d65b7f7c8769ff2c24adaed350509a54` |
| 89 | `theorem` | [self_mem_adjoin_singleton](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/self-mem-adjoin-singleton.md) | 527 | `result-track:4adb1b61f6120244b9743f02c9c2d4c1212eaa486b10ad1679d0e113e24d4da4` |
| 90 | `theorem` | [adjoin_induction](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-induction.md) | 534 | `result-track:167613606833888cb4be256626c2582ff503ccb964ee17485a42ec46caab0563` |
| 91 | `theorem` | [adjoin_induction₂](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-induction-source-edition-2.md) | 540 | `result-track:58c8e57c441c85bb9dca9c2707b8b8efbfd918034ac828f197320084cdff8e7c` |
| 92 | `lemma` | [adjoin_induction'](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-induction-source-edition-3.md) | 555 | `result-track:da1fb8bdd700281f5673a8c86f55dbee4a26f27ec6a6f417095a09f70b19362c` |
| 93 | `theorem` | [gc](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/gc.md) | 570 | `result-track:6b4aedce176f7b20aad0104df693b65896354ce1c3f0423055e9570d34f2d082` |
| 94 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/gi.md) | 578 | `declaration-track:6410e0d87666adbab725546d5cf7c61ef7155227e670ce225306f891c2d2f7be` |
| 95 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instance-source-edition-5.md) | 585 | `declaration-track:c3bd437e43a4f7f4b1fddbf335258546fc4d2fb5d0818c816b984581b63daa10` |
| 96 | `theorem` | [adjoin_le](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-le.md) | 588 | `result-track:8aa9ffa35a9a74ca19c80f1e3dbecb1d2a633db58a5af4e7f7f8c4c88a823127` |
| 97 | `theorem` | [adjoin_le_iff](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-le-iff.md) | 591 | `result-track:f9ff3964e10c824305d2c09dca9cf96b9487d922f4dd8b9ac7acea27c67187f2` |
| 98 | `theorem` | [adjoin_union](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-union.md) | 594 | `result-track:9646dc9c15e954cd45f56d44843ccf7cd26bf9754311adab5cc0cad42533192f` |
| 99 | `theorem` | [adjoin_empty](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-empty.md) | 600 | `result-track:841ee1d0a291b4a724d235593916381c6704cbb42985eebd0c87341b01d87b0a` |
| 100 | `theorem` | [adjoin_univ](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/adjoin-univ.md) | 604 | `result-track:32e96a26f2264c0cdd06c3ff22eed45f82b25eb7a01b98aee485eed3c84550b7` |
| 101 | `theorem` | [coe_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-top.md) | 610 | `result-track:ed72f7e50ed6fcad80cdfce60ccd9e579a0b93a0fe85708224734ca7c89640d6` |
| 102 | `theorem` | [mem_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-top.md) | 614 | `result-track:5f13811cf0029bbb5b1aeb96280296dde3c49510f6da9fb33d73c6880b5c0d18` |
| 103 | `theorem` | [top_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/top-tosubmodule.md) | 618 | `result-track:85841dde830ca9c39e69dd3960c2b5e5f88efb71e7c4aa923a8302134c98d439` |
| 104 | `theorem` | [top_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/top-tononunitalsubsemiring.md) | 622 | `result-track:0163fa35b84ad56e977b5a4669e749b9767332323be3a6641d73d752706e7a83` |
| 105 | `theorem` | [top_toSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/top-tosubring.md) | 626 | `result-track:5eea49e13e012a3d6aae42bd7ae9247e1fc2d789b33a71a107121de740df9afd` |
| 106 | `theorem` | [toSubmodule_eq_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule-eq-top.md) | 632 | `result-track:706738b06911eba4ed409db9bd31f6a14bea52fec0dac3e6a12c00cbbf63886e` |
| 107 | `theorem` | [toNonUnitalSubsemiring_eq_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tononunitalsubsemiring-eq-top.md) | 636 | `result-track:a2dbb1e7d147ca186894095998e69ffef2654acde223a140984a89459cfb26a8` |
| 108 | `theorem` | [to_subring_eq_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/to-subring-eq-top.md) | 641 | `result-track:8ee8ad7346e11b1f9ecdeace7b271323349eb196a8bc11074202eedb0912920c` |
| 109 | `theorem` | [mem_sup_left](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-sup-left.md) | 645 | `result-track:a4b8f96ca64bff605c55bfb0999d629b6d285d7bec6f6d0c5a366fec1de86004` |
| 110 | `theorem` | [mem_sup_right](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-sup-right.md) | 649 | `result-track:68125f533f1f407f503b7ceed59177a91e4c3f733095c7d4f490733af9a0470a` |
| 111 | `theorem` | [mul_mem_sup](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mul-mem-sup.md) | 653 | `result-track:cdbd5c4cf1e42aae46f69de0285072ffd381c9c4de560ea20ea1e4fe9925376f` |
| 112 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-sup.md) | 657 | `result-track:94ba0a67c7b6c51b2a6108687bc57e3d7fac4dea2be3fd2fb1e5eb2ca0c2b49c` |
| 113 | `theorem` | [coe_inf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-inf.md) | 662 | `result-track:6b5e2d871b3ca83c7156b4dc125ef45dbde9acbef7f1983cc7bf1b8410b3b6ef` |
| 114 | `theorem` | [mem_inf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-inf.md) | 666 | `result-track:f86b4471682629b8c3e257e588da7144f87864c931e74b08c421b3477db872de` |
| 115 | `theorem` | [inf_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inf-tosubmodule.md) | 670 | `result-track:ec0973ebb349b0bee794d51a6fee22ec384e262f6f95835fa39e835bfd9da23c` |
| 116 | `theorem` | [inf_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inf-tononunitalsubsemiring.md) | 675 | `result-track:cae9fcaa3394fee3a3eac2129524f4eb0684222dd3812863a1c080984f2ca12f` |
| 117 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-sinf.md) | 680 | `result-track:aebbda9ea8620d7ce55a95e317e8feca007dd3169783878ac0d5fd59916516dc` |
| 118 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-sinf.md) | 683 | `result-track:bcc030ac9c8b1599b02752e27b69b10eb19ada2a67c7e9d8d3477b0804311f89` |
| 119 | `theorem` | [sInf_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/sinf-tosubmodule.md) | 687 | `result-track:346e5c2952abd4f085c49f1fda00972581d9fac7fa763a0b44d21df7d7885e2c` |
| 120 | `theorem` | [sInf_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/sinf-tononunitalsubsemiring.md) | 692 | `result-track:2386bd54776a25d1b4c372cd015fdfd229070fef556ce4bcfb2d1f11b123f4f1` |
| 121 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-iinf.md) | 697 | `result-track:9e121135a9264db6ff4fd1a8b75bab7c8f11664bb1fa8769c0336519600ab20d` |
| 122 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-iinf.md) | 700 | `result-track:d3c2fc611b645b7eb824ec47e455561b8f70e6c3d9d284c99e3ab6281938a007` |
| 123 | `theorem` | [iInf_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/iinf-tosubmodule.md) | 704 | `result-track:b745ad962caeb7a393a43dff07b3b3f20b53980e0caf5c2b075160b87e904c69` |
| 124 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/instance-source-edition-3.md) | 708 | `declaration-track:63286998be0a36ffba3abb88bc357601a0eec5b45812b4c1911a3fefe4826976` |
| 125 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-bot.md) | 711 | `result-track:822eae7596299aa5a4263d90852b7a2016fc76d3d3605895b5cf9473d6e441cb` |
| 126 | `theorem` | [toSubmodule_bot](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/tosubmodule-bot.md) | 716 | `result-track:bf6cf158e0e6fb83d8245afcc54a3cd9dd6090c7412291319308181903df5b19` |
| 127 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-bot.md) | 721 | `result-track:f24bd4db2079cb3993fcf3b5aca4e77b775c3c3eeeb6b03355ff4739abdd58eb` |
| 128 | `theorem` | [eq_top_iff](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/eq-top-iff.md) | 724 | `result-track:21ff0048b86e39ffa5f8b14a62d5c9b3ea6e819021df5bac7c10db0693ac88f0` |
| 129 | `theorem` | [range_top_iff_surjective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range-top-iff-surjective.md) | 727 | `result-track:d409afcba1ec8c08d30768a67a906fcefb06a49ffc1e0cb617d1477279af9309` |
| 130 | `theorem` | [range_id](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range-id.md) | 732 | `result-track:46b2eb85be4b6dab5d8370b7039210b790c37bc54da9275f096368893f0ac207` |
| 131 | `theorem` | [map_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-top.md) | 736 | `result-track:f49d4a42358386e0436f2f7869da4818f322e45396f446b9281b91842ebba8c1` |
| 132 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/map-bot.md) | 740 | `result-track:034029351646b797747c3d5f52d464d27ca2b0239cbdfdc360d66284c14ba242` |
| 133 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/comap-top.md) | 744 | `result-track:af8b324c0b5527f0975a07db5fad82ef6c32fdcd3e86733d710da14056f712d7` |
| 134 | `def` | [toTop](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/totop.md) | 748 | `declaration-track:cbfdc1fdc2c4b1e35fc639cf14a11bfcbbc30a98f83ea5136a49c8cbe5b31e92` |
| 135 | `instance` | [subsingleton_of_subsingleton](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/subsingleton-of-subsingleton.md) | 765 | `declaration-track:2146589c69a6ed521b2125dd06d38c58e858653da69d5c1722214fa1a70a8460` |
| 136 | `instance` | [Non Unital Subalgebra Namespaced Coe Subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/subsingleton.md) | 768 | `declaration-track:a5987e191a7f640016ce3a00085e9a8827323fd2322af3f0a5fafe247b3128d9` |
| 137 | `theorem` | [range_val](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/range-val.md) | 776 | `result-track:d0a4a407cafd9a76c9edaeef850e50479d24ba12e4fb6468c788cb7687a8f27f` |
| 138 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion.md) | 782 | `declaration-track:a2bf0faedcaa3a36fd2c2d7a539fafaf3ddb1c81e9870d30ab334034c882a6bb` |
| 139 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion-injective.md) | 790 | `result-track:1662b6676fd7b1ee69d6d72ee8a33fea2f647defce8548aa3fa2a4bcb95c45b9` |
| 140 | `theorem` | [inclusion_self](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion-self.md) | 794 | `result-track:8fd9b4f5c88d72e4db2b90fcea161d5fc3a3f356902b4ff0b1fc639765d495b0` |
| 141 | `theorem` | [inclusion_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion-mk.md) | 799 | `result-track:e367b09c002ec0ae67801ccc63909bd207f58be5d77741046ae6de55afcf70b8` |
| 142 | `theorem` | [inclusion_right](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion-right.md) | 803 | `result-track:a993578cb15cfb8f330e673cf8e01036f189f5767841f193440313b428d4ccb2` |
| 143 | `theorem` | [inclusion_inclusion](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/inclusion-inclusion.md) | 808 | `result-track:8e5f120689c98debdea8a185ad6a27e2fbd2327bfa8f50110a0e34b7f0a8876a` |
| 144 | `theorem` | [coe_inclusion](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-inclusion.md) | 813 | `result-track:c4e07a021c520350d277f61b6db5acb1c5d7c1a26e92e022d234795a48bc5a31` |
| 145 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/prod.md) | 822 | `declaration-track:d625fc79cffc4732e2d48fb2d61eabeb876b49d02a1afdfbe504a3cc438b5765` |
| 146 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-prod.md) | 828 | `result-track:f298c0a5eec0aaad90a405d0daeebae2dbd0036e5aae154acc114e3717d794ce` |
| 147 | `theorem` | [prod_toSubmodule](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/prod-tosubmodule.md) | 831 | `result-track:a183db3aa87044b1322e819e0f5fa53d77ce4d191dc112d7637a907f9cd52889` |
| 148 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-prod.md) | 835 | `result-track:1584c0c328941a33ed601d893d514880f8316fefa2f07492144fad47dc79ef31` |
| 149 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/prod-top.md) | 840 | `result-track:ff40679f1e0e487055cc84805c7d594e93d4c00c9eaafc7775b2d1dfbec9abb3` |
| 150 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/prod-mono.md) | 842 | `result-track:67a83410c8f7b9143af5c71ae8ab8dbbb4750907561e3179043cbcf7be9c9dd8` |
| 151 | `theorem` | [prod_inf_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/prod-inf-prod.md) | 847 | `result-track:b634e30a16576f73ced2b21215be63aaebb0b49e22fa14d95e5d45117384a213` |
| 152 | `theorem` | [coe_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-isup-of-directed.md) | 857 | `result-track:ab20d8602f351ed3f93fc31bac4c125007abd390392a92af6ab7c289b5104115` |
| 153 | `def` | [iSupLift](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/isuplift.md) | 885 | `declaration-track:6df5a118a3ebcc7eb2b24b1f96e5b3211703f423c9c5bad0d9556a9cd923a9b2` |
| 154 | `theorem` | [iSupLift_inclusion](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/isuplift-inclusion.md) | 923 | `result-track:1546ca5581b3c4768febdc3a78e18972a3d09f99576abb173fba270dab2c2abf` |
| 155 | `theorem` | [iSupLift_comp_inclusion](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/isuplift-comp-inclusion.md) | 931 | `result-track:fa959b4bfc6b5f5ad1d00c10954673c5fa38efaf3f52014216034e0088d61fb5` |
| 156 | `theorem` | [iSupLift_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/isuplift-mk.md) | 935 | `result-track:15c1eeee87ca7b3aa7bfe675f142586aef6b630b04937618778e66e5276bd036` |
| 157 | `theorem` | [iSupLift_of_mem](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/isuplift-of-mem.md) | 941 | `result-track:3075d5b543a6fcfeb5b0e6b341b2438dbf49e09d04455a2d54f61a25b46064d6` |
| 158 | `theorem` | [Non Unital Subalgebra Namespaced Coe Subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/smul-mem-center.md) | 953 | `result-track:a8044026f4384528213d60d2572ad98936ea946bba7f74410637163b2f11200c` |
| 159 | `def` | [center](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center.md) | 963 | `declaration-track:fcff5c9ac8bc940e3afccda838a4c47b0aa93f5713223a72973950ad2f0fc53e` |
| 160 | `theorem` | [coe_center](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-center.md) | 966 | `result-track:f3fb0c71d6e7a1cfe68ba9bedf2eb16925c54302aa8fc4dfc0bc5412ed8cca3b` |
| 161 | `theorem` | [center_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center-tononunitalsubsemiring.md) | 970 | `result-track:8ea647d56a312ddd1e147fc078f4552326524b354454c8e45e5b3a93eb2c6baf` |
| 162 | `lemma` | [center_toNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center-tononunitalsubring.md) | 974 | `result-track:5750b35b783407e7be56686549f748dce37267407e749e18267afa50813b2167` |
| 163 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center-eq-top.md) | 980 | `result-track:4dcdb203b42d3ab4c97faa4ccbb1f17a79c4a3a4e9996c9f9b614c6018c66171` |
| 164 | `instance` | [center.instNonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center-instnonunitalcommsemiring.md) | 986 | `declaration-track:7210cd65280189c855f792b5eaf9cc3e2ee3d5baa9d70ad3d4a96d12a38428ad` |
| 165 | `instance` | [center.instNonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/center-instnonunitalcommring.md) | 989 | `declaration-track:741a1a60b39134b053159a3d963d736ee19c2aba15529be867279edad019e0be` |
| 166 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-center-iff.md) | 993 | `result-track:c8716b5a430aee6cfe647c1c1155fad68e349268916f2040b408a74b97145e1b` |
| 167 | `theorem` | [Non Unital Subalgebra Namespaced Coe Subtype](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/smul-mem-centralizer.md) | 1004 | `result-track:a84123f4411d2bf77d9c9a5100735d89a3a765bf38acfe5f2fe8677f772b09f4` |
| 168 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/centralizer.md) | 1011 | `declaration-track:e049a100776f84b0c38eef592cc513c6450cdd26c1da6613eb03b01789caee2f` |
| 169 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/coe-centralizer.md) | 1016 | `result-track:9de801baccdd48ee144a701d41f9fc8dac1ddd2d4e876b879e1c72798090815f` |
| 170 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-centralizer-iff.md) | 1019 | `result-track:9004e859520a0d9411e4d1d7cd596a02b9a738c871b394745141c9a22e22eabd` |
| 171 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/centralizer-le.md) | 1022 | `result-track:13dc90bae1957bf5fdc2e5d9892d83710f7efa5850163a29843a855e5dbb0b96` |
| 172 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/centralizer-univ.md) | 1026 | `result-track:3548598b124359f64bb667e4a0d2ca5710f64aa5769647e472becdeffc040ce0` |
| 173 | `def` | [nonUnitalSubalgebraOfNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/nonunitalsubalgebraofnonunitalsubsemiring.md) | 1038 | `declaration-track:145ea900229aecbbd9a4eed0e36a6b72b1cd981aa7898b7211cf5a09c530535b` |
| 174 | `theorem` | [mem_nonUnitalSubalgebraOfNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-nonunitalsubalgebraofnonunitalsubsemiring.md) | 1044 | `result-track:b99fd9cc65eb09df94f9709575a23ff585eda5eae32dd5d8ac46a25f2ad0f1d3` |
| 175 | `def` | [nonUnitalSubalgebraOfNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/nonunitalsubalgebraofnonunitalsubring.md) | 1055 | `declaration-track:b0115f48590436340cec9e651fd6b319d363c294fb6dfd8c17a2ad079129adee` |
| 176 | `theorem` | [mem_nonUnitalSubalgebraOfNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedCoeSubtype.lean/declarations/mem-nonunitalsubalgebraofnonunitalsubring.md) | 1060 | `result-track:e51316d84cc80159d85b08292830c51253fc2a3b694501179825daeebb8d88ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f982963175c78831364e2a4708daed589860c6e019c133ae94eec35cbdc817b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
