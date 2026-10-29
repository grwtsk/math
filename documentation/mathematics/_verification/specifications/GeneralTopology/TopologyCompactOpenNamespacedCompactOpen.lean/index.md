# Verification target: Topology Compact Open Namespaced Compact Open

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4147406fcaf630234d7511a9db4a78a189f9b18e",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4147406fcaf630234d7511a9db4a78a189f9b18e`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompactOpen.gen](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/compactopen-gen.md) | 59 | `declaration-track:cf95e318fa4d7441a9309bea4f856cb5c1a3ed750af9810458f2a1d1611de7d7` |
| 2 | `theorem` | [gen_empty](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/gen-empty.md) | 64 | `result-track:26b55bb4f55b0b07e0750d590aac6fe6e877a616d6ac9f8d2c26e9854ffea747` |
| 3 | `theorem` | [gen_univ](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/gen-univ.md) | 69 | `result-track:e91cc04f41a2eadca84023ac511dd280505d70cd6a58d7ffe51eec56cef01d4a` |
| 4 | `theorem` | [gen_inter](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/gen-inter.md) | 74 | `result-track:b93d024fda95f447573f843201092d40a19bfdb57429879a801757ea9757a009` |
| 5 | `theorem` | [gen_union](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/gen-union.md) | 80 | `result-track:ae1cdfe8bb4f4933853fa968751fb6f6190cc245fd183163dd1847a38f769577` |
| 6 | `theorem` | [gen_empty_right](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/gen-empty-right.md) | 85 | `result-track:869e0c20250f9444b1f0a6c81fa6b7b7f17708820bac3b3178ce4edaccd99699` |
| 7 | `instance` | [compactOpen](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/compactopen.md) | 90 | `declaration-track:615bb8d5cab458d644cfb2b50a883c4c76135a8707a7fcb10a3b2969e294ce72` |
| 8 | `theorem` | [compactOpen_eq](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/compactopen-eq.md) | 96 | `result-track:532fad70fea1a3270725e1d2e008c420c15ef49c7a25b86026c472c51a24ff18` |
| 9 | `theorem` | [isOpen_gen](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/isopen-gen.md) | 100 | `result-track:5d791ee48624bc2a82ff02e0d1f9b0e6ad2a6f126c4483549e6f73b55fdcde24` |
| 10 | `theorem` | [preimage_gen](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/preimage-gen.md) | 109 | `result-track:22df0e6914fe835e9d1da5f7a97a0e154c0f9e2b936a1ebdbb3247a4ccb3c13f` |
| 11 | `theorem` | [continuous_comp](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-comp-source-edition-2.md) | 116 | `result-track:3dbfa74545fe1bb99bd431ccc815c816d95b42b1aae5ea05103fefb3d6638d9a` |
| 12 | `theorem` | [inducing_comp](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/inducing-comp.md) | 123 | `result-track:ace85f0285ceeeddcf2c0c26ddb555b601c69fd3e83dd54a3f0d5009c4afb0b9` |
| 13 | `theorem` | [embedding_comp](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/embedding-comp.md) | 130 | `result-track:6d4f7d0d333f118299268c70f2c5c6afb63c6b32f2c3cfde5d7b3c513bd7209f` |
| 14 | `theorem` | [image_gen](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/image-gen.md) | 135 | `result-track:a74d0eb29cbc6b6bc595dfee4af430856b398624e65cc12a5d66496e3e126e18` |
| 15 | `theorem` | [continuous_comp_left](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-comp-left.md) | 142 | `result-track:333b172e05425971cc78f6c1d1532348da97673d6e1518856cb8c8acceac2860` |
| 16 | `theorem` | [continuous_comp'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-comp-source-edition-3.md) | 150 | `result-track:bafd804e8d84491776c200dd27db89aff1937321d1a97c28aa17efae2ce55a98` |
| 17 | `theorem` | [continuous.comp'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-comp.md) | 172 | `result-track:2071fbc3bc86d8e2ba917025c14110677e0197d5b32ab3039eaa75a48c5cf06f` |
| 18 | `theorem` | [continuous_eval'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-eval.md) | 185 | `result-track:1945c9ae2a9add64643f30318f6e7780b3fbbc82d48eb08b52d66133e1691491` |
| 19 | `theorem` | [continuous_eval_const](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-eval-const.md) | 212 | `result-track:1a74846241d1d19401fd62cca867916b04e106a1ef96e76d5743ac1ce7c18a6e` |
| 20 | `theorem` | [continuous_coe](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-coe.md) | 224 | `result-track:f12da41d914252949a5e57aeb9b72bbbbbf68bc4b74f4c3b10d6b211e2b1764c` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:9cc49e8c66d484ca980bbf70187758e1ce6db190319116d3d924e25c886c3360` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/instance-source-edition-3.md) | 232 | `declaration-track:cb230501b186df31c31ee2d5fe9665afda2aa2a73b1aaab25c39333591328883` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/instance.md) | 235 | `declaration-track:601b36a1bfa66338351268c6352df38b6f1e42556a111bac1f93be9ec97e4e86` |
| 24 | `theorem` | [compactOpen_le_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/compactopen-le-induced.md) | 242 | `result-track:de5062f668aa434325a56867da61fa40cb9115e30db29790dda589412814ae4b` |
| 25 | `theorem` | [compactOpen_eq_sInf_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/compactopen-eq-sinf-induced.md) | 257 | `result-track:aa2a1587347999fd914a30bc99c5dedd1548ead08a7fccb74341981d2df3ac06` |
| 26 | `theorem` | [continuous_restrict](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-restrict.md) | 277 | `result-track:b727884684b3d2eeead406ce69768e31c81e55e32d89a771f8ba3b6182ea05f8` |
| 27 | `theorem` | [nhds_compactOpen_eq_sInf_nhds_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/nhds-compactopen-eq-sinf-nhds-induced.md) | 282 | `result-track:216e33a46038b179987402b1678e1ba0294d2eb54a803b9eb2ceaceab559ed06` |
| 28 | `theorem` | [tendsto_compactOpen_restrict](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/tendsto-compactopen-restrict.md) | 288 | `result-track:2cc924f9e16df8bc1227150d1dd99578110f0a1ae6d117b2724072bd8356b5a6` |
| 29 | `theorem` | [tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/tendsto-compactopen-iff-forall.md) | 294 | `result-track:a060cbe1478a9f020d9b7265f4580d56cb5524f573abb1f1d7662363d51a398c` |
| 30 | `theorem` | [exists_tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/exists-tendsto-compactopen-iff-forall.md) | 303 | `result-track:443d8878c13a3815b20212d7b41853a699d446a9519730cb1d96bd558884323d` |
| 31 | `def` | [coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/coev.md) | 340 | `declaration-track:89e70330b3b70f03b8d43a59dcc8eb35c111f43e9e6f6996918348e5031a8a2f` |
| 32 | `theorem` | [image_coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/image-coev.md) | 346 | `result-track:921586187962e57389894e6de2cc020624859f48fbe282a1c31ada54da12deb4` |
| 33 | `theorem` | [continuous_coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-coev.md) | 351 | `result-track:a1cd63849b002ca97b7997e3a2d4b16e94c2bb92f98ea35763483264d1e68e13` |
| 34 | `def` | [curry'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/curry-source-edition-2.md) | 373 | `declaration-track:c16c4316d10f826c1c5bc716fffbc5791b135814aa3a07a853713054fc4a6e08` |
| 35 | `theorem` | [continuous_curry'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-curry.md) | 379 | `result-track:9271d434afe422f205ad6f68b948e601b7aac053a2e7ed9623bfacb15e7a3293` |
| 36 | `theorem` | [continuous_of_continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-of-continuous-uncurry.md) | 386 | `result-track:82d9e694a57136c0f945604159c49407c65ef769f363551fe1efd161c58d5094` |
| 37 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/curry-source-edition-3.md) | 394 | `declaration-track:c6cbdf8279151d189d59e30929fab9a141cc2882342eeeceb8b9967f69781c81` |
| 38 | `theorem` | [curry_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/curry-apply.md) | 399 | `result-track:665c37090a352ccfd7503b1b123bb450d8dcdc6be39d7da021d6db5ff16eb16d` |
| 39 | `theorem` | [continuous_curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-curry-source-edition-2.md) | 404 | `result-track:edde1fbf26ad600f8066fa31e4d56d6436f97fc0e91968efcd076173ac8ec326` |
| 40 | `theorem` | [continuous_uncurry_of_continuous](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-uncurry-of-continuous.md) | 413 | `result-track:aae326c0ae8ff525a231700ecd46a692c92a5e7e3934e911676199441b3f0fef` |
| 41 | `def` | [uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/uncurry.md) | 422 | `declaration-track:4c154dbb533d5f5b15e44a26967a402093c97c7d3c6ff688bdd9b26e069302c2` |
| 42 | `theorem` | [continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-uncurry.md) | 427 | `result-track:996ab2b857b365bddf660fb12d2d442f75472ae5e2235aa3199745593b2e61d2` |
| 43 | `def` | [const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/const.md) | 435 | `declaration-track:854fc5b63166663fe1e0c1c3e515fbea7fb94b8e1b421f7b8e6fb5717b3c217a` |
| 44 | `theorem` | [coe_const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/coe-const.md) | 440 | `result-track:6f3bb89392da3c24a44f41a81cc0e0a95ecb83729d289f46822fedda0b9909f8` |
| 45 | `theorem` | [continuous_const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuous-const.md) | 444 | `result-track:a67e1e2d65d88a2285476b8bd1db4053c8ac7a94edb499f6aeec0479a4b527ef` |
| 46 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/curry.md) | 463 | `declaration-track:24c7dad5c81ccf795d1bc51894fcc6e8bc4cd4547e590eb6b18385943d82ea2f` |
| 47 | `def` | [continuousMapOfUnique](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuousmapofunique.md) | 469 | `declaration-track:9968a1914b94a54031db8edc948ce308ebd03d35055461d38c63537b84fa10a8` |
| 48 | `theorem` | [continuousMapOfUnique_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuousmapofunique-apply.md) | 482 | `result-track:0b479be3d9731e951262eba841ad11a9aae004e3e6ba7d2bd5e03326e9687a65` |
| 49 | `theorem` | [continuousMapOfUnique_symm_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/continuousmapofunique-symm-apply.md) | 487 | `result-track:c69b0f87e367b2e9d2e11f4a5a4b21edbfa5a045ac9abfad20a428b8e9036a4a` |
| 50 | `theorem` | [QuotientMap.continuous_lift_prod_left](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/quotientmap-continuous-lift-prod-left.md) | 499 | `result-track:ba6872fa6a19433b63bda9ee9f5fd3e41669119636940dd768faf3c41e9bb74f` |
| 51 | `theorem` | [QuotientMap.continuous_lift_prod_right](../../../../GeneralTopology/TopologyCompactOpenNamespacedCompactOpen.lean/declarations/quotientmap-continuous-lift-prod-right.md) | 513 | `result-track:6d1039a31082e110ea7cd4376a540eabe4e08026429feaa1880cb69917d20bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa7de1bb19d10445735e4e04a9d3520427f13a1e327ab721e696d1f020527eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
