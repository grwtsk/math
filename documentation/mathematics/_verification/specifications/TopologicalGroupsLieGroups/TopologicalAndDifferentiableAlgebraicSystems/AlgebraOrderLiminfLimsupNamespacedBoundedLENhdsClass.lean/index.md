# Verification target: Algebra Order Liminf Limsup Namespaced Bounded LENhds Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fc8c6425179579e5b0134d0e211cbaeb3fe4978",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fc8c6425179579e5b0134d0e211cbaeb3fe4978`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.DenselyOrdered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/boundedlenhdsclass.md) | 42 | `declaration-track:e870e631915057bef126daa262201f0d89dcecf54b6cd37ff109fa3ce281a164` |
| 2 | `class` | [BoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/boundedgenhdsclass.md) | 46 | `declaration-track:2219b5441798a9a861c2fe9b132e835b5cf65691e267571f4c2e8739c9feda5f` |
| 3 | `theorem` | [isBounded_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/isbounded-le-nhds.md) | 55 | `result-track:1849c4c85d682ff6077ed776b5b9ae8c4932a6fa63cb1b2d50a55b1fb6713ebc` |
| 4 | `theorem` | [Filter.Tendsto.isBoundedUnder_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-isboundedunder-le.md) | 58 | `result-track:58d69a87ab881bcd6dd1c4b00aae93b0afd7b64a4068778198860e9975ebfbb0` |
| 5 | `theorem` | [Filter.Tendsto.bddAbove_range_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-bddabove-range-of-cofinite.md) | 61 | `result-track:7401a2fa8abcc659247e2ecf81335e7b9b7aa6357b81b62b39b5d6a15f980872` |
| 6 | `theorem` | [Filter.Tendsto.bddAbove_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-bddabove-range.md) | 65 | `result-track:56b43add6b298b3df1b7c722a0728c14503ad1e2a887dee112fed722ef4cbdce` |
| 7 | `theorem` | [isCobounded_ge_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/iscobounded-ge-nhds.md) | 69 | `result-track:e45a17a200de8197a9edbc38feb5d1b6f2a574bb4a87d2f3056656d2414e8a6c` |
| 8 | `theorem` | [Filter.Tendsto.isCoboundedUnder_ge](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-iscoboundedunder-ge.md) | 72 | `result-track:cbec7e0b890905d8aadcb8a54bed7bb5d7b42119e506c1f27c99beeec078a7dc` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:b22625c3b5cecbba866b2ee548ef85159b880297e4d5575768e1a1775a4b23d9` |
| 10 | `instance` | [Prod.instBoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/prod-instboundedlenhdsclass.md) | 78 | `declaration-track:7cc2a10e586dfac268b3b1434e53f392bd359685b1a95316a2c3ac019ee1f0db` |
| 11 | `instance` | [Pi.instBoundedLENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/pi-instboundedlenhdsclass.md) | 85 | `declaration-track:406889d9a308b2c0e7684642d339414b79d1d431eec533292f244edbe057b1af` |
| 12 | `theorem` | [isBounded_ge_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/isbounded-ge-nhds.md) | 97 | `result-track:a6d5b97b9df623340af57811a9c299292a04497af890211fcb316bcada18e340` |
| 13 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-isboundedunder-ge.md) | 100 | `result-track:55bfdb6296737dbfe86d4c6d99cf412933844c068ea2c84a4e276c0eb3c35bb3` |
| 14 | `theorem` | [Filter.Tendsto.bddBelow_range_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-bddbelow-range-of-cofinite.md) | 103 | `result-track:d3e9226a3c5bee9f015dca375732d85a3fe2dd50fd53290027ca659699a94e49` |
| 15 | `theorem` | [Filter.Tendsto.bddBelow_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-bddbelow-range.md) | 107 | `result-track:ee7c08405d35ee6eeb99a41ed9830420ae33a73a9aaf1bced82b70a59a5cabdd` |
| 16 | `theorem` | [isCobounded_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/iscobounded-le-nhds.md) | 111 | `result-track:b6a8077e3da355b14b22b2ddcdb340e6d7372ea398558aeb5cb4acdf50299f4e` |
| 17 | `theorem` | [Filter.Tendsto.isCoboundedUnder_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-iscoboundedunder-le.md) | 114 | `result-track:96356289734b1fa84d770c4559fc8ef92ddb5ad364694493f55a70c1b5e24869` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:4b8e4f5232155c5456e5e3a8f2e8d365e05ed3e7a197b5db33c328b51465ed82` |
| 19 | `instance` | [Prod.instBoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/prod-instboundedgenhdsclass.md) | 120 | `declaration-track:4685be4fb12616f1626425dd8a92bb76612132dbb74100555933ef53e5d85e0e` |
| 20 | `instance` | [Pi.instBoundedGENhdsClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/pi-instboundedgenhdsclass.md) | 123 | `declaration-track:789408a52bfd961dea33b7f7282b2e084623748e998c4bed318806b6ee382ece` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance.md) | 130 | `declaration-track:1b37f3f2b6dc025df933e46529e9b83551406731dade1a20ecb6186d3b941325` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:b0b2424004a7f9696b338c98fd3aa325a79afed83a575846b9c7b51beeee849f` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance-source-edition-6.md) | 140 | `declaration-track:ddb50964e9385c1444344e225dc682fd1cdc70599a0e7aa49917b82b1b7fab7b` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/instance-source-edition-5.md) | 146 | `declaration-track:b48b3f39a4d5460a839fdc35dbab6847e944b5baf32e6b69ca03994694e2bbb6` |
| 25 | `theorem` | [le_nhds_of_limsSup_eq_limsInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/le-nhds-of-limssup-eq-limsinf.md) | 158 | `result-track:8ec058994f1270329f4122d159b819e6d226b2f54be72c9c01a11cd21b1f76fc` |
| 26 | `theorem` | [limsSup_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limssup-nhds.md) | 163 | `result-track:504dccddc30a52836da54480dda9520741d17c1279606321a5171a7c0191a033` |
| 27 | `theorem` | [limsInf_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsinf-nhds.md) | 172 | `result-track:f0d7fe9e1893631417caffe15a43dc14da4463fa5391d03cc475a92c94eb2760` |
| 28 | `theorem` | [limsInf_eq_of_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsinf-eq-of-le-nhds.md) | 176 | `result-track:5233c2086d5e453314ad2f06370d625ffa9355f1abc814c0e380007a1ee33c92` |
| 29 | `theorem` | [limsSup_eq_of_le_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limssup-eq-of-le-nhds.md) | 189 | `result-track:0e8702b0068f7be48e8de30c610caeff890e1d2e154c6f7c667a0b735bcd9d99` |
| 30 | `theorem` | [Filter.Tendsto.limsup_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-limsup-eq.md) | 193 | `result-track:db9344e718a686fcec7be06fdbc5dfa28275bb34957ae1847756b5d3dc7adce0` |
| 31 | `theorem` | [Filter.Tendsto.liminf_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/filter-tendsto-liminf-eq.md) | 198 | `result-track:ce705dbbfdd7d9f9f0b7cbdf36ef31207c4fc012c3fe598b5586bea70245d139` |
| 32 | `theorem` | [tendsto_of_liminf_eq_limsup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/tendsto-of-liminf-eq-limsup.md) | 204 | `result-track:40f04f5363ba98fc60328363b296d2dc783e54a613acec0c6b2308dd0281d76b` |
| 33 | `theorem` | [tendsto_of_le_liminf_of_limsup_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/tendsto-of-le-liminf-of-limsup-le.md) | 211 | `result-track:93bcfc123d363bec36dd4ef537798a1ab1eb07f3b5db1aa56bd4503e1dbfc45c` |
| 34 | `theorem` | [tendsto_of_no_upcrossings](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/tendsto-of-no-upcrossings.md) | 223 | `result-track:6d72ca426e6e62655090567f9e4b317f139f813743593d516fbda532641dbfa4` |
| 35 | `theorem` | [eventually_le_limsup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/eventually-le-limsup.md) | 244 | `result-track:34055c7c589ec51099097f4e79e5646b2972024b1f3885ab2712cda4a4fee17b` |
| 36 | `theorem` | [eventually_liminf_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/eventually-liminf-le.md) | 262 | `result-track:a4807c04b95d31233c011d9a21f5a02763e4345d12eec156f0fa9fb20cea27bd` |
| 37 | `theorem` | [limsup_eq_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-eq-bot.md) | 274 | `result-track:0fdf830b1ab099c16bed4259026019e3f10c260451675e30cba75939054858fe` |
| 38 | `theorem` | [liminf_eq_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-eq-top.md) | 283 | `result-track:85ddb384be3d9374ab141a735a423bdad4b39200cdc344c142d95aab3a621a21` |
| 39 | `theorem` | [Antitone.map_limsSup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/antitone-map-limssup-of-continuousat.md) | 299 | `result-track:eed5bc439e99305e64ac638cb94b534e8287237ccafb37126a7e0eae558057f7` |
| 40 | `theorem` | [Antitone.map_limsup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/antitone-map-limsup-of-continuousat.md) | 350 | `result-track:bbdfef4a997dc20f3d3e3803402ccf07553d2225adc2bdd6a867b36ed9478770` |
| 41 | `theorem` | [Antitone.map_limsInf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/antitone-map-limsinf-of-continuousat.md) | 360 | `result-track:7eead8c4d0a5c1ed07afaa87db19239af864566ccea790fe7bcf3c2a062b27e5` |
| 42 | `theorem` | [Antitone.map_liminf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/antitone-map-liminf-of-continuousat.md) | 369 | `result-track:e1772db692fbcec88f85a0e289f8da608c798d142608b2e993ca937f94da0ea5` |
| 43 | `theorem` | [Monotone.map_limsSup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/monotone-map-limssup-of-continuousat.md) | 379 | `result-track:546cf75db1577e0b3ad43be81edfda2c4767e0ddaaba401050522e40b2bd965f` |
| 44 | `theorem` | [Monotone.map_limsup_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/monotone-map-limsup-of-continuousat.md) | 388 | `result-track:f98ba439339e51adf3f0108139b31f3a2d0bd9ba9d7ab9101147e6cd0995f7ae` |
| 45 | `theorem` | [Monotone.map_limsInf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/monotone-map-limsinf-of-continuousat.md) | 398 | `result-track:df5af01e8b61a1c9d91d6ab064a420aa70f6fc9534c79ba4775c1c16e3b7454e` |
| 46 | `theorem` | [Monotone.map_liminf_of_continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/monotone-map-liminf-of-continuousat.md) | 407 | `result-track:d817e19afd2b8465e12eeafb1a40516bd934367f495d6bd5425e17df019f16b6` |
| 47 | `lemma` | [le_limsup_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/le-limsup-add.md) | 422 | `result-track:e6b8c3f37ccf4ca414570ef0bdaf08b26b64bd0e8f5806dcf51761b45543ecde` |
| 48 | `lemma` | [limsup_add_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-add-le.md) | 435 | `result-track:7b49551e8287d9e577ab6e64d02f5cfd3457fb8e638c4c9ecffd28e95ac32f43` |
| 49 | `lemma` | [le_liminf_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/le-liminf-add.md) | 448 | `result-track:ebe36e82148dd1c1f86ce9a939271469846d8f7363da8203e3d73e81ab45fde5` |
| 50 | `lemma` | [liminf_add_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-add-le.md) | 461 | `result-track:b87b9241f8a28c1968ad814f481950c82909f4b052e9e8a5fb201cc927231adf` |
| 51 | `lemma` | [le_limsup_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/le-limsup-mul.md) | 481 | `result-track:ff5d61410b0865eb3d583d249953106003df67261f752c38b0d9b9a318246d67` |
| 52 | `lemma` | [limsup_mul_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-mul-le.md) | 498 | `result-track:349b75a881d344e5f6b2cb99dd124c867700c2e65e116e2b0cabd4c299ae66c3` |
| 53 | `lemma` | [le_liminf_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/le-liminf-mul.md) | 513 | `result-track:3bbc24d698023c79ce20bbc258cff7695786cbcf41b8504b03578657a4b674c5` |
| 54 | `lemma` | [liminf_mul_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-mul-le.md) | 527 | `result-track:b2f6294b5f3e9b3c9368c8bad1caa0b573b6a4f23702d8dc73433f4bee36b749` |
| 55 | `lemma` | [limsup_const_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-const-add.md) | 543 | `result-track:5a07646059f6f22f611c72e9a4d730e70c1bce749a0dc07751a8f921dc74a76c` |
| 56 | `lemma` | [limsup_add_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-add-const.md) | 551 | `result-track:f72d53dea83cb154f78d44676aa41d58ca4c8a4983b3d1066ca76d444deefd41` |
| 57 | `lemma` | [liminf_const_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-const-add.md) | 559 | `result-track:d34515e01d5dc79922d13b438bad67173ae051b413bf736985ca3e811ac95a8f` |
| 58 | `lemma` | [liminf_add_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-add-const.md) | 567 | `result-track:a80a158ae9ec37202fc98f366c0d8d569bba2ead6745e8cd0f0874e7fd535a29` |
| 59 | `lemma` | [limsup_const_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-const-sub.md) | 575 | `result-track:edffc38ab1452cd4168d062b51f3ebc4c77bf8cf8c8bd79549b160ea839cfb81` |
| 60 | `lemma` | [limsup_sub_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/limsup-sub-const.md) | 594 | `result-track:c735ce188b6a49dcb829d05ce74eddd752e702f4b1e44cb4ab59d2c63e2a3068` |
| 61 | `lemma` | [liminf_const_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-const-sub.md) | 612 | `result-track:df3aad01da7fe21973cbcfe1e588a9a5b9b791f5d6721e629c1d0d71fff8b2ab` |
| 62 | `lemma` | [liminf_sub_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedBoundedLENhdsClass.lean/declarations/liminf-sub-const.md) | 620 | `result-track:aa1214d5e131945caec755178392a2b8a5d01d09891853ddbf22d17e5d16f1cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08cde4682cdddb79101d055a10d49b4e5991dbced40255f95f03786f152584f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
