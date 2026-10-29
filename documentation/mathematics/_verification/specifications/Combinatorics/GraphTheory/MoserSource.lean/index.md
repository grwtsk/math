# Verification target: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8a0080ceaa5d38b125c12baa25000afe585095c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/MoserSource.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/MoserSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8a0080ceaa5d38b125c12baa25000afe585095c`.

Source path: `GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/UnitDistanceGraph/MoserSource.lean.json)

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
| 1 | `def` | [moserA](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/mosera.md) | 20 | `declaration-track:2354581082b4928c12232e53e0ce2e55dc75eeb9b7d927acf06ab3d9e003a7d7` |
| 2 | `def` | [moserB](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserb.md) | 21 | `declaration-track:90a8a52434013aa8f7980f1d6941cc87b17fcb4eb4130399482d50be7f7a1ec2` |
| 3 | `def` | [moserT](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/mosert.md) | 22 | `declaration-track:fcc8c0a960fa2dc8a0dac2be85a632a9e8df50f52971e84791b748299a7aa728` |
| 4 | `def` | [moserU](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moseru.md) | 23 | `declaration-track:0cd7d50689365fd06b1ce8ec49bab1f4a310638adecb5a8e8cc87ebff82bd84f` |
| 5 | `def` | [moserPoint](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint.md) | 24 | `declaration-track:4143bd1c366d2a59ea928a44f6ef1b1cdfa11c25304ba9fe026abd9eacc06c8b` |
| 6 | `lemma` | [moserPoint_0](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-0.md) | 25 | `result-track:c84f6058f13e8381b945741245f80277b1315fd0e8da75d4eea4c04ab163d735` |
| 7 | `lemma` | [moserPoint_1](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-1.md) | 26 | `result-track:e0fcb3d20f056c6d37fb082e034fc5de29f5abea0a36d0f3fe08b76c358617db` |
| 8 | `lemma` | [moserPoint_2](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-2.md) | 27 | `result-track:6af0e2bcf0a9121b3dc2f0183c99afe0a9e4f68554c7396b2c76f015ecad5446` |
| 9 | `lemma` | [moserPoint_3](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-3.md) | 28 | `result-track:adddc67032d6b463ed2bbe54d8e981f569cddd4aa350b5cc0ea798c4876c739c` |
| 10 | `lemma` | [moserPoint_4](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-4.md) | 29 | `result-track:8c746435b4381490321ca474962b5b199d7a030c742ffbe8b79441c5d2deb9f0` |
| 11 | `lemma` | [moserPoint_5](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-5.md) | 30 | `result-track:9b62b80fd14207d007b9098a3d1b327e399d30b099f9e47508589dfbce53b22b` |
| 12 | `lemma` | [moserPoint_6](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moserpoint-6.md) | 31 | `result-track:7151e53a0e32f4cbd3bc908ec0dd981eb624272c7123d3e58aed1c97d0d50e2e` |
| 13 | `def` | [moserEdges](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moseredges.md) | 32 | `declaration-track:0ce94eb50d368d48db62470f3ed54305e70b12e7af4945b2f6164f9241012eae` |
| 14 | `lemma` | [complex_norm_one_of_sq](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/complex-norm-one-of-sq.md) | 34 | `result-track:09123bec7f9ae15b7f093f42964b5c1685f51413e11a45c96b7575c432b539f7` |
| 15 | `lemma` | [moser_edge_unit](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moser-edge-unit.md) | 37 | `result-track:90f7ad2d346de9940ae23392f31f5de44cd2894bd937c2bddb3898442bb43ceb` |
| 16 | `lemma` | [three_color_diamond](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/three-color-diamond.md) | 48 | `result-track:b02c1da25d8e22549311182d35e7451185b8a41020b487981f2d7a0e9dbd7d60` |
| 17 | `lemma` | [moser_not_three_colorable](../../../../../Combinatorics/GraphTheory/MoserSource.lean/declarations/moser-not-three-colorable.md) | 51 | `result-track:09eca154ca8197130084564c46625dc71aab03607f8998b6f4301e1962905d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fce7c995fee5de334556e2ecb83fc741b8eebccf79ef8b7c9425253cf1b3630 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserSource.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence06da90f8c8c057c6c0e8ffb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
