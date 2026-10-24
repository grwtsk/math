# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b322c48855245e5abb8604e6a95cab9c178c9d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b322c48855245e5abb8604e6a95cab9c178c9d`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_atTop_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/prod-attop-attop-eq--cb793bec0b67ba9cc7a0f756.md) | 28 | `result-track:cb793bec0b67ba9cc7a0f756d3b23552f105248870286574b41058a72bd589fa` |
| 2 | `lemma` | [tendsto_finset_prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-finset-prod-attop--f81a756096ee4afbb4b9ff98.md) | 36 | `result-track:f81a756096ee4afbb4b9ff98ced26abbaeab951f54461869b9dd539c3daa1154` |
| 3 | `theorem` | [prod_atBot_atBot_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/prod-atbot-atbot-eq--d6b3b01d65b29b13477fa5f8.md) | 46 | `result-track:d6b3b01d65b29b13477fa5f847cab63fc1a2cbefeb8ccc06129e09d959e418e8` |
| 4 | `theorem` | [prod_map_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/prod-map-attop-eq--0aa7c9761900bd52cc34ae2c.md) | 50 | `result-track:0aa7c9761900bd52cc34ae2c4288ab3bc0543878b3e4fe2c29262280d5ea61da` |
| 5 | `theorem` | [prod_map_atBot_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/prod-map-atbot-eq--32bf5f5b9e365e98ddda6fe8.md) | 54 | `result-track:32bf5f5b9e365e98ddda6fe8354c6050ac1f98ff6f1aa52a452a6c8dae337a95` |
| 6 | `theorem` | [tendsto_atBot_diagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-atbot-diagonal--a55b6b4f69e9ba584b352b4a.md) | 58 | `result-track:a55b6b4f69e9ba584b352b4aa7a93e0268c998d84fb350bd5bd79056663e8e95` |
| 7 | `theorem` | [tendsto_atTop_diagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-attop-diagonal--c231136406f4343378ec944e.md) | 62 | `result-track:c231136406f4343378ec944e87f570a1265083a4772400248cd3b483be32d172` |
| 8 | `theorem` | [Tendsto.prod_map_prod_atBot](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-prod-map-prod-atbot--2cb488911ae02671e562c25b.md) | 66 | `result-track:2cb488911ae02671e562c25b591fbca4daf9a65912c03b5ac1b06f47e82deecf` |
| 9 | `theorem` | [Tendsto.prod_map_prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-prod-map-prod-attop--bff672b660dea3c556de87bb.md) | 72 | `result-track:bff672b660dea3c556de87bbc2900dd5bbbb634bdb2cea31317e07211567ae24` |
| 10 | `theorem` | [Tendsto.prod_atBot](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-prod-atbot--2150afa13d821134c500e55c.md) | 78 | `result-track:2150afa13d821134c500e55cd477f44c72ea07575d5e31385d73f2c31183da67` |
| 11 | `theorem` | [Tendsto.prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/tendsto-prod-attop--f07463cc5f9e95d59a316cdd.md) | 84 | `result-track:f07463cc5f9e95d59a316cddffca1360753f5d0acfe8e769ba91bd1f07266a90` |
| 12 | `theorem` | [eventually_atBot_prod_self](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-atbot-prod-self--812c1ba9f155b94da70d1db6.md) | 90 | `result-track:812c1ba9f155b94da70d1db62f6418a5bce6057938f444cb64482c5284ee69a8` |
| 13 | `theorem` | [eventually_atTop_prod_self](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-attop-prod-self--35f3c71ce6a1629bb1cba980.md) | 94 | `result-track:35f3c71ce6a1629bb1cba980e29456b829ad3f2b7197eabbfb210b078f7c164d` |
| 14 | `theorem` | [eventually_atBot_prod_self'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-atbot-prod-self--954a9f026040ba9231b1a579.md) | 98 | `result-track:954a9f026040ba9231b1a579b8d6261f8d69678ce56e480a551c59a09fce9fb4` |
| 15 | `theorem` | [eventually_atTop_prod_self'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-attop-prod-self--9637e150facd14b8dbd9cb00.md) | 102 | `result-track:9637e150facd14b8dbd9cb000e286b4c68cb2fb15aabb85c52fb8e4d1177695f` |
| 16 | `theorem` | [eventually_atTop_curry](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-attop-curry--e5338546e8cb4c10014e2eef.md) | 106 | `result-track:e5338546e8cb4c10014e2eef1f053887506b1aa4fce138f7bfad358756faae64` |
| 17 | `theorem` | [eventually_atBot_curry](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/declarations/eventually-atbot-curry--107de3758c88dfab13a286bd.md) | 111 | `result-track:107de3758c88dfab13a286bdb60ecea9ce91280bff693ac5b81a6b1a94afe580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
