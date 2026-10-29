# Verification target: Group Theory Submonoid Operations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
  "lexical_observation_count": 180,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5571172e066dee37586abc057c9167c7ebf595f`.

Source path: `GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Cancel.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Operations` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.toAddSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoid-toaddsubmonoid-source-edition-2.md) | 79 | `declaration-track:e056e59dbb63c3bd071e40faa935bd60301634d3e1060a7a7d6343108589575c` |
| 2 | `abbrev` | [AddSubmonoid.toSubmonoid'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/addsubmonoid-tosubmonoid-source-edition-2.md) | 96 | `declaration-track:e2ce326526b38d31820184a95422d6d79f2678981e17b5d56ad7ea334699cdc8` |
| 3 | `theorem` | [Submonoid.toAddSubmonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoid-toaddsubmonoid-closure.md) | 100 | `result-track:117622b2912a46704e78ec07b22a4ba34ad3f9202ad6a8e2e10e746da2300045` |
| 4 | `theorem` | [AddSubmonoid.toSubmonoid'_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/addsubmonoid-tosubmonoid-closure.md) | 109 | `result-track:8d871c9a2e19cecae4ae2152d8fef364a44ffd42d3a858451dd40d27074004df` |
| 5 | `def` | [AddSubmonoid.toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/addsubmonoid-tosubmonoid.md) | 127 | `declaration-track:a62dec793b1f338cd71aee88034a2deecf3c3f0531e59f61feced05f056f8f53` |
| 6 | `abbrev` | [Submonoid.toAddSubmonoid'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoid-toaddsubmonoid.md) | 144 | `declaration-track:95335eb241fd1eb7a43fed122be33f64a51043fc33b7db045434f996b2030817` |
| 7 | `theorem` | [AddSubmonoid.toSubmonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/addsubmonoid-tosubmonoid-closure-source-edition-2.md) | 148 | `result-track:a417d3a973202b187eaabb79d8bb19509971da8a8b458853b976422adfa464cc` |
| 8 | `theorem` | [Submonoid.toAddSubmonoid'_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoid-toaddsubmonoid-closure-source-edition-2.md) | 157 | `result-track:a691406b70e6aec8df823a0f7e8c295c5d03aab4fd5a7aa599e0b6a6d90cea1d` |
| 9 | `def` | [comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap.md) | 181 | `declaration-track:aa20cd174c11ba14e672325ef445a38b3b87d4e1e318b7ed0520370ff47f60e1` |
| 10 | `theorem` | [coe_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-comap.md) | 190 | `result-track:feeec2d9a4668be06336a9c6c8a07e3772a8e52e2b4ea9c6fac427990691fbf1` |
| 11 | `theorem` | [mem_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-comap.md) | 196 | `result-track:13adcb6cb0fd177ba64d63b498eb4fb39afbbd804434089a3944d54183fa7331` |
| 12 | `theorem` | [comap_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-comap.md) | 202 | `result-track:d01d41cb0913bd3013bafcfb8bcc3ca820bc6052f905b5512a8ab770bbaa0f32` |
| 13 | `theorem` | [comap_id](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-id.md) | 209 | `result-track:c90ec42253461299e402f0f06cbde36bf0ef4c44c244e730dc5a6aa4986c46ab` |
| 14 | `def` | [map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map.md) | 217 | `declaration-track:cb8480871270efbbe3c65a48c9afa4528ea4fbb5007d698bc275994d2a0c6fcc` |
| 15 | `theorem` | [coe_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-map.md) | 228 | `result-track:49df7d1434f05136a7ed8eadc1a04cbd1baa5d8bf6aa8be25dbd16ce2eb34e37` |
| 16 | `theorem` | [mem_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-map.md) | 234 | `result-track:ef2a2061ea82a53705ed727fba33ab4b134dbe96970df56b4d5757fc51932aa9` |
| 17 | `theorem` | [mem_map_of_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-map-of-mem.md) | 241 | `result-track:fc55af44b0bd2fac41005016dbcb69f5b5cfd96e496d535aec49acbcba017a76` |
| 18 | `theorem` | [apply_coe_mem_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/apply-coe-mem-map.md) | 247 | `result-track:7ad536f9394bb78b67226725e11c9781714d9fabd371dc0a03ba734cb4ed3f45` |
| 19 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-map.md) | 253 | `result-track:e06fd003639359393106d4e290d9aca5029a6959cc0e0edd9dfdd6affb73b187` |
| 20 | `theorem` | [mem_map_iff_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-map-iff-mem.md) | 262 | `result-track:afacabdab7637379843524d21cd22437a302cb2678888de80bad388bd1ea7557` |
| 21 | `theorem` | [map_le_iff_le_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-le-iff-le-comap.md) | 269 | `result-track:a49dadd3b18fc873797db9d8d31e5f3ca5f41be6834bb0a0967d26f7c4310cb5` |
| 22 | `theorem` | [gc_map_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/gc-map-comap.md) | 276 | `result-track:80e3b38d66eb8205f394dc020f820bfd624613b41594707f3170d20bfa1f82c4` |
| 23 | `theorem` | [map_le_of_le_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-le-of-le-comap.md) | 281 | `result-track:fec861d6126ecd2c5eb2bdd56490099af7709b7178a1e4a44bcc5c8d6650544d` |
| 24 | `theorem` | [le_comap_of_map_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/le-comap-of-map-le.md) | 287 | `result-track:fb7c8f1802f6596874f7d75c1b448bfd573269e4c0c931d92e0f3d9a9b375c82` |
| 25 | `theorem` | [le_comap_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/le-comap-map.md) | 293 | `result-track:9982949bd0ff9076977e01afe57977dcd1a995f933218361afba7b10b7922a79` |
| 26 | `theorem` | [map_comap_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-comap-le.md) | 299 | `result-track:3f5380f901a7759799681365803ed90308526d271381f80aa7d653b5a9b95efd` |
| 27 | `theorem` | [monotone_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/monotone-map.md) | 305 | `result-track:dbb77c8d0bf17070315f0b4da844b1a54617db36984f70326aed5895ef9cbe67` |
| 28 | `theorem` | [monotone_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/monotone-comap.md) | 311 | `result-track:045e20a85c6d5e246c440198a024800b1068cde4160e0438fc75d5dab9a4428f` |
| 29 | `theorem` | [map_comap_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-comap-map.md) | 317 | `result-track:04ea2f3b7bda7c4b24fc78aa55c787049a1109838161c57089e75d3368eefe71` |
| 30 | `theorem` | [comap_map_comap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-map-comap.md) | 323 | `result-track:e612828c31cb39c57abe83cb889dab29ef48f37044d45647591fc44ed8b2920b` |
| 31 | `theorem` | [map_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-sup.md) | 329 | `result-track:50d5f5b8478632a41a1406db656073ccd56ed6cd0dc90d87334d8fa9bbaffe7a` |
| 32 | `theorem` | [map_iSup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-isup.md) | 335 | `result-track:4d5bebd2261ffde6454382a5f49ddd48b0e56aad507e3d46241afe6af88676f9` |
| 33 | `theorem` | [comap_inf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-inf.md) | 341 | `result-track:86cba0560c119a627d04adbfd41570dc77ce4760f224470d9636bf5dba68ed65` |
| 34 | `theorem` | [comap_iInf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-iinf.md) | 347 | `result-track:28cd8d2b925ca669d3832811dad683d9f214f375079055447068bcdc732e7c91` |
| 35 | `theorem` | [map_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-bot.md) | 354 | `result-track:6443852c38345763cc830909a27ff64fdc8f5e09218bdc16c31e1df18c22402e` |
| 36 | `theorem` | [comap_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-top.md) | 360 | `result-track:27769be24d37d0658b4ee9ee880d8475dd37fc84ec43122178b5074d2184e639` |
| 37 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-id.md) | 366 | `result-track:656a6385cb345661eae81d5376c7ed60452964dea2a59e60c7cd53e11407a51d` |
| 38 | `def` | [gciMapComap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/gcimapcomap.md) | 377 | `declaration-track:7e94248b40e0662e4077e480993f3dd02c80625d39b369481cb5cba6be9bfe25` |
| 39 | `theorem` | [comap_map_eq_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-map-eq-of-injective.md) | 383 | `result-track:625e760c3a6d4eb8a6b8beedf2384af127658b552f1c541ff5f5ef14b01bfdca` |
| 40 | `theorem` | [comap_surjective_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-surjective-of-injective.md) | 389 | `result-track:3bca61bdc16eb67bec2c9ae4edacfd3970b6a4c8aed40778b3ad82fa568b16fc` |
| 41 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-injective-of-injective.md) | 395 | `result-track:551bd0e4c43e77fab3089344aa9b8f19bca84cf47a9f4351e828c60ceda8e371` |
| 42 | `theorem` | [comap_inf_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-inf-map-of-injective.md) | 401 | `result-track:6115ff628c9f3a9f66049b4f20d6543f16c9eec1b3844f4f0ab1c8daae045ef5` |
| 43 | `theorem` | [comap_iInf_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-iinf-map-of-injective.md) | 407 | `result-track:f602ddf3dd280138a02fc04df92c1247fe9d36d294a421dbf2f4b638efb38b3f` |
| 44 | `theorem` | [comap_sup_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-sup-map-of-injective.md) | 413 | `result-track:282f08396a67b3393e7c2c1990ccfac6c4945b798a2005b100f772e8b642db1b` |
| 45 | `theorem` | [comap_iSup_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-isup-map-of-injective.md) | 419 | `result-track:c7c2274da91404d566c45309d050a248d3d95aefea471f92a305499e573a86ca` |
| 46 | `theorem` | [map_le_map_iff_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-le-map-iff-of-injective.md) | 425 | `result-track:5b566464c944443c6f75902a12b367db818a7db91f54f39bdd89084273ae0998` |
| 47 | `theorem` | [map_strictMono_of_injective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-strictmono-of-injective.md) | 431 | `result-track:1a94dc56f22eb0c1865f36fa07c4bf556abb8bc31be1cfdddac0c660fe709d79` |
| 48 | `def` | [giMapComap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/gimapcomap.md) | 444 | `declaration-track:df6d96ac1fd32e49bd33ee756635be241ef59d3b05fe10561676333707029854` |
| 49 | `theorem` | [map_comap_eq_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-comap-eq-of-surjective.md) | 452 | `result-track:8ded64c4d4d6141a066fdb8a2b2d116255e9b24d159d5a3589f8d8d3ae74091b` |
| 50 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-surjective-of-surjective.md) | 458 | `result-track:a0457299309d4f04b8263efaf8d8655fff7968f57a681d1895969f08be49ffae` |
| 51 | `theorem` | [comap_injective_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-injective-of-surjective.md) | 464 | `result-track:b7800036c150de7734cab941adddbe25c175c5d22cebeb37f1afecda64b1b126` |
| 52 | `theorem` | [map_inf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-inf-comap-of-surjective.md) | 470 | `result-track:4fd793fecba6a62cbf3e46216e98956f6a1feb885c71127613abbae7b8fdf8d7` |
| 53 | `theorem` | [map_iInf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-iinf-comap-of-surjective.md) | 476 | `result-track:a4ace401ff8d92b229ce0e2ee126301b487d0acff01c7c75164f9edaccceb959` |
| 54 | `theorem` | [map_sup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-sup-comap-of-surjective.md) | 482 | `result-track:4a94658b5de3b9ec2efc96a31ef94dc027e2cb3fd5c189cd1552bcee4c98d915` |
| 55 | `theorem` | [map_iSup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-isup-comap-of-surjective.md) | 488 | `result-track:79e23457b4012f28e703e6e5e573fb8129858b0f9473c211e950f63ece96bb8d` |
| 56 | `theorem` | [comap_le_comap_iff_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-le-comap-iff-of-surjective.md) | 494 | `result-track:22cd440a5d7ffbc75c76cbba58caaa8da1f6a884deb8e7c6a2296e85cfa2b50c` |
| 57 | `theorem` | [comap_strictMono_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-strictmono-of-surjective.md) | 500 | `result-track:11fbe62df66cdba7face4b786575e0cc212cc113176466fff7e0901a41d1994d` |
| 58 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/one.md) | 515 | `declaration-track:23f6533861bd21be5728a4c6e675ce05e9688b88202cdb111f284267ea6ca281` |
| 59 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-one-source-edition-2.md) | 521 | `result-track:ad11df564c5d53031e5a6c0f787ad62390786915f39f6b226c36a15e4ed69961` |
| 60 | `theorem` | [coe_eq_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-eq-one.md) | 529 | `result-track:a29545b3ec89ccecb09ffcd4361a902a40be716ae2509c4f56166fd2301116a9` |
| 61 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/one-def.md) | 537 | `result-track:9d8e9da714dc55fdd5e6c6dbbc85dbbc8a26e3b4e03dd00944caebeb0cd92772` |
| 62 | `instance` | [AddSubmonoidClass.nSMul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/addsubmonoidclass-nsmul.md) | 547 | `declaration-track:159f195e9d43f2cc1aec5f5f0dbef27fc953a2fa3afc7da793af1a925d2e31ba` |
| 63 | `instance` | [nPow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/npow.md) | 555 | `declaration-track:27c62a17f00b5b06d68854037e00393cbadd53957e8291d951f8962547da9c1d` |
| 64 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-pow.md) | 562 | `result-track:3849169d9ece3f0122bbf3c4e4479fa51317e141eac54aba859db96f018ceb2e` |
| 65 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mk-pow.md) | 569 | `result-track:b62073add440848b3e6af12daa6e34c6bd24dbe88408d4704aedad64259ef877` |
| 66 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-3.md) | 579 | `declaration-track:7dd0e909d80bb4fd3afa28e95575e1a253d73a59b925de91f84741504af652e7` |
| 67 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-5.md) | 588 | `declaration-track:ca65d3290193417be07e92f049f555e3d564d7c88a9c497da47ae2cb1ece4fdb` |
| 68 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance.md) | 597 | `declaration-track:2065b951b3e9851933de5ba79b3f1d9655736c3f266a0ba04d750fbc7f8c20e5` |
| 69 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-2.md) | 606 | `declaration-track:6e4a56a0cba2729b2d3a5d353f8ca43d2701124115560a4d66002dc7cc0ad90e` |
| 70 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-7.md) | 616 | `declaration-track:f6c66f27c3f28d65cde05fb6bad1d3af8ce665d18dd0b43d6845a60c0291f0a5` |
| 71 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-4.md) | 627 | `declaration-track:99ee46589369a95182dc09dee5a8b108e92144f64bcca5b3ac623e8b505770de` |
| 72 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/instance-source-edition-6.md) | 639 | `declaration-track:d6dace0d51ca21f50e085670bf2d298b11e46292c13a56001e13cc1cddb17aba` |
| 73 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/subtype-source-edition-2.md) | 648 | `declaration-track:436995f0618f394df1e1e24b2ee496e42cdb832edfd3caf9da55050e2ef76fef` |
| 74 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-subtype-source-edition-2.md) | 654 | `result-track:c318cd33864a9e99ec1c9bf9f2f54219c263c3f99302abdaf52ef6079558b4a6` |
| 75 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mul.md) | 665 | `declaration-track:44d58bcb1fd327a3a9914eeb9aa8229907535fa0c02f4e70e057357a8e420e52` |
| 76 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/one-source-edition-2.md) | 672 | `declaration-track:b2f3066995e9c7683f048989e24bde1de6fcdf6926bb1f57b9707a96778f42b1` |
| 77 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-mul.md) | 678 | `result-track:eaa04ead4799d4d970a95327a806f9a3eb434180121e1f2592e4f012fd063401` |
| 78 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-one.md) | 684 | `result-track:477639242f4fb4e0c129d4e58600bf803b1f431d341d732ff5c041f65d9ffb21` |
| 79 | `theorem` | [mk_mul_mk](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mk-mul-mk.md) | 690 | `result-track:5145adaf5dd88b0b962e6e12f9ed78ae042cc81dbb382906bfc671ef6f29787f` |
| 80 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mul-def.md) | 697 | `result-track:32d83f731f33b2cd32dbb37515ca42bd436fe7b1d34caa568dc428070f2afa84` |
| 81 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/one-def-source-edition-2.md) | 703 | `result-track:e27b5fc5721d2d604b3a1321730767d741f9bbbdd7f09a971ac8ad95f09356d4` |
| 82 | `instance` | [toMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/tomuloneclass.md) | 711 | `declaration-track:dc452fe47d4c15284b557aa7e8c1ebdf2cc1c46c858e63b2e84ff6a008d0b857` |
| 83 | `theorem` | [pow_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/pow-mem.md) | 717 | `result-track:468f9d7163ff814a5a02aa6ec0ba87bc3e1cf076a86da82152899a6cb75cab8f` |
| 84 | `instance` | [toMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/tomonoid.md) | 729 | `declaration-track:ef39fd21d0dace2f69e4f2ec9801b39ecd4151852aa16b0f49fa08b981cbcbed` |
| 85 | `instance` | [toCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/tocommmonoid.md) | 736 | `declaration-track:0cb7f1ea7281d9e54267b21a5248a6b92a0754d21564f301f035610d4a861a90` |
| 86 | `instance` | [toOrderedCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/toorderedcommmonoid.md) | 743 | `declaration-track:99c076956e0faebcccd3d5586f59cc22bd553708ccfd683318a81b61fdbe333a` |
| 87 | `instance` | [toLinearOrderedCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/tolinearorderedcommmonoid.md) | 751 | `declaration-track:8a7d8f6492eba0c42516d2bcf65228796316b3b0c34bb07364fd1d44011a14b0` |
| 88 | `instance` | [toOrderedCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/toorderedcancelcommmonoid.md) | 761 | `declaration-track:ef72b2038e5902b261e4e135ac2431ff3e77790bc4d987389dbd6ae0ba24f874` |
| 89 | `instance` | [toLinearOrderedCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/tolinearorderedcancelcommmonoid.md) | 772 | `declaration-track:467896726a767f7b3783c6d516caca78f383d6badde7c15432ef82bf19285d02` |
| 90 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/subtype.md) | 781 | `declaration-track:1e2625f551d8cbad2ebc082847e1b9cdc4b6b7bee7b49d9f1c2d6685cd5dcc2c` |
| 91 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-subtype.md) | 787 | `result-track:7267620c3c374d0d7ccd12b3b145355cf9852bb1e7ccd5a73db6d0a3a08f2f1e` |
| 92 | `def` | [topEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/topequiv.md) | 794 | `declaration-track:6f2783ccf315a337beb37bdb3d6db80e076169a15628875554843cb8e3ca5144` |
| 93 | `theorem` | [topEquiv_toMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/topequiv-tomonoidhom.md) | 806 | `result-track:84127933775c5d65530e4709f941a0ba542b81c9e9dd0b38938b3f8755babdec` |
| 94 | `def` | [equivMapOfInjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/equivmapofinjective.md) | 815 | `declaration-track:44bc5ac7603ef1a6d7b2c4bd29cee64394c3d5f72c5cf4d0f5b3779b5bb125f4` |
| 95 | `theorem` | [coe_equivMapOfInjective_apply](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-equivmapofinjective-apply.md) | 821 | `result-track:8bc1b62ebd79b555e9d9c8d39f1018e2daab6ca07e8457780224ad950b71aa9c` |
| 96 | `theorem` | [closure_closure_coe_preimage](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/closure-closure-coe-preimage.md) | 828 | `result-track:040f65436d938f11c1058b1d1b2ffcc24a1d62eb844442c7ec909218cae645fc` |
| 97 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod.md) | 842 | `declaration-track:39c7ed0f2abd4f2a09294e3a73270310c68aaba29ea826a858d812c983b6a2d7` |
| 98 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-prod.md) | 851 | `result-track:b50242f61aad818b44b8ec6c25a770087052e753c29800c0aba7ed0327dc24e6` |
| 99 | `theorem` | [mem_prod](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-prod.md) | 858 | `result-track:2f980cc6e9950e1c8ec8f32eef558510c4a9d290b9ba556d197852eca7afc43d` |
| 100 | `theorem` | [prod_mono](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-mono.md) | 865 | `result-track:ede5b9d468309d6c2c6d9df380f0397f41e966f9a8a7652b7b66c04be885c8dd` |
| 101 | `theorem` | [prod_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-top.md) | 872 | `result-track:57ef0a493f411b23b96fb3155526459595e1d765d6155980e3005599a8b88eca` |
| 102 | `theorem` | [top_prod](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/top-prod.md) | 878 | `result-track:48c346d74952a5337e12d04f3887e8e0bab1add2f31d31c83b316f9b32b3a7f3` |
| 103 | `theorem` | [top_prod_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/top-prod-top.md) | 884 | `result-track:e27e0789d34af389b4f168c02a75477cb94d857b39bff93276b594c0d048c2e3` |
| 104 | `theorem` | [bot_prod_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/bot-prod-bot.md) | 890 | `result-track:2f8303430c5ea9fa45c42af6c50794e5c69066a3a59076015bbb2e35e1800338` |
| 105 | `def` | [prodEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prodequiv.md) | 899 | `declaration-track:88f3b003a28b6e479e3c39d456bc09703424d94363e07f8c3b1a759a9dac7dbe` |
| 106 | `theorem` | [map_inl](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-inl.md) | 908 | `result-track:693740d523ccc6bbcd5842ad1786ba54d9a8d7a5a8258caaf9439488d4095eae` |
| 107 | `theorem` | [map_inr](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-inr.md) | 916 | `result-track:f4d326b6f4340cffdffe0f00a60ef86e340b2d8677c4f8d868c71354df59ab64` |
| 108 | `theorem` | [prod_bot_sup_bot_prod](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-bot-sup-bot-prod.md) | 924 | `result-track:8b12e0af9554f813c97adcc144c875eedacd8984ef8118edb58939d2d741c1e1` |
| 109 | `theorem` | [mem_map_equiv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-map-equiv.md) | 934 | `result-track:d67328b4cc1fcf6857c135f183b1dfa8f05190fcedc3b4b0e57072668b38fd4b` |
| 110 | `theorem` | [map_equiv_eq_comap_symm](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-equiv-eq-comap-symm.md) | 941 | `result-track:3fb88afe2d9be63b30f3e00008d3a34420fda03f7dedf1e25c4cdfeace0c7b51` |
| 111 | `theorem` | [comap_equiv_eq_map_symm](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-equiv-eq-map-symm.md) | 948 | `result-track:8c56e05ad3efb5dfdfab29407d27f742125af11bd2536176ea0383f053238ec7` |
| 112 | `theorem` | [map_equiv_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-equiv-top.md) | 955 | `result-track:06147ac1fef452bbce9d51a32be5eca6a1814bf03575fe42da48c2f49abdf581` |
| 113 | `theorem` | [le_prod_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/le-prod-iff.md) | 961 | `result-track:a63889c12ac2ba77a4cdde560fd112a950c25449f64e5c508a183c60be328cbe` |
| 114 | `theorem` | [prod_le_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-le-iff.md) | 976 | `result-track:b6ca668f927bfb66d7c88b05d77a285721a9bc33a1a611f94fcb8defbaad83de` |
| 115 | `def` | [mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange.md) | 1039 | `declaration-track:d07189fe1d09c5d12688af85270b7ddb20c05452f160d65efaa65a3693da81a9` |
| 116 | `theorem` | [coe_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-mrange.md) | 1045 | `result-track:a2abddbd501bf6e92c42aceaf054020a01e872b627e21a734dc4a62c7526eb48` |
| 117 | `theorem` | [mem_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-mrange.md) | 1051 | `result-track:eb928534350785741eb460cf54cabb882cbed025c98724f39b865bad30f377c5` |
| 118 | `theorem` | [mrange_eq_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-eq-map.md) | 1057 | `result-track:713fc41e19b009529eda19cd7adf632898103cfb97ce3a6e239f6c2c55973eff` |
| 119 | `theorem` | [map_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-mrange.md) | 1063 | `result-track:5b9a236c4f3172db003ad45d2aa5236a216e14c4e9745a06b1a1ef66ddced263` |
| 120 | `theorem` | [mrange_top_iff_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-top-iff-surjective.md) | 1069 | `result-track:9a239e1f98ded1a1eb1f0a446a7cc7028544cc659aa00d910c799f9dfb9b94d7` |
| 121 | `theorem` | [mrange_top_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-top-of-surjective.md) | 1077 | `result-track:d25b525cf68e0c8ec3674d80ca601b3313bb0ae2679d6e788be2478a7077ec96` |
| 122 | `theorem` | [mclosure_preimage_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mclosure-preimage-le.md) | 1084 | `result-track:bd31ef7e6e644c5b76ea45ba4d2c6fba0032ec711125b1dbcd4bf0a0112b1550` |
| 123 | `theorem` | [map_mclosure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/map-mclosure.md) | 1094 | `result-track:5d3660a7f0f1cf24ddabf1ad6c3dff9b6f069bc97a54c5e02f705ac022d8897b` |
| 124 | `def` | [restrict](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/restrict.md) | 1104 | `declaration-track:f4cd9361bdbd38f2c65640efd68216a1fc6106f3908747d34ae118a44840c6e7` |
| 125 | `theorem` | [restrict_apply](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/restrict-apply.md) | 1111 | `result-track:163e883efec61f10ff95aa48357b2da17eb1dcfe6cfe4b11fd955249ec88bde2` |
| 126 | `theorem` | [restrict_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/restrict-mrange.md) | 1118 | `result-track:ff555f35ad83b564869b0adb0108a47accad4340eaa4f471c21ce6a2b0145726` |
| 127 | `def` | [codRestrict](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/codrestrict.md) | 1126 | `declaration-track:18cc5eaabbf91a26a9ce0ee9171a74c8c5c8b7455e19c3e1d3c6bdb9c2b7eff8` |
| 128 | `def` | [mrangeRestrict](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrangerestrict.md) | 1137 | `declaration-track:63ebf2942bfc0a1a6b9fd90ece84a0fd57a10805abdd454460403c26d89581a4` |
| 129 | `theorem` | [coe_mrangeRestrict](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-mrangerestrict.md) | 1143 | `result-track:b16d1e4d3310ffeb8acfd095da9efc1f0b9a288f603ee5ad1606c3fd6fbec3e4` |
| 130 | `theorem` | [mrangeRestrict_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrangerestrict-surjective.md) | 1150 | `result-track:69cb99241e798b490eab1fd1926b0dd30bcd8e971244cfa917f1e0998a84f285` |
| 131 | `def` | [mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker.md) | 1160 | `declaration-track:5e290251ad7dbf5b5c65c16105c144578a7d74884cdca0a4bdabbf71f6805b43` |
| 132 | `theorem` | [mem_mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mem-mker.md) | 1166 | `result-track:3dd08924638e8da85315d726c0e9db9cb01bd32e410c183b99efb2c3dd0236e1` |
| 133 | `theorem` | [coe_mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-mker.md) | 1172 | `result-track:1a6f10e1a43bc89fa9f82a1126d86c5b55f0241161bcb02057038ab89983d73f` |
| 134 | `instance` | [decidableMemMker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/decidablememmker.md) | 1178 | `declaration-track:db65b4932cabe3eae66d7a546c5398f281039bfad238d6f968b675a377aa0082` |
| 135 | `theorem` | [comap_mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-mker.md) | 1184 | `result-track:3bc7af4f13e1b01de8d570f9898eab279e9045f3fc3e15ede97884ff142a6723` |
| 136 | `theorem` | [comap_bot'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/comap-bot.md) | 1190 | `result-track:e77eb7ad50cb5f5725ee64b7238cb7b8619af5f42ac2d988b13b35f84dee5084` |
| 137 | `theorem` | [restrict_mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/restrict-mker.md) | 1196 | `result-track:ebdc8133faea475ce15bda3275bbb7891ebf9ea1449c75211e20190f126590e8` |
| 138 | `theorem` | [mrangeRestrict_mker](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrangerestrict-mker.md) | 1202 | `result-track:7d62eb1697c8551f4beaf85e8401236ef5e5399a0206a5c36fce04d7a54d7e0f` |
| 139 | `theorem` | [mker_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-one.md) | 1210 | `result-track:5cbde93109ca3cb8f5885d471843565bb3a6b588ebfa898d18f8a6d6fb2f9a04` |
| 140 | `theorem` | [prod_map_comap_prod'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-map-comap-prod.md) | 1217 | `result-track:08e2c91351540e5ac933e8bde27c6c33ccb629a2e3b1e553e991bd2bab2fc365` |
| 141 | `theorem` | [mker_prod_map](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-prod-map.md) | 1226 | `result-track:d44afc47e0a40e1b3e103903ada7b87110c181b66b27ee7e32af78c5bd4dda36` |
| 142 | `theorem` | [mker_inl](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-inl.md) | 1234 | `result-track:b0ff50d147a4d267a4b1d0e60074f3ef4c22cac3e0112515f3fc10431b1013d0` |
| 143 | `theorem` | [mker_inr](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-inr.md) | 1241 | `result-track:df5982b847c935585044498a710a02854e60f9f5c2de84b83b8f4ff3c1e7f050` |
| 144 | `lemma` | [mker_fst](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-fst.md) | 1248 | `result-track:8fe0b1404dd1318e12fe781ca3494ca66ed1a18cb62d4fc2dd5171ed4da89c63` |
| 145 | `lemma` | [mker_snd](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mker-snd.md) | 1251 | `result-track:c2f54d2d5062e13dbd4d3782ee421787e884e3fb2c11cc17cd800db539de5400` |
| 146 | `def` | [submonoidComap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidcomap.md) | 1256 | `declaration-track:abd7c42c9ce3bb423df496baeae8c7ac809c4fa9bf684d11a4c0c40ec8bb2b4d` |
| 147 | `def` | [submonoidMap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidmap.md) | 1271 | `declaration-track:1739f39b33f6421ad0b301e58d88296158ccc01c30c260fa3b8c33ee3874a272` |
| 148 | `theorem` | [submonoidMap_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidmap-surjective.md) | 1281 | `result-track:dccaaeb0cb7c85a457f15aaf33b3734c05d23518ac93879bd5f1654d4dd86951` |
| 149 | `theorem` | [mrange_inl](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-inl-source-edition-2.md) | 1295 | `result-track:33e3cdd8765f8ce78b8c42c862ef0625f882395d9701dfcc209ff718454aefac` |
| 150 | `theorem` | [mrange_inr](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-inr.md) | 1300 | `result-track:21331ef06022ed2fc5bb19b50b85048f280d370fc8fbc798ab92b55138c98cb7` |
| 151 | `theorem` | [mrange_inl'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-inl.md) | 1305 | `result-track:2a087335eba74c14f9bf94a9b65d4485e4940409d5cd9e8562b2ae4ab02a6e83` |
| 152 | `theorem` | [mrange_inr'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-inr-source-edition-2.md) | 1311 | `result-track:84f1f3c59dc2163a7c0ec1ecf05fbe9b49b0308528e141a9caa450ae1056b8f0` |
| 153 | `theorem` | [mrange_fst](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-fst.md) | 1317 | `result-track:e2648bac46cd1e954b994ec8fce1961644d3824e40a4f34980ab475fe3bd690e` |
| 154 | `theorem` | [mrange_snd](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-snd.md) | 1323 | `result-track:396f0c7f4473f4c534d6d6392a48cfda909737dd67f7c25b0c54bdd905b5aa9f` |
| 155 | `theorem` | [prod_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-eq-bot-iff.md) | 1329 | `result-track:b8853a41e1e0f66ea306270d28c97987a9eb0dd303d0bdfb86247f7e1655f233` |
| 156 | `theorem` | [prod_eq_top_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/prod-eq-top-iff.md) | 1336 | `result-track:869771da322ff00ba780274a1778aa2772680f2d3041ec287f6aacba0a9ce661` |
| 157 | `theorem` | [mrange_inl_sup_mrange_inr](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mrange-inl-sup-mrange-inr.md) | 1344 | `result-track:b61de488597057b60b7361c943e795b4482c766ac6af38c9e66c661892d849f3` |
| 158 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/inclusion.md) | 1352 | `declaration-track:38d23cdbb3b5a63c61669cbef1eede794bd03d0b5d1491ea81800615dfd47065` |
| 159 | `theorem` | [range_subtype](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/range-subtype.md) | 1358 | `result-track:557205ad1c3259f8fd3b2b5c0bad50e2cd49ef73bcd948511a61852ac739c343` |
| 160 | `theorem` | [eq_top_iff'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/eq-top-iff.md) | 1364 | `result-track:26a8a3b1cda5eff1fcd7f7c1116bd36bd50787d532793b47fb264a74708bb489` |
| 161 | `theorem` | [eq_bot_iff_forall](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/eq-bot-iff-forall.md) | 1370 | `result-track:42094adc772cd512d614243e07f3e75911c4fe8b8f7259971c14ddbd1b8eaca2` |
| 162 | `theorem` | [nontrivial_iff_exists_ne_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/nontrivial-iff-exists-ne-one.md) | 1376 | `result-track:899a5b2fdaab68e127f4ab3b17678f6c11cd07f6ddcced4974ddb3e633e54d50` |
| 163 | `theorem` | [bot_or_nontrivial](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/bot-or-nontrivial.md) | 1386 | `result-track:e7432c757649d0bd9945e0a9832fea2346b267409f4f62e29b238e0ad617dffd` |
| 164 | `theorem` | [bot_or_exists_ne_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/bot-or-exists-ne-one.md) | 1395 | `result-track:74bc4c4cbfd7f6d5e6200372a2771089251ec43dd261a0dc4763757e1e729664` |
| 165 | `def` | [submonoidCongr](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidcongr.md) | 1411 | `declaration-track:64f4b6ffe0a597fa998d7f7df1ca64ffc5092d8b502c6600985b42cc32514ec8` |
| 166 | `def` | [ofLeftInverse'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/ofleftinverse.md) | 1424 | `declaration-track:0ae92f8b0c0dac4bf7ee7863bfeeafbb432e06cc3379c7be421da9740a7750ea` |
| 167 | `def` | [submonoidMap](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidmap-source-edition-2.md) | 1448 | `declaration-track:81c4ae595756edb012e418a06cf077a246060d4cf80a9eb7034d0fe7bb6b429c` |
| 168 | `theorem` | [coe_submonoidMap_apply](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/coe-submonoidmap-apply.md) | 1454 | `result-track:082dfbb889bb56c9648cfb9d74fd95a327310d85d08e032f778ffbae16b90ffd` |
| 169 | `theorem` | [submonoidMap_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoidmap-symm-apply.md) | 1461 | `result-track:e07790bb9ceaa8a02389674774c052f98f2307759fcc9819c24d5fefff354a9a` |
| 170 | `theorem` | [Submonoid.equivMapOfInjective_coe_mulEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/submonoid-equivmapofinjective-coe-mulequiv.md) | 1470 | `result-track:b21286f5353a61b0b8f27f31215027bbaa569f3ec5298dd9ed6a71efa979d2de` |
| 171 | `instance` | [smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/smul.md) | 1498 | `declaration-track:7aef24b71c1f55ea102070639cb3665570fca277e713c465043582cf96f747b1` |
| 172 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/smulcommclass-left.md) | 1502 | `declaration-track:24b4579255a593ecdcc9515e9091056036d3037f0e0d8d3f1cd5592cd2f8ba42` |
| 173 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/smulcommclass-right.md) | 1509 | `declaration-track:fd47b8625129d526fed5d5028d8f31c31b06f8670d04c4cdf1a94dc05ed24beb` |
| 174 | `instance` | [isScalarTower](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/isscalartower.md) | 1516 | `declaration-track:903acbf33d958b9052c313dc1c926bae29f70485a5cc4116a91ce9a3e7749888` |
| 175 | `theorem` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/smul-def.md) | 1522 | `result-track:e61a8c9c192181078b3b4aa046e3cd2ea0af4b94bc4d324724d3b4f0700ad84a` |
| 176 | `instance` | [faithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/faithfulsmul.md) | 1527 | `declaration-track:8769a3134260f2a3f445ea471222e003f3fcfa64416f9ae9652090e50e59af73` |
| 177 | `instance` | [mulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/mulaction.md) | 1537 | `declaration-track:7aaf774973311dbd4f60a51d6a944ceb85ebf2405cd1e2ecc3054d50da420a2e` |
| 178 | `instance` | [distribMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/distribmulaction.md) | 1541 | `declaration-track:a1ab5c6b91d00cc6d79db5276de8db0114fd65d39e9bdb1275dca5f0b7086f22` |
| 179 | `instance` | [mulDistribMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/muldistribmulaction.md) | 1546 | `declaration-track:ecd7403f201678e41d5e0fe6b9d6d6ce2abdfb905b3e8acbb39abcb8b389680c` |
| 180 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/declarations/example.md) | 1550 | `declaration-track:5d9ff31291ffab210a91ea84d1c3d3cd10eb4451990c8649464a71b373fd6e1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0849a680681a3c7d866bc911b3f6b44c229b05281821f3ad5b0b1fa1967b843a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
