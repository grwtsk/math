# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorffRealized.Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ProdSpaceFun](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/prodspacefun--0d8a23bf68339b135561cbbd.md) | 65 | `declaration-track:0d8a23bf68339b135561cbbdd4eed2643d8fb74b697b74322279467db47f4f6b` |
| 2 | `abbrev` | [Cb](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/cb--0ad9775e5e65fb563ef51cfa.md) | 69 | `declaration-track:0ad9775e5e65fb563ef51cfa999bf3a674b55d5eed8280fc1bd256349f480951` |
| 3 | `def` | [maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/maxvar--a1fdac6b66144388b7156fec.md) | 73 | `declaration-track:a1fdac6b66144388b7156fec0de7edf8abe459d0fdb879ef23d2a6ee0f6921ee` |
| 4 | `theorem` | [one_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/one-le-maxvar--d762ca4e709c25061bebce45.md) | 76 | `result-track:d762ca4e709c25061bebce4530cb048f173e2552d836289bfb9a35ca3884bd44` |
| 5 | `def` | [candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates--1a34933fb17994f91d2e23df.md) | 85 | `declaration-track:1a34933fb17994f91d2e23dfbfe8c4add92a42674cc40aecee2f460110f449b0` |
| 6 | `def` | [candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesb--2415349fd4ec611bea5e5810.md) | 95 | `declaration-track:2415349fd4ec611bea5e5810f7061a09af8cdec1523f182a9954c10af5a5e3a7` |
| 7 | `theorem` | [maxVar_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/maxvar-bound--d29152bf9ee176c4ac505d4d.md) | 107 | `result-track:d29152bf9ee176c4ac505d4d55e2f9a5f8d8fe5e363c4bb2c672a194ff69de24` |
| 8 | `theorem` | [candidates_symm](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-symm--9d0ebabc80bc4146b2beaf99.md) | 124 | `result-track:9d0ebabc80bc4146b2beaf998e5feee7e01e6c17e276eb207e094f830261bfb4` |
| 9 | `theorem` | [candidates_triangle](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-triangle--a9c0f3810d584ad8a2193cf7.md) | 128 | `result-track:a9c0f3810d584ad8a2193cf75ebb8ba5115705c1f4688df2050a088ee51a8b22` |
| 10 | `theorem` | [candidates_refl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-refl--4ab41d148f2b0f1b1733adae.md) | 132 | `result-track:4ab41d148f2b0f1b1733adae8a7b21dc641b043a8ef559b0577332d3a559de41` |
| 11 | `theorem` | [candidates_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-nonneg--99c3f94c3223547a4a922d0a.md) | 136 | `result-track:99c3f94c3223547a4a922d0aa7a95716760dcba685f6d5d8851b5c706350e8cb` |
| 12 | `theorem` | [candidates_dist_inl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-dist-inl--c76f59a1db188e29ba8ab490.md) | 140 | `result-track:c76f59a1db188e29ba8ab4900f518e5c585127fdee93cb4165022692179e399e` |
| 13 | `theorem` | [candidates_dist_inr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-dist-inr--8ad0bc7e8b1975241cc329cc.md) | 145 | `result-track:8ad0bc7e8b1975241cc329cc5e7b44bc7ef5f1f1628aee613a17f3d60bd8e6a8` |
| 14 | `theorem` | [candidates_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-le-maxvar--f11622939599b91a2e20c55b.md) | 150 | `result-track:f11622939599b91a2e20c55b0ee4f530675fb438a8e28a401c1657256f0cdb13` |
| 15 | `theorem` | [candidates_dist_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-dist-bound--5b0bbc7f1ead5c54ba72f5e7.md) | 155 | `result-track:5b0bbc7f1ead5c54ba72f5e7f1de5594e686df92e68d49f8301421c17d899120` |
| 16 | `theorem` | [candidates_lipschitz_aux](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-lipschitz-aux--3d886e226d88b36624045149.md) | 186 | `result-track:3d886e226d88b36624045149d908f276978897a4afe300ab6f5626242c210b18` |
| 17 | `theorem` | [candidates_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidates-lipschitz--9cdcbb1697c89de27bfeb35c.md) | 205 | `result-track:9cdcbb1697c89de27bfeb35c7d11e4bb41cee3470a569b24f16a8ac3858e4473` |
| 18 | `theorem` | [closed_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/closed-candidatesb--9cdb36a83a206fe39391d90d.md) | 216 | `result-track:9cdb36a83a206fe39391d90d4029d96d3285f7fd202b3765b61c8203973c4a99` |
| 19 | `def` | [HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd--4293db97928475a006e94677.md) | 250 | `declaration-track:4293db97928475a006e9467734ab349c05f548bfc74e8523f47ba45fc0add3cf` |
| 20 | `theorem` | [HD_below_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-below-aux1--c4f37119c718b4bf35660add.md) | 260 | `result-track:c4f37119c718b4bf35660add087f70039f8c3999b7342be2dc8a2686fc7786f0` |
| 21 | `theorem` | [HD_bound_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-bound-aux1--c0de31ea00d4ef940d90dae8.md) | 265 | `result-track:c0de31ea00d4ef940d90dae86b6841eed825eaa030e7b7edd37a7816bdcf10ee` |
| 22 | `theorem` | [HD_below_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-below-aux2--932a071e324f14ca754f7128.md) | 275 | `result-track:932a071e324f14ca754f71284b13f132f9ef725a6597b6ed4dc4d4a39258885d` |
| 23 | `theorem` | [HD_bound_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-bound-aux2--a08560d0171298f3bd02871e.md) | 280 | `result-track:a08560d0171298f3bd02871e2c2aa00819fc796a407e9e4e4391aea67bd26059` |
| 24 | `theorem` | [HD_lipschitz_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-lipschitz-aux1--82bebb9c03df92c1582d3ef3.md) | 293 | `result-track:82bebb9c03df92c1582d3ef3b69d6e5073bd5f8ef33de83d6608b1c7a2136e13` |
| 25 | `theorem` | [HD_lipschitz_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-lipschitz-aux2--15a60e9a6c28ff644fc4ed58.md) | 321 | `result-track:15a60e9a6c28ff644fc4ed58d52eca53a75fe55b1c4238ecb81cd7b429819e7e` |
| 26 | `theorem` | [HD_lipschitz_aux3](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-lipschitz-aux3--2db01774d6285d458b65e167.md) | 349 | `result-track:2db01774d6285d458b65e167aecde737dedb71357293038396d60aed564d2be8` |
| 27 | `theorem` | [HD_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-continuous--2ae65bbdb925dd5e2278b404.md) | 355 | `result-track:2ae65bbdb925dd5e2278b404b9fa7dc870ca76cd843f610ba9b2578d60c608fb` |
| 28 | `theorem` | [isCompact_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/iscompact-candidatesb--7ee7d69267f259b76783f88a.md) | 363 | `result-track:7ee7d69267f259b76783f88a14db873b55a6111bd2d605ee2af0920d897ce2d3` |
| 29 | `def` | [candidatesBOfCandidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesbofcandidates--557afaf84ee0d6f41fcea236.md) | 379 | `declaration-track:557afaf84ee0d6f41fcea2361f0c691b6b9143af939ae63bf10c59809cec9086` |
| 30 | `theorem` | [candidatesBOfCandidates_mem](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesbofcandidates-mem--08f023b791da4a68376bc3a2.md) | 384 | `result-track:08f023b791da4a68376bc3a2459f9cf0d5ad288b4da2e1b3bd21b56c209bf113` |
| 31 | `theorem` | [dist_mem_candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/dist-mem-candidates--578be6d2988a95f79b233a51.md) | 392 | `result-track:578be6d2988a95f79b233a518a5440004b09a118496ba702d564b97250741b4c` |
| 32 | `def` | [candidatesBDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesbdist--377371f8b6196f3f7958b883.md) | 401 | `declaration-track:377371f8b6196f3f7958b8836e77f4e63256a2d7a1e1a2ed162e67951ad3d122` |
| 33 | `theorem` | [candidatesBDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesbdist-mem-candidatesb--3d3c943ee9bdba4493ae78e9.md) | 407 | `result-track:3d3c943ee9bdba4493ae78e97fcea513b7f69f30a502556d74afd416e58de2a2` |
| 34 | `theorem` | [candidatesB_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/candidatesb-nonempty--e4b40929df38b4d3dfc3e82b.md) | 411 | `result-track:e4b40929df38b4d3dfc3e82b526ee5e6b8c9fae680ce6e866a1b231cbc09c2a3` |
| 35 | `theorem` | [HD_candidatesBDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-candidatesbdist-le--8628fbfc1d7645fa2a16ec3f.md) | 416 | `result-track:8628fbfc1d7645fa2a16ec3fa8da3e52bb208a0d9561d075278190f18027e925` |
| 36 | `theorem` | [exists_minimizer](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/exists-minimizer--9a1775d02d58b28fe63675af.md) | 448 | `result-track:9a1775d02d58b28fe63675afff562edeb8bc9b449632a97d756049a0c17d14cc` |
| 37 | `def` | [optimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/optimalghdist--dab6703aa3697cd400accec6.md) | 452 | `declaration-track:dab6703aa3697cd400accec610beaa5769a4a455a74063b00a24ac0f2f36a65a` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/optimalghdist-mem-candidatesb--11340ea6212091340f5a257a.md) | 456 | `result-track:11340ea6212091340f5a257a762e3ad0761443dcf87508837c3f92822f10e6b3` |
| 39 | `theorem` | [HD_optimalGHDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hd-optimalghdist-le--951fc8615ad976d34b744805.md) | 460 | `result-track:951fc8615ad976d34b744805073fb150286020a1d76c93eaecd33c6b4d8c6b53` |
| 40 | `def` | [premetricOptimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/premetricoptimalghdist--f76987581d6ace0d5d033e08.md) | 471 | `declaration-track:f76987581d6ace0d5d033e0865d045b5753c51a8ed6030b9c0cd706b5c8e7d31` |
| 41 | `def` | [OptimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/optimalghcoupling--bc11ca888f63153b2aa1a55b.md) | 480 | `declaration-track:bc11ca888f63153b2aa1a55bc7f30a9fc92d65481449f3b052f7590650aae6df` |
| 42 | `def` | [optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/optimalghinjl--5f7247e54528a273461bc5bd.md) | 485 | `declaration-track:5f7247e54528a273461bc5bdebdc56d179ff1d1fca5df8d4d343ad171add0cb3` |
| 43 | `theorem` | [isometry_optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/isometry-optimalghinjl--c08a5126d29f7b15eeba7bc2.md) | 489 | `result-track:c08a5126d29f7b15eeba7bc2b3f6129e451ed1ad48bf8f2b6d39e3ad9eb17ead` |
| 44 | `def` | [optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/optimalghinjr--7d8092a4f797a088c7ae085b.md) | 493 | `declaration-track:7d8092a4f797a088c7ae085b21530b1a78877d298f0f480bc5da0e8e7a256ad8` |
| 45 | `theorem` | [isometry_optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/isometry-optimalghinjr--1381c14535fefa053d979a0d.md) | 497 | `result-track:1381c14535fefa053d979a0df38b73e7e8d64b08099562ea6806f61b148e37e2` |
| 46 | `instance` | [compactSpace_optimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/compactspace-optimalghcoupling--e02567f242f844b6d23fd00c.md) | 502 | `declaration-track:e02567f242f844b6d23fd00cc20532f4f76f8e6a048c6dd6d0b158023e3e4ff0` |
| 47 | `theorem` | [hausdorffDist_optimal_le_HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/declarations/hausdorffdist-optimal-le-hd--e45426d84761addd5954dbe7.md) | 513 | `result-track:e45426d84761addd5954dbe7f891aab4fe46ffde7d2de34e67b7290a09e59b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
