# Verification target: Cubical Quantization Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4afece44ab7f009fc4cffc5626cd357dddf94ab0",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4afece44ab7f009fc4cffc5626cd357dddf94ab0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Claim` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.ProgressiveEvidence` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationDecomposition` — import line 9; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CubicalFaceOrientation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfaceorientation.md) | 42 | `declaration-track:a4be101b1ef02407d962d11d426f4d999ffd0f487574374126a714746b05e20e` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/instance.md) | 47 | `declaration-track:50a274be15864e44b4374caa61c1138ae52c90f5b61bee8a6f0876854e3d1cca` |
| 3 | `def` | [label](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/label.md) | 54 | `declaration-track:b724bf96344739aad693d770085b0a4911d60d0ff890041f496fd0d727ed0f05` |
| 4 | `def` | [cubicalLowerIndex](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicallowerindex.md) | 61 | `declaration-track:4107be1dc51ef7b09cf2689bab55d303bff655fdec682ba25eeda36bd86c9ab8` |
| 5 | `def` | [cubicalShiftedIndex](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalshiftedindex.md) | 69 | `declaration-track:c4c5c8139e1f6de7c50872fd3a191daf8df6cf75dc207bf7acee8839d8a2acc7` |
| 6 | `structure` | [FiniteCubicalDecomposition](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/finitecubicaldecomposition.md) | 84 | `declaration-track:2be362fd5a8624d5d885a5c5abbe9fad55cb84df596736762d5f41a860e56700` |
| 7 | `instance` | [instCubicalCellFintype](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/instcubicalcellfintype.md) | 116 | `declaration-track:1d60a6fde49d1cf8925bac6a0ad0224e146563204b62963bc5fa78282bf262e8` |
| 8 | `instance` | [instCubicalCellDecidableEq](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/instcubicalcelldecidableeq.md) | 121 | `declaration-track:caa941990a1e60144757c98165696cbb2abf89d159a2d08740a02cf2a326a19e` |
| 9 | `def` | [cellCount](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellcount.md) | 131 | `declaration-track:fd42adf0a79e4c5c0135692b7d62d91cc5eee8ec3dc16bda3706ada92582b686` |
| 10 | `theorem` | [cell_dimension_le](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cell-dimension-le.md) | 137 | `result-track:dd7aeaefe59d6d5555752c320b13d42aee3260596ecab165ea9ee521062660ec` |
| 11 | `def` | [IsFace](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/isface.md) | 146 | `declaration-track:718f96e3b5855a4af74dd45d8da60cb23d8e7090a75ba791cc8876c3b34b250e` |
| 12 | `instance` | [isFaceDecidable](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/isfacedecidable.md) | 154 | `declaration-track:20dfad2fcaad06ee3e6ba208c854f26495dcc9508c2693c6ea9c35c48fb2a80e` |
| 13 | `def` | [faceIdentity](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/faceidentity.md) | 163 | `declaration-track:0eb27e29742abbfd45e1c5a7749c4f7b1cd4a2f3dab9694f7905633d91089c68` |
| 14 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-face-identity.md) | 173 | `result-track:65455d0403ff40e0cba9fb08cbaf793ebad3105758429a17c7ad28bf5cd5eedb` |
| 15 | `theorem` | [cell_identity_injective](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cell-identity-injective.md) | 183 | `result-track:8a93c28d5614f78dc11aeb768d63b47031914f2d4b359841db2035d8e52bc874` |
| 16 | `theorem` | [cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cell-identity-globally-injective.md) | 189 | `result-track:70fa7aec4c39156f17de3c9f9d01a3ce9e380c76698d07a844db6410a82c3b78` |
| 17 | `theorem` | [face_commutation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/face-commutation.md) | 199 | `result-track:53b6847f5f26566bba5489963a3db1e1abf8318427d0dbca19f5330a8d340719` |
| 18 | `def` | [cellCountThrough](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellcountthrough.md) | 212 | `declaration-track:4e384090435ab7c6f056f8caabfe5abdfec45c5a53396e08b951d90f4f5c41c8` |
| 19 | `theorem` | [cellCountThrough_succ](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellcountthrough-succ.md) | 219 | `result-track:ba9773a703e209a8c9baef6a84254288bf8dffcdaa5fc03206f10625dfda10b2` |
| 20 | `def` | [FiniteCubicalDecomposition.degreeDecomposition](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/finitecubicaldecomposition-degreedecomposition.md) | 233 | `declaration-track:2907dd6ca5fa5a057d7381c2ec53b28a9c2deee92aa4cd5dacfeb663952fb4c5` |
| 21 | `structure` | [CubicalSurgicalSiteInstantiation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalsurgicalsiteinstantiation.md) | 251 | `declaration-track:13ae51a175c59384c0567c819e4d203ae540cd2fc89bfe0c3cf41d301183b137` |
| 22 | `abbrev` | [CubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalquantizedfield.md) | 261 | `declaration-track:ebbb6b7a02300f71d31c617fa6ac7f9cb4e9410d7f519158c736be0bbfe5ba70` |
| 23 | `def` | [CubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalquantizedskeleton.md) | 270 | `declaration-track:3a859c4e6fd289967f43a4a26f5b6548c9a1d785bb35e86598b3238b40a696d7` |
| 24 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/card-cubicalquantizedfield.md) | 281 | `result-track:160dc549c8f368937ccf3ff7c92466fc96255190239d0a99b6b130bf713348d1` |
| 25 | `instance` | [skeletonFintype](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/skeletonfintype.md) | 298 | `declaration-track:8ae14c1903cf52e91be0bf0d8ee8bff30b8452f20fedb4da9f811a686d89e6e0` |
| 26 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/card-cubicalquantizedskeleton-source-edition-2.md) | 315 | `result-track:f3a323516f67a109b9a6d3791f845cfa922c1a43a679982e9e9ac62a6361f416` |
| 27 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/card-cubicalquantizedfield-source-edition-2.md) | 343 | `result-track:4fc1b72bab67d2369d0acf2efa64175fbae057020f4f97d40230215e7e9cf925` |
| 28 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/card-cubicalquantizedskeleton.md) | 354 | `result-track:a7c7fc51cff63bda3f7be4b371a0acacadadd956b4efb1eaa992accc77437ce4` |
| 29 | `structure` | [CubicalQuantizationProfile](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalquantizationprofile.md) | 366 | `declaration-track:be7d85a237d274177e5f45791e10b48cc951cdabb3870c59cc2ae9fdc6cae8ae` |
| 30 | `theorem` | [degreeProof](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/degreeproof.md) | 393 | `result-track:b20ef450b5b208e6463389fa8a06040f5fa458607b1b7fa55db59a1c31df39e3` |
| 31 | `def` | [cellResolution](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellresolution.md) | 399 | `declaration-track:e052ec73c4f316837a070b1712e74b84bdfdc4c5b7dc94f928552eb67694f3bc` |
| 32 | `def` | [cellRows](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellrows.md) | 405 | `declaration-track:ac783b5f59527a53146fb83978e9512ccfc7dc865f9f254428c6bd28c31932a9` |
| 33 | `def` | [cellColumns](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cellcolumns.md) | 411 | `declaration-track:1d9a836f758949587017e351ad9a5257851d02f9cb821a33fbc2c706fd40c577` |
| 34 | `abbrev` | [HigherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/higherordercubicalquantizedfield.md) | 422 | `declaration-track:02743ba63ef43b249e000bce5d49278a90526c493a0b35a0187b11b007b6c64a` |
| 35 | `def` | [CubicalQuantizationProfile.representedBitCount](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalquantizationprofile-representedbitcount.md) | 437 | `declaration-track:bd9e0ce6de2c3a41237fa7099179edb38ef30dbfd17817a4dd4dde8f5a25e757` |
| 36 | `theorem` | [card_higherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/card-higherordercubicalquantizedfield.md) | 450 | `result-track:3c3d560b90a28a39948aa70e399d3ee8bdd62f29f11734f61e7ac5f5cfa299b2` |
| 37 | `inductive` | [QuantizationResolutionRelation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/quantizationresolutionrelation.md) | 530 | `declaration-track:953a5bb028da2f78869f3105d14e3c0228b5cf47c38eadb8d96a311e65d302b1` |
| 38 | `structure` | [QuantizationResolutionComparison](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/quantizationresolutioncomparison.md) | 538 | `declaration-track:11801a89828e9b44e8f309db59217797628416a0539ae4359af1e42018ab4b64` |
| 39 | `structure` | [QuantizationFaceCompatibility](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/quantizationfacecompatibility.md) | 547 | `declaration-track:cbdaca3e8f960bb9573879c1deb35d8ac78fd938630e54c8e854ffe02d62339d` |
| 40 | `structure` | [QuantizationFaceObstruction](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/quantizationfaceobstruction.md) | 559 | `declaration-track:ba2fe634e08759bb131eb0f6f95a61fe6472938e1f2c920603dfc83fa43da4f6` |
| 41 | `structure` | [QuantizationFaceObligation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/quantizationfaceobligation.md) | 588 | `declaration-track:8631123e1f3b4c1e191b90daef78344c905633275210be0cf14dac7f48802562` |
| 42 | `theorem` | [authority_eq_source](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/authority-eq-source.md) | 604 | `result-track:1fb74326c6c8d1ca357037c5b8de59525e0ad8a21a533010a4ab497d1a2b5818` |
| 43 | `theorem` | [assurance_eq_source](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/assurance-eq-source.md) | 610 | `result-track:7780d82b1b9c1ee8cdc851aef8d5c72a46ed03148399edb6323ebef111e356d5` |
| 44 | `theorem` | [claim_status_eq_source](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/claim-status-eq-source.md) | 616 | `result-track:0aa7b5b39ca9f884a060eed9a81fb82b79d5152cc83a022a66bfea11dab42274` |
| 45 | `inductive` | [CubicalFaceCheck](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheck.md) | 624 | `declaration-track:22aa3a172f6f9b43054b152f98f7b2ff593a31d740356ba823b0d2513c080271` |
| 46 | `structure` | [DecidableQuantizationFaceComparison](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/decidablequantizationfacecomparison.md) | 634 | `declaration-track:28ac009841dac1f8ad610f7a3c4f03bbef626120791a2b939043158c3b816a4d` |
| 47 | `structure` | [CubicalFaceCheckRequest](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheckrequest.md) | 647 | `declaration-track:d0c3d362c420abf4246db21311505764528ac82c1f100fee409951da734342cf` |
| 48 | `def` | [CubicalFaceCheckRequest.check](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheckrequest-check.md) | 652 | `declaration-track:efd73f613f777a399aa6bc92382daa14f82c0edb3729847afa87c1ef10651831` |
| 49 | `def` | [HasCompatibility](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/hascompatibility.md) | 666 | `declaration-track:a62d0cdd1a2b887be60627c667832fddb480b1170ad169c8354aa9f52939c296` |
| 50 | `def` | [HasObstruction](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/hasobstruction.md) | 671 | `declaration-track:ab788f07bd31e9e9ca682630d6b668d0bf6cb64a5de45c3078791c8753050810` |
| 51 | `def` | [HasUnresolvedObligation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/hasunresolvedobligation.md) | 676 | `declaration-track:cf8554874eda25f428dbc35ec8da11c537ff52378f647ab302c562d6946e9b38` |
| 52 | `def` | [PreservesSource](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/preservessource.md) | 685 | `declaration-track:1df8f1e271edeb6f92c3b433cd5c61036e2e12727a7daa3f63a17ae17e14661d` |
| 53 | `theorem` | [CubicalFaceCheckRequest.check_missing](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheckrequest-check-missing.md) | 702 | `result-track:3844e8691029a5ed2c16b65b0bf0a0d5061324b64b2f74a582aec822c5208d55` |
| 54 | `theorem` | [CubicalFaceCheckRequest.check_compatible](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheckrequest-check-compatible.md) | 708 | `result-track:d74448aec5939712f4169212e3daf5ca9195eec3b8868ba379a3de9424303883` |
| 55 | `theorem` | [CubicalFaceCheckRequest.check_obstructed](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubicalfacecheckrequest-check-obstructed.md) | 718 | `result-track:aaaaae1121aa8c5df31ef9a4bc9292cfe8c3257fd171b71c76eeb4d4b9937911` |
| 56 | `theorem` | [cubical_face_compatibility_or_obstruction](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-face-compatibility-or-obstruction.md) | 729 | `result-track:85cecad206c9219ef6780ed178f2bc24a5074ccd6f702708addec84b425336c5` |
| 57 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-face-identity-source-edition-2.md) | 740 | `result-track:de708f6a292b96f19bef3c0c329dad6d89efec8c06b955f3ef0c702380398373` |
| 58 | `theorem` | [cubical_face_commutation](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-face-commutation.md) | 751 | `result-track:878dc58a53c85a36b58641fadfd8278e21c402867b966a1eeeff6485e5df0e7a` |
| 59 | `theorem` | [cubical_cell_identity_injective](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-cell-identity-injective.md) | 765 | `result-track:39b0c58036df3e157a5eaced936f5fdcd64ae26c4419bcfb919acbdb3a17d53e` |
| 60 | `theorem` | [cubical_cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationNamespacedEdition2.lean/declarations/cubical-cell-identity-globally-injective.md) | 772 | `result-track:1c5c8f5f74d2c527e86fa7b412f6d69940f1000c444c742d4d4d22f120cdf942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91ad7f81742ec16595ee219d85dd0dbc2873e28988b37ad450288bac5f69ef5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
