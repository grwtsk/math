# Verification target: GRWTSK.Topology.GeneralTopology.ThickenedIndicator.Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00c921650d72ad4f6e52b200baca6915ed80fde7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00c921650d72ad4f6e52b200baca6915ed80fde7`.

Source path: `GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux--c8852bea1ca26ebe2dd1f0b2.md) | 62 | `declaration-track:c8852bea1ca26ebe2dd1f0b2bf9e3b830960974505674cf462b9c25fa2165384` |
| 2 | `theorem` | [continuous_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/continuous-thickenedindicatoraux--57b8af3230eb1cf4078a6b5e.md) | 66 | `result-track:57b8af3230eb1cf4078a6b5eac08181431de994685e302e2a8819d1ddadb22e9` |
| 3 | `theorem` | [thickenedIndicatorAux_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-le-one--7ae4c69724d3c7de326b16ce.md) | 77 | `result-track:7ae4c69724d3c7de326b16ceca09f72b91bb3e01688461972f3c63d797817469` |
| 4 | `theorem` | [thickenedIndicatorAux_lt_top](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-lt-top--c0c52e8a2578d6bed9883f95.md) | 82 | `result-track:c0c52e8a2578d6bed9883f951a7faa0fd26c680af7efacf41eb9e79953f739cb` |
| 5 | `theorem` | [thickenedIndicatorAux_closure_eq](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-closure-eq--cf6772f8d8fed2c30d521568.md) | 87 | `result-track:cf6772f8d8fed2c30d521568f8f076357bb499e6858613d8646c62707db813de` |
| 6 | `theorem` | [thickenedIndicatorAux_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-one--0c79f82bc6f3e6284ed66fb7.md) | 92 | `result-track:0c79f82bc6f3e6284ed66fb72ef50cf8b14d755528b971e214c120d9992c060e` |
| 7 | `theorem` | [thickenedIndicatorAux_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-one-of-mem-closure--af31edd5aabd28104c946e15.md) | 97 | `result-track:af31edd5aabd28104c946e155649953be9f1042abc1b644ddcc11fca9320524b` |
| 8 | `theorem` | [thickenedIndicatorAux_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-zero--5a7463a86d783bf93cb0a0c4.md) | 102 | `result-track:5a7463a86d783bf93cb0a0c489a9058a51a3f594eeb04bded76cc498094649f2` |
| 9 | `theorem` | [thickenedIndicatorAux_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-mono--2f478419d6ebe667537508d5.md) | 113 | `result-track:2f478419d6ebe667537508d5850d55fdc264a467027928f7285d08204267e874` |
| 10 | `theorem` | [indicator_le_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/indicator-le-thickenedindicatoraux--5d0919467b4437c969e06754.md) | 118 | `result-track:5d0919467b4437c969e067548ab4c177b550260e0b6d0ea8372806550593155a` |
| 11 | `theorem` | [thickenedIndicatorAux_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-subset--3a6430c4534a16cec5d73321.md) | 126 | `result-track:3a6430c4534a16cec5d733219d134fc79c7284a238fa7586ca4405c0673c94e9` |
| 12 | `theorem` | [thickenedIndicatorAux_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicatoraux-tendsto-indicator-closure--cb21938e8f7ab4329e1b570b.md) | 138 | `result-track:cb21938e8f7ab4329e1b570bc0e113f16db9bf13fbc2194f1736bad6154f73a8` |
| 13 | `def` | [thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator--26521511d0f6b71100dfbf49.md) | 171 | `declaration-track:26521511d0f6b71100dfbf49501c25fb942d6d83f8209421d0bcca2a46912364` |
| 14 | `theorem` | [thickenedIndicator.coeFn_eq_comp](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-coefn-eq-comp--13f30aa537f2ef4c2eca0c05.md) | 190 | `result-track:13f30aa537f2ef4c2eca0c05de38e250fcb64155858325ad2497d02d6d516403` |
| 15 | `theorem` | [thickenedIndicator_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-le-one--f44f161f28f263917df6ee42.md) | 195 | `result-track:f44f161f28f263917df6ee422a78301beb3eb4a8b9d1b342977c3e0c030bbb54` |
| 16 | `theorem` | [thickenedIndicator_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-one-of-mem-closure--416cade36410ea4157835a82.md) | 202 | `result-track:416cade36410ea4157835a82fec8b1dc35991ee19b279d0970610b6a5f42e00f` |
| 17 | `theorem` | [thickenedIndicator_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-one--260269a0c03e03395264754e.md) | 207 | `result-track:260269a0c03e03395264754e645da14eac057c49be245f71931b0d0e2e7f3459` |
| 18 | `theorem` | [thickenedIndicator_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-zero--a0e5ade2b1c430e8b45c30f3.md) | 212 | `result-track:a0e5ade2b1c430e8b45c30f35560bc31db443b1f7fa212c1997ca0f1e41d0408` |
| 19 | `theorem` | [indicator_le_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/indicator-le-thickenedindicator--99ab8acbde3f627f0b9fb8bc.md) | 217 | `result-track:99ab8acbde3f627f0b9fb8bc86e7eed168e0ccf45101995f29d74d7e4ccc9e8e` |
| 20 | `theorem` | [thickenedIndicator_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-mono--91dc5301d2635ef66da30ad5.md) | 225 | `result-track:91dc5301d2635ef66da30ad50890da8838873208da912d36e0bf18a32016e2a3` |
| 21 | `theorem` | [thickenedIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-subset--c178c198601734b5c099c908.md) | 232 | `result-track:c178c198601734b5c099c90801398a385863ab35d3d8cad3a10a52c20638cb8b` |
| 22 | `theorem` | [thickenedIndicator_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/thickenedindicator-tendsto-indicator-closure--c7c43450fa06755a96f63ad9.md) | 244 | `result-track:c7c43450fa06755a96f63ad947f2792f6c018b7c33a1c9520ffb466733bec6d0` |
| 23 | `lemma` | [mulIndicator_thickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/mulindicator-thickening-eventually-eq-mulindicator-closure--13f6a69c6dcfd82f6b6cb01e.md) | 268 | `result-track:13f6a69c6dcfd82f6b6cb01e087d01d8e0e6711dd272067abefbb8f588c59c57` |
| 24 | `lemma` | [mulIndicator_cthickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/mulindicator-cthickening-eventually-eq-mulindicator-closure--f329a26c28797cccda4bfeea.md) | 283 | `result-track:f329a26c28797cccda4bfeea8709f4a2cc59e17518c576a4cdad37fd1d799ac7` |
| 25 | `lemma` | [tendsto_mulIndicator_thickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/tendsto-mulindicator-thickening-mulindicator-closure--35cae2ac422a6d4e203c4f99.md) | 299 | `result-track:35cae2ac422a6d4e203c4f99e1ec4764451852d506594c9ca9a031b9e8bd58ce` |
| 26 | `lemma` | [tendsto_mulIndicator_cthickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/declarations/tendsto-mulindicator-cthickening-mulindicator-closure--528fa0043a3aeb3844e9c9ab.md) | 311 | `result-track:528fa0043a3aeb3844e9c9ab708ac9fcb570882ac546380c96001888e6a627c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
