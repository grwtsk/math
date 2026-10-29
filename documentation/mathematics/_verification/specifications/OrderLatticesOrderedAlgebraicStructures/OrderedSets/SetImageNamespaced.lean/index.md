# Verification target: Set Image Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ea0064c8f1c6db66757fd18556b40d7705fdd90",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant425e692bf1058589da7304eaff6f615b796d2db7abe776bcdb380eb2024f7be4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ea0064c8f1c6db66757fd18556b40d7705fdd90`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant425e692bf1058589da7304eaff6f615b796d2db7abe776bcdb380eb2024f7be4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant425e692bf1058589da7304eaff6f615b796d2db7abe776bcdb380eb2024f7be4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MonotoneOn.mapsTo_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-mapsto-ici.md) | 32 | `result-track:033f0807a81ee4ea593cc53207425236b0107eac3b790355cc41e98f0bbe2583` |
| 2 | `lemma` | [MonotoneOn.mapsTo_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-mapsto-iic.md) | 35 | `result-track:176da9da7d4a37b626cfe0eba54d3863762d8b07c239c90c02182272edbd3c1d` |
| 3 | `lemma` | [MonotoneOn.mapsTo_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-mapsto-icc.md) | 38 | `result-track:b4d5a653c145ab63059e09f9b8ac26298a23d8718f7bf66b28cc5a2130d9d69c` |
| 4 | `lemma` | [AntitoneOn.mapsTo_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-mapsto-ici.md) | 42 | `result-track:373a627e078b6eb949f18f466d9fcd9348ccf1d52a38ad0e53d0efbffce7b979` |
| 5 | `lemma` | [AntitoneOn.mapsTo_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-mapsto-iic.md) | 45 | `result-track:04a62333f711123ba739e20a7f1239aedeb0e5d84a1872cac0554bacef9bec48` |
| 6 | `lemma` | [AntitoneOn.mapsTo_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-mapsto-icc.md) | 48 | `result-track:a438913547f6dabdd033bee301ffda397ddf08042f1a1ab47278123106e985c7` |
| 7 | `lemma` | [StrictMonoOn.mapsTo_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-mapsto-ioi.md) | 52 | `result-track:92d37f47d7ee31073a118594b3f4d30f2d839f71bf79dbf4db1fcd320f5bf6cb` |
| 8 | `lemma` | [StrictMonoOn.mapsTo_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-mapsto-iio.md) | 55 | `result-track:6e402c69c467d78f23af1b4059163c8ce464ead7090ada078e67077fb18dca9d` |
| 9 | `lemma` | [StrictMonoOn.mapsTo_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-mapsto-ioo.md) | 58 | `result-track:202e27c1259944cdd06b92fa2459c5e9d4be126c5152cac9368a8d4dd9c00e6d` |
| 10 | `lemma` | [StrictAntiOn.mapsTo_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-mapsto-ioi.md) | 64 | `result-track:4f139c7efc9f10b849b99452fbe5e9afe2fa140e0bf89d631b0d1cf03e7f98bb` |
| 11 | `lemma` | [StrictAntiOn.mapsTo_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-mapsto-iio.md) | 67 | `result-track:35eb2f52f9b823e8ec0fcca7614b1596079fce54add1ff2cd29b0b7746f937d7` |
| 12 | `lemma` | [StrictAntiOn.mapsTo_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-mapsto-ioo.md) | 70 | `result-track:1dd00a9a7988fe79686cb2887b928da7e5a00867f09af4847d0a7cdce5e2d3bf` |
| 13 | `lemma` | [Monotone.mapsTo_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-mapsto-ici.md) | 76 | `result-track:dc54bfbe1cbe0977184c1c4373d52ef66aa9abbd0523b9ec299f65fde13fec7e` |
| 14 | `lemma` | [Monotone.mapsTo_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-mapsto-iic.md) | 79 | `result-track:fd16f216564a792532a7a833c4d028fe76b70097fb1633f9036aede232585232` |
| 15 | `lemma` | [Monotone.mapsTo_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-mapsto-icc.md) | 82 | `result-track:e046c5e4b4c660c4b87d5f0a47a426b44f6eb7bfeae41d7d0efc3b2920c2a2bd` |
| 16 | `lemma` | [Antitone.mapsTo_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-mapsto-ici.md) | 85 | `result-track:815e99a79fa811a70213eb8528371c90848361d17d23b4e2df866cede40fbbca` |
| 17 | `lemma` | [Antitone.mapsTo_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-mapsto-iic.md) | 88 | `result-track:e77ed7069bd24462bb7bde4b6438a81b6d810fbf40fb0769e8df4f3b883212ed` |
| 18 | `lemma` | [Antitone.mapsTo_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-mapsto-icc.md) | 91 | `result-track:29f72a484c188588246357f80807170391f047f6c05a7780327a460146452bb4` |
| 19 | `lemma` | [StrictMono.mapsTo_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-mapsto-ioi.md) | 94 | `result-track:cf9fcddde5b59f5a99376f078051859f52e192ad4b427594c4680332a39a873b` |
| 20 | `lemma` | [StrictMono.mapsTo_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-mapsto-iio.md) | 97 | `result-track:a19c08d9de0d282b38cf44cd71a2e7db2a6267a2e9d06946d7b570d33df99cd7` |
| 21 | `lemma` | [StrictMono.mapsTo_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-mapsto-ioo.md) | 100 | `result-track:50579c12cd9b8ed9dd4f5ca7bf253245b0a6ef0b1416231e7b500b286914b89a` |
| 22 | `lemma` | [StrictAnti.mapsTo_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-mapsto-ioi.md) | 103 | `result-track:98eb760127936775c5ec0c68d2d856f4c669d1dc9eac5fbd61b5db2b84888bb4` |
| 23 | `lemma` | [StrictAnti.mapsTo_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-mapsto-iio.md) | 106 | `result-track:859cc5c511210ee4d1cb3984ef71adae7e7b80c5e78df16279c3b82911e1d839` |
| 24 | `lemma` | [StrictAnti.mapsTo_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-mapsto-ioo.md) | 109 | `result-track:1b9157535e7d5bb6ba89eeffcf6c96171a6189e8a08662480cf7d313a8079972` |
| 25 | `lemma` | [MonotoneOn.image_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-image-ici-subset.md) | 112 | `result-track:08addbf11d10a6ad816881d220fa7e1a47303d7691cbe0c9fabd6cc1eb425071` |
| 26 | `lemma` | [MonotoneOn.image_Iic_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-image-iic-subset.md) | 115 | `result-track:c63a8237f8cc266941e79bbdd815633040e34f13e8dfe00fb487db301cdfc6ec` |
| 27 | `lemma` | [MonotoneOn.image_Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotoneon-image-icc-subset.md) | 118 | `result-track:3fa383c16f43d452c73245e666cbf30512275dcab5713adaa25c45628b8ebd03` |
| 28 | `lemma` | [AntitoneOn.image_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-image-ici-subset.md) | 121 | `result-track:75b6eeb062fc206ee2509c0eb445d3700a2d36c1f72709ae33102a0940a63200` |
| 29 | `lemma` | [AntitoneOn.image_Iic_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-image-iic-subset.md) | 124 | `result-track:b8c4d4462bdb83263e03e18fd53df21cd1788c884b7b84cb37f1df7d2b9be60e` |
| 30 | `lemma` | [AntitoneOn.image_Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitoneon-image-icc-subset.md) | 127 | `result-track:89a6acd7ba2610cd61d6c567ac643d12e9c964497bb968b8af0274d95f766a8b` |
| 31 | `lemma` | [StrictMonoOn.image_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-image-ioi-subset.md) | 130 | `result-track:20daaec84c7b7ac1363210ec2d930d261439298bd19f7289eaabb51f9fe29634` |
| 32 | `lemma` | [StrictMonoOn.image_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-image-iio-subset.md) | 133 | `result-track:6feb8edc2f65a7470dd8b166fe438e5a90e2366a9642745992fc8a0ae2686533` |
| 33 | `lemma` | [StrictMonoOn.image_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-image-ioo-subset.md) | 136 | `result-track:69144fac8fe27a24ce883356751aae6d39340b51bfcd0fa3b5c3fc833c1269ff` |
| 34 | `lemma` | [StrictAntiOn.image_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-image-ioi-subset.md) | 139 | `result-track:cfeea2d9476e3b029c7634ad7b05f0e9201b558d2c1f34d59382f7f562718bdc` |
| 35 | `lemma` | [StrictAntiOn.image_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-image-iio-subset.md) | 142 | `result-track:a520e8c23621a617d52284934d71e8e2913c71139f2a2704e6dafc2fa0a0fa24` |
| 36 | `lemma` | [StrictAntiOn.image_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-image-ioo-subset.md) | 145 | `result-track:cd54999a7687ae2efbf9e7bd8c7893ebbecda35fc96ac00419a91a933ab20e7e` |
| 37 | `lemma` | [Monotone.image_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-image-ici-subset.md) | 148 | `result-track:2fbfe48009eb8411893b0521644f1c9d9dc3243bd7cbcea009c3b5fd644a233b` |
| 38 | `lemma` | [Monotone.image_Iic_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-image-iic-subset.md) | 151 | `result-track:3fe4a70a654a673ecb3e007673f5ed7b2bd7f5834c8e75937e52033f589b52f4` |
| 39 | `lemma` | [Monotone.image_Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/monotone-image-icc-subset.md) | 154 | `result-track:a3ffb98c85b8ed5b792a98c5c48c0d766e99e79081fbc1efba2b3d9c2ab41684` |
| 40 | `lemma` | [Antitone.image_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-image-ici-subset.md) | 157 | `result-track:696f696615a150b69e31df244fb03fa54b8c8e11306930ff122e13fc701f70c7` |
| 41 | `lemma` | [Antitone.image_Iic_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-image-iic-subset.md) | 160 | `result-track:915b69ee7d5309c468407f55cf9db9c1933b6b587d7b9a15a3d8492644eccee7` |
| 42 | `lemma` | [Antitone.image_Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/antitone-image-icc-subset.md) | 163 | `result-track:73a05caf9c5386856ebda402d0a39ac99965fb266177947bff4c535f390f95b8` |
| 43 | `lemma` | [StrictMono.image_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-image-ioi-subset.md) | 166 | `result-track:c96247009e5ce69f5840fd2603dbfcb9b8c62c5bd040f242c2c0481fa266524c` |
| 44 | `lemma` | [StrictMono.image_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-image-iio-subset.md) | 169 | `result-track:0c9d72ad50956789f3cec1b1f5f250477768807fa3543a475f91650b17ffecf9` |
| 45 | `lemma` | [StrictMono.image_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-image-ioo-subset.md) | 172 | `result-track:1c0feb9127d27d8d1fb3cc6458d402602a768fc517d386c9cfbdcdab043b035c` |
| 46 | `lemma` | [StrictAnti.image_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-image-ioi-subset.md) | 175 | `result-track:35dc4d8673c79b8cd2ce0d69b754dfcbdd188e5617ed2bbc6b774a92b501b328` |
| 47 | `lemma` | [StrictAnti.image_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-image-iio-subset.md) | 178 | `result-track:68717d858b1d2afdadfe8860c02ff772a805c6b2158bee01c80450b907f1aec8` |
| 48 | `lemma` | [StrictAnti.image_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-image-ioo-subset.md) | 181 | `result-track:e6290c46added4130e04bc708382a987f27b259f63cb45a3c9d48646c57fcd74` |
| 49 | `lemma` | [StrictMonoOn.mapsTo_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-mapsto-ico.md) | 189 | `result-track:ed192f6c543a914dcc4e869ef31787d278d6010644d0f96ab47193406214d3dc` |
| 50 | `lemma` | [StrictMonoOn.mapsTo_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-mapsto-ioc.md) | 194 | `result-track:aa917a5a4c3ef5af7247ee6631acab457bdc0f20e89df165ff97748cee29aac9` |
| 51 | `lemma` | [StrictAntiOn.mapsTo_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-mapsto-ico.md) | 199 | `result-track:460ddd978ebb5098c7af3b2bc9d8ab57db57b36086044e7cf62f432aa20d7d4a` |
| 52 | `lemma` | [StrictAntiOn.mapsTo_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-mapsto-ioc.md) | 204 | `result-track:5311a0da29764bca4f2040693e0bbfd6103c4cf6d5018f6a27d5a40b89170d15` |
| 53 | `lemma` | [StrictMono.mapsTo_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-mapsto-ico.md) | 209 | `result-track:b0f4b6735904cc2e35454a36a626a40d82d6c82f11469c7d42d2e84e7b7d6cf0` |
| 54 | `lemma` | [StrictMono.mapsTo_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-mapsto-ioc.md) | 212 | `result-track:b6cb0b341d08818c1929aff6cd85e52fa33621111bded5f32f0e2e710a465e97` |
| 55 | `lemma` | [StrictAnti.mapsTo_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-mapsto-ico.md) | 215 | `result-track:60ad63376c8b255dcebe357c91b973e1cb75e03e62d48e48775d5af3ef7a8c66` |
| 56 | `lemma` | [StrictAnti.mapsTo_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-mapsto-ioc.md) | 218 | `result-track:058a0e6428e7b99336a36982da1aa7744b94958fab12805f1a357a9164c14511` |
| 57 | `lemma` | [StrictMonoOn.image_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-image-ico-subset.md) | 221 | `result-track:0a3493b16f2088c181e309bd8540f383a74295e127fda74d4a632333bbb133bf` |
| 58 | `lemma` | [StrictMonoOn.image_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmonoon-image-ioc-subset.md) | 224 | `result-track:40bb7f70c7d909d932816c657ff5c9ebd0dc76e17c498ee738f15cd68ba2d65a` |
| 59 | `lemma` | [StrictAntiOn.image_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-image-ico-subset.md) | 228 | `result-track:12734b03838c7068da7bcc9078e759a8878a6611fc0b1c02f62aed4569fc34d9` |
| 60 | `lemma` | [StrictAntiOn.image_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictantion-image-ioc-subset.md) | 231 | `result-track:f513fdf4f6a1a0fd5c3a508ad44999c8d34e96b56f5ad67e6c3b023c87b5f9a8` |
| 61 | `lemma` | [StrictMono.image_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-image-ico-subset.md) | 234 | `result-track:1a9225a41af387ea3bd5a3306c6317b7829690ba25399da48cdd4a323ddfe0eb` |
| 62 | `lemma` | [StrictMono.image_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictmono-image-ioc-subset.md) | 237 | `result-track:67e4ef35a78a38965d3c9c64e3c589b5b357617fa81813f5b461c7a41c1c06bd` |
| 63 | `lemma` | [StrictAnti.image_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-image-ico-subset.md) | 240 | `result-track:f583e85b5fb28b3e9b90598d18fd7e6f5b9aa93dac0356cf0e45295026271098` |
| 64 | `lemma` | [StrictAnti.image_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/strictanti-image-ioc-subset.md) | 243 | `result-track:4fb45cc3f1f1fb62d9009f79f629c761976511c6fef669d75669d4ada44005ae` |
| 65 | `lemma` | [image_subtype_val_Ixx_Ixi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ixx-ixi.md) | 250 | `result-track:d226d8beb2ccc309dcbd1bbcc73e0f549ef5b1d9aa5ad361e04da71d075aee75` |
| 66 | `lemma` | [image_subtype_val_Ixx_Iix](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ixx-iix.md) | 256 | `result-track:ed5652acf5fddaf0a8770795ad8ebb198e37b249adfa99c92603a16a4a1e7029` |
| 67 | `lemma` | [preimage_subtype_val_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-ici.md) | 264 | `result-track:5f29beae20ea27b194eef0d2f51ef8a0560a7fc53776260cf7ae60e92e3e02bc` |
| 68 | `lemma` | [preimage_subtype_val_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-iic.md) | 265 | `result-track:11846e6fef60d6e9c7f9992beeff209dc089cbaf5c953441e369c3e026550dee` |
| 69 | `lemma` | [preimage_subtype_val_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-ioi.md) | 266 | `result-track:817bb7144ae2481a5740b3c021369d1cc1e58cccb5916bb6c062452b7726526b` |
| 70 | `lemma` | [preimage_subtype_val_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-iio.md) | 267 | `result-track:e95227a1358dc2e866e620705dfe5ed2626da24a4ee925011dd77708926bbd9c` |
| 71 | `lemma` | [preimage_subtype_val_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-icc.md) | 268 | `result-track:23765d42eba22a5f911bed62784d39e3e7f99a011b4eceb7ea8ab3a733c04c0d` |
| 72 | `lemma` | [preimage_subtype_val_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-ico.md) | 269 | `result-track:3e96aa1ac24e9dbaa6f16b2fb24bb6d6d6d0348b16ef9854d8d18a5d5cd65ef8` |
| 73 | `lemma` | [preimage_subtype_val_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-ioc.md) | 270 | `result-track:fb833d365e7114e062b412cc41b493d425fbb064c9076b2ac4eee80e7e9cad5a` |
| 74 | `lemma` | [preimage_subtype_val_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/preimage-subtype-val-ioo.md) | 271 | `result-track:2f3a9048f38868b0038116e0cd1ac954a95a11e16f10f85045c03327fae1260c` |
| 75 | `theorem` | [image_subtype_val_Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-icc-subset.md) | 273 | `result-track:0e9fa87a4807a0c745c0e9214e9709d8d411366ce220b3742c30641b6515d7fa` |
| 76 | `theorem` | [image_subtype_val_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ico-subset.md) | 277 | `result-track:21af246e7fd1b34857ccd0b34d9fde3aad3b68a0fe22af3a11ce13f90025d1de` |
| 77 | `theorem` | [image_subtype_val_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioc-subset.md) | 281 | `result-track:cf03b1f1400ca7a61aa263a2de74605c3eb448ec787a3a368405d9e98f2ec09c` |
| 78 | `theorem` | [image_subtype_val_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioo-subset.md) | 285 | `result-track:3e931e59a16b60974547433348df650df793f318d047f9e7a1c951c7c53f694a` |
| 79 | `theorem` | [image_subtype_val_Iic_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iic-subset.md) | 289 | `result-track:069c2f366547aa31d3b0dcbc0f468cd2b4c22b150f3fa1f85980c476ffc77789` |
| 80 | `theorem` | [image_subtype_val_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iio-subset.md) | 293 | `result-track:bcd95fe5087bcc6b83c7e85850f31e3bc63bf6e1185f5788ea1599e31f2f1683` |
| 81 | `theorem` | [image_subtype_val_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ici-subset.md) | 297 | `result-track:3dee4d6d128b254bb4a6b2fbb70b7eaf60c28fa479bacb5699c74e605136d91f` |
| 82 | `theorem` | [image_subtype_val_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioi-subset.md) | 301 | `result-track:391631e3ab99941af14cc3b07ac95ffb76f79f8ddbd308fd74d571b2e91b1921` |
| 83 | `lemma` | [image_subtype_val_Ici_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ici-iic.md) | 306 | `result-track:1ded0bd423926acda23cdc40b05d11a2b93135711838fe7780b238380aa0f87c` |
| 84 | `lemma` | [image_subtype_val_Ici_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ici-iio.md) | 310 | `result-track:11879727d923b10df375ef65e19f3213011eec45414a3b469fe6f3a810658ff3` |
| 85 | `lemma` | [image_subtype_val_Ici_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ici-ici.md) | 314 | `result-track:6b312647752c27f15ee0cffa58bbcaadac63830868abf6efbbc65162bab29cf2` |
| 86 | `lemma` | [image_subtype_val_Ici_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ici-ioi.md) | 318 | `result-track:fb7a6c7105c1dc3f67cd3155c5abc56dbb683e0d1ee190305dfadb6bf6134e50` |
| 87 | `lemma` | [image_subtype_val_Iic_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iic-ici.md) | 322 | `result-track:2f4eb2608b0db05225af9d2e7d908a5275fd1a6572167ee56d0ba38741350a53` |
| 88 | `lemma` | [image_subtype_val_Iic_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iic-ioi.md) | 326 | `result-track:4f8f641f5cb6b0881e86b2c1e26d9dfa4479053eef274f2e98084b6462d84aed` |
| 89 | `lemma` | [image_subtype_val_Iic_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iic-iic.md) | 330 | `result-track:f00974ab7edfe210a4541c6b678025305ff02f7d2701e7fc64e22a1797f37a1c` |
| 90 | `lemma` | [image_subtype_val_Iic_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iic-iio.md) | 334 | `result-track:643d79eafde57bfeae58c04d3b3210cea7dcc9a6c14d45549a372eb6586418d1` |
| 91 | `lemma` | [image_subtype_val_Ioi_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioi-ici.md) | 338 | `result-track:29b0c03d1316210a26050f78e663397b6e24975857aa95f10257f39673412c01` |
| 92 | `lemma` | [image_subtype_val_Ioi_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioi-iic.md) | 342 | `result-track:5f4d7928ff789d94020183e245f4554418ac6b48c8b88a6ef3c25acd179957b7` |
| 93 | `lemma` | [image_subtype_val_Ioi_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioi-ioi.md) | 346 | `result-track:d45d0fd050c8ce2aa90d2f43ab60816ae2dcb8764a0df601eb107fa085f2e4a7` |
| 94 | `lemma` | [image_subtype_val_Ioi_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioi-iio.md) | 350 | `result-track:531e8bbea8d42057618f58a59efc56928376beefae7193f2404ffeeb3d199db8` |
| 95 | `lemma` | [image_subtype_val_Iio_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iio-ici.md) | 354 | `result-track:c67398455d2bc0d54c74c7f01575e1827aca5feac365df440cd0f0b5be3bf7f0` |
| 96 | `lemma` | [image_subtype_val_Iio_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iio-iic.md) | 358 | `result-track:022b4d6fc388c063b98544f3aad4956f88932f824e1258c255be9f2fc9d858f8` |
| 97 | `lemma` | [image_subtype_val_Iio_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iio-ioi.md) | 362 | `result-track:fb4dd6ead445013da88bc591e9f2484878762ce3aadf57117129b34f46ff6d44` |
| 98 | `lemma` | [image_subtype_val_Iio_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-iio-iio.md) | 366 | `result-track:b541f4cbcbb7be74d54f0ccdfc3a3188a61253652a2cba2a1b5616bc5480bf48` |
| 99 | `lemma` | [image_subtype_val_Icc_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-icc-ici.md) | 370 | `result-track:a9b64804e7063e5e68f855bb7b8ec679d2fe8b3b4821e6f6fe23a95fc36eb175` |
| 100 | `lemma` | [image_subtype_val_Icc_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-icc-iic.md) | 374 | `result-track:25a42ed0b0f7d65dd37e1f2e4a32b24ac8fbc2c6de9c92abd8e91b7db7bc5d98` |
| 101 | `lemma` | [image_subtype_val_Icc_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-icc-ioi.md) | 378 | `result-track:cd3c1aa9dfddadf4ed47bc811431e5b8cf649469449910372cdf1c8a04db78f9` |
| 102 | `lemma` | [image_subtype_val_Icc_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-icc-iio.md) | 382 | `result-track:ab5b9ea707d66ff02985527de3d19dd0424ce82c815da5e073248bc01541fedd` |
| 103 | `lemma` | [image_subtype_val_Ico_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ico-ici.md) | 386 | `result-track:54878d200a36376d17ddcdd4137643630690255b11682bfcdcc688d98e447c0b` |
| 104 | `lemma` | [image_subtype_val_Ico_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ico-iic.md) | 390 | `result-track:bf325710a7ce92c5cead8790ab5a54667ff68659a06821a800aafacffe14b213` |
| 105 | `lemma` | [image_subtype_val_Ico_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ico-ioi.md) | 394 | `result-track:3d832cdec6450eff6a7708fb6d91f55f04f84ca27c6a12db458605d6eeafb7f9` |
| 106 | `lemma` | [image_subtype_val_Ico_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ico-iio.md) | 398 | `result-track:7eca420af5d8a3764e41459438f62e2a12062ef2059757da0064661e0f59fd44` |
| 107 | `lemma` | [image_subtype_val_Ioc_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioc-ici.md) | 402 | `result-track:e2c1f7531852d5ff0379c804efef1b338ea618bc077d7913190e9c84fc8a05e3` |
| 108 | `lemma` | [image_subtype_val_Ioc_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioc-iic.md) | 406 | `result-track:aaae82067ffeedd680a812bafb9f7d2676db091c07137608252125defca70d6a` |
| 109 | `lemma` | [image_subtype_val_Ioc_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioc-ioi.md) | 410 | `result-track:6d1f8f7bd8c01b244178d10595a958bf52d755801cf0783e8ebe13735936958c` |
| 110 | `lemma` | [image_subtype_val_Ioc_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioc-iio.md) | 414 | `result-track:947e295f8c9660f123c7d1a640b94bb766c8029460bb4a733323d3ca497081e6` |
| 111 | `lemma` | [image_subtype_val_Ioo_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioo-ici.md) | 418 | `result-track:ebf0a352f80a402590b9ef6a40c2de570cb62181491eceae1b4c8c8141432906` |
| 112 | `lemma` | [image_subtype_val_Ioo_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioo-iic.md) | 422 | `result-track:7adb6285fc5da38b921cbf50ea0c22179e0f464aa4017f150311b2f68daaf230` |
| 113 | `lemma` | [image_subtype_val_Ioo_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioo-ioi.md) | 426 | `result-track:1d62c6bd33b028bef6d31d2b9e75bba7627880251beae6d9b30e8e71e2f74daf` |
| 114 | `lemma` | [image_subtype_val_Ioo_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/image-subtype-val-ioo-iio.md) | 430 | `result-track:e2cb37255ef24309c5b985e053c4015e80c0adb6906bc367819b3349dc6c444f` |
| 115 | `lemma` | [directedOn_le_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-le-iic.md) | 438 | `result-track:4e77fc79cd50c8c6adb0214d7307d8d18642f2e3aa688e118527c1696b11a212` |
| 116 | `lemma` | [directedOn_le_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-le-icc.md) | 441 | `result-track:13c1109bf5d9643bdd4883e91a47131aa02fc61f9caa89e90435a697eee8bbf4` |
| 117 | `lemma` | [directedOn_le_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-le-ioc.md) | 444 | `result-track:e6f267df37fe5b4e1f058f7729d137693b1b8db8a2c43acf96b680c28633eab3` |
| 118 | `lemma` | [directedOn_ge_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-ge-ici.md) | 447 | `result-track:16055bd89aa2fe0814ca6f431fa06578009ecf90e3ce30a878f57420a5c9b10b` |
| 119 | `lemma` | [directedOn_ge_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-ge-icc.md) | 450 | `result-track:8b3d136e7222defb6909a76d38c2b7926ccb68e1ae56eec84e0533dae432dcbd` |
| 120 | `lemma` | [directedOn_ge_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetImageNamespaced.lean/declarations/directedon-ge-ico.md) | 453 | `result-track:abeaf4f974b2b28228d7bda046aa198e04fdd66f14a501eb03b2c0be899ed14c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28feb9c250efecf2651fa50f01658aaf25cf7446a7459597bec40248718ad99a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant425e692bf1058589da7304eaff6f615b796d2db7abe776bcdb380eb2024f7be4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant425e692bf1058589da7304eaff6f615b796d2db7abe776bcdb380eb2024f7be4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
