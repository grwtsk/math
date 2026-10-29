# Verification target: Ringed Space Open Immersion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b5cad5c5347d96072ffac32f1c447d094d643a9",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b5cad5c5347d96072ffac32f1c447d094d643a9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean.json)

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
| 1 | `class` | [PresheafedSpace.IsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/presheafedspace-isopenimmersion.md) | 80 | `declaration-track:d958deecefcbee5fe6bf7bc6349d8872a2c77342de96f2a858809a465859d05e` |
| 2 | `abbrev` | [SheafedSpace.IsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-isopenimmersion.md) | 90 | `declaration-track:80770638f792913c2197f5ab3133bf334e3db5fa8d5f23422ef736be92b9081b` |
| 3 | `lemma` | [SheafedSpace.isOpenImmersion_iff_hom](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-isopenimmersion-iff-hom.md) | 93 | `result-track:8cab4a824397a8aeebde6567c037af16edd7c71932f22eb564e2134b6595252d` |
| 4 | `abbrev` | [LocallyRingedSpace.IsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/locallyringedspace-isopenimmersion.md) | 99 | `declaration-track:397dffd758db62a7b9b883c30890264652f2d5b944c259e5042d296f53095fbf` |
| 5 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance.md) | 102 | `declaration-track:08507b2e3f2d34b5cf23cd8c688b0177f33fd4050b1d075b53cca749ba17cf08` |
| 6 | `abbrev` | [opensFunctor](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/opensfunctor.md) | 116 | `declaration-track:4278fef2ffc89a334260ba782422483a28167b5195653ac8e0f415ebe9e940f9` |
| 7 | `def` | [isoRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-source-edition-2.md) | 123 | `declaration-track:359b65b8ab63041f1f5ff1117fe2274e50f8198eac8f5649deacff090cd71cd4` |
| 8 | `theorem` | [isoRestrict_hom_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-hom-ofrestrict.md) | 145 | `result-track:15f8f5568b37fa6122c1940647e2e4dd9cac7349098bdfe68cbef2b610bd9c6e` |
| 9 | `theorem` | [isoRestrict_inv_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-inv-ofrestrict.md) | 156 | `result-track:14c7d0456721625123f9785008769de1badda1425267c9c3cc196191182fd3a1` |
| 10 | `instance` | [mono](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/mono.md) | 159 | `declaration-track:169edefa61fcbc33fc7647496c3e6360a6b28e505b497076631154128776b105` |
| 11 | `lemma` | [c_iso'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/c-iso.md) | 162 | `result-track:fa858911f3ded69aab5b43c06d60fc95ff29dfbb448d67ba246885cc9a19a15e` |
| 12 | `instance` | [comp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 169 | `declaration-track:d49c1fadeee7a91bfc57fd253810e4aad0e91695ed071e6f87fc7fe606bf6fab` |
| 13 | `def` | [invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp.md) | 184 | `declaration-track:689c5d9edcbbff5e4aaecb6f591d802e73aa2e9d7854c5363b2afc0ce00bf7da` |
| 14 | `theorem` | [inv_naturality](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-naturality-source-edition-2.md) | 191 | `result-track:45e21b2e248d5abbe81ed6e55f8f1aa8ab1b5de4f7853205248148a46d96cea9` |
| 15 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 201 | `declaration-track:3b413cad91a1df8ef1ea254a086dc9be3ad37363561fd3977f47ef51cec3c76f` |
| 16 | `theorem` | [inv_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-invapp.md) | 204 | `result-track:145440500508fec8eb475a09b27aec759178f123694d5cde6a9f50df4f7894d4` |
| 17 | `theorem` | [invApp_app](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp-app.md) | 214 | `result-track:59fbb50fd88e5886981c31807b0adce5b2c77133d4bc070ab8c4d0916b36c764` |
| 18 | `theorem` | [app_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-invapp-source-edition-2.md) | 221 | `result-track:3f0d78c710f9681263c7f2b7f345ab6b0421003e96c72a4067f327eac1c48381` |
| 19 | `theorem` | [app_inv_app'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-inv-app-source-edition-3.md) | 231 | `result-track:e2f4947a25127c849ef76bf09985daddfc99203f3ce13b78f70698fe4dd267dd` |
| 20 | `instance` | [ofIso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofiso.md) | 243 | `declaration-track:8201ca0058ddfe5ba737cddb2a392e25af4bccab3bdee8a8a3e62c28404fbbb1` |
| 21 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 249 | `declaration-track:f12b6cd1dc22133cb121d5f4a9120e7f3ae3d684e79e8db92dc0a3d6c836623e` |
| 22 | `instance` | [ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict-source-edition-2.md) | 255 | `declaration-track:2e4580a7413c10fef5389049281bb2b327fb6b4d028bffe6bf6ed1c7e85cc2de` |
| 23 | `theorem` | [ofRestrict_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict-invapp-source-edition-3.md) | 276 | `result-track:daff5fc85d26e9bac6db70400dbfe629377c3b805ce102cede5fe88e1ebff794` |
| 24 | `theorem` | [to_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/to-iso.md) | 285 | `result-track:14af27e02bd25c74439b174b3aed701df052d204dfed5a13c3aef92efb807b54` |
| 25 | `instance` | [stalk_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/stalk-iso-source-edition-2.md) | 304 | `declaration-track:bdfa074c1938acad4b643a82c32e3aafb0abecafd630b9ea00cbbcf72c8fa0e9` |
| 26 | `def` | [pullbackConeOfLeftFst](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftfst.md) | 318 | `declaration-track:b7892901bcd32c5022f8f675874568ba774b05bcc26bb9f7ea84e87773677cfb` |
| 27 | `theorem` | [pullback_cone_of_left_condition](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-cone-of-left-condition.md) | 350 | `result-track:29cb289dce1298a17c5eec8d264a0da6fc3a2894ff2f328b5f8060dae9b5b686` |
| 28 | `def` | [pullbackConeOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleft-source-edition-2.md) | 367 | `declaration-track:3f885dd685a99e137659fd50ec4dea2e39b7fb9d9a92293138d0e02de5c32291` |
| 29 | `def` | [pullbackConeOfLeftLift](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftlift.md) | 377 | `declaration-track:2bb434035dbf4303ca9093b86504900797461306a873b08add83f7d1a05ef5c2` |
| 30 | `theorem` | [pullbackConeOfLeftLift_fst](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftlift-fst.md) | 407 | `result-track:e7a7a2dbd5b7ee13aff0bf45d7f72e58485e3121a10e09e9a407367fdacf46ec` |
| 31 | `theorem` | [pullbackConeOfLeftLift_snd](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftlift-snd.md) | 428 | `result-track:97d7342a393202969b4a341b275ebf4aa52bd4eed3cc044ce425820691640e00` |
| 32 | `instance` | [pullbackConeSndIsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconesndisopenimmersion.md) | 443 | `declaration-track:3eb644f18b3674c114e42d626bf5c68e75423de3f813bbb7c6fb28357d9f8b0c` |
| 33 | `def` | [pullbackConeOfLeftIsLimit](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftislimit-source-edition-2.md) | 448 | `declaration-track:aa600203f50d280823dc419e232d51f381cdf443ccea882b1cbd55eb00a778df` |
| 34 | `instance` | [hasPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haspullback-of-left-source-edition-2.md) | 458 | `declaration-track:a8159034873333d5b14168599eeb5fc72049c3bfccd6cb9f4cfb2fc520cdb79a` |
| 35 | `instance` | [hasPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haspullback-of-right.md) | 461 | `declaration-track:adb310c7f9ee1a8bd366dc72316ecd2caf5000ac0acb69ec001925694bfa4afb` |
| 36 | `instance` | [pullbackSndOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbacksndofleft.md) | 465 | `declaration-track:1221154825b756486b4e2ed30a4282a1e23b04b8ff7a03d0554475220fbc4ccb` |
| 37 | `instance` | [pullbackFstOfRight](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackfstofright.md) | 471 | `declaration-track:7d6b46fd515c94ebe9ed4c01c83a6325218eace87e084d87c030914fc9c2c8a0` |
| 38 | `instance` | [pullbackToBaseIsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbacktobaseisopenimmersion.md) | 475 | `declaration-track:1ba63e139d41393a168606d540017f7aea94d17f122a1ab9fac09e1526574537` |
| 39 | `instance` | [forget_preservesLimitsOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-preserveslimitsofleft.md) | 480 | `declaration-track:0d59d357cbbe46eaa2b7967b86bbd5177c7c128744758d00bfafbcfb23edb74b` |
| 40 | `instance` | [forget_preservesLimitsOfRight](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-preserveslimitsofright.md) | 498 | `declaration-track:47400bb11af5048600be82ea0b92afd9cd0ed4a283105b87859dc5c52ba47749` |
| 41 | `theorem` | [pullback_snd_isIso_of_range_subset](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-snd-isiso-of-range-subset.md) | 502 | `result-track:9ee11f6dc77888c85d96fc7c1fc77dee086bfb9031d741c6862dd6a0f0bdb80b` |
| 42 | `def` | [lift](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-source-edition-2.md) | 517 | `declaration-track:a40caddb5cfa54ca09582e471f84411717453aeb75a12ad815a8f403a0e9ae4c` |
| 43 | `theorem` | [lift_fac](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-fac.md) | 522 | `result-track:7a0d0458b386050753e0f17500b64abcb4335f42a30886e61073cf60c3454197` |
| 44 | `theorem` | [lift_uniq](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-uniq.md) | 526 | `result-track:1bb20d4303227063ed83bc5c0db79efc5c4ebe5353ef71bcec22eec2f7fb6e6e` |
| 45 | `def` | [isoOfRangeEq](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isoofrangeeq.md) | 531 | `declaration-track:69f8e615030a4840304c12322ff2d212b870352cf6d664b04dcc9894218b6714` |
| 46 | `def` | [toSheafedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspace.md) | 546 | `declaration-track:4dc631a2f6a101672db259e017e691bc64565226a9564fa0812c92a64a397fa0` |
| 47 | `theorem` | [toSheafedSpace_toPresheafedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspace-topresheafedspace.md) | 556 | `result-track:f0976e56eae998bdf1499814938c9425c08ef39bd5434f2e289e006981b087d8` |
| 48 | `def` | [toSheafedSpaceHom](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspacehom.md) | 562 | `declaration-track:d5815d1e0dbc71c492c3885eef4160b1ffd3ef27cf329cfcefa686b173dc4448` |
| 49 | `theorem` | [toSheafedSpaceHom_hom_base](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspacehom-hom-base.md) | 566 | `result-track:5bbabe857f59bbbbfe26252b9dd7e4af34bceca86088d20ceee3214a889c3ee6` |
| 50 | `theorem` | [toSheafedSpaceHom_hom_c](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspacehom-hom-c.md) | 570 | `result-track:aaedc6f9407a47216152e1afb2bb62101bfdbf8ddc8a5b512036e637a6939b67` |
| 51 | `instance` | [toSheafedSpace_isOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tosheafedspace-isopenimmersion.md) | 573 | `declaration-track:b365040a5314a3f1613dafd0df8a2878dff3b788957f4e03eed12953bf64c6f2` |
| 52 | `theorem` | [sheafedSpace_toSheafedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-tosheafedspace.md) | 577 | `result-track:af009d36576a9bc23229b7f23d9424eae52b4dc78c3dc5c6aec52ee3c186128a` |
| 53 | `def` | [toLocallyRingedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tolocallyringedspace.md) | 590 | `declaration-track:3bade11cffef431636a21bc17ef4f44c2dcf40297d84bf3670455391519b8192` |
| 54 | `theorem` | [toLocallyRingedSpace_toSheafedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tolocallyringedspace-tosheafedspace.md) | 597 | `result-track:2d7082d9aec475c6d3a672ce0d45b6ad1d2df7a931b2d677d36e0f93884408cb` |
| 55 | `def` | [toLocallyRingedSpaceHom](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tolocallyringedspacehom.md) | 605 | `declaration-track:c2da87309d3d7884ea66defa15eb44c0f3102143af2c340f96eb53e11755dad1` |
| 56 | `theorem` | [toLocallyRingedSpaceHom_val](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tolocallyringedspacehom-val.md) | 609 | `result-track:1ad01cc2994bd6928027f027b90468a0f41350cf89230f69d3b533ca6f30a416` |
| 57 | `instance` | [toLocallyRingedSpace_isOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/tolocallyringedspace-isopenimmersion.md) | 613 | `declaration-track:71bb65eaaf7584957106026d41952d391ed5d3f2f3d65e73ef13ab2b7d9d85f1` |
| 58 | `theorem` | [locallyRingedSpace_toLocallyRingedSpace](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/locallyringedspace-tolocallyringedspace.md) | 618 | `result-track:7530b24daa60892a898a3c159707047e8dc174afe2b19312858a55ae6663de63` |
| 59 | `theorem` | [isIso_of_subset](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isiso-of-subset.md) | 624 | `result-track:a75af46282e0f91531bba69c9e127ff27ebbfa33e392d33d821b5c804d0299bc` |
| 60 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 636 | `declaration-track:1b33effe9f483a1331cfe286d560f7a03d984a3afe3be289400a9c180551b6f5` |
| 61 | `instance` | [comp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 641 | `declaration-track:2f81fa8ab7ea12f06b260f7c41c7b8a65c6e587a8a8361a3fddeafd5cc91868a` |
| 62 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 655 | `declaration-track:fc97ca4717fdc1d6da06153bb588ebfa26ae5e51f2ba8e847c89522967214134` |
| 63 | `instance` | [forgetMapIsOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgetmapisopenimmersion.md) | 658 | `declaration-track:f107950d72dc1536bde09779d97e9dab33f1837869c4073f60b7965c3d88d90e` |
| 64 | `instance` | [hasLimit_cospan_forget_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haslimit-cospan-forget-of-left.md) | 661 | `declaration-track:53bd1221cafba464be710d92b98ec86378d34d69320410d8aa34bb13428cad32` |
| 65 | `instance` | [hasLimit_cospan_forget_of_left'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haslimit-cospan-forget-of-left-source-edition-2.md) | 668 | `declaration-track:5c9a62e86d533dbb51c42d6f9a6e4d43e24d91e94e61712bc8cfd52ea3e49206` |
| 66 | `instance` | [hasLimit_cospan_forget_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haslimit-cospan-forget-of-right-source-edition-2.md) | 672 | `declaration-track:8153f3c6357497a6106df830e8302fd1cb649d591ff3a18ec63d849e66c18039` |
| 67 | `instance` | [hasLimit_cospan_forget_of_right'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haslimit-cospan-forget-of-right.md) | 679 | `declaration-track:106879d9b7ce7e9b7cf49615b0007a10c17143beec8555e8e37d47220e34ce90` |
| 68 | `instance` | [forgetCreatesPullbackOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgetcreatespullbackofleft.md) | 683 | `declaration-track:0e572779db7286a81076d0a854def3f617cb6a070bad9ac69a9422c52747a11f` |
| 69 | `instance` | [forgetCreatesPullbackOfRight](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgetcreatespullbackofright.md) | 690 | `declaration-track:757dd60ad7d079702aaae04bc9d05e553a43eadd01b0091990276e98ba1625e1` |
| 70 | `instance` | [sheafedSpace_forgetPreserves_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-forgetpreserves-of-left.md) | 698 | `declaration-track:7ec01e54b29f2d1a884dfb58794e5930985d5018b44092d24f362b2f5bc6c3d8` |
| 71 | `instance` | [sheafedSpace_forgetPreserves_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-forgetpreserves-of-right.md) | 709 | `declaration-track:0d8beb1137013a07b521370c3fdc9d9f6a96d004fd556dbd5975071279c2c356` |
| 72 | `instance` | [sheafedSpace_hasPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-haspullback-of-left.md) | 713 | `declaration-track:dd9d282a96001f202170f84bfa8cadf8368c563e9c70fef5c8c28b652cb44dd0` |
| 73 | `instance` | [sheafedSpace_hasPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-haspullback-of-right.md) | 716 | `declaration-track:62f5a8bc817c345decb5b0c9fc85db122141aed455be91fcb46c0322a2f27672` |
| 74 | `instance` | [sheafedSpace_pullback_snd_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-pullback-snd-of-left.md) | 722 | `declaration-track:b4919929ba233bab480cfa91c6d3531d4d31103055b7c399d41733628cac8dd4` |
| 75 | `instance` | [sheafedSpace_pullback_fst_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-pullback-fst-of-right.md) | 735 | `declaration-track:bdf87543841da3cc920d81f8ea8ab0424ba3d853bb7e3c63788ab84530d006ee` |
| 76 | `instance` | [sheafedSpace_pullback_to_base_isOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sheafedspace-pullback-to-base-isopenimmersion.md) | 746 | `declaration-track:7b8e6187178c2a4d21047290a7c2c27df19e1a3d7827ee7108050dda2965388d` |
| 77 | `theorem` | [of_stalk_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/of-stalk-iso.md) | 769 | `result-track:7c4ba3436c02c6bb22036ca411ae37f9604a69ed9cd23a7295e6113721b5a31b` |
| 78 | `abbrev` | [opensFunctor](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/opensfunctor-source-edition-2.md) | 790 | `declaration-track:547939b05b8910165fa15203322d2a8af50bcb5628ed8aa8c1ddbd531402d074` |
| 79 | `def` | [isoRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-source-edition-3.md) | 798 | `declaration-track:4050ffc97e48019d99275ee9617bc2ad49f62a7daa547250347cc088c99c067f` |
| 80 | `theorem` | [isoRestrict_hom_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-hom-ofrestrict-source-edition-3.md) | 802 | `result-track:5b5c967a28edaaa2e1da037da758da35b257eeb2a7a97cd40820f0c6a58e9333` |
| 81 | `theorem` | [isoRestrict_inv_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-inv-ofrestrict-source-edition-2.md) | 807 | `result-track:9c026ee01b430de4190e4c6728db923b072698965a9e928adc5d2d5df91bcfe2` |
| 82 | `def` | [invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp-source-edition-3.md) | 812 | `declaration-track:ab58ebea996907f914ba885d01707f1ddc1912c6f4ba4045b6b737500cfa13f7` |
| 83 | `theorem` | [inv_naturality](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-naturality-source-edition-3.md) | 820 | `result-track:c885f4348970cee0af9eb849be30b4e4fe8b4527028a161c0f52ebb1422e9977` |
| 84 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 825 | `declaration-track:1c5aa86f266a0bc3467341dddfbd537af7a66ee30a7a3965e829fcd33787cc95` |
| 85 | `theorem` | [inv_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-invapp-source-edition-2.md) | 827 | `result-track:5695b74b9cd67f5fad4485c07bd38d3ed567822f1fd5ace44676dbdc3d478668` |
| 86 | `theorem` | [invApp_app](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp-app-source-edition-3.md) | 834 | `result-track:f2ff432f2151861c1c958fdbd1fbe17b7ee335d1041f87968cf158edeb6a2ab0` |
| 87 | `theorem` | [app_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-invapp-source-edition-3.md) | 842 | `result-track:adae6255887809958996ad49d599258308ebd41ab0d3e0063a17e269406b722c` |
| 88 | `theorem` | [app_inv_app'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-inv-app.md) | 851 | `result-track:10b98993083d6cc8e765f0b68aebf1a0a1a395a5379dc4da7c0f13745c4f96af` |
| 89 | `instance` | [ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict.md) | 860 | `declaration-track:00469f8f906181b8fc002b13b481247882b1cd93736001bb8f9f41d6fc7c5e3b` |
| 90 | `theorem` | [ofRestrict_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict-invapp.md) | 865 | `result-track:3295fee340ccfe58810bfae10d5950610c6ab2448b1b6e309c5fabe329b16c67` |
| 91 | `theorem` | [to_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/to-iso-source-edition-3.md) | 871 | `result-track:c4c8e1a1b14b348ffcb9012563185eea9ce3912fdbae73fc43978b5d5ec03f16` |
| 92 | `instance` | [stalk_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/stalk-iso-source-edition-3.md) | 875 | `declaration-track:cd134e2c5aeb94f8941a98d48f047e250a214a9905320752b9ec980a48995c69` |
| 93 | `theorem` | [sigma_ι_isOpenEmbedding](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sigma-isopenembedding.md) | 888 | `result-track:c706b27f936164430bc49399f2ccb80abfd212d92cd92e137c4f4b3cbf0fd855` |
| 94 | `theorem` | [image_preimage_is_empty](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/image-preimage-is-empty.md) | 903 | `result-track:ddb6f63d8b41adccf85cfec9208202081e6ffcbd13f4d54a86f6d331e4ffbac8` |
| 95 | `instance` | [sigma_ι_isOpenImmersion_aux](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sigma-isopenimmersion-aux.md) | 930 | `declaration-track:691177b5fd2a5373ad0498186ad490e5722885cf30217f8a9409c4d7a77e745e` |
| 96 | `instance` | [sigma_ι_isOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/sigma-isopenimmersion.md) | 965 | `declaration-track:6477410e325d6f17d47d01c5b87af567f51d8e60a92fb5f18b9eddd820e0ba85` |
| 97 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 983 | `declaration-track:e95f89890c5fc15ca4dee5793f13dc2e6238a8044b1c3676f5fdbc5cb1604727` |
| 98 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 992 | `declaration-track:6bd050e2e9f20b4307ec26c6fcfa7cbf33683b2443c48887eb52561699f6133c` |
| 99 | `instance` | [comp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/comp.md) | 995 | `declaration-track:0819c0f7c83efa586763b59f7f89d98b6892721687b188692e0804615b14f723` |
| 100 | `instance` | [mono](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/mono-source-edition-2.md) | 999 | `declaration-track:2c06d63972c4219c5be68cc4de341fde0eb1274900f2546973f1d12c2d524160` |
| 101 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 1002 | `declaration-track:2f8bd5815e04efaa629ce3afee62a39280863f4f17d95596971d3ce04711a9e7` |
| 102 | `def` | [pullbackConeOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleft.md) | 1007 | `declaration-track:08a1e3401ee756219a589c76bb6a12e828664a03a5af09230c8bcf6e6b1d5ef4` |
| 103 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 1022 | `declaration-track:6a10dc98c126570e3222280546830eedd5fd37b9110dd425b061ea6e8644e9b5` |
| 104 | `def` | [pullbackConeOfLeftIsLimit](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullbackconeofleftislimit.md) | 1027 | `declaration-track:651b117f688e7726acebcbbde4d3887316240d75fd6fca17e9113a492d3aa32e` |
| 105 | `instance` | [hasPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haspullback-of-left.md) | 1053 | `declaration-track:13020eeea0899789bd51bed4653a41911cf36708955831da79f58966ce6f93cd` |
| 106 | `instance` | [hasPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/haspullback-of-right-source-edition-2.md) | 1056 | `declaration-track:ba5d3b5e41e41b73cedff6b0812bf747c506fd0cab2fd88991102ed943a3c96e` |
| 107 | `instance` | [pullback_snd_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-snd-of-left.md) | 1060 | `declaration-track:d32186a72a8fbfd2bf4edc3ca34c45bc6a6f0d52c108640eb61032218305daeb` |
| 108 | `instance` | [pullback_fst_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-fst-of-right.md) | 1067 | `declaration-track:f8d37f13fb6116b715503dfc5012c8ae285f083b44290a4277bc5d5251bd46b0` |
| 109 | `instance` | [pullback_to_base_isOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-to-base-isopenimmersion.md) | 1072 | `declaration-track:0f4653a4b7a8a716b6e8c47b492e4164687a5d490f27731e1cb40d3c379e2ab3` |
| 110 | `instance` | [forget_preservesPullbackOfLeft](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-preservespullbackofleft.md) | 1077 | `declaration-track:36bf4cf254070f5181f17b35109b711368c4eb1eeb32cb31e61daccfa6477d05` |
| 111 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettopresheafedspace-preservespullback-of-left.md) | 1084 | `declaration-track:3a2eab797634d52b1172b9f80ccb49b8dfed8e7abeaa14735b77038844a51924` |
| 112 | `instance` | [forgetToPresheafedSpacePreservesOpenImmersion](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettopresheafedspacepreservesopenimmersion.md) | 1091 | `declaration-track:3967c96205834ccde13de3952d27cf192f0cc82447244d392ede966707793207` |
| 113 | `instance` | [forgetToTop_preservesPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettotop-preservespullback-of-left.md) | 1097 | `declaration-track:e2bd6a26907aad796697c7d26be208bca44fe35b2df09cd0e9555f34fe831d7c` |
| 114 | `instance` | [forget_reflectsPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-reflectspullback-of-left.md) | 1109 | `declaration-track:e2dd8e937120eacc62afd8ad9bb3ffb12546546a299a896e9d411cb6ba944706` |
| 115 | `instance` | [forget_preservesPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-preservespullback-of-right.md) | 1113 | `declaration-track:c5c19a345422a6840be443c8c86c7eb571ffb5615227422739c7581ccee26caa` |
| 116 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettopresheafedspace-preservespullback-of-right.md) | 1117 | `declaration-track:bf58379f9943cf26fa935c5fabb2a2765d617696061b5a61bf5c134f61411ce1` |
| 117 | `instance` | [forget_reflectsPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forget-reflectspullback-of-right.md) | 1122 | `declaration-track:e889567425552f89e8c0de167a855ce815565b6793c9cf06d7852be7e398810a` |
| 118 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_left](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettopresheafedspace-reflectspullback-of-left.md) | 1126 | `declaration-track:2c29f0d46d673a99da3d33faab7fdece9cc9513560cb63c54b70af5cb53f9fc8` |
| 119 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_right](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/forgettopresheafedspace-reflectspullback-of-right.md) | 1131 | `declaration-track:bafe95239e18009c0ed143350e3b62065b850b229f7c581e677a5ecbab6a369f` |
| 120 | `theorem` | [pullback_snd_isIso_of_range_subset](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/pullback-snd-isiso-of-range-subset-source-edition-2.md) | 1136 | `result-track:c1a0ff83afe2d0d830fd302823bb8bf109d80f3eaf874c80a8e90bf88291a03b` |
| 121 | `def` | [lift](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift.md) | 1153 | `declaration-track:2f5f77d34767b410d52ccc36918dcd5193466d78e31a4fb9f9e13a33d899c3d7` |
| 122 | `theorem` | [lift_fac](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-fac-source-edition-2.md) | 1158 | `result-track:d836d0e2b000e2094d40516cc1b0381effd8132ec8e6feb486817bd7a9896e58` |
| 123 | `theorem` | [lift_uniq](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-uniq-source-edition-2.md) | 1161 | `result-track:ddab8e8442bb941c867ef49291ed7ea1c06393bd4554dbab7dba3cca60f47fb1` |
| 124 | `theorem` | [lift_range](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/lift-range.md) | 1165 | `result-track:36972f7e331515a4aac57555928dd63542fc4c38e2791faf80c8c43e64ebd753` |
| 125 | `def` | [isoRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict.md) | 1186 | `declaration-track:141138b95a88f681cff74e047a32a001565be7ce4a528c812d8e214dfa3f84c2` |
| 126 | `abbrev` | [opensFunctor](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/opensfunctor-source-edition-3.md) | 1194 | `declaration-track:f107443c7b25ba0bec504bdaa8cf781b5d2cb52b65b1e2f7f10133fb8b093805` |
| 127 | `theorem` | [of_stalk_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/of-stalk-iso-source-edition-2.md) | 1205 | `result-track:faf586cdbc997dd9909147f6d94725a73acedbfe97b75f4d3c99417476308355` |
| 128 | `theorem` | [isoRestrict_hom_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-hom-ofrestrict-source-edition-2.md) | 1217 | `result-track:4e96ab0574c140d4bfad9e4c7cd34dca84890e814164f1161c9e76c8f8482355` |
| 129 | `theorem` | [isoRestrict_inv_ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/isorestrict-inv-ofrestrict-source-edition-3.md) | 1222 | `result-track:a1b9ecb3ac274ae8466f3199f8acc435efdc2abef54502e6124d9c35925d158f` |
| 130 | `def` | [invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp-source-edition-2.md) | 1225 | `declaration-track:7acb474f844ff54448a180a367cfb39a5e0f717128e887f0df26cad3b31f22e9` |
| 131 | `theorem` | [inv_naturality](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-naturality.md) | 1233 | `result-track:12b74bda35f38914b60debabb4c9642fbe66d1dba86adc831261b7b5ab8d4b63` |
| 132 | `instance` | [(anonymous)](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 1239 | `declaration-track:8c81cb7a576c0ea2b20f0512ca71e99eb33ee087eb496354278655d2c0b5d1e9` |
| 133 | `theorem` | [inv_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/inv-invapp-source-edition-3.md) | 1242 | `result-track:e22b696fbaf8f1943e531a3e4882919935823f46b3993d8cea7cf493b28c9c44` |
| 134 | `theorem` | [invApp_app](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/invapp-app-source-edition-2.md) | 1253 | `result-track:e5f670210e03d72a594cf132fb86964b45db787f8072bf47c54b44f314663bdc` |
| 135 | `theorem` | [app_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-invapp.md) | 1264 | `result-track:14d2c1c64dce03eeaf40cfe6f8366b575d0d6147701cada1be6242ea62fdc011` |
| 136 | `theorem` | [app_inv_app'](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/app-inv-app-source-edition-2.md) | 1273 | `result-track:2fd7dc8a601689e4cf9b6ec7484cfd22544933352b13f84f87b0ac33c73ff782` |
| 137 | `instance` | [ofRestrict](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict-source-edition-3.md) | 1282 | `declaration-track:ede3579a6d27329ede9f977d24f1515fcda8b850dd892ac3780511eb9f50ada0` |
| 138 | `theorem` | [ofRestrict_invApp](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/ofrestrict-invapp-source-edition-2.md) | 1287 | `result-track:77d16a9c206d874c5dc57bd0f462ee41fed43416389025533eb3b704fbe5d5a0` |
| 139 | `instance` | [stalk_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/stalk-iso.md) | 1292 | `declaration-track:ab3ec065064c964b5952be24b382e9e3a24ff6c719e3ecc2f1fd23ab9fb778e1` |
| 140 | `theorem` | [to_iso](../../../../Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/declarations/to-iso-source-edition-2.md) | 1295 | `result-track:a251826344bea18f3608e1775514564734c6112048c5cac9f88275588bd474ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb59e9d980c07ba5b94e354d79137b37f87356cdd88833103073e9873bd7c023 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
