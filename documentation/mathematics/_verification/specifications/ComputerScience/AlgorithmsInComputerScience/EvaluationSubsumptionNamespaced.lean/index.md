# Verification target: Evaluation Subsumption Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9fb92534da64639f60e7e2d2dad9d6cff0f85fe",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvaluationSubsumption/Variantfd5aa791da40de74ca3a8e529b9c8d669a8825f4a8d3c0cf2735b51fde52694b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9fb92534da64639f60e7e2d2dad9d6cff0f85fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvaluationSubsumption/Variantfd5aa791da40de74ca3a8e529b9c8d669a8825f4a8d3c0cf2735b51fde52694b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvaluationSubsumption/Variantfd5aa791da40de74ca3a8e529b9c8d669a8825f4a8d3c0cf2735b51fde52694b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Formula.Corpus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Boolean.Formula.Evaluation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [link](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/link.md) | 24 | `declaration-track:db15310aa7a43ff04e41da3a1e22c1eb982edd5738fed7a7f4dd231294d75032` |
| 2 | `def` | [evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evaluation.md) | 49 | `declaration-track:99a59e82c805e45786f193883e8138424241cd47539aacd53acf9f0f9297abc1` |
| 3 | `def` | [evalVar](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalvar.md) | 54 | `declaration-track:6a2a6cf35a3e355e81af0b4495a3505c20f68006dc295c9e56a973dd29372e37` |
| 4 | `def` | [evalFalsum](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalfalsum.md) | 59 | `declaration-track:3f4484c8d1216db24fc6bcb7b62e67ecc434e8d44fa4d006e292634e75de7dbd` |
| 5 | `def` | [evalTruth](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evaltruth.md) | 64 | `declaration-track:984c23b7bb44cf34ce193b9787c3bba8312c3168e5bc68f6446f436e94ea12f0` |
| 6 | `def` | [evalNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalneg.md) | 69 | `declaration-track:b511fc44839c1700ae02565cfa9d0adbb625a36ca9cf9aa0f36a16d36bf48641` |
| 7 | `def` | [evalConj](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalconj.md) | 74 | `declaration-track:46d4096ea65a272a37c3eed49d328d5ab91f7afd92387dbbc9414c70095834cc` |
| 8 | `def` | [evalDisj](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evaldisj.md) | 79 | `declaration-track:528825051bd163fdc24d2f4336b191eb2c46f8532a088d962ee2ed92f8a85c9c` |
| 9 | `def` | [evalImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalimpl.md) | 84 | `declaration-track:f5bfabb7fb6e5560644b955a6079b54aa47b638365a214009c2b0800291eae0a` |
| 10 | `def` | [evalEqv](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evaleqv.md) | 89 | `declaration-track:6cfe8e81dfef2b34bbb787df86be58ad9b091541ce81ba76cb8530339097c1f7` |
| 11 | `def` | [evalConst](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalconst.md) | 94 | `declaration-track:cb9a466b48b01ff2ff2a95f7f0374b2f0b884b0f80c359c27f55f6da965d730c` |
| 12 | `def` | [evalCongr](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/evalcongr.md) | 99 | `declaration-track:a4db252d26576e52545a6871fe3bcbacc6063cb75e5e3a0a0e9061e61ecf2106` |
| 13 | `def` | [links](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/links.md) | 104 | `declaration-track:6a815bbccede5ef68b3176ddd3ad61dca7acfddce5614c4e7c0ad4f01aca63ac` |
| 14 | `theorem` | [links_length](../../../../../ComputerScience/AlgorithmsInComputerScience/EvaluationSubsumptionNamespaced.lean/declarations/links-length.md) | 118 | `result-track:4bfbb2c5b2db704a403eacd512b194224251cc64829b337bc91877d88ed9e044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0ec04f7da0492fecade2cf7a710ea6e08c070c3f214ee28138339c02de5786c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvaluationSubsumption/Variantfd5aa791da40de74ca3a8e529b9c8d669a8825f4a8d3c0cf2735b51fde52694b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvaluationSubsumption/Variantfd5aa791da40de74ca3a8e529b9c8d669a8825f4a8d3c0cf2735b51fde52694b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
