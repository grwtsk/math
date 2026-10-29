# Verification target: Algebra Order Liminf Limsup Bounded LENhds Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6d1f007687760b07e6332ce682f14f3eb1dd027",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6d1f007687760b07e6332ce682f14f3eb1dd027`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.DenselyOrdered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/boundedlenhdsclass.md) | 34 | `declaration-track:cc117957de226990e4cd4ad0693a0d92b811157e06bfe122494de7277d5ad4b1` |
| 2 | `class` | [BoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/boundedgenhdsclass.md) | 38 | `declaration-track:d1689e49e2cf49aa045b0bbb90af16e6e1d51224ab488356359ffe85a5806a92` |
| 3 | `theorem` | [isBounded_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/isbounded-le-nhds.md) | 47 | `result-track:3663e13f3c10b7b67d5a23ddffe45ea2596cd5924a3363811b245690c377358d` |
| 4 | `theorem` | [Filter.Tendsto.isBoundedUnder_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-isboundedunder-le.md) | 50 | `result-track:7a22221c3e884dfd269107f85e93562b063fe531b43960673a4734fb36e2c02c` |
| 5 | `theorem` | [Filter.Tendsto.bddAbove_range_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-bddabove-range-of-cofinite.md) | 53 | `result-track:f1ad5d75822ffd74098c197264b1bda3eca031ff8835aacb7c7bdb6b88d61d0c` |
| 6 | `theorem` | [Filter.Tendsto.bddAbove_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-bddabove-range.md) | 57 | `result-track:5dcc878104f3ae28a82a1eecb5454230c729f467988fe81af2a8132dc69cf01e` |
| 7 | `theorem` | [isCobounded_ge_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/iscobounded-ge-nhds.md) | 61 | `result-track:58b87a399cba17bd20fbb98f4dd3eb00ccb93c9680ef4aac3312e538ef25ca7b` |
| 8 | `theorem` | [Filter.Tendsto.isCoboundedUnder_ge](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-iscoboundedunder-ge.md) | 64 | `result-track:af87f4696ed87e49c59ed3d2b3d32eb46b117de48d39958932dbe9f168b5a887` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:1765167900b31319a75c7e1e44144df9095a83fbf870197a86b266eea08b33dd` |
| 10 | `instance` | [Prod.instBoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/prod-instboundedlenhdsclass.md) | 70 | `declaration-track:8b3ad5ac33d12388418bc0f64e748d1f5f9f7496a68e0a0473fa0c176d8943a6` |
| 11 | `instance` | [Pi.instBoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/pi-instboundedlenhdsclass.md) | 77 | `declaration-track:40eb0b6e61877fae7b9dc05ded934e752daab39d3e83e36a3ddc0578f91d9de6` |
| 12 | `theorem` | [isBounded_ge_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/isbounded-ge-nhds.md) | 89 | `result-track:8237273c3a3fc4903bdcb9a52db4f0e3f08eb952eba58af99ae94684dcfe2506` |
| 13 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-isboundedunder-ge.md) | 92 | `result-track:4dfe087be79804f8f3e4c9fbfc43320944252623b60b8657520152fc299d0071` |
| 14 | `theorem` | [Filter.Tendsto.bddBelow_range_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-bddbelow-range-of-cofinite.md) | 95 | `result-track:11391b84d6dc4df04165759ce4c08f09ee7f4012c0bbe0459459d80ddb48c7e3` |
| 15 | `theorem` | [Filter.Tendsto.bddBelow_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-bddbelow-range.md) | 99 | `result-track:654e85a5e797dc1e0d051d58623b2b0b4e932c942ab4ce79208b5ba4aaa11b1d` |
| 16 | `theorem` | [isCobounded_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/iscobounded-le-nhds.md) | 103 | `result-track:bc19d39c3ec5f420cd1550a9be8d2644f020a56beff0bff183a307fe1e68b659` |
| 17 | `theorem` | [Filter.Tendsto.isCoboundedUnder_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-iscoboundedunder-le.md) | 106 | `result-track:9c7f43181420db8489f678bae793533983306e51bffb8de0e6927eb54ffad340` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance-source-edition-5.md) | 110 | `declaration-track:605e6b519720b5df1ea5d1ed74d08412f4ff0af1f3854c7ff73c55a88ee705b1` |
| 19 | `instance` | [Prod.instBoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/prod-instboundedgenhdsclass.md) | 112 | `declaration-track:ed7ec66616d9ca04b03f3fdf7f97a7a625b47db6f0ac0d99644f3c9deef73309` |
| 20 | `instance` | [Pi.instBoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/pi-instboundedgenhdsclass.md) | 115 | `declaration-track:86ca5d2b44c69c11196f91a0bd39cd69513fdac6fa8c544bb56a892ccde9313f` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:3fb913cbfff15824b11de18404a6850680588de5b587e48fcdb1dc37738bc41c` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:2710863e1cc728ce3f6f143cd0e520924a972cf0c342b81a0025106af42e889e` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance-source-edition-6.md) | 132 | `declaration-track:cec8b5c1a073670e5fa9a35fc5b30073ea5fa31f7315008d5db7311f3fd66b52` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/instance.md) | 138 | `declaration-track:0c3bfc2f3be6575d4fef8327d6eaa8eda3b299c8d7c62315b7a1d3f6ff673f79` |
| 25 | `theorem` | [le_nhds_of_limsSup_eq_limsInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/le-nhds-of-limssup-eq-limsinf.md) | 150 | `result-track:799c732f79afed3d7368b93879647baf1884cb6ec2d5cf9c696d071892dde2a4` |
| 26 | `theorem` | [limsSup_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limssup-nhds.md) | 155 | `result-track:e9aa03bc01357fffc1cee41d5f72dc628a077c57d98409d2020d28e61947bf3f` |
| 27 | `theorem` | [limsInf_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsinf-nhds.md) | 164 | `result-track:ca3566e7700f8e66b5dac41b1ca56f8e6e7c3c87f4b71ba916821846e68205b9` |
| 28 | `theorem` | [limsInf_eq_of_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsinf-eq-of-le-nhds.md) | 168 | `result-track:45ce4442e22c82c285f078a46b47dd6ea3aa7a1ac034413baee5389f5417b5af` |
| 29 | `theorem` | [limsSup_eq_of_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limssup-eq-of-le-nhds.md) | 181 | `result-track:2572498cff38b03d0092a917a164df7b0107d6c6533ba55615d02b3d50a426ee` |
| 30 | `theorem` | [Filter.Tendsto.limsup_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-limsup-eq.md) | 185 | `result-track:9cdc63e46bd2dc803cf66dc2508bd8f251a1f05aeef479dd372d890150855441` |
| 31 | `theorem` | [Filter.Tendsto.liminf_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/filter-tendsto-liminf-eq.md) | 190 | `result-track:5106fc8aabcc01d59d6a46fcd37a65bfb7712b026dbd0161d3086b8a79122112` |
| 32 | `theorem` | [tendsto_of_liminf_eq_limsup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/tendsto-of-liminf-eq-limsup.md) | 196 | `result-track:7eb4555aa55c451f66021536d3ee2b909304033244c6c1cc456d12df317e6dec` |
| 33 | `theorem` | [tendsto_of_le_liminf_of_limsup_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/tendsto-of-le-liminf-of-limsup-le.md) | 203 | `result-track:2be34306b3f64437e2b7a5327434b7063ca5dafc25217da8a5b692c71e9019bd` |
| 34 | `theorem` | [tendsto_of_no_upcrossings](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/tendsto-of-no-upcrossings.md) | 215 | `result-track:f0cea2652188eb9cc75c78dd3c1c3b694daac1ac69372cc3accdea6930931135` |
| 35 | `theorem` | [eventually_le_limsup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/eventually-le-limsup.md) | 236 | `result-track:cb5767bd6a6fa411d97f829318bc314056b59f1c124c634d575295fa103441e0` |
| 36 | `theorem` | [eventually_liminf_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/eventually-liminf-le.md) | 254 | `result-track:80b93125962c3d79dc36ed399dcab8cc76bce6ba5c310ab023c3facba9ea5c5d` |
| 37 | `theorem` | [limsup_eq_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-eq-bot.md) | 266 | `result-track:28273c749500ee130b38a5d6f3f0d005e8af60129eca7dd2afe4191935b29d52` |
| 38 | `theorem` | [liminf_eq_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-eq-top.md) | 275 | `result-track:795065358aea2adf55d610eef0a7df9171c0a9e56e2f3e2bd4695f1cd76118d1` |
| 39 | `theorem` | [Antitone.map_limsSup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/antitone-map-limssup-of-continuousat.md) | 291 | `result-track:02d81556d0e1c892cdba3c8de44a70f88a91659d75482f310b08705716a8d390` |
| 40 | `theorem` | [Antitone.map_limsup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/antitone-map-limsup-of-continuousat.md) | 342 | `result-track:18eed258919f6c90bbb8bab6c6c1de854380d1f1e4a296fce66aaedfb5164074` |
| 41 | `theorem` | [Antitone.map_limsInf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/antitone-map-limsinf-of-continuousat.md) | 352 | `result-track:bcba1f6a8d2eec51a6dce7f81e82986294f9a4612e7f85fb3f8b075f769ecc98` |
| 42 | `theorem` | [Antitone.map_liminf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/antitone-map-liminf-of-continuousat.md) | 361 | `result-track:6212b089b074a076e25d33c39eb57e25c96b4d4eb875be2a3c25e7d24b249431` |
| 43 | `theorem` | [Monotone.map_limsSup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/monotone-map-limssup-of-continuousat.md) | 371 | `result-track:ea8aeed7290d23d735b1fb501f598444c2f9c59f6aa58714f826df75b0cff0e1` |
| 44 | `theorem` | [Monotone.map_limsup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/monotone-map-limsup-of-continuousat.md) | 380 | `result-track:d10f2e6bef0adbb94863787d7533a51a8084cd972b32da0b243f6effec399fb0` |
| 45 | `theorem` | [Monotone.map_limsInf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/monotone-map-limsinf-of-continuousat.md) | 390 | `result-track:ea2e2ddae270e0ff46a265125b3b871a9532e3d5329174bf4ba99d03fbd9e0ba` |
| 46 | `theorem` | [Monotone.map_liminf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/monotone-map-liminf-of-continuousat.md) | 399 | `result-track:085e571026104051ae8d67e4ec62370c45b0658610d2ce203a410e1e2dd905e6` |
| 47 | `lemma` | [le_limsup_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/le-limsup-add.md) | 414 | `result-track:7d28392c9a7a030e696b0e8e56887c88fc78f9b0800d952dab2a7729760eea94` |
| 48 | `lemma` | [limsup_add_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-add-le.md) | 427 | `result-track:12a9fc758b7f54bf98982e8bf70e96fd02c843f83b60832c04262bd470f0de45` |
| 49 | `lemma` | [le_liminf_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/le-liminf-add.md) | 440 | `result-track:9d26829a3a34f65de474ddd2a26dd2279dc5d163cebdf4b407b0cd2b398951d7` |
| 50 | `lemma` | [liminf_add_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-add-le.md) | 453 | `result-track:d29e3232e0ce9a9060da9ef98fb8f5a0931b4862025722490735f4a8aa5a1a32` |
| 51 | `lemma` | [le_limsup_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/le-limsup-mul.md) | 473 | `result-track:55bb33d80e3bc944de5e231cbc505ef0649cf974c9667e1a163d56ce12f7a8a2` |
| 52 | `lemma` | [limsup_mul_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-mul-le.md) | 490 | `result-track:9bd2ed6f132baeb147687205d055a50a773cd4a9a8bd5fb197a433c0fe477ec3` |
| 53 | `lemma` | [le_liminf_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/le-liminf-mul.md) | 505 | `result-track:dcd26ebc10bdfbe528f2eb0252a9339a1293a623bec2784b9a811b775ac7af02` |
| 54 | `lemma` | [liminf_mul_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-mul-le.md) | 519 | `result-track:04ced401f9386287613e39c4e598cf926364ecfba7279f5189999336b5986580` |
| 55 | `lemma` | [limsup_const_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-const-add.md) | 535 | `result-track:2d31e08a1182505c378c0d49eadde16d5e7bbd892cc726bf4ab5e1a3e415cbfd` |
| 56 | `lemma` | [limsup_add_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-add-const.md) | 543 | `result-track:93484d8563800fb108fccc124eaafa0b0f17f700fa74ba2e1b446e7c292fca52` |
| 57 | `lemma` | [liminf_const_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-const-add.md) | 551 | `result-track:8a6264af018eadb5debc1c522c0d64b76a0b75ce45a4cd70985bf4cf06db2803` |
| 58 | `lemma` | [liminf_add_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-add-const.md) | 559 | `result-track:f7151cce045b77fc5285f0c6167088fcff4289595f11d758cf3283e2fa32f3e1` |
| 59 | `lemma` | [limsup_const_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-const-sub.md) | 567 | `result-track:3663748ced68274341749fbd8fa59220ad91a56dd8ffe3e415b98985c5d31e9c` |
| 60 | `lemma` | [limsup_sub_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/limsup-sub-const.md) | 586 | `result-track:93ebc83834ff72344b08d4b5e399e4c85d46ed41e56ade6052f616235a677d07` |
| 61 | `lemma` | [liminf_const_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-const-sub.md) | 604 | `result-track:22d27981ac95ac0b960c9ea7f7a05622cb196e11210332a1b60bf5a31cfdf0c9` |
| 62 | `lemma` | [liminf_sub_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupBoundedLENhdsClass.lean/declarations/liminf-sub-const.md) | 612 | `result-track:5e00966e78df45d1c22dd1855b20d53faaa46da0a81f17132f977c2d01748602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2ce83215175ae195f93d2066e208bdf4b4459f556f89a05b5df28f5e08c005b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
