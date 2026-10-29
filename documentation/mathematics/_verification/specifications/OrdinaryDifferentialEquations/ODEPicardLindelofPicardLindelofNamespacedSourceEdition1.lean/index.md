# Verification target: ODEPicard Lindelof Picard Lindelof Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb`.

Source path: `GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPicardLindelof](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/ispicardlindelof.md) | 56 | `declaration-track:5ee2b1080332202f710363708fc1667850079b617694f04df9c29f8c91cce089` |
| 2 | `structure` | [PicardLindelof](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/picardlindelof.md) | 73 | `declaration-track:7ad895332d0f01f1db03b5bb6bc4912721faa37cda0bae271baa3cc6af87574b` |
| 3 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 96 | `declaration-track:bdda77adaf7b914f72d9ecd678c1249c7f51df6639d3fe044d10c0a81f4fc30b` |
| 4 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance.md) | 99 | `declaration-track:1543e69d0f4e9a489ab18dd9a387204a89c85112de859facd727befceda89f90` |
| 5 | `theorem` | [tMin_le_tMax](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/tmin-le-tmax.md) | 108 | `result-track:4718502a875099a0a7b6beaabdbfb5cd4e43dc92a244c9884d603bd1ae382558` |
| 6 | `theorem` | [nonempty_Icc](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/nonempty-icc.md) | 111 | `result-track:0d32a5f3eab057c067639f90853008067d378efbb77ee6b818d427031e7935ea` |
| 7 | `theorem` | [lipschitzOnWith](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/lipschitzonwith.md) | 114 | `result-track:b876f891546f0b8ab27f279c24ffba6585dde2263c28ea609bec0e1e48e6ac76` |
| 8 | `theorem` | [continuousOn](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/continuouson.md) | 118 | `result-track:278cdf98d9f6ab04e0f4db2f55e1b1e800fbcc66410c86b771ac2a4a32b49055` |
| 9 | `theorem` | [norm_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/norm-le.md) | 125 | `result-track:65aee13f5bbc3be82d66fd04df026cdf73690b66091fdac939fc3d45c73be9c2` |
| 10 | `def` | [tDist](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/tdist.md) | 130 | `declaration-track:a21ee1c3cbb76701d0ec042fabf674f49c0146ae4e2957d3425f9f6b568596e2` |
| 11 | `theorem` | [tDist_nonneg](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/tdist-nonneg.md) | 133 | `result-track:3b30256693e36121f349184ca9fb842fee7b5908c4248d3c8ab87f31e489347a` |
| 12 | `theorem` | [dist_t₀_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-t-le.md) | 136 | `result-track:9af788a48ab948f2849e1573fef3691cccf66383920a39f0d7ed9f685c816fdb` |
| 13 | `def` | [proj](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/proj.md) | 146 | `declaration-track:27b8a6f7f9702f5a5f56a864e3638336e19e9376d99c56e51ea19273ff7a611b` |
| 14 | `theorem` | [proj_coe](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/proj-coe.md) | 149 | `result-track:0e9f6bd1d66764258fba11f8605bd2abb5be4b4b993054690c33cf61cf1b37fe` |
| 15 | `theorem` | [proj_of_mem](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/proj-of-mem.md) | 152 | `result-track:a18e032b000ccd26b6f05ede1390e6a732901b1e4d37ddb4b818208553697367` |
| 16 | `theorem` | [continuous_proj](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/continuous-proj.md) | 156 | `result-track:86925f0037dfc3506de4736c974d802c4fd3c8bf36b251297f1e407fdb8fe952` |
| 17 | `structure` | [FunSpace](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/funspace.md) | 163 | `declaration-track:376d07171f6dad3762857488e4596f5a8032759eb1bf9488954379d696e8825d` |
| 18 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 174 | `declaration-track:f0c53db8c5ffc37c7f0a6569b75094224502b72b48de0da5fc648d8e827ed736` |
| 19 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:2629507ea90da9bbd418e6114729e254c890cd1ca26307e9553ceab3a2bd9c48` |
| 20 | `theorem` | [lipschitz](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/lipschitz.md) | 180 | `result-track:6bb3a3535c5c8174c0726d67ea4ec38869095da79b387c56eef474f279ab06e9` |
| 21 | `theorem` | [continuous](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/continuous.md) | 183 | `result-track:1493a5185bd565814b49f1829191441db1123ac8e7007271c7c436a55808c3e9` |
| 22 | `def` | [toContinuousMap](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/tocontinuousmap.md) | 187 | `declaration-track:a1cbe9a1be62a72e7c49f9c8d0309d6dc3b86d8291e75e3d996cb5dbf6c7117f` |
| 23 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 190 | `declaration-track:67981a0e3c8e4027220db272aa5bec450c2f0d03952d128d988b3499c9a235d2` |
| 24 | `theorem` | [isUniformInducing_toContinuousMap](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/isuniforminducing-tocontinuousmap.md) | 193 | `result-track:9cc77eb31bf681a4079db8853b5a909e2080cb076307bc518d1f08838ddd0fe4` |
| 25 | `theorem` | [range_toContinuousMap](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/range-tocontinuousmap.md) | 196 | `result-track:e813be15e0454bc9f1ab95d4234309dd8022ed1e19e998f42ca958a99c340e92` |
| 26 | `theorem` | [map_t₀](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/map-t.md) | 203 | `result-track:186576fb3a16f336e5e197c9cbbe86ee2b1980d9909be4204b1eaa7cd473c251` |
| 27 | `theorem` | [mem_closedBall](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/mem-closedball.md) | 206 | `result-track:6f98c248b0acc10d273a9777aab5bf55b1763e466f056d37ce7e17d097ff55cd` |
| 28 | `def` | [vComp](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/vcomp.md) | 216 | `declaration-track:ccb656b276208a0a98bdb4190adaeec9e0acad851401043e32d2fd53887712cd` |
| 29 | `theorem` | [vComp_apply_coe](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/vcomp-apply-coe.md) | 219 | `result-track:d3d2668e3c846f051d0b2cb14ed04236d7c915fbb24431790f0bb7dcaba48800` |
| 30 | `theorem` | [continuous_vComp](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/continuous-vcomp.md) | 222 | `result-track:7a768a80a9247a254c7c8442e0e34c4aa647daf364905d4d5da36ef1222b7cf6` |
| 31 | `theorem` | [norm_vComp_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/norm-vcomp-le.md) | 227 | `result-track:bb04d13d6f22cc19f0d5350547fca0be106752e51a4de3ce0db9ec1ec427b0fb` |
| 32 | `theorem` | [dist_apply_le_dist](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-apply-le-dist.md) | 230 | `result-track:ea7a4a5c21a46754e72bb7d719d7f87fb50f45be5944e0e669ffd79fda680ff6` |
| 33 | `theorem` | [dist_le_of_forall](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-le-of-forall.md) | 234 | `result-track:a30019f974c9339d527f2b76a0a462abdae21fe9b7ea600c29c8211a9236e46e` |
| 34 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 239 | `declaration-track:d458a5d79b986a212323eacdef3b8c555106eff1aa5001a52a3326bcb76f8cd7` |
| 35 | `theorem` | [intervalIntegrable_vComp](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/intervalintegrable-vcomp.md) | 248 | `result-track:c294e4f035f0d54fc98f3a6813daf1dad78c4ed27f403a0e4938b525b52dc561` |
| 36 | `def` | [next](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/next.md) | 255 | `declaration-track:0811507d0117100f5f1276eecd7c5821842119231f94c819a5cf68bb5ceebf18` |
| 37 | `theorem` | [next_apply](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/next-apply.md) | 263 | `result-track:3182bf1ffe61edeb2852dff349791e202d78033afab5505967abf596ee6f5076` |
| 38 | `theorem` | [dist_next_apply_le_of_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-next-apply-le-of-le.md) | 266 | `result-track:4b28b8e524ad76c02563db7ea30041b4070061075f1e5bc97459f1a9ad0a097b` |
| 39 | `theorem` | [dist_iterate_next_apply_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-iterate-next-apply-le.md) | 287 | `result-track:18e81c997618fb37c07747c79df893f1203db74ae63d6a3695d35c29d2db454a` |
| 40 | `theorem` | [dist_iterate_next_le](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/dist-iterate-next-le.md) | 297 | `result-track:7eed7e235f59c57f0bfdb19e7c61b9d99560fbb88064cda85998fb35151a8d0d` |
| 41 | `theorem` | [hasDerivWithinAt_next](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/hasderivwithinat-next.md) | 305 | `result-track:eb7ba172dca650928e4159e5d0b347763dbff8e612246c929d31607d60cc1281` |
| 42 | `theorem` | [exists_contracting_iterate](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-contracting-iterate.md) | 323 | `result-track:e06dfac35ad958d1365551ff60c7fe1bb4de3e43eab3baae87c0d095956240ee` |
| 43 | `theorem` | [exists_fixed](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-fixed.md) | 332 | `result-track:5e763a0df38281a698e53df4b27866aea9a19bfe048a591c0951c26de2471117` |
| 44 | `theorem` | [exists_solution](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-solution.md) | 340 | `result-track:5a81335c5da7f5549f67c35b4ec2951572c2b6b2df36115126a966a7f4a0f398` |
| 45 | `theorem` | [IsPicardLindelof.norm_le₀](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/ispicardlindelof-norm-le.md) | 352 | `result-track:b93ab710a12e9020fd66f88a19ae911aa16732cb7ee31ceb4e5e4326681857a4` |
| 46 | `theorem` | [IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/ispicardlindelof-exists-forall-hasderivwithinat-icc-eq.md) | 358 | `result-track:4913d9bc5a643c54605084ede5a9beb3ce6957081b71837eb9a16e9788701017` |
| 47 | `theorem` | [exists_isPicardLindelof_const_of_contDiffAt](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-ispicardlindelof-const-of-contdiffat.md) | 372 | `result-track:c7ad7a75edb236b7dc1ee1cf00a97afa398ae785123a02248b926b8dcdfdd2b4` |
| 48 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiffAt](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiffat.md) | 400 | `result-track:7039c4223e6779ddd32c4be5cdcb7f8e7b9cc216eebce68694f44449a6a2f208` |
| 49 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiff](../../../../OrdinaryDifferentialEquations/ODEPicardLindelofPicardLindelofNamespacedSourceEdition1.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiff.md) | 409 | `result-track:75489fde61a85bb1daff906cb8da4fd2a000734d34f48cd5ff65512f26d97116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5182699ee607a34e952300c3780b246a0d6bdeb8bd957b41c43e47507166d7ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
