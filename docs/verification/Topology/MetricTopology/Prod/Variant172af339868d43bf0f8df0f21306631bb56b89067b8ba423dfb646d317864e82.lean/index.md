# Verification target: GRWTSK.Topology.MetricTopology.Prod.Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85145a662825a20d01bfa6902b9668f204968ddc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85145a662825a20d01bfa6902b9668f204968ddc`.

Source path: `GRWTSK/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/prod--d1bbc8e3520f01870add5127.md) | 59 | `declaration-track:d1bbc8e3520f01870add51279018e3cc4afc211560388a544432549402fca76c` |
| 2 | `def` | [IsometryEquiv.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometryequiv-prod--a2360fa3aca619ea2c277dc1.md) | 65 | `declaration-track:a2360fa3aca619ea2c277dc1af4b70159ebc1756b6ea58beb3331baafb4393df` |
| 3 | `def` | [Isometry.inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-inl--fb176c345f1c5b1d980316da.md) | 75 | `declaration-track:fb176c345f1c5b1d980316da2e03722df951cc7dcfbfb49fc481e7b6266d860f` |
| 4 | `def` | [Isometry.inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-inr--90dd94cab37d3496f835bf32.md) | 81 | `declaration-track:90dd94cab37d3496f835bf32028a952dcc58653fef5b5c8378b3490231bcea50` |
| 5 | `def` | [Isometry.fst](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-fst--bbb28dc5deea753ef9574099.md) | 88 | `declaration-track:bbb28dc5deea753ef95740992001348727f5f8a2f1b8c4752919cff0df5a141d` |
| 6 | `def` | [Isometry.snd](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-snd--5289dce3abf4fbb090261298.md) | 95 | `declaration-track:5289dce3abf4fbb090261298dec1e0ee516b374f55253b0185e1b057ce55be2d` |
| 7 | `lemma` | [Isometry.fst_comp_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-fst-comp-inl--9a801596cd13c5613d06816f.md) | 100 | `result-track:9a801596cd13c5613d06816f4c2d9293ed4cfaa5079069e3541ba80056141c8c` |
| 8 | `lemma` | [Isometry.snd_comp_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-snd-comp-inr--011dc643bd89ed3d80a254a8.md) | 105 | `result-track:011dc643bd89ed3d80a254a845438f2ec79a786fd60f0ecabb1176d24802d97e` |
| 9 | `lemma` | [Isometry.snd_comp_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-snd-comp-inl--f93e8869eee3f15312697656.md) | 110 | `result-track:f93e8869eee3f15312697656619211b157b725143f93e51ad2c46f3fa43fc1f8` |
| 10 | `lemma` | [Isometry.fst_comp_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-fst-comp-inr--aaa3c33e02c47a37395c5bd9.md) | 115 | `result-track:aaa3c33e02c47a37395c5bd9960e641abf122684cbae37263f340d0a3ab0c807` |
| 11 | `theorem` | [Equivalent.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/equivalent-prod--abcbaacfade62de99e927e4c.md) | 119 | `result-track:abcbaacfade62de99e927e4c76e3e5dbf8448b2d1b8c5965497f9427c6fdf9a8` |
| 12 | `def` | [IsometryEquiv.prodComm](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometryequiv-prodcomm--d8d6206a86fc3663c739f8bd.md) | 126 | `declaration-track:d8d6206a86fc3663c739f8bd26dbb89bafac37572c551760b051d7d0b60f514c` |
| 13 | `def` | [IsometryEquiv.prodProdProdComm](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometryequiv-prodprodprodcomm--9c25f2ec84a7104749c6f197.md) | 133 | `declaration-track:9c25f2ec84a7104749c6f19750c675c3198c0a2e8f47a0b2df2ddb5c6bb60551` |
| 14 | `theorem` | [anisotropic_of_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/anisotropic-of-prod--edc45451c7ba1925d9a3b18e.md) | 141 | `result-track:edc45451c7ba1925d9a3b18e4c793b27b3831e05e13e3a0a93e7dd54ea199d70` |
| 15 | `theorem` | [nonneg_prod_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/nonneg-prod-iff--634b01c90b14396407bbc17b.md) | 153 | `result-track:634b01c90b14396407bbc17bd55f5acec9602c09ab567ef740abe12231f70e5b` |
| 16 | `theorem` | [posDef_prod_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/posdef-prod-iff--287046e8aa871560f406f07c.md) | 165 | `result-track:287046e8aa871560f406f07c2e7e8cac4912862d0563202515eca5a3ffcda442` |
| 17 | `theorem` | [PosDef.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/posdef-prod--20a4dcafb707064091073cc1.md) | 179 | `result-track:20a4dcafb707064091073cc1edf92fb08dd14e4ab86c80c05e4cf55f2ab60d06` |
| 18 | `theorem` | [IsOrtho.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isortho-prod--037496a8f2535345ef571a1c.md) | 184 | `result-track:037496a8f2535345ef571a1ca4f70b607f0be3e0abab25f9f65e9c4a844cc876` |
| 19 | `theorem` | [IsOrtho.inl_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isortho-inl-inr--1fdbc835ba75687481e38402.md) | 189 | `result-track:1fdbc835ba75687481e38402f34f8037ea0f67f0c764988c994005d772f22007` |
| 20 | `theorem` | [IsOrtho.inr_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isortho-inr-inl--617496054ff19d1deed3c6e4.md) | 194 | `result-track:617496054ff19d1deed3c6e4300022cf74c4edd0da29ec6df49ae0b7f0fd156d` |
| 21 | `theorem` | [isOrtho_inl_inl_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isortho-inl-inl-iff--0397d89b2c8104186a7d79fe.md) | 198 | `result-track:0397d89b2c8104186a7d79fe22929f9573d4276d0fa39414a820bf64d79ad64d` |
| 22 | `theorem` | [isOrtho_inr_inr_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isortho-inr-inr-iff--762fdbba49bddcc5dff4d4a9.md) | 203 | `result-track:762fdbba49bddcc5dff4d4a9e1fa19203c038422111eb834b2eb1ec6cededa39` |
| 23 | `theorem` | [polar_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/polar-prod--35da9e379a58a015c0466e6c.md) | 216 | `result-track:35da9e379a58a015c0466e6c7df98a91445df5560a76226e8d5ac362b049cbdb` |
| 24 | `theorem` | [polarBilin_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/polarbilin-prod--d706e995308b0727f7e5414d.md) | 221 | `result-track:d706e995308b0727f7e5414db5cceddb3f9eea9dd0889648c5d0f3997995a8f7` |
| 25 | `theorem` | [associated_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/associated-prod--ad4bbdba1eceeb357106da44.md) | 227 | `result-track:ad4bbdba1eceeb357106da44a71ae1233b9353a2d5809ecff590545004f88ee6` |
| 26 | `def` | [pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/pi--8f57d3ff99b7a0e3b53a734f.md) | 248 | `declaration-track:8f57d3ff99b7a0e3b53a734f9b30cd754095d07f7fde1914de883f956368099d` |
| 27 | `theorem` | [pi_apply](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/pi-apply--8c421f6235a73bd9ff977c2b.md) | 252 | `result-track:8c421f6235a73bd9ff977c2ba75cfc17e5d29843d83f1573c972d0506147a2b5` |
| 28 | `theorem` | [pi_apply_single](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/pi-apply-single--08e7fb9c9fac07264aafc362.md) | 256 | `result-track:08e7fb9c9fac07264aafc36283a4537a50e5a5cc48bd5df97c17c24ec1e51043` |
| 29 | `def` | [IsometryEquiv.pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometryequiv-pi--7117f782c0ed73083637a4ca.md) | 265 | `declaration-track:7117f782c0ed73083637a4cac1ea92b9f5cfeac18711ae4639bbc167b8587344` |
| 30 | `def` | [Isometry.single](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-single--3203455788c13e4f7adfd989.md) | 275 | `declaration-track:3203455788c13e4f7adfd989585be9ac924e3127876eb07e803d375ee048d02c` |
| 31 | `def` | [Isometry.proj](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-proj--4f889f31c2d5a100236074ff.md) | 282 | `declaration-track:4f889f31c2d5a100236074ff7a42e6325ec7d37910b011e2e5c64fb5aaca2eab` |
| 32 | `theorem` | [Isometry.proj_comp_single_of_same](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-proj-comp-single-of-same--b048569a9c8e1bcf6ff57a71.md) | 292 | `result-track:b048569a9c8e1bcf6ff57a717ece1bab793c105cfd5b6750b30aa1d5b6a5a76e` |
| 33 | `theorem` | [Isometry.proj_comp_single_of_ne](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/isometry-proj-comp-single-of-ne--f8cabd758add8de269745fda.md) | 299 | `result-track:f8cabd758add8de269745fda93ce1aa4f23e80eafba77ba013be41bf2b68484f` |
| 34 | `theorem` | [Equivalent.pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/equivalent-pi--a5985da9eb09d1fdd590fd28.md) | 304 | `result-track:a5985da9eb09d1fdd590fd28f973cc1acf3b23e9ad90abd3f91bae7a589220c5` |
| 35 | `theorem` | [anisotropic_of_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/anisotropic-of-pi--3aa363b3e787a20d313bc90d.md) | 310 | `result-track:3aa363b3e787a20d313bc90d681793d9b043b4d51c7afea231fa90d0970d007e` |
| 36 | `theorem` | [nonneg_pi_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/nonneg-pi-iff--76a9a9c56e6ccc863efaf695.md) | 324 | `result-track:76a9a9c56e6ccc863efaf6953a3eaf37dc43af5524c6defbcabe82fb4cbb8d58` |
| 37 | `theorem` | [posDef_pi_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/posdef-pi-iff--2f94b84787c9a871371a02e2.md) | 338 | `result-track:2f94b84787c9a871371a02e2f076fa4daa65932dda0236998ee65c34fd64a7dc` |
| 38 | `theorem` | [polar_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/polar-pi--b5f6e24ef178590b13acb57f.md) | 359 | `result-track:b5f6e24ef178590b13acb57fd284e40e203d6cc891147f980385b190dfebff65` |
| 39 | `theorem` | [polarBilin_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/polarbilin-pi--f543fb6fa57e69c62991bf8c.md) | 364 | `result-track:f543fb6fa57e69c62991bf8c2be438f0845c0094b280f3ba6044287538704d06` |
| 40 | `theorem` | [associated_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/declarations/associated-pi--b1eeb76d4a62554b4ec318ca.md) | 368 | `result-track:b1eeb76d4a62554b4ec318ca07f199a9ed4d26ee5279696040b67eefe15207a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
