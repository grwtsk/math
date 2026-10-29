# Verification target: Cubical Quantization Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db742b6c8a559c6be677decabda66708087ab293",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CubicalQuantizationEdition2.lean/index.md) · [Full source](../../../../Combinatorics/CubicalQuantizationEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db742b6c8a559c6be677decabda66708087ab293`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Claim` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.ProgressiveEvidence` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationDecomposition` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CubicalFaceOrientation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfaceorientation.md) | 34 | `declaration-track:dda1fbb6f930d4071a19938ae3f5de39bff2694093dda87c20270a872cb8cd0b` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/instance.md) | 39 | `declaration-track:063e021053f4623740179676384f5d63a75f9101dd4cf955bd846b05b483f512` |
| 3 | `def` | [label](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/label.md) | 46 | `declaration-track:f28a7b8da2385544eeaa42b1e593e8881fc44eed2bfed866b815e5674d4f4590` |
| 4 | `def` | [cubicalLowerIndex](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicallowerindex.md) | 53 | `declaration-track:dce143cce46f89da9d8651400269d0f78a236877a1ab8e6287502bc0abd7dd51` |
| 5 | `def` | [cubicalShiftedIndex](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalshiftedindex.md) | 61 | `declaration-track:6e6badd442542d76b56003ad657df9013a6aea2e7de0f889c37892f8a90c8c86` |
| 6 | `structure` | [FiniteCubicalDecomposition](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/finitecubicaldecomposition.md) | 76 | `declaration-track:2da1a874bd7fd21408c6ad90a400ee0d4d01997c2d707ec77e64dbd1c70aabf6` |
| 7 | `instance` | [instCubicalCellFintype](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/instcubicalcellfintype.md) | 108 | `declaration-track:a41729b4d82bfe8e825a2132a9c377b354b4372e599086d7c6ee8f3941141e99` |
| 8 | `instance` | [instCubicalCellDecidableEq](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/instcubicalcelldecidableeq.md) | 113 | `declaration-track:72ad29d450eda07586927aa72e45f32575233deb805b0f88d64998adffe9fbca` |
| 9 | `def` | [cellCount](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellcount.md) | 123 | `declaration-track:83dbe5e243ffe57bf7b8d000aefe3c022e376db242db72f7389e804e8b21ed5a` |
| 10 | `theorem` | [cell_dimension_le](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cell-dimension-le.md) | 129 | `result-track:4c279138570a21175c769e42da0d35912e0a4cbc68d32be7fda14dcec8bb128e` |
| 11 | `def` | [IsFace](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/isface.md) | 138 | `declaration-track:3eb2ff18c50251dae6727422797c48e727afc12bc6685aaa766cbb1767a28bd7` |
| 12 | `instance` | [isFaceDecidable](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/isfacedecidable.md) | 146 | `declaration-track:540e5cad743611b174c5cc1a4e330b9b45ad29f7637b5907b414de8ca9fdce2c` |
| 13 | `def` | [faceIdentity](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/faceidentity.md) | 155 | `declaration-track:ab731631b93c3aa3b0c1ae8e916986eb055a02f52b1cf66d60eb0fc9356d660a` |
| 14 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-face-identity-source-edition-2.md) | 165 | `result-track:de5a3326bb6088d923040728ed94febc44f405430b7051fb5d2fe31417f458b1` |
| 15 | `theorem` | [cell_identity_injective](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cell-identity-injective.md) | 175 | `result-track:a178fd797760d044bfa5cfabebdd413043438adfe47c4e26d9947b3250c638e3` |
| 16 | `theorem` | [cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cell-identity-globally-injective.md) | 181 | `result-track:8e327f665221090521fdfa4476d96d14731aebebba5068b413ca6a3d0b44b41b` |
| 17 | `theorem` | [face_commutation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/face-commutation.md) | 191 | `result-track:692cf09ab4475962ed3db7506a016a440368276c542449763a07dcedfb6d4490` |
| 18 | `def` | [cellCountThrough](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellcountthrough.md) | 204 | `declaration-track:5a41d596c9904e1d23c74a1b9260b29f95157c614cb6af655d459becd230271c` |
| 19 | `theorem` | [cellCountThrough_succ](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellcountthrough-succ.md) | 211 | `result-track:2f98bb819ebb69b2dab47a83810da4f435beab2575c57ddd37a78f0ca4ff7017` |
| 20 | `def` | [FiniteCubicalDecomposition.degreeDecomposition](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/finitecubicaldecomposition-degreedecomposition.md) | 225 | `declaration-track:07dc4c4a18c11f642b630ef51e328c3a861a994425394f0da9ff3a4ed23b8bd9` |
| 21 | `structure` | [CubicalSurgicalSiteInstantiation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalsurgicalsiteinstantiation.md) | 243 | `declaration-track:20d7473a9bc29129c7d11f31c621a63aebd8b89ab7e034eae3dd52e88bac1267` |
| 22 | `abbrev` | [CubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalquantizedfield.md) | 253 | `declaration-track:5a33d6de0c6f5eaf7875ee56fd228cc0397d311f67071e4558302f8b4802b666` |
| 23 | `def` | [CubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalquantizedskeleton.md) | 262 | `declaration-track:f379a575da5fcb7db1669823c1399720443407204460508b153f6679fc57118e` |
| 24 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/card-cubicalquantizedfield-source-edition-2.md) | 273 | `result-track:f64ac6cd562922b11c7523caa7f0b426ba8618885d1a9ac6207819ed8ca786f9` |
| 25 | `instance` | [skeletonFintype](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/skeletonfintype.md) | 290 | `declaration-track:81c3ecc1ceea87e8665f1b32b272e0012554178180abd1f7d3cdcfd0dabf6edb` |
| 26 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/card-cubicalquantizedskeleton-source-edition-2.md) | 307 | `result-track:c355405a483f7586a6385414fa11198dfa362f1ce14622edf60f4a91ace5ffaa` |
| 27 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/card-cubicalquantizedfield.md) | 335 | `result-track:724d6ae4cdf5145018d90739ed7239bec5d2f2b9c32f469c32d475233f093252` |
| 28 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/card-cubicalquantizedskeleton.md) | 346 | `result-track:0c7f49813c11fad8d425ef1107478b9dc5eaf31db00dea61ad17d2061d210ae8` |
| 29 | `structure` | [CubicalQuantizationProfile](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalquantizationprofile.md) | 358 | `declaration-track:8c0a62db7037bf90edd71611ad0b7e5498d27ca74949e2a17cf663566b83c599` |
| 30 | `theorem` | [degreeProof](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/degreeproof.md) | 385 | `result-track:4eee300ad0c74ab6231f13ac62e335f1a186d37bd963c9cecb457a539f6d54aa` |
| 31 | `def` | [cellResolution](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellresolution.md) | 391 | `declaration-track:4890d935611a95dc66c396186af6c17c06abf6d25de1f0f69178b3006376e6f4` |
| 32 | `def` | [cellRows](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellrows.md) | 397 | `declaration-track:50bd3b3bc6e28caf7a76b924393de7c149c64c5443fce47001a676b5c9206329` |
| 33 | `def` | [cellColumns](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cellcolumns.md) | 403 | `declaration-track:9d6e265962d79e7469f42606ec54e9fea72ec5db85e3a136080dc3a520e89406` |
| 34 | `abbrev` | [HigherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/higherordercubicalquantizedfield.md) | 414 | `declaration-track:90dbb2cd871f81c99fac72705deeeec4dbd1870ff2fe3b54588406e0ccab8548` |
| 35 | `def` | [CubicalQuantizationProfile.representedBitCount](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalquantizationprofile-representedbitcount.md) | 429 | `declaration-track:0f40e5abce6ba09c2b3a407cec763c59dfa8b51738df14de23185b6e9d88ea06` |
| 36 | `theorem` | [card_higherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/card-higherordercubicalquantizedfield.md) | 442 | `result-track:11c9f109171a7d626ddf371175999b32bb0f0d41a041489bbc9dda71abc673cb` |
| 37 | `inductive` | [QuantizationResolutionRelation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/quantizationresolutionrelation.md) | 522 | `declaration-track:ec781e5c3303540e54e64aa2249f67247bee9180465703c934ddc6be31d3704e` |
| 38 | `structure` | [QuantizationResolutionComparison](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/quantizationresolutioncomparison.md) | 530 | `declaration-track:541845e2d2e9615fbd31ce0ee6650ef16e81315962d8ca59a9110cc094745014` |
| 39 | `structure` | [QuantizationFaceCompatibility](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/quantizationfacecompatibility.md) | 539 | `declaration-track:ab1fa0230885c1a9c0f77922a7ea23478d7066463a3cd30422cbc8a745a5e811` |
| 40 | `structure` | [QuantizationFaceObstruction](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/quantizationfaceobstruction.md) | 551 | `declaration-track:7cd0fc8dd36a0fd2d3c15bfd66379dd921fba275b14af9af61dc001bc59f94c1` |
| 41 | `structure` | [QuantizationFaceObligation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/quantizationfaceobligation.md) | 580 | `declaration-track:781c480d17a9dfaf263a6ccc9861b5a53b088a050822a48d3e523105fd90a85a` |
| 42 | `theorem` | [authority_eq_source](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/authority-eq-source.md) | 596 | `result-track:33a1c9ed9bda1f299ba989a91945cad8e107078852cf88896248ecf6fd95e6f7` |
| 43 | `theorem` | [assurance_eq_source](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/assurance-eq-source.md) | 602 | `result-track:2f14c19c6f7e4aba81334de8d2f4b47cdbc0c796ac0da27b850912b9f1ee2ebf` |
| 44 | `theorem` | [claim_status_eq_source](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/claim-status-eq-source.md) | 608 | `result-track:952d5c0bec77b081975515a5e0cdb2c6fe5515023f8bf40b7de25aef09d38974` |
| 45 | `inductive` | [CubicalFaceCheck](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheck.md) | 616 | `declaration-track:3e1617864fedc347d8cf523c307d56f9e746dab3f85310f1582f7e5db6cc544f` |
| 46 | `structure` | [DecidableQuantizationFaceComparison](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/decidablequantizationfacecomparison.md) | 626 | `declaration-track:d3b8fbc6bd698416abcb5c3190952d3bcd94fff41d1dc8dda75084fe157dfc8c` |
| 47 | `structure` | [CubicalFaceCheckRequest](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheckrequest.md) | 639 | `declaration-track:b2b5fd4b4f22faba1e9edc8afce6c4664c789484d6e572eb3052c3bc7bd60b10` |
| 48 | `def` | [CubicalFaceCheckRequest.check](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheckrequest-check.md) | 644 | `declaration-track:686dd13a1bca18805bf538b320b6d53b6d4a81ea246930d48b2652d35e73c71c` |
| 49 | `def` | [HasCompatibility](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/hascompatibility.md) | 658 | `declaration-track:442bc8ec7c4320a382d1ba2ce955a234dd04a693b9f730b54b721e545f860840` |
| 50 | `def` | [HasObstruction](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/hasobstruction.md) | 663 | `declaration-track:929c7e1333b0eb3ce48e3c89a9b5885b66b7d01f5f536393761fe1acf4d6633b` |
| 51 | `def` | [HasUnresolvedObligation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/hasunresolvedobligation.md) | 668 | `declaration-track:8198e6aa944fdb94d15cb492eef90f1dcd1312f0b390c9dac0fd93b4620a6f57` |
| 52 | `def` | [PreservesSource](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/preservessource.md) | 677 | `declaration-track:fa78189f94c0eba78c7f5a6c55951f308dbbdf74e1291c2b43b90bb32382e930` |
| 53 | `theorem` | [CubicalFaceCheckRequest.check_missing](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheckrequest-check-missing.md) | 694 | `result-track:d355fb56b52fbc580154ed1482ccb54497ef3f5392a39a670be4676a7d30d2ee` |
| 54 | `theorem` | [CubicalFaceCheckRequest.check_compatible](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheckrequest-check-compatible.md) | 700 | `result-track:06240c7c7d14ec6c42f38345927dfe1983e0bd0c610db4f42bf0d1a3bdc57fe9` |
| 55 | `theorem` | [CubicalFaceCheckRequest.check_obstructed](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubicalfacecheckrequest-check-obstructed.md) | 710 | `result-track:4f927cdc5a3543f128107d71cc81f8a6c20cf708b4fe582c04953316e5fda95b` |
| 56 | `theorem` | [cubical_face_compatibility_or_obstruction](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-face-compatibility-or-obstruction.md) | 721 | `result-track:64d55be64bd5f260cf872d2f8f2e338efa2331ecf255eedeb597c970eef3a5fc` |
| 57 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-face-identity.md) | 732 | `result-track:d6127d5cdc6afe2252f6d3580201ffd89479f0c64890b35d8e84bc95133437cf` |
| 58 | `theorem` | [cubical_face_commutation](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-face-commutation.md) | 743 | `result-track:f76f1ec40212333ca09a61859d6fcb15d16c1d678ac5c818698b421183d28e43` |
| 59 | `theorem` | [cubical_cell_identity_injective](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-cell-identity-injective.md) | 757 | `result-track:97ad4fd959ef93552012669d2550d22c9cd4c069883deb720de9242067cf440f` |
| 60 | `theorem` | [cubical_cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationEdition2.lean/declarations/cubical-cell-identity-globally-injective.md) | 764 | `result-track:c6a03886617de83fd4d7d478cdca4ffacb00a0a9b894f4bcc5dd4cf9874dfc7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58ae2ed54bcad7b1402133234e64993fbb72ca0e2abd95fe703dd2366d40b7d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
