# Verification target: Relaxation Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d6f3dd1b8964cbf1f6cc606c43bfef75195e51e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelaxationTopology/Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d6f3dd1b8964cbf1f6cc606c43bfef75195e51e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelaxationTopology/Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelaxationTopology/Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.PascalTree.RicciObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.AffineTopos.Modality` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrixFlow.Averaging` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelaxedSymmetryAverage](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/relaxedsymmetryaverage.md) | 10 | `declaration-track:34b34ab783f05cb19067baba9cbaf165fe00df2aa8d999e4f1c0d772ee0244c6` |
| 2 | `structure` | [ComparisonNeighborhood](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/comparisonneighborhood.md) | 19 | `declaration-track:8c9335cc6d95f2e94e222a328347e5e6389425ea16085187d8aab78e5ab8810e` |
| 3 | `structure` | [RelaxedSymmetryTopology](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/relaxedsymmetrytopology.md) | 25 | `declaration-track:3f8f5c3116a84926fa9c9c70ddb4ec2bbd602a1d8bcfa2f158d3e6e536d22ab1` |
| 4 | `structure` | [GeneralizedPascalTreeReducerPipeline](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/generalizedpascaltreereducerpipeline.md) | 31 | `declaration-track:bff48e6f1ee0082ba17c20f4f79caeebe1c93bc6519eac2fe334b6e3ccdaed14` |
| 5 | `theorem` | [relaxedSymmetryAverage_not_flow_without_certificate](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/relaxedsymmetryaverage-not-flow-without-certificate.md) | 44 | `result-track:1f8da7eafeb3d1b28de6afd2a78e33caea4bcefffe1d1f6a739cc1d762ab816b` |
| 6 | `theorem` | [relaxationTopology_supports_comparison](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/relaxationtopology-supports-comparison.md) | 49 | `result-track:14c9bcf8489ba054031a8e967476445d17de9b598159934dd94596707d41d9f0` |
| 7 | `theorem` | [reducerPipeline_arrows_have_boundaries](../../../../../ComputerScience/AlgorithmsInComputerScience/RelaxationTopology.lean/declarations/reducerpipeline-arrows-have-boundaries.md) | 55 | `result-track:7457fa24c7d1fb06af52243afc8435801fea30a2a7042a24044be5a4c5fe90c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54e35ea6023e808bf0a3c376a6a837041b2e85d274066bb1e58cb1ca9f4a3bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelaxationTopology/Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelaxationTopology/Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
