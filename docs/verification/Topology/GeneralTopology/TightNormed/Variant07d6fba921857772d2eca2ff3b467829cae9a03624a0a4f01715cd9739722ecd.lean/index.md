# Verification target: GRWTSK.Topology.GeneralTopology.TightNormed.Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e5f4b4604428c3b375f9784f22b954abfe81d8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e5f4b4604428c3b375f9784f22b954abfe81d8`.

Source path: `GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Tight` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompletePartialOrder` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_measure_compl_closedBall_of_isTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/tendsto-measure-compl-closedball-of-istightmeasureset--ea1b84b45c39acfd5c5967b5.md) | 37 | `result-track:ea1b84b45c39acfd5c5967b55d33b88f45bd39d3791c5630184e656d4bead746` |
| 2 | `lemma` | [isTightMeasureSet_of_tendsto_measure_compl_closedBall](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-of-tendsto-measure-compl-closedball--8067c04c632943b9217ba726.md) | 45 | `result-track:8067c04c632943b9217ba72604ce58bac94faa47fe8805d5660cdeeffc87a768` |
| 3 | `lemma` | [isTightMeasureSet_iff_tendsto_measure_compl_closedBall](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-iff-tendsto-measure-compl-closedball--b065939388dd0507e5bbf8d4.md) | 55 | `result-track:b065939388dd0507e5bbf8d49215554ff5378e9e3c072e90d9101c6d24223af2` |
| 4 | `lemma` | [tendsto_measure_norm_gt_of_isTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/tendsto-measure-norm-gt-of-istightmeasureset--a6358ef7f6cdda52b1c4b79a.md) | 66 | `result-track:a6358ef7f6cdda52b1c4b79a015e039b25d18c88a975856cf511fbb84120109c` |
| 5 | `lemma` | [isTightMeasureSet_of_tendsto_measure_norm_gt](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-of-tendsto-measure-norm-gt--9c4e47f1cc09417b29b9b6e6.md) | 73 | `result-track:9c4e47f1cc09417b29b9b6e66cbad6d1e5cc422025af66f9fc3199bf20e5e11f` |
| 6 | `lemma` | [isTightMeasureSet_iff_tendsto_measure_norm_gt](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-iff-tendsto-measure-norm-gt--8e71f37e30a31086c8cc0720.md) | 83 | `result-track:8e71f37e30a31086c8cc0720131cb35d55b2162325f3fe715c1f3d5f1ea9edb9` |
| 7 | `lemma` | [isTightMeasureSet_of_forall_basis_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-of-forall-basis-tendsto--d1bbaa83f9c50b9e23531fe8.md) | 91 | `result-track:d1bbaa83f9c50b9e23531fe8ffeef93626417361cbe9ac64a93667f096db3965` |
| 8 | `lemma` | [isTightMeasureSet_of_inner_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-of-inner-tendsto--863b2c1c1260d8e004d9e5a7.md) | 128 | `result-track:863b2c1c1260d8e004d9e5a7409f11ff983a27acff2a70d37a71caf5b7b25f34` |
| 9 | `lemma` | [isTightMeasureSet_iff_inner_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/declarations/istightmeasureset-iff-inner-tendsto--edbef29041bfe3886e0094bd.md) | 138 | `result-track:edbef29041bfe3886e0094bdf856517248b4c03900de5e2304cb195a714ede24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
