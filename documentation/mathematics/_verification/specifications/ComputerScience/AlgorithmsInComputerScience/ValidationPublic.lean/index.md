# Verification target: Validation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c19dae75307ac0e8f13b09e8912e2c3bd2bf4a0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c19dae75307ac0e8f13b09e8912e2c3bd2bf4a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ValidationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/validationrule.md) | 14 | `declaration-track:a0cc0c5894ffe5fe9b7ec0c48a71fc26de165b4efba9ff26c8e58839fbc928dd` |
| 2 | `def` | [allValidationRules](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/allvalidationrules.md) | 41 | `declaration-track:92dbbab91b8ea62b499294a154055ad4902baf9cf733e404528627fd2ad7dfba` |
| 3 | `structure` | [ValidationContext](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/validationcontext.md) | 53 | `declaration-track:e4ebd3fed61646f72763db1aa404b589b4ef04305e30bca1de3eda6bdee3283a` |
| 4 | `def` | [rangesDisjoint](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/rangesdisjoint.md) | 73 | `declaration-track:d3f6bdcd590434773c94ff89033bab3fbdaf644f88e1e426484a7441d7170f94` |
| 5 | `def` | [operationsNonoverlap](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/operationsnonoverlap.md) | 78 | `declaration-track:26612dd2eab36e9f95994be000eff759a8c3a9dee272e56bc25157197709323c` |
| 6 | `def` | [operationSequenceValid](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/operationsequencevalid.md) | 84 | `declaration-track:6636b1ee844bdabe17218187c82ed002156ffa88da14a524ca7f0aeb5919a7fa` |
| 7 | `def` | [sourceRangesOrdered](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/sourcerangesordered.md) | 88 | `declaration-track:225b59f025c1b1e6e6b1afe4a8eea92e843dbe6b777f7cd120eb7e9f49a75d87` |
| 8 | `def` | [evaluateValidationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/evaluatevalidationrule.md) | 91 | `declaration-track:6189c8564ca3de7c618a861b4e75332ff8a0937c0b11a1c9ee2438e9f439c274` |
| 9 | `def` | [ValidationRule.Holds](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/validationrule-holds.md) | 125 | `declaration-track:fea1513842cf379f6709f85aae64f623deaa5e20fc9c80c2c25758bc7ea8b942` |
| 10 | `def` | [verifyValidationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/verifyvalidationrule.md) | 129 | `declaration-track:71fa7371f7ecb018954478ac1b83d6cffa4e6d12fa8b6802b5d1bbd517687330` |
| 11 | `theorem` | [verifyValidationRule_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/verifyvalidationrule-sound.md) | 134 | `result-track:a88b20e411827daf164f814adcde7500da8be189dc8ba9ad35615fe01aeb696f` |
| 12 | `def` | [ValidationContext.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/validationcontext-valid.md) | 139 | `declaration-track:e69ebdedcd13294cb3dbf3dd9d74a587735ae4804d4f7bf5faf75976094a6b39` |
| 13 | `def` | [verifyValidationContext](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/verifyvalidationcontext.md) | 142 | `declaration-track:57eee5e7ac423d0ac6974a14280f78327c7422e050d945b812b516e08bee1545` |
| 14 | `theorem` | [verifyValidationContext_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/verifyvalidationcontext-sound.md) | 146 | `result-track:8bf9b86f2931f838a78ae9f30bc4ba56845d35514c91fe33894f66c5416535d4` |
| 15 | `theorem` | [model_authority_validation_does_not_promote](../../../../../ComputerScience/AlgorithmsInComputerScience/ValidationPublic.lean/declarations/model-authority-validation-does-not-promote.md) | 151 | `result-track:fb90112a9ba8117f273306f3ba3aecd4b6a21d711bd593039f917699be86f148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b90632c85bdabbb42e487acac08a010047c274e624cd7a66054bbb3e71b94f31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
