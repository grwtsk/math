# Verification target: Polar Circle Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70ed3be19de2018ea25a45ba2a4b9116d85e2b03",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70ed3be19de2018ea25a45ba2a4b9116d85e2b03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.EpsilonRelaxation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OneDimensionalPolarBase](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/onedimensionalpolarbase.md) | 15 | `declaration-track:8250466cb72afadb8dddfce1662569eac6ce25110bf4e6b6fac8d029fafa2fd7` |
| 2 | `def` | [mkOneDimensionalPolarBase](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/mkonedimensionalpolarbase.md) | 42 | `declaration-track:a69126e4f7215da957b0f81ab9b3d125399f476185e53cc36fb0f3a225a968fb` |
| 3 | `theorem` | [oneDimensional_base_split_symmetric](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/onedimensional-base-split-symmetric.md) | 71 | `result-track:b8cd5b95d2845a56515b766ef071c01f30f4c624eccb37235c14098a4ee5903f` |
| 4 | `theorem` | [oneDimensional_base_inverse_is_1001](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/onedimensional-base-inverse-is-1001.md) | 76 | `result-track:77ebe1149583412ceacdd792d57631ff2ad550e116394504166b8b288c9270d3` |
| 5 | `inductive` | [XorNaturalityMode](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/xornaturalitymode.md) | 81 | `declaration-track:2663ad86f0673355fc1fd29ef6793aee5bee2fa6504036874e478ce8d2ae212a` |
| 6 | `structure` | [PolarCircleSegment](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/polarcirclesegment.md) | 89 | `declaration-track:d7d828870176e17c6c612c2a8fcdb037ba65b89064e82c545eb72225af4ac408` |
| 7 | `def` | [mkSplitCircleSegment](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/mksplitcirclesegment.md) | 102 | `declaration-track:48bdf7a5d4056708f7ae8f260ee1ebd3f8ccbe50a7aa6e3cacf998b18c96b3f2` |
| 8 | `def` | [mkInverseCircleSegment](../../../../../ComputerScience/AlgorithmsInComputerScience/PolarCircleNamespaced.lean/declarations/mkinversecirclesegment.md) | 122 | `declaration-track:fe2aefd8cdcd9c18f761f86438a92463d44adbd907f4962e687ad5b2584c7858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14ca83b9ab36070cf70b5e6bd51778d29716448ec08dfa13d84a1f35c2aed250 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
