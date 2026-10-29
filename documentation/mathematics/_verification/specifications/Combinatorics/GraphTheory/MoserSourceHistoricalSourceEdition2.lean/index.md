# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.MoserSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8a0080ceaa5d38b125c12baa25000afe585095c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8a0080ceaa5d38b125c12baa25000afe585095c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moserA](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/mosera.md) | 20 | `declaration-track:1641109f5624f06505b43abd57ca998dfc9bfa8a4a86bf17fc98529ccf06e7b9` |
| 2 | `def` | [moserB](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserb.md) | 21 | `declaration-track:fb479054538a249f6ad1440b420af3e2ca40e669f8b2960541d1bf6b35491e89` |
| 3 | `def` | [moserT](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/mosert.md) | 22 | `declaration-track:171867d7c86b674f7fbe720149ef1e9c30ada69899a8f8b09dee35a9efc2c9a8` |
| 4 | `def` | [moserU](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moseru.md) | 23 | `declaration-track:1bb84fdae35d3661b4bf61299099f2e79d712f81494d734944a96bf5cb180325` |
| 5 | `def` | [moserPoint](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint.md) | 24 | `declaration-track:2b5352179b388fd8928b15b8d2d4023cc6b1d33253e1941b6d5d9286826a8491` |
| 6 | `lemma` | [moserPoint_0](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-0.md) | 25 | `result-track:dd63b4195d3a9d87bedcb34b2ac0f792012b95c2d708eb9afbf7b2f53b541463` |
| 7 | `lemma` | [moserPoint_1](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-1.md) | 26 | `result-track:623e8c25bd03117544999978b09f580b14c71621795ab229e53e4ad1ea40d444` |
| 8 | `lemma` | [moserPoint_2](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-2.md) | 27 | `result-track:20c9ad0df37ded698b17b398bda0f36a2f8f5940a6a46bf7fc2f445da71636a7` |
| 9 | `lemma` | [moserPoint_3](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-3.md) | 28 | `result-track:14b9aa10fdf84be55f521c72b83c7576af2f32a4b6487a1f9e727b2e15cd6596` |
| 10 | `lemma` | [moserPoint_4](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-4.md) | 29 | `result-track:8338998505239ded53fadf96b56113ed3b96349d052eb00bbb6a54d1acba7fbd` |
| 11 | `lemma` | [moserPoint_5](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-5.md) | 30 | `result-track:ff698d8b250eabf2271d29a567a21bc500a88e368ab41ffdc96d557c97731d58` |
| 12 | `lemma` | [moserPoint_6](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moserpoint-6.md) | 31 | `result-track:5992bc685a07358b151d32f3f4bdd1ce3fc6867c0ca959b1894e3fce9e4b34da` |
| 13 | `def` | [moserEdges](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moseredges.md) | 32 | `declaration-track:8cecd49d4738d6e333ca851121e739483c0f3df344753d347e11437b5d82388b` |
| 14 | `lemma` | [complex_norm_one_of_sq](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/complex-norm-one-of-sq.md) | 34 | `result-track:1861fd4f6039f35a64161cefae928dfa3b78c49ea916e5cd038af0bd296a4689` |
| 15 | `lemma` | [moser_edge_unit](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moser-edge-unit.md) | 37 | `result-track:318889ba87cbde312d7aace63679941241f59371b3b5cc1bfc149b649aacc0e3` |
| 16 | `lemma` | [three_color_diamond](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/three-color-diamond.md) | 48 | `result-track:6c859f1ee9815dc95be65913070eef669d87ed7c01ca1977a0a0338bd4f84f31` |
| 17 | `lemma` | [moser_not_three_colorable](../../../../../Combinatorics/GraphTheory/MoserSourceHistoricalSourceEdition2.lean/declarations/moser-not-three-colorable.md) | 51 | `result-track:dad50977512e929a8667699b219dc4cafa20a33974716024b0d2d4aad7c6fb8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e13257fceb8454a268dc4a4d2d5ec93f2d6a5387d9ea8d32f175bd0c30689d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence07210c6967e07b4261e32397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
