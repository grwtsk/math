# Verification target: Reflexive Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975fc126816a7cf6bcd130f7bc22490d9e3f9d43",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975fc126816a7cf6bcd130f7bc22490d9e3f9d43`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean.json)

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
| 1 | `class` | [IsReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/isreflexivepair.md) | 68 | `declaration-track:a99b4c741049ae0ff31d26e3a4c88a400aeb56049bf581f2bf906b733feafa46` |
| 2 | `theorem` | [IsReflexivePair.common_section](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/isreflexivepair-common-section.md) | 71 | `result-track:6e390dedeb13aefff43e97b4f30d2d69af2577ecfa515aed59451cf2c6f0b196` |
| 3 | `class` | [IsCoreflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/iscoreflexivepair.md) | 77 | `declaration-track:b311629c939b725bf1a95c10a0b300851647de0d84b18ba769c05899bbde2843` |
| 4 | `theorem` | [IsCoreflexivePair.common_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/iscoreflexivepair-common-retraction.md) | 80 | `result-track:f99f30b6b6b2f1ab90c41dc04b31e8151649c7f080698ca12322ce5cf114e34e` |
| 5 | `theorem` | [IsReflexivePair.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/isreflexivepair-mk.md) | 83 | `result-track:42b7a7c4223defda9598b011f037de21001512a39210f7256bf1574b7250cdbc` |
| 6 | `theorem` | [IsCoreflexivePair.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/iscoreflexivepair-mk.md) | 87 | `result-track:da02a4d97c14049bf6c53564fcdf753d9667c00df461cf1396aa5ecf403b04bb` |
| 7 | `def` | [commonSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/commonsection.md) | 92 | `declaration-track:dd0e635bcb50d841ff8af6dc176a61f6a5d040336e35f6edb21338ea8220a08b` |
| 8 | `theorem` | [section_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/section-comp-left.md) | 96 | `result-track:eeaacfc883de73bbff2b6c09708a8084ad3fde70ea1196245c172091a5928655` |
| 9 | `theorem` | [section_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/section-comp-right.md) | 100 | `result-track:7d62f76d62bc1b8984eef5e344e9c2417e71a0a4da645d5781cd65fbe823ed66` |
| 10 | `def` | [commonRetraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/commonretraction.md) | 104 | `declaration-track:b67fe78c9fdeb9592791493c78b6cea0edfdf4c38c00d3645b1047a0bf67ab11` |
| 11 | `theorem` | [left_comp_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/left-comp-retraction.md) | 108 | `result-track:9cd500382c5bc5e6ad5a629fa5790fb86e4caef95777fbb8a632d8c022d28774` |
| 12 | `theorem` | [right_comp_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/right-comp-retraction.md) | 113 | `result-track:b88c1b4dd44beb093b56c5aff523c62cc2b0a98f5a2c4e86f60f0441e9ae3e93` |
| 13 | `theorem` | [IsKernelPair.isReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/iskernelpair-isreflexivepair.md) | 118 | `result-track:0c8822ef47b3461a495c5ed6bdc3b409857e6c7e68cd9df97797aae86fbb531d` |
| 14 | `theorem` | [IsReflexivePair.swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/isreflexivepair-swap.md) | 124 | `result-track:bfd7f2930a78f210abd12e81f82ed9e3c3242c218167fe7be4cc92c890f0c88f` |
| 15 | `theorem` | [IsCoreflexivePair.swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/iscoreflexivepair-swap.md) | 129 | `result-track:309480b05e0030682e9405665f35868fefa9fe3624e47da4bceba5597da960bf` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/instance-source-edition-2.md) | 135 | `declaration-track:a6645c96d5ebd1af46ce10772a1d74030e4e818f7334cdc0f8d337d29d3ff828` |
| 17 | `class` | [HasReflexiveCoequalizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hasreflexivecoequalizers.md) | 148 | `declaration-track:caa80d834af787fef89f3499b43272154e2b07730960efcab5dfc0ff1d2c40af` |
| 18 | `class` | [HasCoreflexiveEqualizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hascoreflexiveequalizers.md) | 152 | `declaration-track:be0f59695805d37bd91944990c66b7d529492b98b2a34ec7ff0f627cdeaca14a` |
| 19 | `theorem` | [hasCoequalizer_of_common_section](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hascoequalizer-of-common-section.md) | 159 | `result-track:a3970343c11628eea347a04bf54445d54fd47cb6535cd2642e0019ffe8bb6d90` |
| 20 | `theorem` | [hasEqualizer_of_common_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hasequalizer-of-common-retraction.md) | 164 | `result-track:c9f0ae4ac36eb268055be4140a03263956e7d49ca84e2116846d29e9b15d987f` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:b5efeb7980d13959c172f32b77b6271832326243ca32672825468e6e3c1239aa` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/instance-source-edition-4.md) | 174 | `declaration-track:f7db551616bc49dfee883c07725387e38edf8d875c00fcd458d936f8420833f5` |
| 23 | `inductive` | [WalkingReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/walkingreflexivepair.md) | 188 | `declaration-track:51c9be4058c98495bd859e426431053b4d26e495fda42eb770119a89179d282e` |
| 24 | `inductive` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hom.md) | 200 | `declaration-track:5f6c42212245a8ebfa57e4c89697812cdb35921a7f24b313fa2dc9a4ac0d41cd` |
| 25 | `def` | [Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hom-comp.md) | 210 | `declaration-track:5f5ff3bf606e0ebd27487d8abd8af2c45af91edec4b2c705ca248bd2f98787cb` |
| 26 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/category.md) | 230 | `declaration-track:745d804cef31e2d957044681d88f3c9d86a5a22164c4e940f61a41385300e078` |
| 27 | `lemma` | [Hom.id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hom-id-eq.md) | 241 | `result-track:2ee6fa72651ce36fe0dc250ff962e023c3f163c718eb7d4b84696f36d07a8948` |
| 28 | `lemma` | [reflexion_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexion-comp-left.md) | 245 | `result-track:c293afd77a948ad5877325940ae10309a34ad87280452cbc55898729688cb85b` |
| 29 | `lemma` | [reflexion_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexion-comp-right.md) | 248 | `result-track:7deef52175485e887566a3f5dbe9e99cf9a07a4bbde5f71c78670be6bcf197e4` |
| 30 | `lemma` | [leftCompReflexion_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/leftcompreflexion-eq.md) | 251 | `result-track:4b134d3c85ef68595b9a928a21423fa8c01bba65eaa0bb179372172ae78e9229` |
| 31 | `lemma` | [rightCompReflexion_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/rightcompreflexion-eq.md) | 254 | `result-track:d5b1c2539c4ea3af6af0eee8870386f7a161e90f6257c4b488fde744514d6a2d` |
| 32 | `lemma` | [map_reflexion_comp_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/map-reflexion-comp-map-left.md) | 261 | `result-track:c18da33ad2852dbc3568cccc6e8971560d5c1fe248879ae71008ba63a7d28324` |
| 33 | `lemma` | [map_reflexion_comp_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/map-reflexion-comp-map-right.md) | 266 | `result-track:da17f044ee9484624051f56bb3dab3ef0142a6d9a7ec29fdc29a7ad6e51bbfc9` |
| 34 | `def` | [inclusionWalkingReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/inclusionwalkingreflexivepair.md) | 278 | `declaration-track:1473e4acc5cb566b42da77b07edb69f574d5302fff66264fe81ac745ec44a013` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/instance-source-edition-5.md) | 289 | `declaration-track:feed57d6fe4fa67850a48d36c8a6fb9f9cfdb876eb955a0d4721d6740d4bf82e` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/instance.md) | 296 | `declaration-track:00b9218c2e71c324674176707604385eea9503bc85c9f33e0d8d38ae8c48bcb2` |
| 37 | `instance` | [inclusionWalkingReflexivePair_final](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/inclusionwalkingreflexivepair-final.md) | 315 | `declaration-track:8d6f31a8469a4d85446d049fa9521089b96ef7907b79206b50884c711e5e8e81` |
| 38 | `def` | [reflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair.md) | 332 | `declaration-track:f28bf72d2b2ceb80c22b68fcbc410cf795c0523f016e58338a36ae8307a99ee0` |
| 39 | `lemma` | [reflexivePair_obj_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-obj-zero.md) | 357 | `result-track:1dc9a0bf2feea88d944f63ecdf1575300ab54e643678bcbf5bafae543cc2869f` |
| 40 | `lemma` | [reflexivePair_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-obj-one.md) | 359 | `result-track:be3bbd68273b141951f8bf60a08936ad5022086e815db039fb5aa21007873088` |
| 41 | `lemma` | [reflexivePair_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-map-right.md) | 361 | `result-track:0709bcf1797838841cacfa25a34a56077e74cc398ebd9028f09b089a7269790f` |
| 42 | `lemma` | [reflexivePair_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-map-left.md) | 363 | `result-track:6681cadf6f8932b1308e231fcdb7d9a7b9d474a7ce0974de6598b4b425706c27` |
| 43 | `lemma` | [reflexivePair_map_reflexion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-map-reflexion.md) | 365 | `result-track:420917b8e7e552c874e5752a5efbb08812d1c0a69e84de884d19fa7876d0c1f2` |
| 44 | `def` | [ofIsReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/ofisreflexivepair.md) | 371 | `declaration-track:318578ad6853ff615ca1d667ade743e9f5983b30c937a6674fb9d87dd137a10d` |
| 45 | `lemma` | [ofIsReflexivePair_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/ofisreflexivepair-map-left.md) | 375 | `result-track:0bcf64a15580188852b5d645acc90532880cb4e2f73b5844bd1f90e332ed953a` |
| 46 | `lemma` | [ofIsReflexivePair_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/ofisreflexivepair-map-right.md) | 379 | `result-track:1592c9b15ef764a57d61cf6d6ed9160a0a085bb9d7bfcdc845ec8392b26aa51e` |
| 47 | `def` | [inclusionWalkingReflexivePairOfIsReflexivePairIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/inclusionwalkingreflexivepairofisreflexivepairiso.md) | 384 | `declaration-track:8a26ed7e68b54142b64ea20619f0581271ee845c17ff2a658094dce81fdb5070` |
| 48 | `def` | [mkNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mknattrans.md) | 411 | `declaration-track:ac84776b222bbf34e54e67e5937bad6d822bdb76513f089360dcf9905081f202` |
| 49 | `lemma` | [mkNatTrans_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mknattrans-app-zero.md) | 424 | `result-track:4ff9785a4c181aae1f749fd654c87fde2c512e0d658f9fea96b56cc2702404be` |
| 50 | `lemma` | [mkNatTrans_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mknattrans-app-one.md) | 428 | `result-track:7b39467c6c737f2b04e02b63e6c2140650c96797b1767bceacf00d12d59c3e1b` |
| 51 | `def` | [mkNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mknatiso.md) | 436 | `declaration-track:b0627dcc81b9a0ff6780393f5c97743932ce76ea8b8e765c7c3fa38a1908e340` |
| 52 | `def` | [diagramIsoReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/diagramisoreflexivepair.md) | 457 | `declaration-track:f2a683c2b4ae2020f63e0a4f1e221fefe287bb574456b68491f4cbbef2fa0ebf` |
| 53 | `def` | [compRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/comprightiso.md) | 467 | `declaration-track:936586958e3703295066800184d36f427e67f4bec645df8b61bbf7f1a31d0415` |
| 54 | `lemma` | [whiskerRightMkNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/whiskerrightmknattrans.md) | 475 | `result-track:a232b4485624b04ffd166950fea1be210d746bd34d26d870a0be6bdcf29ee9f6` |
| 55 | `instance` | [to_isReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/to-isreflexivepair.md) | 491 | `declaration-track:bde9e65f2e92ea73e87a1d973dcd21935d7558bb7b4758bc2719ce4cf4a5fac9` |
| 56 | `abbrev` | [ReflexiveCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecofork.md) | 498 | `declaration-track:dae3dc4e19bacc38e866d766c7d51248c7973184a592489d8c67a3847c3108a8` |
| 57 | `abbrev` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/anonymous.md) | 507 | `declaration-track:35a4a1289d0b8ad76a74bc02673f069324210f0756f8edfae3a6efb0df1c705d` |
| 58 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mk.md) | 512 | `declaration-track:04c9e90064cfcf4058b9a0da71b89a391aa690af57e13786104ae88579bade2e` |
| 59 | `lemma` | [mk_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/mk-source-edition-2.md) | 518 | `result-track:879cdc04a32e16bfae82de8613c7cae7e89abc0ff98478b14c18ba247c05e50d` |
| 60 | `lemma` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/condition.md) | 521 | `result-track:8b2315593860d199bdfe3cb922341f251e55a6d6ea51e9fcc64515b7d61cf770` |
| 61 | `lemma` | [app_one_eq_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/app-one-eq.md) | 525 | `result-track:fc604ff45df395577430ef63bafabd99a711770ca049d31519b184210a7e4597` |
| 62 | `abbrev` | [toCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/tocofork.md) | 528 | `declaration-track:2994b31440303551fb9c1ba7491f699c216d3b890b776f684491299e1434a514` |
| 63 | `def` | [reflexiveCoforkEquivCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoforkequivcofork.md) | 544 | `declaration-track:ad4ed0cb80d332ed72c7168241362efb43da7e24ed17dd277e822a61f8ff5f6d` |
| 64 | `lemma` | [reflexiveCoforkEquivCofork_functor_obj_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoforkequivcofork-functor-obj.md) | 552 | `result-track:43ffa5245d6d78f01c84134e840734e91833039af9bbfaf4ff31edc3fbfc7cf3` |
| 65 | `lemma` | [reflexiveCoforkEquivCofork_inverse_obj_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoforkequivcofork-inverse-obj.md) | 561 | `result-track:319364ccdf0708b4af6f076cbcaf19ac5f54bffb6edbb94bf77e74babb1dced2` |
| 66 | `def` | [reflexiveCoforkEquivCoforkObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoforkequivcoforkobjiso.md) | 574 | `declaration-track:f4160798db77060bd45142fc3ef99bc88b4db7130209d8aefe706d27cf874766` |
| 67 | `lemma` | [hasReflexiveCoequalizer_iff_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hasreflexivecoequalizer-iff-hascoequalizer.md) | 579 | `result-track:d38b4fea623200390a99598f80e63dd2d6141de6fca452d5b6b00623431f2017` |
| 68 | `instance` | [reflexivePair_hasColimit_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivepair-hascolimit-of-hascoequalizer.md) | 584 | `declaration-track:67827ac2859f9cfaf108a763e50c3a7d1f0224b6a7248c39fc40b434daa54552` |
| 69 | `def` | [ReflexiveCofork.isColimitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecofork-iscolimitequiv.md) | 589 | `declaration-track:c8fd139c3507540c0aad5eb4904904f9529109bb78ee104817f2fd2ba4f39012` |
| 70 | `def` | [reflexiveCoequalizerIsoCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoequalizerisocoequalizer.md) | 601 | `declaration-track:cc5957f06f98be5e0721f152814503f3fad366d4b20be2b2303d3b3b91d69c73` |
| 71 | `lemma` | [ι_reflexiveCoequalizerIsoCoequalizer_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoequalizerisocoequalizer-hom.md) | 607 | `result-track:2a54ec52f4eaf9f51d8d0af9d4ca996aaa1906857acf0340fd8cfb9560a53398` |
| 72 | `lemma` | [π_reflexiveCoequalizerIsoCoequalizer_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/reflexivecoequalizerisocoequalizer-inv.md) | 614 | `result-track:ea7b639fc8759b7acbbe81e106b60f65e6db5ac8764655c6e974faf345b0b9ab` |
| 73 | `instance` | [ofIsReflexivePair_hasColimit_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/ofisreflexivepair-hascolimit-of-hascoequalizer.md) | 624 | `declaration-track:48bf8feeed9b765bfcf0987ee3f56d066052d1526912ce79755d10f275f59aae` |
| 74 | `def` | [colimitOfIsReflexivePairIsoCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/colimitofisreflexivepairisocoequalizer.md) | 630 | `declaration-track:2522148a779b7940a9fbebfd9d672bcf327e49b2e5f532b0f64c2589dacb09a7` |
| 75 | `lemma` | [ι_colimitOfIsReflexivePairIsoCoequalizer_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/colimitofisreflexivepairisocoequalizer-hom.md) | 636 | `result-track:3d8db375afc4421837f5dba9a0e0ac30936e1a92dd551fbd1e2220823f691a96` |
| 76 | `lemma` | [π_colimitOfIsReflexivePairIsoCoequalizer_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/colimitofisreflexivepairisocoequalizer-inv.md) | 641 | `result-track:25d54455b697c6ab9a50c41f5a698acb95a1cad052ee29e928590b93c5b89e32` |
| 77 | `theorem` | [hasReflexiveCoequalizers_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexivePublic.lean/declarations/hasreflexivecoequalizers-iff.md) | 657 | `result-track:6ace7c8b86c433306c6a4c654575eb6ba336f0ccfae7057666368adff4e1e3d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c13e79de9cf8375323740f0dfef492a54dd899c65f5dc012e67a0e2202f5aa90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
