# Verification target: Metric Space Bounded Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Compact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Diam` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-closedball.md) | 58 | `result-track:495500785dadf1515a75e6f6103cd1dd1e1a773b1762731a8cff84de8e5d0217` |
| 2 | `theorem` | [isBounded_ball](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-ball.md) | 64 | `result-track:8907ada56c21275702f8b15152ffee5221aae9a3d67daa9df3bd1bca344d3edb` |
| 3 | `theorem` | [isBounded_sphere](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-sphere.md) | 68 | `result-track:21e9b5a7bd3da33a1b58bd20c5164e043bae7504aa3783d5043918a9642d32fe` |
| 4 | `theorem` | [isBounded_iff_subset_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-iff-subset-closedball.md) | 72 | `result-track:426ebb84485221c53e97c32239d66a963a4040c22f6f7751306776452ad816ba` |
| 5 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/subset-closedball.md) | 76 | `result-track:84af33ce319a72ae556076f07cb08e49c4d91d35ac65981e91f2cd74cfd09268` |
| 6 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/subset-ball-lt.md) | 80 | `result-track:8d96275d1548334bee96695ffa78281fbfbc8029e06a0b91db0aeeaf615b051a` |
| 7 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/subset-ball.md) | 86 | `result-track:95d5f8732be7e0348e19b4398efc92c3c81e016a819603af70b90084a29dd7cb` |
| 8 | `theorem` | [isBounded_iff_subset_ball](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-iff-subset-ball.md) | 89 | `result-track:d4dfc5162900b2879d52582243c61f97574f610b778b4c75b0bbcd6c3696e782` |
| 9 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/subset-closedball-lt.md) | 92 | `result-track:75889a85c6c40e2cd763d62d59f77d12b14067ab357df569801db0724f8573a7` |
| 10 | `theorem` | [isBounded_closure_of_isBounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-closure-of-isbounded.md) | 97 | `result-track:b9dba1ccf9aa411f802176982480ae1b7a3c8d0d7f83f41c0930a104bf281b12` |
| 11 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/closure.md) | 102 | `result-track:a30c4782b60bb6f561cfc4c27d814725a3d5d8f7724df96a15fe1a0f9fe6ecb0` |
| 12 | `theorem` | [isBounded_closure_iff](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-closure-iff.md) | 106 | `result-track:871df7584456577540fdea969be61d4539c80bd3ec1be3716e903caa2410c376` |
| 13 | `theorem` | [hasBasis_cobounded_compl_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/hasbasis-cobounded-compl-closedball.md) | 109 | `result-track:326415a94f2074cb275df80088100b701ca5981ba285d731448401b6956e45fc` |
| 14 | `theorem` | [hasAntitoneBasis_cobounded_compl_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/hasantitonebasis-cobounded-compl-closedball.md) | 113 | `result-track:25fa85383180233b69034446713ebe1e09167267200f9517796cf1b2bf87cbe0` |
| 15 | `theorem` | [hasBasis_cobounded_compl_ball](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/hasbasis-cobounded-compl-ball.md) | 117 | `result-track:85e5d2a1ebae19df4e38dc4d950908af82151942bcebe652cb69cde08a193332` |
| 16 | `theorem` | [hasAntitoneBasis_cobounded_compl_ball](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/hasantitonebasis-cobounded-compl-ball.md) | 121 | `result-track:779111540be617f97c561d21e3f76b3ef7e7657b1151787111c32652e7f541e2` |
| 17 | `theorem` | [comap_dist_right_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/comap-dist-right-attop.md) | 126 | `result-track:5f44e6a6967f77b3db0c1b114f2b80e57b055b58d799feaf56ccb762928ca8be` |
| 18 | `theorem` | [comap_dist_left_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/comap-dist-left-attop.md) | 131 | `result-track:5a84cd8345d9905b19a22ccf44cda8fce27b0f1019e13b0a90325c2383526fa0` |
| 19 | `theorem` | [tendsto_dist_right_atTop_iff](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-right-attop-iff.md) | 135 | `result-track:0a7cc80dee964870e7e4a9fa79853a14ba035e0aeb29b9d05f627f7dfecdb792` |
| 20 | `theorem` | [tendsto_dist_left_atTop_iff](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-left-attop-iff.md) | 140 | `result-track:74708dcc7d604685907b22e9572d835ee01fd2ce8fce06260a67701365cb1e59` |
| 21 | `theorem` | [tendsto_dist_right_cobounded_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-right-cobounded-attop.md) | 144 | `result-track:5e52066ded318cec5355eeb80c3d1c79f14aae461763b3819a59866c5700782b` |
| 22 | `theorem` | [tendsto_dist_left_cobounded_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-left-cobounded-attop.md) | 147 | `result-track:f5038634b88ffa988fc2f1e5259dcffdb095ca697dc638d33a305058fd9c98ae` |
| 23 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded.md) | 151 | `result-track:582bdb7adf51f1d83fa02f267a77e8c20361b418ae75996a78a21b003a9e41fe` |
| 24 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-source-line-158-occurrence-2.md) | 158 | `result-track:6070211122f315c117a1541f9b270669094448381ace20369e939e142d16f177` |
| 25 | `theorem` | [cobounded_le_cocompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/cobounded-le-cocompact.md) | 162 | `result-track:3a72fb8a64ad3a6fa6a48d8b5a2b5a9c5d537a3b6228ac09a5dc27f1d3398a11` |
| 26 | `theorem` | [isCobounded_iff_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/iscobounded-iff-closedball-compl-subset.md) | 165 | `result-track:b8524387812d542f41acbe60e82efbbef843a822386c5acb4bc520cca35b04ae` |
| 27 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/closedball-compl-subset.md) | 172 | `result-track:bd4bebafdab57b26b4c252573e58fc64ae93064e3a35a0378a0615ff46e1213e` |
| 28 | `theorem` | [closedBall_compl_subset_of_mem_cocompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/closedball-compl-subset-of-mem-cocompact.md) | 176 | `result-track:9355b08460d43d2dffd85c9cb4512aa322f486682c807fd8af9b548eb0e1285a` |
| 29 | `theorem` | [mem_cocompact_of_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/mem-cocompact-of-closedball-compl-subset.md) | 180 | `result-track:b28a154b86cd18b3a919ecd2294c3c1c957da76bfc92e49b19da544dcfd3f008` |
| 30 | `theorem` | [mem_cocompact_iff_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/mem-cocompact-iff-closedball-compl-subset.md) | 186 | `result-track:b319d148851074409d4a0a7e457213ca6741a0c6108b6e78ab30e573466c0fd4` |
| 31 | `theorem` | [isBounded_range_iff](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range-iff.md) | 191 | `result-track:baca62d584ea4a0326d6de30f9801754b5c946a9cfc6d1d63d7cf67a3cfa03b5` |
| 32 | `theorem` | [isBounded_image_iff](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-image-iff.md) | 194 | `result-track:72e93ffabd6fe158ef14e96653d5e48df440d86848332170ef64407709358734` |
| 33 | `theorem` | [isBounded_range_of_tendsto_cofinite_uniformity](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range-of-tendsto-cofinite-uniformity.md) | 198 | `result-track:69d851e7d26fb433306f795fc055b08ffb8fb347696d0951d9b7e817fec1f897` |
| 34 | `theorem` | [isBounded_range_of_cauchy_map_cofinite](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range-of-cauchy-map-cofinite.md) | 206 | `result-track:444beb4e6de139cc71227b16ead6647ba3aaa90dc4e79d10350bb8085913a067` |
| 35 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range.md) | 210 | `result-track:7496110beac5a6c1a228c7fe590b09c40823c95b4feba352ab89342928475c18` |
| 36 | `theorem` | [isBounded_range_of_tendsto_cofinite](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range-of-tendsto-cofinite.md) | 213 | `result-track:890385d9b9f2476d2b984a38e07a7d1c8119d91cc560fb1627a2b5f901b1fcb2` |
| 37 | `theorem` | [isBounded_of_compactSpace](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-of-compactspace.md) | 219 | `result-track:b1067ee43fa20bd98f3489e04eadc15ee840b8ba7481836fdd86f93c5ae8d260` |
| 38 | `theorem` | [isBounded_range_of_tendsto](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-range-of-tendsto.md) | 222 | `result-track:f9055746907e886fbcdce8eddc42da8aaa5dae44adbaa6957ebd05ef9c1d9b8a` |
| 39 | `theorem` | [disjoint_nhds_cobounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/disjoint-nhds-cobounded.md) | 226 | `result-track:a86eafa2da4383fadd3452687857aba2964c33dc19cab074ffaddd2a5792f082` |
| 40 | `theorem` | [disjoint_cobounded_nhds](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/disjoint-cobounded-nhds.md) | 229 | `result-track:7b8b2f9fe2211ae181e6b9169a2441e089f5a67fcdc9105f09c74ad7fc5233a9` |
| 41 | `theorem` | [disjoint_nhdsSet_cobounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/disjoint-nhdsset-cobounded.md) | 232 | `result-track:57d82c91d1e5d9c8669cc8f8742181c4d0c7002807cf4a74ce6b0a71fcb2758f` |
| 42 | `theorem` | [disjoint_cobounded_nhdsSet](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/disjoint-cobounded-nhdsset.md) | 235 | `result-track:bf3c3d309cf49df03e47baf3fbe5aa54545783e67567fe0ab34003f6c15187d0` |
| 43 | `theorem` | [exists_isBounded_image_of_tendsto](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/exists-isbounded-image-of-tendsto.md) | 238 | `result-track:dcbba114ad2e00f3822e019f4dceb27c7af68151562668af8ab813c47e9d6dd9` |
| 44 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-forall-continuouswit.md) | 245 | `result-track:2df041b6c777cd34d800a27ad76bd86369b9c4bc998a85a067dccf6f4baba6c5` |
| 45 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_forall_continuousAt](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-forall-continuousat.md) | 260 | `result-track:9208e69f1cd187df33021538f452bef229c0a9e0d4e4c432588a31bc811a3c06` |
| 46 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_continuousOn](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-continuouson.md) | 269 | `result-track:35eb495f4aa1d1a67395d10021dbee37d092f3106156bc4f266f0ae025f536df` |
| 47 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_continuousOn](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-continuouson.md) | 277 | `result-track:b1442d2ab337b50e71c50e43b338c48150781edff1efc3b44585ab5f22228c5d` |
| 48 | `theorem` | [isCompact_of_isClosed_isBounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/iscompact-of-isclosed-isbounded.md) | 284 | `result-track:6acd58856adde4f6df7435dbcafab7486d3ba9a681ee062f1b92444ea4597b12` |
| 49 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/iscompact-closure.md) | 292 | `result-track:19f2683ec7fb28f07d1c7a295ec2fa7749ec59055a2531fbc7e48110802941e1` |
| 50 | `theorem` | [isCompact_iff_isClosed_bounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/iscompact-iff-isclosed-bounded.md) | 299 | `result-track:b542e0a419ad68cad4365da12339728b0f7fef11422d66d38da0a13e145420a7` |
| 51 | `theorem` | [compactSpace_iff_isBounded_univ](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/compactspace-iff-isbounded-univ.md) | 303 | `result-track:f9948e1f26a3de110fa868e7009a3db31bdc4dba3d35abef2f333ad6417dcbd8` |
| 52 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/totallybounded-icc.md) | 311 | `result-track:a810177c9b0ad0fe8b4f03dcfcf9dec68df72e1e16492113e894680f2b5b616b` |
| 53 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/totallybounded-ico.md) | 314 | `result-track:9b3bec5cb78e19ebe9aa433efaabb9bbc772b51b70e74e1f6e0cdc5333162be8` |
| 54 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/totallybounded-ioc.md) | 317 | `result-track:06a73d308095766a6d15a16d28457f07709325778eed57497fcd2f656c243c7c` |
| 55 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/totallybounded-ioo.md) | 320 | `result-track:664b77154a4935df94a2dfc44109dee17d61eab37e117ece35f4f6de30ee9c94` |
| 56 | `theorem` | [isBounded_Icc](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-icc.md) | 323 | `result-track:6f3f55ab75c5a626449458a150cba332c2a3c021ef7d94d81ac98f5e2e442468` |
| 57 | `theorem` | [isBounded_Ico](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-ico.md) | 326 | `result-track:ca4bc75fc737fbd63f29335b7143eb0880cf4265b6143f67a0ce64fc08a3aad9` |
| 58 | `theorem` | [isBounded_Ioc](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-ioc.md) | 329 | `result-track:fb9a63902ff20727518e81b8bdefdb42e0ada64ddfe02d3946b33c193435c7bb` |
| 59 | `theorem` | [isBounded_Ioo](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-ioo.md) | 332 | `result-track:efa912bdfd0c8d47f7adb96d7a4888c6984757059a4ac92dc4fad609e7443c6c` |
| 60 | `theorem` | [isBounded_of_bddAbove_of_bddBelow](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-of-bddabove-of-bddbelow.md) | 337 | `result-track:60e36146c99b1e60cf1ca34ef463a4184f104d600346c1cc2aba74e87f283688` |
| 61 | `def` | [diam](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam.md) | 353 | `declaration-track:3bde683b306f57966e66e205e7baef81267b13006a1a3214c81c11bbb4212cb5` |
| 62 | `theorem` | [diam_nonneg](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-nonneg.md) | 357 | `result-track:419bcdfc3c4cf4e34d8f4aecb8e6d967f505bdb5b43b5ef390bcf1af4529fe6b` |
| 63 | `theorem` | [diam_subsingleton](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-subsingleton.md) | 360 | `result-track:07923eeec587d6bf005f14265e510f58b962e8f15e995f8cbcc879b1a38a7ab2` |
| 64 | `theorem` | [diam_empty](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-empty.md) | 365 | `result-track:4ad7b6492df39aa4a225f73bacef3fffef111055cee11997d95313707c30c52c` |
| 65 | `theorem` | [diam_singleton](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-singleton.md) | 370 | `result-track:ef79075421adee4c8cb2b525bdb5c308aebb4a2d8e6a599c51f1cb312cf0a691` |
| 66 | `theorem` | [diam_one](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-one.md) | 374 | `result-track:724fba95c56040e4b78327d0318f5bc8ca20e68e51dcfc99a010576b858168f4` |
| 67 | `theorem` | [diam_pair](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-pair.md) | 378 | `result-track:16083620698f74c310fc522d91333be4cc9deedf9fc873e417fbd08e0a593f07` |
| 68 | `theorem` | [diam_triple](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-triple.md) | 382 | `result-track:a15224cd8bbd17f52203e542c95bb101591adc2e1c1c149cf2bf2a746d60e702` |
| 69 | `theorem` | [ediam_le_of_forall_dist_le](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/ediam-le-of-forall-dist-le.md) | 389 | `result-track:9154c2012daf19b7055fbefa2d5a85c4e2be081b1f5cdb43c65bcc03ac0e890d` |
| 70 | `theorem` | [diam_le_of_forall_dist_le](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-le-of-forall-dist-le.md) | 395 | `result-track:4e6300c0256912f1057d21bea593dcc7c055845a3951132baeaf4d9c0f760ceb` |
| 71 | `theorem` | [diam_le_of_forall_dist_le_of_nonempty](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-le-of-forall-dist-le-of-nonempty.md) | 401 | `result-track:98c2a38e86fc3f929ba4c1ee3f4c2cdf7300c36ba4cc93fd9d7ab5cff1e6ccfa` |
| 72 | `theorem` | [dist_le_diam_of_mem'](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/dist-le-diam-of-mem-source-edition-2.md) | 409 | `result-track:ef04bda91364c23a6f1dc8a3035b25fc2bf24e4d47308a76ec5bb6741ce410c7` |
| 73 | `theorem` | [isBounded_iff_ediam_ne_top](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/isbounded-iff-ediam-ne-top.md) | 415 | `result-track:74b1bf2c57f7129a5340d5e79f153512d90903b18c889c26dcf262945ef8215d` |
| 74 | `theorem` | [ediam_eq_top_iff_unbounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/ediam-eq-top-iff-unbounded.md) | 422 | `result-track:c79c27d67540866ecfd9f03249d95e430e48b1a6db4562b563025ffda88a7658` |
| 75 | `theorem` | [ediam_univ_eq_top_iff_noncompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/ediam-univ-eq-top-iff-noncompact.md) | 425 | `result-track:c58cae8d346a1054c4cced7f2ab415444c4d9ea4032f2dc479771ba8c5e59263` |
| 76 | `theorem` | [ediam_univ_of_noncompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/ediam-univ-of-noncompact.md) | 431 | `result-track:4035640f1df70405de9b30dd991465efd0f873c06d9161b3e2198791c8f83df1` |
| 77 | `theorem` | [diam_univ_of_noncompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-univ-of-noncompact.md) | 436 | `result-track:2347fa855c7b5b307a07cf72b07e44176d07eb7e4956abf3a85ebbc9f1a0eaf1` |
| 78 | `theorem` | [dist_le_diam_of_mem](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/dist-le-diam-of-mem.md) | 440 | `result-track:dd3379601e9dc292092e7d4bda00c8f220550c66fc6c6587fb074120a238ef72` |
| 79 | `theorem` | [ediam_of_unbounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/ediam-of-unbounded.md) | 443 | `result-track:7f107907711102aff19963a1ff629cc742395277ecb456d42233684e6f684790` |
| 80 | `theorem` | [diam_eq_zero_of_unbounded](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-eq-zero-of-unbounded.md) | 447 | `result-track:9bc4edff3371bd4fdc4186fbd8e6eff8d5e525c5118bb3f198576e01f289857f` |
| 81 | `theorem` | [diam_mono](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-mono.md) | 451 | `result-track:f7d4e26f7784d57936a1ecd44af86b339198a39fa5572696c3b8edb68b98bebc` |
| 82 | `theorem` | [diam_union](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-union-source-edition-2.md) | 457 | `result-track:9e2876280caf68ac234340fe57a469df85b40eec67cd416fa6fa34379f8b3b2e` |
| 83 | `theorem` | [diam_union'](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-union.md) | 467 | `result-track:88a97ee5d10079f48a26bd243572a40b4d8a9ffc4119e7f1b53261c3f28b9fbd` |
| 84 | `theorem` | [diam_le_of_subset_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-le-of-subset-closedball.md) | 471 | `result-track:fe7393bbe81ce074840059b15fab214415a12bb5554ac1f6293c2aec34029152` |
| 85 | `theorem` | [diam_closedBall](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-closedball.md) | 480 | `result-track:582fd61db95530cf9492b6faac655621edca36e8d782f544c070d33dd391ca47` |
| 86 | `theorem` | [diam_ball](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/diam-ball.md) | 484 | `result-track:c71bdc41547c61e693f45bcd46146f8ca892b073330b51ab54f59d45c7f12e1e` |
| 87 | `theorem` | [Metric Space Bounded Namespaced](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/nonempty-iinter-of-nonempty-biinter-source-line-489-occurrence-2.md) | 489 | `result-track:f5abbc43adf4c52174a16a792593c7bd08bf7d5d5dc42cdd4a025b6d4220eb8f` |
| 88 | `theorem` | [nonempty_iInter_of_nonempty_biInter](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/nonempty-iinter-of-nonempty-biinter.md) | 513 | `result-track:56f2db07c45e6f8d5c599545069abc4116f62fd908a6cfc3bab4dc2a6bbd5616` |
| 89 | `def` | [evalDiam](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/evaldiam.md) | 528 | `declaration-track:4cd43992c22ed356ad244e97327234aab91d92e6a97ffde97f720cfd98e57d99` |
| 90 | `theorem` | [Metric.cobounded_eq_cocompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/metric-cobounded-eq-cocompact.md) | 539 | `result-track:c523cc2eb22b9b0fa2fd9b2b886d53d0492ed21bf6eda455c48c7a8d02736484` |
| 91 | `theorem` | [tendsto_dist_right_cocompact_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-right-cocompact-attop.md) | 544 | `result-track:59b151088db81fc53301b6efca9b907b6ebbdd5e5c3ecfa039e316426b2c12cd` |
| 92 | `theorem` | [tendsto_dist_left_cocompact_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-dist-left-cocompact-attop.md) | 548 | `result-track:c1bc8fae2bfd055703924d3b914369644e3efed79564268e64c6645b04c8fede` |
| 93 | `theorem` | [comap_dist_left_atTop_eq_cocompact](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/comap-dist-left-attop-eq-cocompact.md) | 552 | `result-track:bd3bc6b76ad37f11dbb2815eee039bb6d98093da320ffec01d21ecd591ccc06a` |
| 94 | `theorem` | [tendsto_cocompact_of_tendsto_dist_comp_atTop](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/tendsto-cocompact-of-tendsto-dist-comp-attop.md) | 555 | `result-track:3ea83316a51e5b0a9c0cc192d809a6420ba9d8aa514adc33999ec2c6eab1ea01` |
| 95 | `theorem` | [Metric.finite_isBounded_inter_isClosed](../../../../GeneralTopology/MetricSpaceBoundedNamespaced.lean/declarations/metric-finite-isbounded-inter-isclosed.md) | 559 | `result-track:25a2c984acd0c3d73fbe54e6e76e9e9382932885604f2a54c4a8f1c21014029c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db0889a0ebe94810897cf8759cb1a79c3f50d28602884e400e43298908383afb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
