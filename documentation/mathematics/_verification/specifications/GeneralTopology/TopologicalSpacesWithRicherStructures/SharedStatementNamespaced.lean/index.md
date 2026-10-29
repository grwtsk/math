# Verification target: Shared Statement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44edc4163e976ed91371f28b5870131ed4bc5137",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44edc4163e976ed91371f28b5870131ed4bc5137`.

Source path: `GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedComplexRectangle](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/orderedcomplexrectangle.md) | 26 | `declaration-track:86d75d144a128ac9df0f0d740dbf4ddccf1ec228cdd084528784203e6b177f4e` |
| 2 | `def` | [closed](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/closed.md) | 35 | `declaration-track:db83e750d6538f41343dc556f0b18fb8028ba0ac96d23191314154fc49872f06` |
| 3 | `def` | [openRect](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/openrect.md) | 39 | `declaration-track:063620673b62501c49910347c5d4ba3ce7ab275b67c3365dd81c1519697bb0e4` |
| 4 | `structure` | [SingleHoleConfiguration](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/singleholeconfiguration.md) | 45 | `declaration-track:4fb4f6c28841d91035a47bc92d52e64705797f6209b95df667dfc00c7f5de2f4` |
| 5 | `def` | [closedRegion](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/closedregion.md) | 56 | `declaration-track:0d74f6a2207232a78bcd205da3a687190c0693a7decff54ede958c16b19c5a15` |
| 6 | `def` | [openRegion](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/openregion.md) | 60 | `declaration-track:672d17d9765ee9bf8f0e655ecdec31c057c15c9718150861ff90bd0b853a986d` |
| 7 | `def` | [singleHoleBoundaryIntegral](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/singleholeboundaryintegral.md) | 68 | `declaration-track:90957ae02a3599009935fa82fb6abb1e849010151df710160b9ee166e60e6485` |
| 8 | `def` | [SingleHoleExcisionStatement](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/singleholeexcisionstatement.md) | 76 | `declaration-track:2c9313f8ef446f5762b5cee0c2b1dbcd1bc66ff9a1dbc593421fed2f85399f9a` |
| 9 | `example` | [(anonymous)](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/SharedStatementNamespaced.lean/declarations/example.md) | 87 | `declaration-track:0ba1b68a36734f26ffd96f7f9bd1bcb9d6232331d58e09ab6ee64b5795cf4c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f0673901f402b4bf556a248569c34bb5868472f81e90897545ffa31dfd3f265 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
