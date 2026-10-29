# Verification target: With Seminorms Namespaced Basis Sets Mem Nhds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/index.md) · [Full source](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8`.

Source path: `GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Equicontinuity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Equicontinuity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SeminormFamily](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily.md) | 72 | `declaration-track:a8ba8c0acd006cc293d5d3bd5f9670c3eae9cf5d7daaf52ee192441b2083adf4` |
| 2 | `def` | [basisSets](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets.md) | 80 | `declaration-track:e5fc42dc6a6c1f85643137c8bf5b4d28d81c15c0a44f3a8985bf2684863550a3` |
| 3 | `theorem` | [basisSets_iff](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-iff.md) | 85 | `result-track:b55c861b82fb715d117e65f96e6df05c4ffdb7ed19b7fa704121e470b87fd6b1` |
| 4 | `theorem` | [basisSets_mem](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-mem.md) | 89 | `result-track:4c315ebc58db93a585d12de14a42426bcf1be9bd0469844192251a8499307018` |
| 5 | `theorem` | [basisSets_singleton_mem](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-singleton-mem.md) | 92 | `result-track:8e3cef9a26d2d3a75c6216bcff9c0fd67d6dee4e52972d30c6943278b920468e` |
| 6 | `theorem` | [basisSets_nonempty](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-nonempty.md) | 95 | `result-track:725a71dcc6845ec59615611e7466e8ca20535fb5f128e497e4472d33b74ee8f1` |
| 7 | `theorem` | [basisSets_intersect](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-intersect.md) | 100 | `result-track:eb9b8f0125ffaa9a7835ee2ce2c295d36b00934b04c5fc805a93a35de06ea6d3` |
| 8 | `theorem` | [basisSets_zero](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-zero.md) | 116 | `result-track:5888f8a532956ce624a9f65646b2aed37a8122414ab893779a03317f9d6dac82` |
| 9 | `theorem` | [basisSets_add](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-add.md) | 121 | `result-track:20eb814869aba9264a662b78aed30cc7d96beb405dc56145eee25431db2d8ade` |
| 10 | `theorem` | [basisSets_neg](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-neg.md) | 129 | `result-track:89cce1a35915114d05f686f3a9a43089574ca2a7b11d19ba97006e5ce454e91d` |
| 11 | `def` | [addGroupFilterBasis](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/addgroupfilterbasis.md) | 136 | `declaration-track:3b030b6c641b4c8a795b9ca7ab93095b2653d4552c270ba21854c7d3a43b5d52` |
| 12 | `theorem` | [basisSets_smul_right](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-smul-right.md) | 140 | `result-track:a32355b89a8a3e72f69026a548ac4ff3b21700f37b0ddbfae1015dd0a66f1963` |
| 13 | `theorem` | [basisSets_smul](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-smul.md) | 154 | `result-track:7d01e9e1f2c8a2183945d8eec4619d69505d234fc2c7e4db90f8a34ac1fc440e` |
| 14 | `theorem` | [basisSets_smul_left](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-smul-left.md) | 162 | `result-track:df71e260e212fc0a734af4643692251154e755f1ded6137c31b831c9ad022104` |
| 15 | `def` | [moduleFilterBasis](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/modulefilterbasis.md) | 175 | `declaration-track:f9e7745e253870afe73079b35187a99e270d46bd6af28cfbc2ec32c031c9f7d0` |
| 16 | `theorem` | [filter_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/filter-eq-iinf.md) | 181 | `result-track:999c1299ce407a7313a7c12ce6559705bac72c3d09977d2b2a2e17af314ab883` |
| 17 | `lemma` | [basisSets_mem_nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/basissets-mem-nhds.md) | 201 | `result-track:28210489195b2651b968f52658b11734f297f393691368c050e192f7502c655f` |
| 18 | `def` | [IsBounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/isbounded.md) | 228 | `declaration-track:ad2b440dd1fc0b081c12deb8fc0f51566a0511ea4f17da27c107aeb7bf2995f9` |
| 19 | `theorem` | [isBounded_const](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/isbounded-const.md) | 231 | `result-track:53f889f3282ebcb2268ba01b8274ab29667bf5ce0fcc0c20edc0c65834f3caaf` |
| 20 | `theorem` | [const_isBounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/const-isbounded.md) | 236 | `result-track:614539c023429a46f07e81f4cde4e78dcce26319f92b2a6d938934e32c725c88` |
| 21 | `theorem` | [isBounded_sup](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/isbounded-sup.md) | 244 | `result-track:ab483ccfa9eefe0552cfbc0bec514d95083f3fe909f55624d68722bf0e144331` |
| 22 | `structure` | [WithSeminorms](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms.md) | 270 | `declaration-track:d8f1148603091bbb4b26f80a1c2aaa931d0912baf20685651cff97372be61752` |
| 23 | `theorem` | [WithSeminorms.withSeminorms_eq](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-withseminorms-eq.md) | 273 | `result-track:07b0c990aaa6e519368d7f1a51add6de0b17b6a483421c7db78475134f715809` |
| 24 | `theorem` | [WithSeminorms.topologicalAddGroup](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-topologicaladdgroup.md) | 280 | `result-track:27a859a76615cf21606c91b782a718032d76289cc861254a5c10cc45ce7f6cc6` |
| 25 | `theorem` | [WithSeminorms.continuousSMul](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-continuoussmul.md) | 284 | `result-track:b3f048b7647e6cbacfd024c491052c8ef85af43b294a8af0c5bc51277ea7b5a9` |
| 26 | `theorem` | [WithSeminorms.hasBasis](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-hasbasis.md) | 288 | `result-track:9171e9ae13c53b73328cdcd845804335df57c233ee4391edd13f1e126833a55b` |
| 27 | `theorem` | [WithSeminorms.hasBasis_zero_ball](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-hasbasis-zero-ball.md) | 293 | `result-track:4191f2cd2d85f664d3038c59b6657cf4383d8c60a89d8d1422cea9e3ebf3e24a` |
| 28 | `theorem` | [WithSeminorms.hasBasis_ball](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-hasbasis-ball.md) | 304 | `result-track:6e44edf377e7217f3abc54df753c08f2105ed25efb509b0e186a7c532d48cac5` |
| 29 | `theorem` | [WithSeminorms.mem_nhds_iff](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-mem-nhds-iff.md) | 318 | `result-track:98f23df330e2ee3f39c509dc8d8d5c933fda0414a6a180293e9c70a77f4dff04` |
| 30 | `theorem` | [WithSeminorms.isOpen_iff_mem_balls](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-isopen-iff-mem-balls.md) | 324 | `result-track:79d197e5691e8af1374efae3dbd40ca4a9999237f7ba0680fcfb233ef5fc1af5` |
| 31 | `theorem` | [WithSeminorms.T1_of_separating](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-t1-of-separating.md) | 332 | `result-track:79fddcc2dfbb006b9aa6944d7ee8a164671d6fa1f028d5bacda8965f9d0c375a` |
| 32 | `theorem` | [WithSeminorms.separating_of_T1](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-separating-of-t1.md) | 343 | `result-track:076bf0b9336db25d2557e84a19c5820b4a94c69883927808f15a6c10634afc56` |
| 33 | `theorem` | [WithSeminorms.separating_iff_T1](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-separating-iff-t1.md) | 353 | `result-track:e0d6a8022cd22d9bd0daa5ae1762c616d30728eea6cd1244804b68210f30e005` |
| 34 | `theorem` | [WithSeminorms.tendsto_nhds'](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-tendsto-nhds-source-edition-2.md) | 369 | `result-track:3c1cbe6d947af396ae415d56ad71d921b32267f3279e51569020050e4ccd00c5` |
| 35 | `theorem` | [WithSeminorms.tendsto_nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-tendsto-nhds.md) | 375 | `result-track:1dfd5e400e1f918bfb64987cbcbfeaa5a34caa22793ed8ecce81a74c4da26eea` |
| 36 | `theorem` | [WithSeminorms.tendsto_nhds_atTop](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-tendsto-nhds-attop.md) | 385 | `result-track:57c0e0ff677553f89877d51ba585d3770b3165beb59415deae7624846751a6ed` |
| 37 | `theorem` | [SeminormFamily.withSeminorms_of_nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-withseminorms-of-nhds.md) | 402 | `result-track:d26168b005ba4a8cb62f448d7aa5422be4e40316a880788a68fd5f9efa4fdef8` |
| 38 | `theorem` | [SeminormFamily.withSeminorms_of_hasBasis](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-withseminorms-of-hasbasis.md) | 409 | `result-track:26f93de5e5225d9069ce26ee90152db1be2c67084c8fd2d9dba125800f3d4cd3` |
| 39 | `theorem` | [SeminormFamily.withSeminorms_iff_nhds_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-withseminorms-iff-nhds-eq-iinf.md) | 415 | `result-track:f1ba7a0cb60236c5258996701556f8b3902e316dab9eaf705bb271414b3d3531` |
| 40 | `theorem` | [SeminormFamily.withSeminorms_iff_topologicalSpace_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-withseminorms-iff-topologicalspace-eq-iinf.md) | 424 | `result-track:b00e4ce13dd94e229c7041813d1d5aaa4b242c94a2cd7cebe1b13788a6f0e768` |
| 41 | `theorem` | [WithSeminorms.continuous_seminorm](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-continuous-seminorm.md) | 434 | `result-track:7032e9a292d126082e7442f222609d76ed2e2f2efdcb4d17c7adbce8c574a0cf` |
| 42 | `theorem` | [SeminormFamily.withSeminorms_iff_uniformSpace_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-withseminorms-iff-uniformspace-eq-iinf.md) | 445 | `result-track:1fcdf407d7638726930367c1547bb259d02f2c861d74cace7eafa6273a51a9ba` |
| 43 | `theorem` | [norm_withSeminorms](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/norm-withseminorms.md) | 459 | `result-track:24197da8585dd1eda5439d54c6c552be4f699088526b2d123d994d24c520c196` |
| 44 | `theorem` | [WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-isvonnbounded-iff-finset-seminorm-bounded.md) | 487 | `result-track:5e42821543830c09a87a466b602328329fe5de3d83bf1bf3d98534d1ee85f4de` |
| 45 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_finset_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-image-isvonnbounded-iff-finset-seminorm-bounded.md) | 510 | `result-track:d7d43d03a88a3dccd327e7c125aeb57b5288f18482c7e8a43c3f6b3080d51790` |
| 46 | `theorem` | [WithSeminorms.isVonNBounded_iff_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-isvonnbounded-iff-seminorm-bounded.md) | 516 | `result-track:abe1f4be473cbdc62445a433b28791ecb76da4f5e8bc164c13780e510b7a0ed8` |
| 47 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-image-isvonnbounded-iff-seminorm-bounded.md) | 537 | `result-track:d11b5d7d303114239cf27990a094cca6ff38be880b3ac19b6c98f5f475429f65` |
| 48 | `theorem` | [continuous_of_continuous_comp](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/continuous-of-continuous-comp.md) | 557 | `result-track:6c17cef2db157b45e60d56409eeb14fe6adfd6bcc4c55534bea6ebffdf96d531` |
| 49 | `theorem` | [continuous_iff_continuous_comp](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/continuous-iff-continuous-comp.md) | 568 | `result-track:59f02845f194c7942de27effd41d625e6d89d0ba865a79bc1a9313035ddc6ee5` |
| 50 | `theorem` | [continuous_from_bounded](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/continuous-from-bounded.md) | 573 | `result-track:1769b7a03243b8016c15103ec1a74d34de9dd9f6d168aa2e0c44fa813b6d5267` |
| 51 | `theorem` | [cont_withSeminorms_normedSpace](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/cont-withseminorms-normedspace.md) | 588 | `result-track:b23b8bcdbf0fe0c6e7c973dc3607d6f53f584520998a8e97096d8456eab92d67` |
| 52 | `theorem` | [cont_normedSpace_to_withSeminorms](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/cont-normedspace-to-withseminorms.md) | 595 | `result-track:34ab7990c96795867618bf947e376179d8fa0136782db088c297100118be352b` |
| 53 | `theorem` | [With Seminorms Namespaced Basis Sets Mem Nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/equicontinuous-tfae.md) | 615 | `result-track:17db24e765556efdfd69929d87c4e60351ca5da97324f7906abf8214cc6fee28` |
| 54 | `theorem` | [With Seminorms Namespaced Basis Sets Mem Nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/uniformequicontinuous-iff-exists-continuous-seminorm.md) | 655 | `result-track:aad16f3275755590e09708df966dcee930598e52ecb9c188f589fa24571f146a` |
| 55 | `theorem` | [With Seminorms Namespaced Basis Sets Mem Nhds](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/uniformequicontinuous-iff-bddabove-and-continuous-isup.md) | 663 | `result-track:fe9352234936dbd8546df59339434bf588ec427e7c57862e59b019fcbade3f0a` |
| 56 | `theorem` | [congr](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/congr.md) | 690 | `result-track:d9a2c17f45181a9ec7595a6a409f15de93cab6680eaf751e9894fc77e4c9eca0` |
| 57 | `theorem` | [finset_sups](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/finset-sups.md) | 701 | `result-track:de037be61f1c5c646dcfce2267109e3c88214ea87fee0a718d383a606e4ac9df` |
| 58 | `theorem` | [partial_sups](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/partial-sups.md) | 713 | `result-track:0f5d4cec01556558842dcad90417053a65b0d2037df77282e6ba4532d3eaaf00` |
| 59 | `theorem` | [congr_equiv](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/congr-equiv.md) | 725 | `result-track:0e5c8e21fbf6c608cd7043495b8ff6709849b7f4b10e0eb4fa062f96ca6c784e` |
| 60 | `lemma` | [map_eq_zero_of_norm_zero](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/map-eq-zero-of-norm-zero.md) | 747 | `result-track:f8a8aa12ccb2182b4c818ca9e0df0032f3926a32d5792235000c2fcedb40d146` |
| 61 | `lemma` | [bound_of_continuous_normedSpace](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/bound-of-continuous-normedspace.md) | 758 | `result-track:9509fe31edcfe3474907188632fd503d525897dd5cce066402ca97bbcba45edd` |
| 62 | `lemma` | [bound_of_continuous](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/bound-of-continuous.md) | 777 | `result-track:208cb5e6f25d88cc597063cdc0f060d84343128c0d0d3bacd222fc2bdcf5d5d2` |
| 63 | `theorem` | [WithSeminorms.toLocallyConvexSpace](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-tolocallyconvexspace.md) | 810 | `result-track:82a1257b38760621b09d50ea2310062c06590b82e66302d74d0821c48718dcb7` |
| 64 | `theorem` | [NormedSpace.toLocallyConvexSpace'](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/normedspace-tolocallyconvexspace-source-edition-2.md) | 830 | `result-track:d791b292c7f073f2414bc77a750dc05c6747db2d3ae4fc2a6db4f4b06b5974bb` |
| 65 | `instance` | [NormedSpace.toLocallyConvexSpace](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/normedspace-tolocallyconvexspace.md) | 836 | `declaration-track:4c67d86ace045333aae6fa83e1f527512a09d23ebf8b0d0e5178c777f96a70ce` |
| 66 | `def` | [SeminormFamily.comp](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-comp.md) | 848 | `declaration-track:4100f2d664f42dd10d6b8301b2673c4c407cb5cb6dc4f2f2f014703398cdcc21` |
| 67 | `theorem` | [SeminormFamily.comp_apply](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-comp-apply.md) | 851 | `result-track:56ea244cf67db512adbf53901a98aa0ae3e49f950a606122d2ccbde278c1ddcc` |
| 68 | `theorem` | [SeminormFamily.finset_sup_comp](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-finset-sup-comp.md) | 855 | `result-track:7db2e59facde7162079121ad614f1d069d6bf2b34104a7ce72a4d9eb440438c9` |
| 69 | `theorem` | [LinearMap.withSeminorms_induced](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/linearmap-withseminorms-induced.md) | 863 | `result-track:71e4e5da67ceddda9d551cc83342694cba510811f3021a7b3a375698ab3d421e` |
| 70 | `lemma` | [Topology.IsInducing.withSeminorms](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/topology-isinducing-withseminorms.md) | 874 | `result-track:082d19623c27ffc413d3fa985d537387f2efed7075222c8c8eb3600d398e75b2` |
| 71 | `def` | [SeminormFamily.sigma](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/seminormfamily-sigma.md) | 883 | `declaration-track:a75f039884f70f189ad43bdd29821eb4d3874a9fffa63800f9ddc3407608ce2c` |
| 72 | `theorem` | [withSeminorms_iInf](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-iinf.md) | 887 | `result-track:42f805a7d13f6c03d2dec46ff155439dbdbdd5ded25837a6eee079551a0230a5` |
| 73 | `theorem` | [withSeminorms_pi](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-pi.md) | 898 | `result-track:a6dddad55a74ee902d709cf91c3877a7e3a1061d277e20fa46e6d2ac04bb6f1c` |
| 74 | `theorem` | [WithSeminorms.firstCountableTopology](../../../../FunctionalAnalysis/WithSeminormsNamespacedBasisSetsMemNhds.lean/declarations/withseminorms-firstcountabletopology.md) | 915 | `result-track:b2cb88e4e2e890990d5b0c52e992ebe75582178b8cf88da4b530b807e1657f6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24260ab9cabeed239f72ef7fdcc72bc8591b06b577513b9942d180889fc32d4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
