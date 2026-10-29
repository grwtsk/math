# Verification target: Free Group Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbfcfb52e251c4e1efad45501fe0bd45c4e8d0df",
  "lexical_observation_count": 121,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbfcfb52e251c4e1efad45501fe0bd45c4e8d0df`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeAddGroup.Red.Step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freeaddgroup-red-step.md) | 63 | `declaration-track:e96294d4f8071c374f6b878ee45cc0810fdaca4dfd863bf648c1e3586292d9ca` |
| 2 | `inductive` | [FreeGroup.Red.Step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroup-red-step.md) | 70 | `declaration-track:8099b96b8aa3322dc3d76b4ecdff2fb330ac728d4d66ddce3beb27c83d5e2bea` |
| 3 | `def` | [Red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red.md) | 81 | `declaration-track:7010f1870fa2afc73c56f216fdc5d99d43628c2727cba64ff04b887830089aa9` |
| 4 | `theorem` | [Red.refl](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-refl.md) | 85 | `result-track:8357a76944f56a718ad9f8610161680a5256886ed1765cfdb8ec538eff6e96df` |
| 5 | `theorem` | [Red.trans](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-trans.md) | 89 | `result-track:1f26fac7e27003868fe9eb0171cd9ed20e9013af267256e644224ef33e09d238` |
| 6 | `theorem` | [Step.length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-length.md) | 98 | `result-track:d2d8f26e91a642a3db2756267ab1433735a646c937f78b7884c158f4cd37974b` |
| 7 | `theorem` | [Step.not_rev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-not-rev.md) | 102 | `result-track:c3dc6d56fc0eaadd4ef6cb566ef0b4c8352d94c7f469bfcea5d25d05cb3a2274` |
| 8 | `theorem` | [Step.cons_not](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-cons-not.md) | 106 | `result-track:78fea02644e458131dbc835102a0a8c6df9ed3073931742f01042b9837294904` |
| 9 | `theorem` | [Step.cons_not_rev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-cons-not-rev.md) | 110 | `result-track:2a333cc91a887f40666489b2e5a4d74eafe415581ce594472e64860bd8f6f7ba` |
| 10 | `theorem` | [Step.append_left](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-append-left.md) | 114 | `result-track:16c1640d0e6075d7fb8291bd51577f57ec5bf3576ae839fe7f33209b8bf9c93f` |
| 11 | `theorem` | [Step.cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-cons.md) | 118 | `result-track:0b1b056a89e3045ff79457b38846522422508f06c5c6d83f93d2ae15793cfd05` |
| 12 | `theorem` | [Step.append_right](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-append-right.md) | 122 | `result-track:0fc19238be3253c1db8866f82b545e283e4c8c79dfba706752b8b2773b8ad31a` |
| 13 | `theorem` | [not_step_nil](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/not-step-nil.md) | 126 | `result-track:93d3f753eac1593696fde1b5bd1cbce217b2b1fb81a2c461f9c841c393f70eb9` |
| 14 | `theorem` | [Step.cons_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-cons-left-iff.md) | 133 | `result-track:661fe1c1fe5ad3209dfe01be27374ed104a21712bec791213919cd9a6be7588e` |
| 15 | `theorem` | [not_step_singleton](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/not-step-singleton.md) | 143 | `result-track:bfbf87c0e314d51d3a354f500f02dec65c2dc079327f3ada0d9dc17047300010` |
| 16 | `theorem` | [Step.cons_cons_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-cons-cons-iff.md) | 147 | `result-track:4b7105621f38e7e612e6bd2ae0a6d29088971f24ee63c1fe97bd5e337441dcb5` |
| 17 | `theorem` | [Step.append_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-append-left-iff.md) | 151 | `result-track:3381a4db34b71a3b12ce651e6555d2ea04680878b9d810f6f13f0a1f733057b6` |
| 18 | `theorem` | [Step.diamond_aux](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-diamond-aux.md) | 156 | `result-track:4beb57bb3b25ff98ac92a016cd705e6feecc614248fd7884704bf6b155124b0f` |
| 19 | `theorem` | [Step.diamond](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-diamond.md) | 174 | `result-track:24071da515a1bc4884782cdfdf721400b219c01a13e30feee8562f1642525959` |
| 20 | `theorem` | [Step.to_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-to-red.md) | 180 | `result-track:fcd0ff9dad9a7d3ac9162f7e89de387f932f620329fac2ac413a29dfda5c5a0a` |
| 21 | `theorem` | [church_rosser](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/church-rosser.md) | 190 | `result-track:5828aa6d5d6934c99e54393b15b7dadd5455e072ed8d6c70d7917186cce70d44` |
| 22 | `theorem` | [cons_cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/cons-cons.md) | 197 | `result-track:93fb36d8b68c8c687cad0f28e3af731815cfefb0f6b1ad42e8bd21fe313be4ce` |
| 23 | `theorem` | [cons_cons_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/cons-cons-iff.md) | 201 | `result-track:6d54a29dfa5db2f11d0ba0917fc46f17667a5551b3cf75b74c62b5eb02cfad2d` |
| 24 | `theorem` | [append_append_left_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/append-append-left-iff.md) | 222 | `result-track:61ce88b376fd4faeff784a99cf1375bfce2a3b1816e9cf53cbffde6672a99be8` |
| 25 | `theorem` | [append_append](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/append-append.md) | 227 | `result-track:ede5a70ea55050a97b03b240f5c89773ae61a88cd2dbb755bfd487e5f788330f` |
| 26 | `theorem` | [to_append_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/to-append-iff.md) | 231 | `result-track:611f3e321ebba49c14f8c762511f7e7a7d0cd0a7cdf60e5d96a89882c6d2c95d` |
| 27 | `theorem` | [nil_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/nil-iff.md) | 253 | `result-track:5e94ceedcca62a04f2b9551bd8efb61ec9a719b77f69ba9b5337978c7f0d8f78` |
| 28 | `theorem` | [singleton_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/singleton-iff.md) | 258 | `result-track:59aca4689982b35228478ab0cf12b5f728221761b5607b5e97dcd05608ece05e` |
| 29 | `theorem` | [cons_nil_iff_singleton](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/cons-nil-iff-singleton.md) | 266 | `result-track:24d9706e034b3a69baec5de3f576b7a91f38e9b221eb584787a9a1f13f9d626c` |
| 30 | `theorem` | [red_iff_irreducible](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-iff-irreducible.md) | 278 | `result-track:b9972a5cb0d31c080e97437c6e311c49e7bb58c2de0b41eb3fc1e70003043c21` |
| 31 | `theorem` | [inv_of_red_of_ne](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/inv-of-red-of-ne.md) | 293 | `result-track:04f2e88f1bf190395fd47d57d6f2a705377fb91f250a1b4b55df2fa892b82693` |
| 32 | `theorem` | [Step.sublist](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/step-sublist.md) | 310 | `result-track:faefe09914fe638b6c4b719da2ceab46e307d6ada691b85329055bebdb59926c` |
| 33 | `theorem` | [sublist](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sublist.md) | 316 | `result-track:cde45429e80d37ce6c56bcbfd78cdd1b6947569b09b07213e6ff58bf1a7283bf` |
| 34 | `theorem` | [length_le](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/length-le.md) | 324 | `result-track:db23ae87bd40932abfe3d64e4d606d472ad3a30018a70d748780afd5b695f364` |
| 35 | `theorem` | [sizeof_of_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sizeof-of-step.md) | 329 | `result-track:6a688118a134fc6f0f36eb843ce8ec608d38bf6b4f98e4f65a96da3590c81b74` |
| 36 | `theorem` | [length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/length.md) | 341 | `result-track:86d486327e45e8d34ac6e8657abd8d4df3b6226a24c758976bd297629fefac88` |
| 37 | `theorem` | [antisymm](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/antisymm.md) | 350 | `result-track:0482e43b96f9cb42d3d2c679805f22a69615e3b4622912d2efb2b58759381f66` |
| 38 | `theorem` | [equivalence_join_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/equivalence-join-red.md) | 356 | `result-track:25dbb2cb3f61792c9e034bfe02ccd267f9d21bc0d215f0c5bcfcd4a90ae17ea0` |
| 39 | `theorem` | [join_red_of_step](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/join-red-of-step.md) | 363 | `result-track:82232a205231385f58d2708f38d725da0a8e6c8faadd45b15e6966c26a67af04` |
| 40 | `theorem` | [eqvGen_step_iff_join_red](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/eqvgen-step-iff-join-red.md) | 367 | `result-track:936acd760dad8d02a37f1d491c3e2d9eb984e961e2e3fb1e15c86292f483e53f` |
| 41 | `def` | [FreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroup.md) | 408 | `declaration-track:b9f87f11964d2ef64cc675182cea392fb57d28d7c29b3b72a5c600103ffeb8b8` |
| 42 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/mk.md) | 417 | `declaration-track:f88303e20084c8cdff3e5eb963d5f3effb443393b8f069d51317a8bdf34c3f13` |
| 43 | `theorem` | [quot_mk_eq_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/quot-mk-eq-mk.md) | 421 | `result-track:a50fb2245d4082d1d51456324f261e35fa1292cfd3fb19f8c571a362667ad531` |
| 44 | `theorem` | [quot_lift_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/quot-lift-mk.md) | 425 | `result-track:19d574d8a8ad0e3b40b676e1c5eb2d38e7dcc72ad609e989159463816da95210` |
| 45 | `theorem` | [quot_liftOn_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/quot-lifton-mk.md) | 430 | `result-track:00f35d4c58d5b11e314a2ebd888a1dcf6ca09b9838e189068a7bfdaf0865a345` |
| 46 | `theorem` | [quot_map_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/quot-map-mk.md) | 436 | `result-track:6e3458e661ba68220160465e791c7354f42bf750e01f4e3010e15a91ca02228d` |
| 47 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-3.md) | 441 | `declaration-track:16a2798a63782cc407352268bbbc1e3ed62cbc0735a6594757d0f82f19b08277` |
| 48 | `theorem` | [one_eq_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/one-eq-mk.md) | 445 | `result-track:ec8ec4524ce1a9cff68ec85a6261b0288d9b6dffebdce07f391d53a9f427d99e` |
| 49 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-7.md) | 449 | `declaration-track:b6ecb8d0e8c1e8f0e26eca32db3ff6c9e30be87d9b2bc297e886eed1feef9ab7` |
| 50 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-6.md) | 453 | `declaration-track:77bd0cc87091a4c2e00cb99ce0214bcbd8b8a69c7a47758eace57aa98aa2444b` |
| 51 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-5.md) | 456 | `declaration-track:658a09d62739054207cdbd459c21121df383de7c43a67fb4d789d98ea30eb693` |
| 52 | `theorem` | [mul_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/mul-mk.md) | 465 | `result-track:3289d672fcc4df538b37502e3aa182059d8bf449187b9d62efe676276ecc80c7` |
| 53 | `def` | [invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev.md) | 471 | `declaration-track:10c76be05743d3e8a376bc34e22a4ed2e0deeb0a4b37c23de9c3fb8564e90e79` |
| 54 | `theorem` | [invRev_length](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-length.md) | 475 | `result-track:fe76fd9a1d83e8e99179071ef4ac906103347918aedc629d6641128a29229036` |
| 55 | `theorem` | [invRev_invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-invrev.md) | 478 | `result-track:8df7eceeed2d6f17bdfcafc1990964742612cfd692547413116077d9953d8565` |
| 56 | `theorem` | [invRev_empty](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-empty.md) | 482 | `result-track:fe9241493efcf00d4fdc1f6229d20ba942d37f878fc1c16711ffdbd85c469818` |
| 57 | `theorem` | [invRev_append](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-append.md) | 486 | `result-track:5e15412b96b5f0efe8d1b688c5aa4012e86b66e2e92fe7587a02fb84e64b1be2` |
| 58 | `theorem` | [invRev_cons](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-cons.md) | 489 | `result-track:d17bdc8e04e67367ed655a056206b2783e43f8e5255ca53e8ba0882209c0eee0` |
| 59 | `theorem` | [invRev_involutive](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-involutive.md) | 493 | `result-track:7d77aaf837b4fdd0721fbdf1659c040cd13c98379658222e23b2d060e18cb187` |
| 60 | `theorem` | [invRev_injective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-injective.md) | 496 | `result-track:a71e7d8e0def4a7d3bed41f3ec2546a0eed2bdd5690c7e6f4d18d5524d44c281` |
| 61 | `theorem` | [invRev_surjective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-surjective.md) | 500 | `result-track:474a0e10b32e946b0e62933772e4dfe7eb795eee157ea123898d6d88ecee1345` |
| 62 | `theorem` | [invRev_bijective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/invrev-bijective.md) | 504 | `result-track:51f0fac760cfd65f3c79aa88ac97a777369d533005e740138233de6398f64ccc` |
| 63 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance.md) | 508 | `declaration-track:0f422e0aa90fa11cc022c89cd7ad7a4533cc2b8228349c4f8981740279fe98d5` |
| 64 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/inv-mk.md) | 516 | `result-track:d8548b423574a019191a8c71cd51177cb8aad9d5072184162b4b309f48775a59` |
| 65 | `theorem` | [Red.Step.invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-step-invrev.md) | 520 | `result-track:d2229208334b72d3d372782a41e448daa807b8ee6116b8b84d781badfc8120d1` |
| 66 | `theorem` | [Red.invRev](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-invrev.md) | 526 | `result-track:ec9b7447868aae507dac0e86e1856abdfe32a3efd9eab17e9ebe3308c2d34889` |
| 67 | `theorem` | [Red.step_invRev_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-step-invrev-iff.md) | 530 | `result-track:2a36c358c3d6906f91e5fb792c6c3ddd34080ae01b22b1b3ae078129748b7349` |
| 68 | `theorem` | [red_invRev_iff](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-invrev-iff.md) | 535 | `result-track:ef2136d4d10f1e7f3313b0060b37d976f0eeb68733f15b2ff9e37526c2dbe473` |
| 69 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-2.md) | 539 | `declaration-track:154bd54fb05c5bf29ef471928637d8df996433336541ca2fa4c56b674e014206` |
| 70 | `theorem` | [pow_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/pow-mk.md) | 553 | `result-track:fe1ac010bc858b9283b5b18a1720785e35aef5c69c80c428a0c682244dc0b71a` |
| 71 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/of.md) | 562 | `declaration-track:368f368f300da49d0c2b51924f8e81594d2914d233cc2344c72bff9408c3cf46` |
| 72 | `theorem` | [Red.exact](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-exact.md) | 566 | `result-track:7e8384352e8016e4766710b54807bca7282f50aeb66b47d5c4fbb92948f0fbdc` |
| 73 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/of-injective.md) | 573 | `result-track:f7cb4652e3282151e91263b9ff498614b35fdd05a87d2960a64f87dfa8ca086a` |
| 74 | `def` | [Lift.aux](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-aux.md) | 584 | `declaration-track:6c403f67258a718f0e5d33f6d481fad6ad5ac1d99b3e36bd3b2ed9b4799ab79b` |
| 75 | `theorem` | [Red.Step.lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/red-step-lift.md) | 588 | `result-track:584bc1c91261883683cb7d8ff3f4cfaa2ca5efa6fd8489ac886c83e47feb2a4e` |
| 76 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift.md) | 596 | `declaration-track:c12ab967b89745bb9ac95e11915ba5485ee48ffff68ba1c7983b22253471651d` |
| 77 | `theorem` | [lift.mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-mk.md) | 617 | `result-track:e514fc85aad9a7368076391da0deafacb05ee3e19e5efe9b82220cec29138a0d` |
| 78 | `theorem` | [lift.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-of.md) | 621 | `result-track:f4ec784793a75ce54703127bdcbb3a0fdec4710a0396cd0d843d4c33e644983c` |
| 79 | `theorem` | [lift.unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-unique.md) | 625 | `result-track:97ee66174970bbd9290f9bd559eaa0a09d1510ea2199f80046b0066311f6a63e` |
| 80 | `theorem` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/ext-hom.md) | 634 | `result-track:cfdd463110d14e92083790c78aa5383b499f4766a6f4e5dddeb88622c583d990` |
| 81 | `theorem` | [lift_of_eq_id](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-of-eq-id.md) | 639 | `result-track:058c28c319b881e792deb0c21ec9d6153123d8b50664465478d91e06ecc8022c` |
| 82 | `theorem` | [lift.of_eq](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-of-eq.md) | 643 | `result-track:7ead209abd9d9c63e38fcfca3fe986997848633633eb2bb749f2f8e2e9db0951` |
| 83 | `theorem` | [lift.range_le](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-range-le.md) | 647 | `result-track:4cba4716bbf784788decd87c607645db82c2a6abd807e132f363314ba3bc258f` |
| 84 | `theorem` | [lift.range_eq_closure](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-range-eq-closure.md) | 654 | `result-track:c88b2f23267474af05ef9732627e39e5c52ac8d2ffbd1d3a926fe311acf43d5f` |
| 85 | `theorem` | [closure_range_of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/closure-range-of.md) | 663 | `result-track:038a47002cc1fd91d3c2dc9f54351dc1b11a13129b49cb1d1dbc8aa66563f2bf` |
| 86 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map.md) | 678 | `declaration-track:7aac0f3f7c27fcc39bf35a64fb207ed758fa5e8f601c5151a9c73951a2139f0e` |
| 87 | `theorem` | [map.mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-mk.md) | 686 | `result-track:7c0bade474d3587a52f37b58dbcd9f87fc5eea1793944fcc1a9baf7ef24a267b` |
| 88 | `theorem` | [map.id](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-id.md) | 690 | `result-track:304cab1c5b27d0d74806f28cb16c1d0572ac0f231901f620978077e02ddd15bc` |
| 89 | `theorem` | [map.id'](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-id-source-edition-2.md) | 693 | `result-track:7e669510ac20f7db49aebb358c3c6d6e7dd9be7f0fdc7fdddf911c11b74af22b` |
| 90 | `theorem` | [map.comp](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-comp.md) | 697 | `result-track:270ce4b97ec4fab11e5ac7b28d5fdbff2b57955ce2c35a94958a9e63abcaf957` |
| 91 | `theorem` | [map.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-of.md) | 702 | `result-track:103f242e223eb08f22f4d8f294d40e8819112cad552c968544ebcab26dfced38` |
| 92 | `theorem` | [map.unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-unique.md) | 706 | `result-track:3c8407d9d863494dfea3b1f91696cfcbe93fac7d360e798071ece8365166e272` |
| 93 | `theorem` | [map_eq_lift](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-eq-lift.md) | 719 | `result-track:b2d914fed2c0b544b892293c87a20efdf9e47ff4e37420b7c18ba34ef5db956c` |
| 94 | `def` | [freeGroupCongr](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupcongr.md) | 728 | `declaration-track:c99abe0dbcf1ed7f669f613f46ae46ed251c4cb7fa170272539edfc3c6499881` |
| 95 | `theorem` | [freeGroupCongr_refl](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupcongr-refl.md) | 736 | `result-track:4136ed9b44309acd9680751eec7fbb4122f736021415578f1fffb7bd0c2c69c1` |
| 96 | `theorem` | [freeGroupCongr_symm](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupcongr-symm.md) | 740 | `result-track:e54dbaaf17cc3c09ca234cacb483633dfb93edae86ec9c4f72d1567be1f22883` |
| 97 | `theorem` | [freeGroupCongr_trans](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupcongr-trans.md) | 744 | `result-track:5f1b4e596686737a91f41ef54e66b0ef6dff76ea9add0fe9812249918778590a` |
| 98 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/prod.md) | 758 | `declaration-track:fdd70989f0ed402fc2335d9f4f550049480194afed88673c982fa800b3de7e6e` |
| 99 | `theorem` | [prod_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/prod-mk.md) | 764 | `result-track:ead148c135fedd368e207498cf9bc9662ac6477a2ceb08b628333efd2b6b119d` |
| 100 | `theorem` | [prod.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/prod-of.md) | 768 | `result-track:814bff4f8d66593e6cdf33a4aeb993587460f023f1adf96ed8e8b16e8a0703d2` |
| 101 | `theorem` | [prod.unique](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/prod-unique.md) | 772 | `result-track:fc8c6a348b38d18fca89d7007c1923b8ec588333247a0486000a98dbc25d628a` |
| 102 | `theorem` | [lift_eq_prod_map](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/lift-eq-prod-map.md) | 778 | `result-track:ef7400f55b37cd29049c525999a297c66a8eb0673278972c5346a1d3c6789aee` |
| 103 | `def` | [sum](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum.md) | 787 | `declaration-track:fc2ac7affa2b4372bb861ac22b76c4d5c6b0897265496aaac80aa83145e38445` |
| 104 | `theorem` | [sum_mk](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum-mk.md) | 793 | `result-track:407408c6c08a5c34ef95b9a30b7058b4798d019195340d4eda729b3ce296f751` |
| 105 | `theorem` | [sum.of](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum-of.md) | 797 | `result-track:f4f9ece4a474ce32449f1f8eed232e183436c5316d7ef0ed3eca2d57a7223e70` |
| 106 | `theorem` | [sum.map_mul](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum-map-mul.md) | 803 | `result-track:cd5dbe8972e3966ca1ed826d7c4579780c6af8a8e8d533c8c29ae42562856e05` |
| 107 | `theorem` | [sum.map_one](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum-map-one.md) | 807 | `result-track:3cec680b4408fa361b411c3f159480fa7b25fded67935f85760cedb467b13568` |
| 108 | `theorem` | [sum.map_inv](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/sum-map-inv.md) | 811 | `result-track:5243d92d6a33e3fc52b353e83a42716b9800c951257aeabe32cc3612b54cc90c` |
| 109 | `def` | [freeGroupEmptyEquivUnit](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupemptyequivunit.md) | 819 | `declaration-track:509e969bd0355f05263cd11550054d13ecb4bd575063964b1bb58e5da1e6764f` |
| 110 | `def` | [freeGroupUnitEquivInt](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/freegroupunitequivint.md) | 826 | `declaration-track:9bbc34620eaaeb896d4ff411307fcbbc320421336931ec13b7d3086c4601010f` |
| 111 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-4.md) | 852 | `declaration-track:57a5d09a8d9be262893eaf2cdf12af37e49c2833009efacd6c58cbbb03d04b95` |
| 112 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/induction-on.md) | 858 | `result-track:dbb3cae619e25966b2b9703bac084d9f832294d73a66de61cda7ad0f398a6a53` |
| 113 | `theorem` | [map_pure](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-pure.md) | 865 | `result-track:7ae5f9d8cfbcac58d6b41d24f64927d62b52be4e8422e50bb7c2081b3f581cf6` |
| 114 | `theorem` | [map_one](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-one.md) | 869 | `result-track:36a23fb0bbdac9f8ee2b24b09ecd8bde11e2e8e2e79d3847013faa55b70798d7` |
| 115 | `theorem` | [map_mul](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-mul.md) | 873 | `result-track:b60850d67988aaaa9c505dcf1267fdb5c85a78415cede6a59ef1c293184f5416` |
| 116 | `theorem` | [map_inv](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/map-inv.md) | 877 | `result-track:eb9bbe847658cc8b6e4f6ca73ac9e41cb2c88d68148f05a6d846ba4cb637d415` |
| 117 | `theorem` | [pure_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/pure-bind.md) | 881 | `result-track:30d8625110f7f3a252a40c7d491004df05ffe2dddfc69f80444192d86049cd9a` |
| 118 | `theorem` | [one_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/one-bind.md) | 885 | `result-track:670575ce281cd211be2c3eb600e612d9178fc0c3b4f4fae5634a04a4421c75a6` |
| 119 | `theorem` | [mul_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/mul-bind.md) | 889 | `result-track:929cc6bfd922d77a32c25069155b06a605d8219f9ec8471bd92e2a7f72a8a5fe` |
| 120 | `theorem` | [inv_bind](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/inv-bind.md) | 893 | `result-track:40d398a2ccf3f0a844dd3b7cb43a23895ee75c86c60b195f6543a2dba1d54823` |
| 121 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupBasic.lean/declarations/instance-source-edition-8.md) | 897 | `declaration-track:d5ea1fa857c060bdd4d79291f0247f66b0601012d1dbd418d42334cf353691a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbd3076a9cb0c586b8f7f2c82c60c3f6cdb0098e6df65ea48ad911e10910ae02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
