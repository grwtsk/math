# Verification target: Cubical Quantization Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f9b3eb4eeeee9bafc99af1d8ef8e58557634d14",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CubicalQuantizationEdition1.lean/index.md) · [Full source](../../../../Combinatorics/CubicalQuantizationEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f9b3eb4eeeee9bafc99af1d8ef8e58557634d14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Quantization` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Claim` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.ProgressiveEvidence` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationDecomposition` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CubicalFaceOrientation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfaceorientation.md) | 33 | `declaration-track:5a8d4215973d8026c1f808a033bd7f1878dc8f67fd2386b5b381213519fb537c` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/instance.md) | 38 | `declaration-track:876f3219db5c1b50ea8d3c9306d3eb06db07097304c51fd1710c2cfdb929b698` |
| 3 | `def` | [label](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/label.md) | 45 | `declaration-track:82f5ae7da7e027dcbd85a4420988f95ee0455634a0429317b73772a355ab3f36` |
| 4 | `def` | [cubicalLowerIndex](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicallowerindex.md) | 52 | `declaration-track:ed3a734cdb73227b21c8c500148816daee3a314eeb6501f0a01c1c8a50af19c5` |
| 5 | `def` | [cubicalShiftedIndex](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalshiftedindex.md) | 60 | `declaration-track:98c67c4b3189f842c2ce2eb2eea0e16446ae2c03f334de64ccd772c93293f28d` |
| 6 | `structure` | [FiniteCubicalDecomposition](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/finitecubicaldecomposition.md) | 75 | `declaration-track:4adb63ad1e0e8da657cbd0a783f33f7b291a2196d380a6309ce307f7732908fb` |
| 7 | `instance` | [instCubicalCellFintype](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/instcubicalcellfintype.md) | 107 | `declaration-track:6785c63564eb168d13739f572f0f4426d938ed82b817532773a364823e8b509e` |
| 8 | `instance` | [instCubicalCellDecidableEq](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/instcubicalcelldecidableeq.md) | 112 | `declaration-track:9970c4f1e1ac1c33561504d0bb08f9b4feb4f0fac76d54c3dd33df4539a26bd8` |
| 9 | `def` | [cellCount](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellcount.md) | 122 | `declaration-track:7802766c55fce0edcd14bd0aab429740c10e46194cc495eed93ec7bf2eadefc5` |
| 10 | `theorem` | [cell_dimension_le](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cell-dimension-le.md) | 128 | `result-track:c174277e1c737c912720562756c5dfb9f9002de586f398b1f7c046f46dbe619f` |
| 11 | `def` | [IsFace](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/isface.md) | 137 | `declaration-track:efd998a8e9005109d512349c269030c606da1b6e00ff1b3390bb28f63af2866d` |
| 12 | `instance` | [isFaceDecidable](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/isfacedecidable.md) | 145 | `declaration-track:8e9fa6c9cfcec058cc2e8ee24f9f22651dfd676bcf0568c00ae543324add6b0b` |
| 13 | `def` | [faceIdentity](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/faceidentity.md) | 154 | `declaration-track:e38202873faab5517e182377ca5a3ec51a834d97cc47ec8a226dba71f66fcfe7` |
| 14 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-face-identity.md) | 164 | `result-track:2de3280598066efa2b9ca4311df79ccfcf7e54aa986247a69082afb0a8d1e739` |
| 15 | `theorem` | [cell_identity_injective](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cell-identity-injective.md) | 174 | `result-track:9d121c84b1c89a31513c8bb3447fc5838f67a48314db6760bd5d9afabd2b1d24` |
| 16 | `theorem` | [cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cell-identity-globally-injective.md) | 180 | `result-track:6eb498d27069a61838ee9468f5684c473f3ba5a18221b2c6166c079ac10c771f` |
| 17 | `theorem` | [face_commutation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/face-commutation.md) | 190 | `result-track:5c1fc5a15b6250a33f0ce98938bb1947a41a8517f208a5d92cf90048aa2a1aa0` |
| 18 | `def` | [cellCountThrough](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellcountthrough.md) | 203 | `declaration-track:7e4e211167dbf5f7ccae41b92e2d5fb98cee6aaedec4d7a7a6ef2f121cfe013c` |
| 19 | `theorem` | [cellCountThrough_succ](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellcountthrough-succ.md) | 210 | `result-track:805699ff376621aed35ff922c0bad6b44947ea1e25963070dd8b98676aa2b9e6` |
| 20 | `def` | [FiniteCubicalDecomposition.degreeDecomposition](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/finitecubicaldecomposition-degreedecomposition.md) | 224 | `declaration-track:161b76be94bb4438663c311e5317d34ccd41c1b7b58269a55b6a5946e7c9a2bc` |
| 21 | `structure` | [CubicalSurgicalSiteInstantiation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalsurgicalsiteinstantiation.md) | 242 | `declaration-track:a9fad3738f0a0938036d3f7259f269acb938ae455fece011e80fa131b741a903` |
| 22 | `abbrev` | [CubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalquantizedfield.md) | 252 | `declaration-track:a6c33f40a237fe87c90fa5b6a233dab601fe970e2c59657a63b981fcd8b83849` |
| 23 | `def` | [CubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalquantizedskeleton.md) | 261 | `declaration-track:f093dcc3604327c261ebe72580d949e36cd488e18aeb68d26d524a78b826cf17` |
| 24 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/card-cubicalquantizedfield-source-edition-2.md) | 272 | `result-track:72c54d3fca660cceab0d290f102ad2d0dd7d16c12cb18b74d010f1999ae95dff` |
| 25 | `instance` | [skeletonFintype](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/skeletonfintype.md) | 289 | `declaration-track:1191b9f33ec438c8d40dc8d6edaaf3e699ab9d95233774c85f8ffc86f5d30a67` |
| 26 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/card-cubicalquantizedskeleton.md) | 306 | `result-track:728f3b13577d8674049b1d913de49bda098b8fb160803b015cced6d75ad0aa16` |
| 27 | `theorem` | [card_cubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/card-cubicalquantizedfield.md) | 334 | `result-track:2fb047d92201c401301dfd419c43342da08f9838e4abd1384710be3bbe1975cf` |
| 28 | `theorem` | [card_cubicalQuantizedSkeleton](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/card-cubicalquantizedskeleton-source-edition-2.md) | 345 | `result-track:c21028085d9100e99c51bc10a5b613c300af5bb6861432b8c9cacfa0106bb329` |
| 29 | `structure` | [CubicalQuantizationProfile](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalquantizationprofile.md) | 357 | `declaration-track:17d9d6de8b0ff82cd5c533543debcc4b4034eb83b01c9faecee3baf54e5f22e6` |
| 30 | `theorem` | [degreeProof](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/degreeproof.md) | 384 | `result-track:0a554025bb2038fcdb08e1946dcf6450ae555b1f799728670f263fca65390df4` |
| 31 | `def` | [cellResolution](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellresolution.md) | 390 | `declaration-track:c97d631fbcb285ac92e897a0c99338b60c31cc1f454b106713b386d55b1f4112` |
| 32 | `def` | [cellRows](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellrows.md) | 396 | `declaration-track:a38c3f7ba5e5b60c6b35082373abe77f587814ce26a2b14a3dea8d65b004b6f1` |
| 33 | `def` | [cellColumns](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cellcolumns.md) | 402 | `declaration-track:dc6e32f44bad73fbeb275abb2f60cce68168adbc30ced13ba1a84baf7e966d18` |
| 34 | `abbrev` | [HigherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/higherordercubicalquantizedfield.md) | 413 | `declaration-track:8981ed558dfcf910f7844af438c7542e1176cd1e4a8bd0db64714d37762b06b3` |
| 35 | `def` | [CubicalQuantizationProfile.representedBitCount](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalquantizationprofile-representedbitcount.md) | 428 | `declaration-track:6546c292f256473f2f433b3e7c36111433fcb7cd956c5929c37f1715ba016749` |
| 36 | `theorem` | [card_higherOrderCubicalQuantizedField](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/card-higherordercubicalquantizedfield.md) | 441 | `result-track:6faf4cb0943d3d4fc53e0e18f45c9787f4f2e5499b102b3016d61282da0f3826` |
| 37 | `inductive` | [QuantizationResolutionRelation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/quantizationresolutionrelation.md) | 521 | `declaration-track:9cf66e88a66eb32405dbd2fe3620b0016653eff72998885d82bd66c657552218` |
| 38 | `structure` | [QuantizationResolutionComparison](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/quantizationresolutioncomparison.md) | 529 | `declaration-track:85c8d9990a19560932d8d8aa1a16fab77dbe52555c68bfe544904ccef54c0070` |
| 39 | `structure` | [QuantizationFaceCompatibility](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/quantizationfacecompatibility.md) | 538 | `declaration-track:a1f34d6ecabfe9312e071340a00ae14ded2b005031825ad4e72044ad778436dc` |
| 40 | `structure` | [QuantizationFaceObstruction](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/quantizationfaceobstruction.md) | 550 | `declaration-track:ccaf3c756c79c2bf9d9c30bf02edee92eb006593e0238453acc073ac3e4b0722` |
| 41 | `structure` | [QuantizationFaceObligation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/quantizationfaceobligation.md) | 579 | `declaration-track:1931fc3c557c3de091904d9221c109515a014538ad85f80bac108912d61a15cc` |
| 42 | `theorem` | [authority_eq_source](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/authority-eq-source.md) | 595 | `result-track:c0de880ad330893948991fe133ac72e08780cd59b1f9b020619cc2fd455d86ad` |
| 43 | `theorem` | [assurance_eq_source](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/assurance-eq-source.md) | 601 | `result-track:64c5387d5a82ef7592fe205ef1d1923f9e78c10f63cec6ce6ca1337edd186e4b` |
| 44 | `theorem` | [claim_status_eq_source](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/claim-status-eq-source.md) | 607 | `result-track:56c68e49b7295b699f47963ae1a041f8610ea0186e096d60f3caf09b6437754a` |
| 45 | `inductive` | [CubicalFaceCheck](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheck.md) | 615 | `declaration-track:534fb23b1fad5e8bed3e31bae10e8846bfcd5c58e8459700ad09c4f6b4244ec0` |
| 46 | `structure` | [DecidableQuantizationFaceComparison](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/decidablequantizationfacecomparison.md) | 625 | `declaration-track:f1f6c3e03a6a97ce3f81ef6ca4b743c15333237628303205f95b7f3ecb3f4761` |
| 47 | `structure` | [CubicalFaceCheckRequest](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheckrequest.md) | 638 | `declaration-track:ddc40e4f7c6997c6ffbdfec2fa16465109031a04f2ac7ef076d279a96d1a5605` |
| 48 | `def` | [CubicalFaceCheckRequest.check](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheckrequest-check.md) | 643 | `declaration-track:79446cd20ba177f73da16f9841ee1f7c6863f47f0c01a227d83a010a2dfbf196` |
| 49 | `def` | [HasCompatibility](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/hascompatibility.md) | 657 | `declaration-track:150c307273e25fbb314132610b453d7f8a1c768a0a6634e78862dd525fef7c8a` |
| 50 | `def` | [HasObstruction](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/hasobstruction.md) | 662 | `declaration-track:d281cfade3c55e506118f0352dfc1e94bbb7755fb896000ea2644bbea5155f7c` |
| 51 | `def` | [HasUnresolvedObligation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/hasunresolvedobligation.md) | 667 | `declaration-track:b54eeb0b875b6d85a9ba05f6aecc59fec655c65ac85df72d621223919fa946d9` |
| 52 | `def` | [PreservesSource](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/preservessource.md) | 676 | `declaration-track:868cb10c483965bf5688f029e6929253c4c93eeaa94b8d55c11db2ed0059d16c` |
| 53 | `theorem` | [CubicalFaceCheckRequest.check_missing](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheckrequest-check-missing.md) | 693 | `result-track:766fb9ea212691e0e89abdce6c89013de968dd3deff8a9f769724503e7d74e5d` |
| 54 | `theorem` | [CubicalFaceCheckRequest.check_compatible](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheckrequest-check-compatible.md) | 699 | `result-track:a3ba3cc3c28467475d2ee7c979fa8aebb90f0ba35394d88aa639d2e3c44348d3` |
| 55 | `theorem` | [CubicalFaceCheckRequest.check_obstructed](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubicalfacecheckrequest-check-obstructed.md) | 709 | `result-track:bd7c27ac6ace0eeb3449b303cfd903739976e582c0089f2d08482d70dc0c1c91` |
| 56 | `theorem` | [cubical_face_compatibility_or_obstruction](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-face-compatibility-or-obstruction.md) | 720 | `result-track:e168cf37f0e4af9346241d656c6c81eb06ee0968aede1e308504b7ea1a8161cc` |
| 57 | `theorem` | [cubical_face_identity](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-face-identity-source-edition-2.md) | 731 | `result-track:a6ceae616e16132bb2866cef3bceccc436c25d7ba824efd64a94169998880788` |
| 58 | `theorem` | [cubical_face_commutation](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-face-commutation.md) | 742 | `result-track:55dfee24a94ea69dca1d77a758b3f52c51a424661b0d03aed8be3bc852342dc4` |
| 59 | `theorem` | [cubical_cell_identity_injective](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-cell-identity-injective.md) | 756 | `result-track:3f079f830320ec5f83a25c69dd675550e7f081c78187c212b6d94aa25124b31a` |
| 60 | `theorem` | [cubical_cell_identity_globally_injective](../../../../Combinatorics/CubicalQuantizationEdition1.lean/declarations/cubical-cell-identity-globally-injective.md) | 763 | `result-track:fa6d60b0fa3a7d40f8db0798fb5b6c746bd100e2ec4efbeb1e915dd2801ddd64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a0c30b2ef78662ff4067e4b366e12be2eaebaf103c2edbc366b026819a05dd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
