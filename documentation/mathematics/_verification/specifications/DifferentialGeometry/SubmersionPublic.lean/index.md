# Verification target: Submersion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "714cde96f90589ebb53c342029320c15a2ed3c38",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SubmersionPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SubmersionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `714cde96f90589ebb53c342029320c15a2ed3c38`.

Source path: `GRWTSK/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean.json)

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
| 1 | `def` | [SubmersionAtProp](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/submersionatprop.md) | 121 | `declaration-track:48b86a1914b2ceedc5e645c1f82b6878481a61e0073244402cd3f952169f3564` |
| 2 | `lemma` | [isLocalSourceTargetProperty_submmersionAtProp](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/islocalsourcetargetproperty-submmersionatprop.md) | 129 | `result-track:fa8999e841a4568106482d3f4229e06e5e3b380dbbdc7dfeadcc77d37501947a` |
| 3 | `def` | [IsSubmersionAtOfComplement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionatofcomplement.md) | 153 | `declaration-track:559ff5e55573290809155b8ada2b481c9d07f3b4a4a9f7df98d435d11f265f9e` |
| 4 | `def` | [IsSubmersionAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionat-source-edition-2.md) | 171 | `declaration-track:7382534e84762aafd8d9312ed9938e9620473b4bad6af3e8b4300489da978203` |
| 5 | `lemma` | [mk_of_charts](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mk-of-charts.md) | 179 | `result-track:310ee5e3a4cb072eafdf964be0d4f2f12193566df0c6c00e6670e5eff0a9a02e` |
| 6 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mk-of-continuousat-source-edition-2.md) | 194 | `result-track:9e54861e39ba0a31c3c9a6dd91033935b1232906863742f3af98c5fefcb9240b` |
| 7 | `def` | [domChart](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/domchart.md) | 210 | `declaration-track:71893cb24f71a8eaa65a601fba25742acf53e127efc938f6d100c7b5228f084c` |
| 8 | `def` | [codChart](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/codchart.md) | 219 | `declaration-track:64f254bfbe23ec0c275aa0a2ab5a37eed69d87e12c56c533e21bd9d91c9cd9e6` |
| 9 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mem-domchart-source-source-edition-2.md) | 223 | `result-track:a01d2ec720ed41572c8af8901162b4d93a3d721c915f161eada19023e6a8391f` |
| 10 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mem-codchart-source.md) | 226 | `result-track:11f49ac5b9303796d60516573070911a51d25ce64035efdbf7be5f71c563c191` |
| 11 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/domchart-mem-maximalatlas-source-edition-2.md) | 229 | `result-track:dc3d8e1f92fe5e3aff3764896c3890c49bdcb7d725c4fc92f94fd0da36b9671a` |
| 12 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/codchart-mem-maximalatlas-source-edition-2.md) | 233 | `result-track:886da7a7821797acfc1af0708ff13669f9bcf24eb1ef9f2a3c4c98b6979ca68d` |
| 13 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/source-subset-preimage-source.md) | 237 | `result-track:009d7f58dad6dc0501ea4fefaf92490442dfa3ff56b6a50246d97e2dd61e8141` |
| 14 | `lemma` | [mapsto_domChart_source_codChart_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mapsto-domchart-source-codchart-source.md) | 241 | `result-track:da9bfe86255aace5754dcfa8af763fc8c7e68ab88ee1e347c57e07b52b76cfcc` |
| 15 | `def` | [equiv](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/equiv-source-edition-2.md) | 248 | `declaration-track:fb4b03e6783d3ec2c556dfae9eb01d38b9a4523745d3e1a0c7e5516a0a8db9e4` |
| 16 | `lemma` | [writtenInCharts](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/writtenincharts-source-edition-2.md) | 251 | `result-track:a2a922f092d347d0ccf8c5b7b5a770fa46ec9a2f7ef7ee2ccc1c0ca629e65a79` |
| 17 | `lemma` | [property](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/property.md) | 256 | `result-track:32a1e72711f01b140c18e67be45e2945019ad8f6ab4d8e9e9b3783d076298731` |
| 18 | `lemma` | [image_target_subset_target](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/image-target-subset-target-source-edition-2.md) | 264 | `result-track:e84ddf34576df18a682da7ed592251554f297fafa365b82f07fdbf8bb2280113` |
| 19 | `lemma` | [target_subset_preimage_target](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/target-subset-preimage-target-source-edition-2.md) | 276 | `result-track:b6d6c540b7cc14f4e9aa9aeb0003fedac37c762bd3cde89e523bcabdc5318656` |
| 20 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-of-eventuallyeq-source-edition-2.md) | 282 | `result-track:8b1fb187406e29514187a3f76ca9833c1768123503a5e6cce7ebce0cc5dba71a` |
| 21 | `lemma` | [congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-iff-of-eventuallyeq.md) | 289 | `result-track:7b9e44df1b56c926469e7be4c9b8459329a954d080215245d57b652f471d136d` |
| 22 | `lemma` | [small](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/small.md) | 294 | `result-track:09a7d5b5195c1f82502dffe474679a9c6a5ce0ff76de20a98dbd952ab755735b` |
| 23 | `def` | [smallComplement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/smallcomplement.md) | 299 | `declaration-track:63c19dd77dc0aec72db7915b659676eb2793e050a1f6963b4e362c423fad69ea` |
| 24 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance-source-edition-3.md) | 303 | `declaration-track:a33e5f16a677129812bc1b1141c005d50aa17a60ac342618da0edf8c947391d7` |
| 25 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance.md) | 307 | `declaration-track:3be8f4be5bbd8352c42b0e3eae7c0f25a5919aa2e29f3430a420549dd200c397` |
| 26 | `def` | [smallEquiv](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/smallequiv.md) | 315 | `declaration-track:ddcd8eb4235a00cb3662286a133543b93559432b359f5e22c1d510a6dbabc4c5` |
| 27 | `lemma` | [trans_F](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/trans-f-source-edition-2.md) | 319 | `result-track:c0c2af9b8af08f3564ac3e8bc92577f2c4c30817f263e87d96f97c2ea2700004` |
| 28 | `lemma` | [congr_F](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-f.md) | 329 | `result-track:293e670859c505632fcd29a59b8fc59e4398170b07330f2f5a2320cf3b083350` |
| 29 | `lemma` | [_root_.isOpen_isSubmersionAtOfComplement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/root-isopen-issubmersionatofcomplement.md) | 334 | `result-track:e0c8a62b4670c55f3cb75f3e76a873ec1d5babbb825c5f810566b6a4e4eca053` |
| 30 | `theorem` | [prodMap](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/prodmap-source-edition-2.md) | 340 | `result-track:3697ef1f2338ef7971d4998fad39de1bae5390471ae888de31dc5ed906908862` |
| 31 | `lemma` | [isSubmersionAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionat.md) | 356 | `result-track:62bf27ff16edac3b6576f4c66d2eb70639a573da4f2443ff9665750d01332756` |
| 32 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiffon.md) | 365 | `result-track:4c5626e4de84d3f426f47f8088a5f01a96e07d73a66ed28f170415684dcfc92f` |
| 33 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiffat-source-edition-2.md) | 374 | `result-track:3298a38f972b0c7f80004e16ed38d10d32da6a5b3e1483deef331d6dc7f94efc` |
| 34 | `lemma` | [mk_of_charts](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mk-of-charts-source-edition-2.md) | 381 | `result-track:6e67a0fb2b49b139a931f0b8c22906cae6eb7a46775a3c213e47cbd3edb742dd` |
| 35 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mk-of-continuousat.md) | 398 | `result-track:43d61fafe7ae9e56b4d83687810fb164c6bf7e5ac52609c3e66fa1a9240c9185` |
| 36 | `def` | [complement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/complement-source-edition-2.md) | 412 | `declaration-track:df9bac528d5d15ca2e728247b63ea730366a66a135625280355ddd2afbc44725` |
| 37 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance-source-edition-6.md) | 414 | `declaration-track:f165345cf7c9628e68166f59b82707d099c53dd27e03c89231b4bc3485b161dd` |
| 38 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance-source-edition-4.md) | 417 | `declaration-track:a5165c17423bcd42f4be982cb7c92ddefff182d66beb065010b2b634f6c50051` |
| 39 | `lemma` | [isSubmersionAtOfComplement_complement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionatofcomplement-complement.md) | 420 | `result-track:deb5cc4f7c4fca5f6703e104033204dc4a3dfe0a27d11fa7e029cbd5277a848c` |
| 40 | `def` | [domChart](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/domchart-source-edition-2.md) | 429 | `declaration-track:9b9f7a64d168c84fccffdbb8eacaf06a51ad83013763d135fa56ddc5b3b3a502` |
| 41 | `def` | [codChart](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/codchart-source-edition-2.md) | 437 | `declaration-track:9d70ca7377fa02869ff16aed659a08a25b344f052e464d01e45d556f01e9ab70` |
| 42 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mem-domchart-source.md) | 440 | `result-track:47c18a946df9d9361aa9a9e00c6146800f8721ffb5fa330f51a3441733b6f82a` |
| 43 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/mem-codchart-source-source-edition-2.md) | 443 | `result-track:47e7a06fad3b94d7567cd536f2432de1f00c39f979251884397b9f8d25c7c610` |
| 44 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/domchart-mem-maximalatlas.md) | 446 | `result-track:2684c41d96e7eefd84cec287e1ce5bf4c685fa66e05495cded76f5acb25eac11` |
| 45 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/codchart-mem-maximalatlas.md) | 450 | `result-track:187e8ea88764a945edd2ff591662f584a8134f0de2199ea5b363ef3cbca3400b` |
| 46 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/source-subset-preimage-source-source-edition-2.md) | 454 | `result-track:54db972907d3c2a3f75808b497e02346f8279fccf1c8f0f9d5eb543b8a43c844` |
| 47 | `def` | [equiv](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/equiv.md) | 461 | `declaration-track:e2faf97116cec2e095509c83701db8a33124fcc350d782d59b3a917cc51f9b19` |
| 48 | `lemma` | [writtenInCharts](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/writtenincharts.md) | 464 | `result-track:4d2982648b675a7920c604314d944368e06257c5550c195b84ea43d279284250` |
| 49 | `lemma` | [property](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/property-source-edition-2.md) | 469 | `result-track:792031f9d83c8c807492c80604e7bba7e37a62758657ecaa272179b63ab4b8ff` |
| 50 | `lemma` | [image_target_subset_target](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/image-target-subset-target.md) | 475 | `result-track:a67bb35a91b5c316fd3f569b21248af680e5c9fc960a440bc8d26e67eddad3b1` |
| 51 | `lemma` | [target_subset_preimage_target](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/target-subset-preimage-target.md) | 482 | `result-track:94372944740954ed53a6cf0ea392007ed8a85ae6b60d596c4d38581414b34a0e` |
| 52 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-of-eventuallyeq.md) | 488 | `result-track:3f70c4ec2ffa7f7dd989147001fa3cce76b86cac610552ae9d9674c75537ac59` |
| 53 | `lemma` | [congr_iff](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-iff.md) | 495 | `result-track:57ab7c28acd3aae9ee322f164051088d86b40e977119429e250f6b152b4ab243` |
| 54 | `lemma` | [_root_.isOpen_isSubmersionAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/root-isopen-issubmersionat.md) | 500 | `result-track:285310b3b4c6ec3480f4f03706184f670f8ee32ad4113ce2996815d13750d854` |
| 55 | `theorem` | [prodMap](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/prodmap-source-edition-3.md) | 509 | `result-track:47488ac5c89642cb4f058547b0e5c2feee3388823e27056f630ac701ca3276f6` |
| 56 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiffon-source-edition-2.md) | 520 | `result-track:726323e2a495fe88f4e32b0e15522460827cd6165e2edd47901832d31bd02d52` |
| 57 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiffat.md) | 524 | `result-track:02d0892423829163ba3c193386ebf98dd16c975bf0f9469f2c365945b90829e6` |
| 58 | `def` | [IsSubmersionOfComplement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionofcomplement.md) | 538 | `declaration-track:7c96a90c6a6800ad3886452c9a914a410c9454b5438df0dbcf9e31db8bf8ac12` |
| 59 | `def` | [IsSubmersion](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersion.md) | 553 | `declaration-track:0731db5df69086cc26d186a15e045e0a2298a6587cabce20fd6095d5e884772b` |
| 60 | `lemma` | [isSubmersionAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionat-source-edition-3.md) | 562 | `result-track:d49bc884646f534dfce76690a9c0ddbcdb8f3154a46d406cffb7ba3793e4292c` |
| 61 | `lemma` | [trans_F](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/trans-f.md) | 565 | `result-track:6a30136b084e58cd8c930d5edf807e2b2c7d6abf1a6d58dce9cbb450310efaf3` |
| 62 | `lemma` | [congr_F](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/congr-f-source-edition-2.md) | 570 | `result-track:bd4e1921ecbf6579f1417d57697263daf6823b5b2f4352f7df73bdad323352e9` |
| 63 | `theorem` | [prodMap](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/prodmap-source-edition-4.md) | 576 | `result-track:680773352131e625be42fa138e685ba6cabcf21f0af4d3283d40382cfc6fdc16` |
| 64 | `lemma` | [isSubmersion](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersion-source-edition-2.md) | 588 | `result-track:9130c9ebf80f02d2800595adc4e52783fbe1e6cdf6c10b90bba9af08112f9166` |
| 65 | `lemma` | [id](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/id.md) | 600 | `result-track:450ffcb3a097786ca795755bf2994982bd87654dcc570aaf39db61ffc604ceec` |
| 66 | `theorem` | [contMDiff](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiff-source-edition-2.md) | 612 | `result-track:60c17f2957a016f30ea44886f6f654daba15305a52b6b6b6ac11738568d74ffa` |
| 67 | `def` | [complement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/complement.md) | 623 | `declaration-track:bca36ea6b0ab95ea97770f06a1500f23abd8631676ac0af9476b5123fc770287` |
| 68 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance-source-edition-5.md) | 625 | `declaration-track:b80ae434c17394dddc970e97fc7233a2f9287c86375b23c0d0d66f65a2e48e95` |
| 69 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/instance-source-edition-2.md) | 628 | `declaration-track:8df41043649f07c8277d337100e6bcff40a64efa82c55e18e677ac1452f118f8` |
| 70 | `lemma` | [isSubmersionOfComplement_complement](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionofcomplement-complement.md) | 631 | `result-track:d6c4d935c5bae6496e2bbe988527c76b01798f393cb682337327ab39b9cac055` |
| 71 | `lemma` | [isSubmersionAt](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/issubmersionat-source-edition-4.md) | 636 | `result-track:e1e9e7977a079171b13a55356eec463667ecf6d5fc255fa3af3941a540461eb9` |
| 72 | `theorem` | [prodMap](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/prodmap.md) | 643 | `result-track:183c58914f12aaeea6052b64f72c6d2105322267f38ef8cde5137fc5c8d93d72` |
| 73 | `lemma` | [id](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/id-source-edition-2.md) | 651 | `result-track:a9ddedcfb5cb4dd8ffde76606f129f204f8ba5b663c8998fd67b602d5d6fcc0d` |
| 74 | `theorem` | [contMDiff](../../../../DifferentialGeometry/SubmersionPublic.lean/declarations/contmdiff.md) | 656 | `result-track:291a44e365b789fbd39508a66336aa8f8253cb3ba4b9f9b66e148ec01b69042e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=363eb0f3cf1ccf8a2e48bad52ba19ca154d5708d8d10da17b033f553851ae003 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean","GRWTSK/_verification/specifications/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
