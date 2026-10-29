# Verification target: Uniform Space Basic Basic Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0505f4c40fa377aa97d85a26c412b9decac6dfb",
  "lexical_observation_count": 156,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0505f4c40fa377aa97d85a26c412b9decac6dfb`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.SmallSets` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_uniformity_iterate_comp_subset](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/eventually-uniformity-iterate-comp-subset.md) | 62 | `result-track:f0b55a90cd6dd3682f453c9e1e3fd381e2ffd6575855debe381117514b3a1cdd` |
| 2 | `theorem` | [eventually_uniformity_comp_subset](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/eventually-uniformity-comp-subset.md) | 77 | `result-track:95fa9ec9ac6ac256ae43f6de6002ecf0fa99d837af3d7a4434ad0eda7198e397` |
| 3 | `lemma` | [isOpen_ball](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/isopen-ball.md) | 89 | `result-track:2818a59443c2ba34d071dd37a745dbbbb3f87c057a2aeefaf1c19ae5435b7f93` |
| 4 | `lemma` | [isClosed_ball](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/isclosed-ball.md) | 92 | `result-track:2070c80bcc1aafdf8bda123abcca7a51e3ed0743566324491abe251024e06076` |
| 5 | `theorem` | [hasBasis_nhds_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/hasbasis-nhds-prod.md) | 99 | `result-track:3ef571c9ded2b7f76b04828157b8d3583ff0af3b1a4b39a61f121b8f605c197f` |
| 6 | `theorem` | [nhds_eq_uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/nhds-eq-uniformity-prod.md) | 112 | `result-track:e32e89e5e0846e7b0ebb10668cab111092d2f817671466571dde3aba03142c5e` |
| 7 | `theorem` | [nhdset_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/nhdset-of-mem-uniformity.md) | 120 | `result-track:d336e92bc2325f37deb1525964e4cd6711071f19b57aad044f9b28759a0543b7` |
| 8 | `theorem` | [nhds_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/nhds-le-uniformity.md) | 138 | `result-track:e35866a00277f3886373e1941a70d57f06dfda797e1006d6877ef6dd1f7e90f8` |
| 9 | `theorem` | [iSup_nhds_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/isup-nhds-le-uniformity.md) | 149 | `result-track:3602b08fe4795485f7296393e3a3450090275ea9a0fa0ebe58a07ad7297f3b11` |
| 10 | `theorem` | [nhdsSet_diagonal_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/nhdsset-diagonal-le-uniformity.md) | 153 | `result-track:b92fedbaf748c7accd8c52f8620377864afac00ab46afa6e3236c8d98e1e25d2` |
| 11 | `theorem` | [UniformSpace.has_seq_basis](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-has-seq-basis.md) | 160 | `result-track:4ef0f07997d103dda13ad5250a8a929de54ca8051b1c7509a64d0b78c8439165` |
| 12 | `theorem` | [closure_eq_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/closure-eq-uniformity.md) | 171 | `result-track:9d604567601b42216acfa4a071a7afd020bca0babde49ec5131842e608e461c9` |
| 13 | `theorem` | [uniformity_hasBasis_closed](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-hasbasis-closed.md) | 178 | `result-track:57fa8e2c9b54015c0bba3da97110df6f9a601bc9e55dea3a7d5b0116b33b683e` |
| 14 | `theorem` | [uniformity_eq_uniformity_closure](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-eq-uniformity-closure.md) | 189 | `result-track:adbfcf95e98ecf431708123bd520940fd06853411fee843367940296f970d4e5` |
| 15 | `theorem` | [Filter.HasBasis.uniformity_closure](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/filter-hasbasis-uniformity-closure.md) | 192 | `result-track:7866f4d41f8ea8befef4912b950e32f5f5983df4f88fbbc4b41643994094130f` |
| 16 | `theorem` | [uniformity_hasBasis_closure](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-hasbasis-closure.md) | 197 | `result-track:308b4d54efb804800d3eb92143bcb67478fdaee59035dc69a8f5a950ecb551c3` |
| 17 | `theorem` | [closure_eq_inter_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/closure-eq-inter-uniformity.md) | 200 | `result-track:eaaf3f792c382cc015b05a4d334fa14acd36e9a14e7d2d2f9d4c2da6d43e62fa` |
| 18 | `theorem` | [uniformity_eq_uniformity_interior](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-eq-uniformity-interior.md) | 209 | `result-track:252d3d3a13bae8a101052070f6e2157fdf494d8d9c4aa5e39e8fd3d8826761dd` |
| 19 | `theorem` | [interior_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/interior-mem-uniformity.md) | 225 | `result-track:a453a566c50b82d9635cd8a8969debb106ae99d3c102804497da4878b68e3a29` |
| 20 | `theorem` | [mem_uniformity_isClosed](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/mem-uniformity-isclosed.md) | 228 | `result-track:421348a719746019908af52fb197d9ae987499ad3585cd588716ad53f4c4aa14` |
| 21 | `theorem` | [isOpen_iff_isOpen_ball_subset](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/isopen-iff-isopen-ball-subset.md) | 232 | `result-track:bf15b23b727fe733f4b505add4d8027d0c0f64a3f4e996da2934ce08638bf7de` |
| 22 | `theorem` | [Dense.biUnion_uniformity_ball](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/dense-biunion-uniformity-ball.md) | 247 | `result-track:23e89122cd59dc89c16b195cfe0babd11a87cc1d522530816e8a049fa3a98231` |
| 23 | `lemma` | [DenseRange.iUnion_uniformity_ball](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/denserange-iunion-uniformity-ball.md) | 254 | `result-track:2057ea03ea66f3af2af6828eb1a4183116c8df034daad03848b0a281281c8e93` |
| 24 | `theorem` | [uniformity_hasBasis_open](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-hasbasis-open.md) | 265 | `result-track:9320f57f65257019bfcd8e5acf3147b5b363ba7c2872377888a015d27c7d883d` |
| 25 | `theorem` | [Filter.HasBasis.mem_uniformity_iff](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/filter-hasbasis-mem-uniformity-iff.md) | 269 | `result-track:32bae589f3e380ea8bf8d23963f4bcfefcf7c6c7fdacdb15921de1a865980d36` |
| 26 | `theorem` | [uniformity_hasBasis_open_symmetric](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-hasbasis-open-symmetric.md) | 276 | `result-track:abaedf52135d41498816909f7ce9009ed5f5fd1269fa46f899df87e6d8061fd4` |
| 27 | `theorem` | [comp_open_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/comp-open-symm-mem-uniformity-sets.md) | 284 | `result-track:fda3230d5578d96acf7325c5d73a992550bef6786a26452a7cf75f33a83c2575` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 296 | `declaration-track:6d6fa48335338672a5284d3edea1649f4faea3643218af0afff0ade62da76696` |
| 29 | `theorem` | [UniformSpace.le_def](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-le-def.md) | 299 | `result-track:67564e5b344a8d0f7dc12b0beebb8662baea30416d737c3bd85a8b31d0d5acbb` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 301 | `declaration-track:726b89fc2b3a462b120157f44fbd2f91f1e3f0718949b83043702d519fe8ccf6` |
| 31 | `theorem` | [UniformSpace.sInf_le](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-sinf-le.md) | 311 | `result-track:fc1ade8496a39aa1dad457dded739659e50204424edfbdd7a88aacd2f3332b97` |
| 32 | `theorem` | [UniformSpace.le_sInf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-le-sinf.md) | 315 | `result-track:50d9e378166059c517921a25d34334e13883587ebfe2f0f8be7c52c7d2ed14e0` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 319 | `declaration-track:ced6121001488d64c8907c8d902d1b7e9bd06009195bee5b18baf4e2f8cfdeb4` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 322 | `declaration-track:60121e877d1ba0f09c5813c6dd17fff3d10baab13c74cb77e0233219e93cd65f` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 331 | `declaration-track:f7b9e03045c3a6ec4b59137992a1620eb7c944ace53503fcb7542a2bd181c103` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 341 | `declaration-track:4d4b5a5e4f282b1b920d9c4e3a44b732d15e8f68ba5bb063c030a3702522968e` |
| 37 | `theorem` | [iInf_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/iinf-uniformity.md) | 362 | `result-track:4b7a6a87d6c96db495977b09776cfe97803962b9d71900f5520a104dd6164570` |
| 38 | `theorem` | [inf_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/inf-uniformity.md) | 365 | `result-track:0a748fe9957a811df7ea20b505adca6ece601134be02186bea350662d66691e5` |
| 39 | `lemma` | [bot_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/bot-uniformity.md) | 367 | `result-track:a2529751c1b5365c774d418a25f34a3f6b561661713198e4fb5e17317d735d77` |
| 40 | `lemma` | [top_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/top-uniformity.md) | 369 | `result-track:ad8f2443618e074516f4d1b317b9c10ba414959cc93a1f65bff83bd8809e118d` |
| 41 | `instance` | [inhabitedUniformSpace](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/inhabiteduniformspace.md) | 371 | `declaration-track:8b305af7912d078a709658e90893bf46a8d12d2a5d7704e9a50c138e8c887535` |
| 42 | `instance` | [inhabitedUniformSpaceCore](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/inhabiteduniformspacecore.md) | 374 | `declaration-track:3505bbadcbd07df48a84f4a1d8a1b3919f4d06c01d13a8a5fad3001d3a554641` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 377 | `declaration-track:3d3434ccb11b9028fd1dea4729eb3ae651f09926a7997e876b787382a0027a77` |
| 44 | `abbrev` | [UniformSpace.comap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap.md) | 384 | `declaration-track:0c1544796cb65a0d01ef439be529fd3c46358d8c25c0ccd1f7d7d1cc00655923` |
| 45 | `theorem` | [uniformity_comap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-comap.md) | 399 | `result-track:5349f947174f2b0fef790a4f4f7ae5ff7968678648589e2ec2dcb349632d27b1` |
| 46 | `lemma` | [ball_preimage](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/ball-preimage.md) | 403 | `result-track:08d8f7ae7e0ac31d04c90a136573d1c72b4bc26cf39b3ba10afe07f04432cd0e` |
| 47 | `theorem` | [uniformSpace_comap_id](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap-id.md) | 409 | `result-track:f7104f89ed94e24823b72b5d8c2d0f99e294a144d13cdcc46b538fb1a3785816` |
| 48 | `theorem` | [UniformSpace.comap_comap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap-comap.md) | 413 | `result-track:409246051894702b14997230df107d8e6bb5671a0ff0e46c70efde0e04fb2f4b` |
| 49 | `theorem` | [UniformSpace.comap_inf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap-inf.md) | 418 | `result-track:f995fa796a820586a655a1f739870ccb8be8b83d65b95fd5bc04ffac5256d012` |
| 50 | `theorem` | [UniformSpace.comap_iInf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap-iinf.md) | 422 | `result-track:e4f34399c684e1191e8d135b855f09a6da61bdd53ac05e7d995e325939983923` |
| 51 | `theorem` | [UniformSpace.comap_mono](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-comap-mono.md) | 427 | `result-track:0e3c20285c85b00ec8c7b37c5db0c7057d6b85546422871dcea3cc712bb04c08` |
| 52 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-iff.md) | 431 | `result-track:d9836bbcec9f46fc14c9ce0a7460ccf4203ed633688e8cb492f7e9749776f514` |
| 53 | `theorem` | [le_iff_uniformContinuous_id](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/le-iff-uniformcontinuous-id.md) | 435 | `result-track:8faf18442e3734471a4c9982f8d44f894b9197f81f00e3a004b7a3ec895aec12` |
| 54 | `theorem` | [uniformContinuous_comap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-comap-source-edition-2.md) | 439 | `result-track:9310163c5282a89587048b5502184ace2869fd8e9661232e4b6c2e39930c4043` |
| 55 | `theorem` | [uniformContinuous_comap'](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-comap.md) | 443 | `result-track:57eb807253b4dba1d68f999c06304ed370a13bfe0e695e640917faa26615dcbe` |
| 56 | `theorem` | [to_nhds_mono](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/to-nhds-mono.md) | 449 | `result-track:0ef76df1a5cd9a2a67600dcfeddac59473fb4d78bc89f680064c0549d7f5c08b` |
| 57 | `theorem` | [toTopologicalSpace_mono](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-mono.md) | 454 | `result-track:e2590d83bfcc48d921fa2895c20903363af882b548edf63c69dd17cd6e0783bf` |
| 58 | `theorem` | [toTopologicalSpace_comap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-comap.md) | 458 | `result-track:5b7f6731b8f6e4218d2a12a43c65e7897c2d992984defd4f09c31382dcdeed48` |
| 59 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformspace-eq-bot.md) | 463 | `result-track:05fb0bafd2c095dc923b59f36fdea59314364c14fcbf561e983da324ae995811` |
| 60 | `lemma` | [Uniform Space Basic Basic Basic Namespaced](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-uniformspaces-eventuallyuniformityi.md) | 466 | `result-track:a98225d4dd516716f8fa040a736e0413ca49f9f346aa93782bc89f39d84dd566` |
| 61 | `theorem` | [toTopologicalSpace_bot](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-bot.md) | 471 | `result-track:14147aa6602403af6ab5ce6113daf29d182954236fd41c9377bf994b12b2b433` |
| 62 | `theorem` | [toTopologicalSpace_top](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-top.md) | 473 | `result-track:29de0e02c0a00a66359ad8df3c4606c094bc5242d8094364ef82c805314dc38f` |
| 63 | `theorem` | [toTopologicalSpace_iInf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-iinf.md) | 475 | `result-track:04c95e93ca84de9669d791a74b1f93fbecb17b82815ff870402674b67b10473a` |
| 64 | `theorem` | [toTopologicalSpace_sInf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-sinf.md) | 480 | `result-track:8f12656d6f1ba367c1b41e34c097ea5f17e6a68acd3071975da15e8806ab416f` |
| 65 | `theorem` | [toTopologicalSpace_inf](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-inf.md) | 485 | `result-track:04b34693c07adbdd9620f384f993e813d4e54027e35bff261deda8a3500e7c2b` |
| 66 | `theorem` | [UniformContinuous.continuous](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-continuous.md) | 491 | `result-track:dd63c5a992ed804d38879f2daef602861471d90442f7cf9f2dab4e523204b52e` |
| 67 | `instance` | [ULift.uniformSpace](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/ulift-uniformspace.md) | 497 | `declaration-track:fc10132c3befbef9fc92eb5ba7fbdc85bfa4e1a3b997073cbbc6ab2a61096d39` |
| 68 | `instance` | [OrderDual.instUniformSpace](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/orderdual-instuniformspace.md) | 501 | `declaration-track:c0fad49528e69b54964e2c12b9352e5f03379fb979e79ade3cb279eedb239ebd` |
| 69 | `theorem` | [UniformContinuous.inf_rng](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inf-rng.md) | 507 | `result-track:6f116430f78405b281b0d5d7a33468b725683219b1e338bea8650ecabd16365a` |
| 70 | `theorem` | [UniformContinuous.inf_dom_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inf-dom-left.md) | 512 | `result-track:4c7701a12edb6eaea78207b8f3875701861da0bd75625e74651242d927ff5910` |
| 71 | `theorem` | [UniformContinuous.inf_dom_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inf-dom-right.md) | 516 | `result-track:3a0f9647e55eaf1260b1b23ee944f2b377b91a1df3058fd008b8140786636b99` |
| 72 | `theorem` | [uniformContinuous_sInf_dom](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-sinf-dom-source-edition-2.md) | 520 | `result-track:d0d50e9764b69ffa7bd3cdcd9aa4d3ab385e6d7cd5fa6ee19444c117de3cb7cd` |
| 73 | `theorem` | [uniformContinuous_sInf_rng](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-sinf-rng.md) | 527 | `result-track:56a7ecf83f87f936118e06eb511b8db173caf3d4e5367219b902fa5c252e9f18` |
| 74 | `theorem` | [uniformContinuous_iInf_dom](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-iinf-dom.md) | 532 | `result-track:49f4f6d88297072e39f24318728d8e1da8734076ddf2bf65e5124eb8f1e56390` |
| 75 | `theorem` | [uniformContinuous_iInf_rng](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-iinf-rng.md) | 538 | `result-track:e5d88a8ad72b8abd1d224c23a49d1473c31756bd0b5bdd1b8562a699f566e4ad` |
| 76 | `theorem` | [discreteTopology_of_discrete_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/discretetopology-of-discrete-uniformity.md) | 546 | `result-track:855fbc7303bfb25a216f310caa760ac2e97d5146abfda790a068b6821846867d` |
| 77 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 550 | `declaration-track:2f9a66fabf6dd27e32e09ec45f062db9541e426bcafdcda847311e3677410897` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 551 | `declaration-track:db6ec938f3c93f44eeb4f286887bf4b72a09e1e28a4dd7ddb1887dd98b13b909` |
| 79 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 552 | `declaration-track:6a69aa6cdf92c7c25ec680da2ad8fb5916d098c0869dcc0d270820a2af15eab4` |
| 80 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 553 | `declaration-track:3bb9a1ee7e98c95fac7d533240c2123cc707bffed7d256284c28b890e092e1a0` |
| 81 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 554 | `declaration-track:c767dd6c201532e5314792fdb425f477dded4aa3c0cc4b6ef6304bccbab31254` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance.md) | 562 | `declaration-track:21dec0270198355f98517f439b0030df1abdb144913e2bd3dd1e3ceea946a69b` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 563 | `declaration-track:517aa6fed8aea0477d007fc74a63d40e9a0d7111f5c041a7a18e98df4c7d7737` |
| 84 | `theorem` | [uniformContinuous_ofMul](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-ofmul.md) | 565 | `result-track:dc7b2e49d16651854cd60e698856021dc15f07dd65773f92fb512896a4b54a3d` |
| 85 | `theorem` | [uniformContinuous_toMul](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-tomul.md) | 568 | `result-track:2c357dfdb83014b01bae76be97cbf78c9d6ade3c485c127ba5c7b972de62fb0f` |
| 86 | `theorem` | [uniformContinuous_ofAdd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-ofadd.md) | 571 | `result-track:f505fbde1c7bdc843df14e3a79dcebbb076b409ce974a51dffc220d4086d657c` |
| 87 | `theorem` | [uniformContinuous_toAdd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-toadd.md) | 574 | `result-track:87479f981440eabeaf80420eb574c4b64539076bfa586a66a20f2c0f0eaa80d6` |
| 88 | `theorem` | [uniformity_additive](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-additive.md) | 577 | `result-track:c29b505190259013545a6eaab6fa5b9c0823a81625754152345e6cd26e583653` |
| 89 | `theorem` | [uniformity_multiplicative](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-multiplicative.md) | 579 | `result-track:154a6a9d16aac97a44b3b096bdc0758619629cacbcc892eff0394272959ed699` |
| 90 | `instance` | [instUniformSpaceSubtype](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instuniformspacesubtype.md) | 583 | `declaration-track:7c49e6f3d56ca37cd27eb6caf7f1eddf7b9c714fecd1199d3e0590634f6f6946` |
| 91 | `theorem` | [uniformity_subtype](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-subtype.md) | 586 | `result-track:052bed9c2ec2635978d076968886c0411a9f04ddd2012ea97da810609932d8a8` |
| 92 | `theorem` | [uniformity_setCoe](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-setcoe.md) | 590 | `result-track:4f8c49e0c1ea67bb6fced6b41924b43b95c7b7db2b2f1ffba17d3b1ebc97c61f` |
| 93 | `theorem` | [map_uniformity_set_coe](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/map-uniformity-set-coe.md) | 594 | `result-track:d3f5a1a29f4da8c37b95e03cba4779a972f75508fc86114f7c08d3a0aed17fd6` |
| 94 | `theorem` | [uniformContinuous_subtype_val](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-subtype-val.md) | 598 | `result-track:1bc1f26e72e9e54d1f4ba9b9bc056b138c9e2ae7b29ae730cab99e8c4304e545` |
| 95 | `theorem` | [UniformContinuous.subtype_mk](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-subtype-mk.md) | 602 | `result-track:443fedb67791e3c97b7b62aa0e2ac0f17c3c0440f34f1ce8d7504a4f03a9a51c` |
| 96 | `theorem` | [uniformContinuousOn_iff_restrict](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuouson-iff-restrict.md) | 607 | `result-track:0c1f1e3b3ecbbcc873613515e6f8934fe401a4c161b86ccae7cf581d15685388` |
| 97 | `theorem` | [tendsto_of_uniformContinuous_subtype](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/tendsto-of-uniformcontinuous-subtype.md) | 612 | `result-track:68483dd2d663a5242887771b4fe2eaf37d2a200f513679bfcbe59a79d21d1d22` |
| 98 | `theorem` | [UniformContinuousOn.continuousOn](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuouson-continuouson.md) | 618 | `result-track:a40d129e8316b079a6b246d28060446084e973a487727d8c654a7ee5ec08662e` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 625 | `declaration-track:9f9bd27c8f8640fc2b5af9df2a54b1d361f275175b95fc5e1221d9043f76d448` |
| 100 | `theorem` | [uniformity_mulOpposite](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-mulopposite.md) | 629 | `result-track:b68fd232b865ee9eeb5598eef22e3c181b12a760dc15e76afbf5089ae6f559fa` |
| 101 | `theorem` | [comap_uniformity_mulOpposite](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/comap-uniformity-mulopposite.md) | 634 | `result-track:aaa5c9331da6b19c90c476720ddac2010a4f07b66e4e4efdb46aabd0a60055cb` |
| 102 | `theorem` | [uniformContinuous_unop](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-unop.md) | 641 | `result-track:491d403f84aeed30bb9a4024aec988a18fa685bdb2bbcf551fe7635250afe23a` |
| 103 | `theorem` | [uniformContinuous_op](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-op.md) | 645 | `result-track:3dc2e15636f365c4312af64d21a08bfeb537e164a0c06e1cc908986f0aba50c0` |
| 104 | `instance` | [instUniformSpaceProd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instuniformspaceprod.md) | 656 | `declaration-track:bb69ac01b48e9e15a205a40fe8f6788de221ca05af7ca258f4f4553adc0cad4a` |
| 105 | `example` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/example.md) | 660 | `declaration-track:8c76d1c74a1b8913329beb5159a8ca7046a88210e4d6ac5e831c4fcc79424c6d` |
| 106 | `theorem` | [uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-prod.md) | 664 | `result-track:8840a6b6a0fbaaf76cf058617ebf573a6774a9a3a5e670ee9daa1517b93da645` |
| 107 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 670 | `declaration-track:549764a5fb4753c70ecb3dbc1a5f909457a12afd9b3197128e0348efb8a357e7` |
| 108 | `theorem` | [uniformity_prod_eq_comap_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-prod-eq-comap-prod.md) | 675 | `result-track:8acfe5994a14f62889dfb639cb2a9f9bc32be90e0adcc562f1bbdf422eeab353` |
| 109 | `theorem` | [uniformity_prod_eq_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformity-prod-eq-prod.md) | 680 | `result-track:f5747da4cadd96d1d16c973880e8c87079b3a9c6ae2b9fd2435f55b823ee9627` |
| 110 | `theorem` | [mem_uniformity_of_uniformContinuous_invariant](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/mem-uniformity-of-uniformcontinuous-invariant.md) | 684 | `result-track:0cba1acaa8f9ee4eb7c4ace73821dcc55721a4a376e140755a8363a5ea3a57b0` |
| 111 | `def` | [entourageProd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/entourageprod.md) | 693 | `declaration-track:52d0f638a1047ecaafc52f13519dbae5470af892cc92eacc933d707938dc730a` |
| 112 | `theorem` | [mem_entourageProd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/mem-entourageprod.md) | 696 | `result-track:87aa377f9e421af11a4b0396a9f5ce4163a0148ff872b8e605ee24de036edcb7` |
| 113 | `theorem` | [entourageProd_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/entourageprod-mem-uniformity.md) | 699 | `result-track:57dc23fcfe962f2af3f0dc524fe19c45c29a35f0695b47d87219aaf5ed080cfe` |
| 114 | `theorem` | [ball_entourageProd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/ball-entourageprod.md) | 704 | `result-track:69bb3b8325365a5ef64b117e723d0107c9dde92d0da8c49b3fc7cc844220eff3` |
| 115 | `lemma` | [IsSymmetricRel.entourageProd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/issymmetricrel-entourageprod.md) | 708 | `result-track:91a618a8cfd8e0690eb17c89563502a17a85bb418acbaa2a3f9e94b1720e0a29` |
| 116 | `theorem` | [Filter.HasBasis.uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/filter-hasbasis-uniformity-prod.md) | 713 | `result-track:a8d1322cd626a79612b85c63f9ad79d89203ec96fe5da8af765644d782fcbfb9` |
| 117 | `theorem` | [entourageProd_subset](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/entourageprod-subset.md) | 720 | `result-track:5747c43ff68b1f91a00f6d3da6e7089586a1f59d67b03b531bf1dab744aaaed7` |
| 118 | `theorem` | [tendsto_prod_uniformity_fst](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/tendsto-prod-uniformity-fst.md) | 726 | `result-track:808ea17b2a1e9065c602a3ada2fc4dd6b0486e23f4dfd998cd460695f04de01c` |
| 119 | `theorem` | [tendsto_prod_uniformity_snd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/tendsto-prod-uniformity-snd.md) | 730 | `result-track:daa734dee4107dc9588256d1044e017cec81ac8cb02b4371b48debc478cee64b` |
| 120 | `theorem` | [uniformContinuous_fst](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-fst.md) | 734 | `result-track:0fde13d7ed2176b9f09aa1f81b02b82f4446371b91bfe826be6609e485a1aef7` |
| 121 | `theorem` | [uniformContinuous_snd](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-snd.md) | 738 | `result-track:a66a78668693a2de2d6ade0e08cd582d0e03d84e320d0c62b2d69f170c3ffdce` |
| 122 | `theorem` | [UniformContinuous.prodMk](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-prodmk.md) | 744 | `result-track:bd2f44e2a77c9a0bc1164e57bc59801d51c043b9de2870e9e442042b52ceb4b1` |
| 123 | `theorem` | [UniformContinuous.prodMk_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-prodmk-left.md) | 752 | `result-track:684ceef84bf4641faa9cc60d460e36788421fca88aae1c2beb87e4ebb9f095b4` |
| 124 | `theorem` | [UniformContinuous.prodMk_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-prodmk-right.md) | 759 | `result-track:dc516acd8f26169c2f1b18561052882ff052dda26ae41c216c7a9efd8e8ce3f8` |
| 125 | `theorem` | [UniformContinuous.prodMap](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-prodmap.md) | 766 | `result-track:e4a56f889f0e552d25fe156157558d43a322f656e29def6ba2a548aa3a9429e9` |
| 126 | `theorem` | [toTopologicalSpace_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-prod.md) | 770 | `result-track:b46a5d347a45d7c52467af8a5803a8f0ef2ae419c36e2c4ec2bf729430021c47` |
| 127 | `theorem` | [uniformContinuous_inf_dom_left₂](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inf-dom-left-source-edition-2.md) | 776 | `result-track:7b491c4b7b0e3f4ff6b02be0539b0b904282d7833d341b4351f2a86c22c7efe0` |
| 128 | `theorem` | [uniformContinuous_inf_dom_right₂](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inf-dom-right-source-edition-2.md) | 789 | `result-track:410362a67ef76a4698679880ca418075dd015574bf290ced4f2ed55dc73f8ded` |
| 129 | `theorem` | [uniformContinuous_sInf_dom₂](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-sinf-dom.md) | 802 | `result-track:b2a0e65223b5b03fc7c712ff5af2cd365b419b7fed5aa882072059669ecec298` |
| 130 | `def` | [UniformContinuous₂](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous.md) | 825 | `declaration-track:5a36b064ed5b275543209dbd99ab83418b7119c76a2f910b19511b50ec5507b7` |
| 131 | `theorem` | [uniformContinuous₂_def](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-def.md) | 828 | `result-track:ea098d72f5a98182c07a28f7efecfa49e962770b7bc3c9ce52f85ed999d41154` |
| 132 | `theorem` | [UniformContinuous₂.uniformContinuous](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-uniformcontinuous.md) | 832 | `result-track:e3226ec8f89e453eaa5aafe0636dd0cd3b4fe52273bf4e66b8601a2c0eb3eb5d` |
| 133 | `theorem` | [uniformContinuous₂_curry](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-curry.md) | 836 | `result-track:575b298992fd8bbca168a26bcdfbd0ef6cc218ddebefd1e8db58861a0569cf63` |
| 134 | `theorem` | [UniformContinuous₂.comp](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-comp.md) | 840 | `result-track:d3faba0dcec445efc41460040f4261fda248ed1fc3396deb4849ef2395c6ae05` |
| 135 | `theorem` | [UniformContinuous₂.bicompl](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-bicompl.md) | 844 | `result-track:ac61ece77547c4cd8f98368f71d6fba9556a9c5728171c2d0c683061b6c9dbed` |
| 136 | `theorem` | [toTopologicalSpace_subtype](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/totopologicalspace-subtype.md) | 851 | `result-track:79c9b11f1a87d7673691f21f832012e6e5953ec3c0527f1c5c5387512de46e59` |
| 137 | `instance` | [Sum.instUniformSpace](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/sum-instuniformspace.md) | 867 | `declaration-track:b41a1d1ec8272e720426f06c34d18a4803154de422c840943f0e0c7253edb95c` |
| 138 | `theorem` | [union_mem_uniformity_sum](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/union-mem-uniformity-sum.md) | 884 | `result-track:0bbcf77ad1766e7ca58c4e625345112e74142b40c0f8435d687e8b0b0d7f6bf2` |
| 139 | `theorem` | [Sum.uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/sum-uniformity.md) | 888 | `result-track:ba8faf833e7e626fd13b5a94483f9dcaa5f4e623a0d39c36514842c50d7350dd` |
| 140 | `lemma` | [uniformContinuous_inl](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inl.md) | 891 | `result-track:95f99bf42a118f4ae5e61851151cbac8338836581f55394846d0375254c6b3e0` |
| 141 | `lemma` | [uniformContinuous_inr](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniformcontinuous-inr.md) | 892 | `result-track:fff4106f24750ffd25b943cbefef686720877796cf33434b7aa5c874bf23ecea` |
| 142 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 894 | `declaration-track:50687d884130f3fa8e35114435413b662a81870097b7bb023615e335cb7ebca3` |
| 143 | `theorem` | [tendsto_nhds_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/tendsto-nhds-right.md) | 923 | `result-track:e2b41157601bade4398b073cb2ab507626bf42b85f6c7cf572d7b9419e9a4fa7` |
| 144 | `theorem` | [tendsto_nhds_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/tendsto-nhds-left.md) | 927 | `result-track:1c9686ffe04b81062d83ada13f2ccd454b4a9c7bf430a422d0ff5f1752ce5c76` |
| 145 | `theorem` | [continuousAt_iff'_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuousat-iff-right.md) | 931 | `result-track:0c3186813c20752424accae3a59fc565589da1b8607d2e8e217a2ac23d2c4529` |
| 146 | `theorem` | [continuousAt_iff'_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuousat-iff-left.md) | 935 | `result-track:03a3e214b7a884e4baff873e612c23eeba0c5a4b3058332412bfd3064aac0ac6` |
| 147 | `theorem` | [continuousAt_iff_prod](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuousat-iff-prod.md) | 939 | `result-track:7a84f1b09ddcb8782db7b574802627d46cba2ee0882f5d52bebc7bd5167fe267` |
| 148 | `theorem` | [continuousWithinAt_iff'_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuouswithinat-iff-right.md) | 944 | `result-track:23f74894144717163a0627bdc3dcecd603f35fe5aad9a03b17c91449bc626acd` |
| 149 | `theorem` | [continuousWithinAt_iff'_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuouswithinat-iff-left.md) | 948 | `result-track:f38a79a106fa1475bb8df385e822a310251aa1fc24fb1f0c6f800b76732c6c05` |
| 150 | `theorem` | [continuousOn_iff'_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuouson-iff-right.md) | 952 | `result-track:c9ccd3282dff6caf07c605cf9dd7a02500b685c502f75a9a596c8113b851babe` |
| 151 | `theorem` | [continuousOn_iff'_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuouson-iff-left.md) | 956 | `result-track:a8805bd80bb546a6f9fae347cc74887837903194abe9569a2def979c17562cf1` |
| 152 | `theorem` | [continuous_iff'_right](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuous-iff-right.md) | 960 | `result-track:4a973808bdb65a3f35dc149cfc2ce7b109f4750b99f84c67ddb3ad59e686f402` |
| 153 | `theorem` | [continuous_iff'_left](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/continuous-iff-left.md) | 964 | `result-track:4fbee7158ddba46ee5fa4ee848a8e9d61c6db42fc1120a40cdaeba9f3dd458ee` |
| 154 | `lemma` | [exists_is_open_mem_uniformity_of_forall_mem_eq](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/exists-is-open-mem-uniformity-of-forall-mem-eq.md) | 970 | `result-track:55973b9ea8fa2ff2e374f4e2562d0ee279a649e71220744627ac94a1f1a532da` |
| 155 | `theorem` | [Filter.Tendsto.congr_uniformity](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/filter-tendsto-congr-uniformity.md) | 995 | `result-track:9cbb1ec3d12c210e92aed7c7de6d0331c1bc0aab038e7725e724456976c2903e` |
| 156 | `theorem` | [Uniform.tendsto_congr](../../../../GeneralTopology/UniformSpaceBasicBasicBasicNamespaced.lean/declarations/uniform-tendsto-congr.md) | 999 | `result-track:2ef553b56eee9c4e17ec00e9af4fb4263208cfeb046d20f28b08031764b7b3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29881712a15d437b849d90f9bd24189f74cd5861dc7434df6342f690944f2c28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
