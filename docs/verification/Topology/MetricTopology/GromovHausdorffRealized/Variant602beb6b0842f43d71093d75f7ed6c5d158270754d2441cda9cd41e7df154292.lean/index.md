# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorffRealized.Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67f72d8b0c77b568d35ae990958bc3d1839de598",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67f72d8b0c77b568d35ae990958bc3d1839de598`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.ArzelaAscoli` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Gluing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ProdSpaceFun](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/prodspacefun--d83abc952beb2e70438b0f01.md) | 66 | `declaration-track:d83abc952beb2e70438b0f018ebee6f69d64a121ad9d6df40d11b594dbee32ca` |
| 2 | `abbrev` | [Cb](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/cb--33de42ddac06861c49d09572.md) | 69 | `declaration-track:33de42ddac06861c49d09572fa2f3a01f165c5884e259d78d02afd530315a132` |
| 3 | `def` | [maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/maxvar--4c663b5e418519cbddf7cd24.md) | 72 | `declaration-track:4c663b5e418519cbddf7cd2475ec44a8f9cc1413ef7cf01ddf3cc17335b52181` |
| 4 | `theorem` | [one_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/one-le-maxvar--4bd3e49249d0a851dd6baf83.md) | 75 | `result-track:4bd3e49249d0a851dd6baf83d3b7f189e43eaa8a1f012fa63d2285ce6c209f27` |
| 5 | `def` | [candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates--ad5197ff44201eb22659138d.md) | 82 | `declaration-track:ad5197ff44201eb22659138d832979ccfd67cd1127680f98fe78c9e557401793` |
| 6 | `def` | [candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesb--a30f0d6ddfa497afdf325c1a.md) | 91 | `declaration-track:a30f0d6ddfa497afdf325c1abf1685b84924f51af7846e70fd66dbfed1f75b82` |
| 7 | `theorem` | [maxVar_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/maxvar-bound--4e062cd6993d400d7dfc15c2.md) | 103 | `result-track:4e062cd6993d400d7dfc15c2710f5864b751d4b20eefe58db63af462c877ecf7` |
| 8 | `theorem` | [candidates_symm](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-symm--0d4b50839c400578dcb87dbd.md) | 119 | `result-track:0d4b50839c400578dcb87dbd04d0443f6a762a955b1304decadda15fb9eb5365` |
| 9 | `theorem` | [candidates_triangle](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-triangle--4ff6d5becac4cacdb06ce7e5.md) | 122 | `result-track:4ff6d5becac4cacdb06ce7e58c64d5dd56210dd8708789bb067d24fec54a3843` |
| 10 | `theorem` | [candidates_refl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-refl--4f4a88ed39869e7b4673651a.md) | 125 | `result-track:4f4a88ed39869e7b4673651af47c242cea7efaf660a61c17db06137bfc799121` |
| 11 | `theorem` | [candidates_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-nonneg--b4fe64df5fbe54173d0e9114.md) | 128 | `result-track:b4fe64df5fbe54173d0e911401e002589b7d8b071613eef22a37a8d07e230ade` |
| 12 | `theorem` | [candidates_dist_inl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-dist-inl--319d698c0d17cdb3bfed05de.md) | 137 | `result-track:319d698c0d17cdb3bfed05de5c5ed59f5cc54ee6724df41d5ff42d6540bc8f76` |
| 13 | `theorem` | [candidates_dist_inr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-dist-inr--680708dd478c68c1f09133f4.md) | 141 | `result-track:680708dd478c68c1f09133f4f3ce1958fc5373e2597e6bc337a3604d24bd9636` |
| 14 | `theorem` | [candidates_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-le-maxvar--427827ecf25069695a8af626.md) | 145 | `result-track:427827ecf25069695a8af6262da941189b0d16a87b429b9647cd12febf316438` |
| 15 | `theorem` | [candidates_dist_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-dist-bound--0aef9b051ea08e1a7a36c642.md) | 149 | `result-track:0aef9b051ea08e1a7a36c6422450471f490069e5d44ee10c0ea1eca2f234a06e` |
| 16 | `theorem` | [candidates_lipschitz_aux](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-lipschitz-aux--b53bd3379e846833640fb094.md) | 179 | `result-track:b53bd3379e846833640fb0945b5740d2a893eac527d0d41b3292e91c75f6a929` |
| 17 | `theorem` | [candidates_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidates-lipschitz--77befd30e5bd08b18659e780.md) | 197 | `result-track:77befd30e5bd08b18659e7807296422df05922052264793f84ff5edadca2b0d9` |
| 18 | `theorem` | [closed_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/closed-candidatesb--373120a29febbf399206acb3.md) | 208 | `result-track:373120a29febbf399206acb3b3ec9e48716dc862840388503fffd9ee87bce396` |
| 19 | `def` | [HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd--fb9df43312b3dfed737740a8.md) | 239 | `declaration-track:fb9df43312b3dfed737740a8d891a45cb046b3f224886f2406a21426a11dee2c` |
| 20 | `theorem` | [HD_below_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-below-aux1--134fc6205531805f36343c5b.md) | 247 | `result-track:134fc6205531805f36343c5bd54d7d95a2353a1b9262c2b0b16fc48544fe125f` |
| 21 | `theorem` | [HD_bound_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-bound-aux1--69ef54cfe8a73e8a2404f0e7.md) | 252 | `result-track:69ef54cfe8a73e8a2404f0e7128ec1746772450f45f0ac92b84924bbc2a8d800` |
| 22 | `theorem` | [HD_below_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-below-aux2--76d021616f251579364e229b.md) | 260 | `result-track:76d021616f251579364e229bd6fdb010d474552cec8edb01f233d3437cb7637b` |
| 23 | `theorem` | [HD_bound_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-bound-aux2--019f5cd1c83d325bb8ab7d2d.md) | 265 | `result-track:019f5cd1c83d325bb8ab7d2d9bebad7ff0161f6337a3444a1b3f2ad4f03e3845` |
| 24 | `theorem` | [HD_lipschitz_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-lipschitz-aux1--161c811290af964fd66626a4.md) | 278 | `result-track:161c811290af964fd66626a4172f6ade503ca117cd2944797c70390c935452b9` |
| 25 | `theorem` | [HD_lipschitz_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-lipschitz-aux2--b432f2e927bfe87a9c635e41.md) | 306 | `result-track:b432f2e927bfe87a9c635e41e34988e67c5d3240fef110324c3e18dbeb24381e` |
| 26 | `theorem` | [HD_lipschitz_aux3](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-lipschitz-aux3--331f3a3625a12ac9943264b0.md) | 334 | `result-track:331f3a3625a12ac9943264b0626f95703010b1211de5d993fdef98e75bd29156` |
| 27 | `theorem` | [HD_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-continuous--422d12eb539f474993435eff.md) | 340 | `result-track:422d12eb539f474993435effe18db4a619322936015752e0a78e083257d34f77` |
| 28 | `theorem` | [isCompact_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/iscompact-candidatesb--b3c23f789e6b81ee87d70f2e.md) | 348 | `result-track:b3c23f789e6b81ee87d70f2e1fb11e94155527d0a05cf0e3a9044e1204455bee` |
| 29 | `def` | [candidatesBOfCandidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesbofcandidates--f8f7483098922d392e39e16c.md) | 362 | `declaration-track:f8f7483098922d392e39e16ccd733dbb10095c18082b7a6e10ba5ef9ad3fa513` |
| 30 | `theorem` | [candidatesBOfCandidates_mem](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesbofcandidates-mem--a78ed4dd46eeb84551316bb9.md) | 365 | `result-track:a78ed4dd46eeb84551316bb940195fc30789a194b6b426d34db0e9f010198cb5` |
| 31 | `theorem` | [dist_mem_candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/dist-mem-candidates--58d0264dd9a7ae235571a583.md) | 372 | `result-track:58d0264dd9a7ae235571a583952ef3c792c9cd00774370eef98fb9b25e806807` |
| 32 | `def` | [candidatesBDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesbdist--dc7677f03ae7976d7cfaa016.md) | 379 | `declaration-track:dc7677f03ae7976d7cfaa01642d27687b6124937848290db1ac2cca4806a3407` |
| 33 | `theorem` | [candidatesBDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesbdist-mem-candidatesb--6f2d64c3fb13fce9601feef9.md) | 383 | `result-track:6f2d64c3fb13fce9601feef93e792c26c7ac0346edffb4b7251eaa00803a5363` |
| 34 | `theorem` | [candidatesB_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/candidatesb-nonempty--e326c98dc0bd5a2bf4030389.md) | 387 | `result-track:e326c98dc0bd5a2bf4030389c32f6b3c821b4bb0d7b90abf37b251b65509f21a` |
| 35 | `theorem` | [HD_candidatesBDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-candidatesbdist-le--c88fffbce9204fdeb3d85318.md) | 392 | `result-track:c88fffbce9204fdeb3d853181ee79feca60e27f4ad913f4d7169a9ed5448e503` |
| 36 | `theorem` | [exists_minimizer](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/exists-minimizer--e1a0104ee0d8f0980ebfaa40.md) | 424 | `result-track:e1a0104ee0d8f0980ebfaa40a1551d71274f3f3eae8c1e7ce1f149d95e3c4d19` |
| 37 | `def` | [optimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/optimalghdist--7be4d93da1ad4f0129ad7850.md) | 427 | `declaration-track:7be4d93da1ad4f0129ad7850a110915d2988d5d2f1be2d03cc5fef3972869dbb` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/optimalghdist-mem-candidatesb--44359c3b77f56c4024d837eb.md) | 430 | `result-track:44359c3b77f56c4024d837ebc93cfc80dfeb423cae22af1f26d8a0f57caf8278` |
| 39 | `theorem` | [HD_optimalGHDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hd-optimalghdist-le--cdf14a840fd70dfbd8284355.md) | 434 | `result-track:cdf14a840fd70dfbd828435561c849feedfa7c2f12270d824c808c8136904908` |
| 40 | `def` | [premetricOptimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/premetricoptimalghdist--114c30c23bb1c26a5384cf45.md) | 442 | `declaration-track:114c30c23bb1c26a5384cf45dbedb81fe5d74b9baddf4369f689d52e3ba1aeb2` |
| 41 | `def` | [OptimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/optimalghcoupling--7ba82b6348a83fa227ace70b.md) | 451 | `declaration-track:7ba82b6348a83fa227ace70bf1daa52d41375231f79dd2c88f415561626842fa` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/instance--4f307488842cfd4baedec31b.md) | 454 | `declaration-track:4f307488842cfd4baedec31b192a22e3cf2cc87bcf890445e5e0070e338e7e76` |
| 43 | `def` | [optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/optimalghinjl--3254a08b4654a01694af6230.md) | 459 | `declaration-track:3254a08b4654a01694af623074c18c6e539e378035783fab62c74c7625ba20b7` |
| 44 | `theorem` | [isometry_optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/isometry-optimalghinjl--00f52e0780867204c0a17e80.md) | 463 | `result-track:00f52e0780867204c0a17e8039ceb2db0a2bbc462974a1a38e6c068aa8c8dc87` |
| 45 | `def` | [optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/optimalghinjr--36be54ddcce6744269f0285f.md) | 467 | `declaration-track:36be54ddcce6744269f0285fb7632fefc02eee06493f632ac8605de4fe771e73` |
| 46 | `theorem` | [isometry_optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/isometry-optimalghinjr--72cca507260a5e4dd67e5580.md) | 471 | `result-track:72cca507260a5e4dd67e558097770271763ab5000e42ee26bbe68d1041f57928` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/compactspace-optimalghcoupling--eb0c63b10f5029c7b1174a4f.md) | 475 | `declaration-track:eb0c63b10f5029c7b1174a4f80eb733c981042be253b0d3f2e5842504bfd34a1` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/declarations/hausdorffdist-optimal-le-hd--cef407ad186fe4141f8515d2.md) | 484 | `result-track:cef407ad186fe4141f8515d21d6affb80820f2dc2a8017b948010a9bc67d60b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
