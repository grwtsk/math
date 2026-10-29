# Verification target: Completeness Namespaced Nand Neg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d3bffe6f3bb82fe2505f2511b641523a3eeca4f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Completeness/Variant15b17eb9729c2e76651dad254eec00afbf63c902763d459bac07ae6a2d5a835a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d3bffe6f3bb82fe2505f2511b641523a3eeca4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Completeness/Variant15b17eb9729c2e76651dad254eec00afbf63c902763d459bac07ae6a2d5a835a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Completeness/Variant15b17eb9729c2e76651dad254eec00afbf63c902763d459bac07ae6a2d5a835a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nandNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/nandneg.md) | 18 | `declaration-track:3cfa2b9d17a5182516d2cda61c692ccaa0d7922a6ba493053db779975399dc4d` |
| 2 | `def` | [nandConj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/nandconj.md) | 22 | `declaration-track:02241f0ea0900269e2ecf5f1d2157567b1b6551b9bcc91759fa6acb91740948b` |
| 3 | `def` | [nandDisj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/nanddisj.md) | 27 | `declaration-track:7310a3933e90b5893d071270d0b80b9e65ee7db06075ef4607aac57e2d9e179c` |
| 4 | `def` | [nor](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/nor.md) | 31 | `declaration-track:0309dcc2964401c5690870eaf8143f3235673fe6430dbeae58619628c217b299` |
| 5 | `def` | [norNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/norneg.md) | 35 | `declaration-track:e7a27b2e1d5f57684fa5eaf3f3a5aa68b1733bc6c70f6e7a8b203bcf55094b2b` |
| 6 | `def` | [norDisj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/nordisj.md) | 39 | `declaration-track:ed8184865d6b3b43d317ffc895543859f3b4430fd52e67778bd6872114acd452` |
| 7 | `def` | [norConj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/norconj.md) | 44 | `declaration-track:d6d08dbcc0b78d584eac6ac706010a766d7fde88fed55323d1675f0863ff3919` |
| 8 | `def` | [toNand](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/tonand.md) | 48 | `declaration-track:012280d47b720129947afae03908ffbf38361a792b8f773035a5ec3ef5c95e93` |
| 9 | `def` | [toNor](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/tonor.md) | 63 | `declaration-track:9e9b313ba43e0243f1f834cdc4efe9200b28a1379e93e80a6075d1c04a025e69` |
| 10 | `theorem` | [eval_nandNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-nandneg.md) | 77 | `result-track:46897dff77f0c32fe41b7414ad6cb8e6abebe82f9b62278e0ca6f1d8ce5b3584` |
| 11 | `theorem` | [eval_nandConj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-nandconj.md) | 83 | `result-track:e3947899442b399af686f8bf5d0ca1c1d7509f43342381306aa23dfe795d5977` |
| 12 | `theorem` | [eval_nandDisj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-nanddisj.md) | 91 | `result-track:23ad1d4e1f6301eb54e8b96f820e6bdca60aeae4c2b888cecae90bbb31f5671d` |
| 13 | `theorem` | [eval_nor](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-nor.md) | 99 | `result-track:3b367bca4f909df7f59fcce9acacaf7902814b6e781c1f5d78815acffb4c0aff` |
| 14 | `theorem` | [eval_norNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-norneg.md) | 107 | `result-track:bbb9c5a85f52b6a88e1a136bada7e076957b122b77ef2bfe006ca2dd6a8cda03` |
| 15 | `theorem` | [eval_norDisj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-nordisj.md) | 113 | `result-track:ff2378807cb21fc47c9e5546f26fb1063b7c276c05e558287c2f4b36f7e5d26d` |
| 16 | `theorem` | [eval_norConj](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-norconj.md) | 121 | `result-track:c37b4fde2937da21124133a1be632a79b6106c5a74b28bb848893a070c51f407` |
| 17 | `theorem` | [eval_toNand](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-tonand.md) | 129 | `result-track:e1a99781c757b95d424392e045fa599bfb243363571d39eef6a926ce9255d072` |
| 18 | `theorem` | [eval_toNor](../../../../../ComputerScience/AlgorithmsInComputerScience/CompletenessNamespacedNandNeg.lean/declarations/eval-tonor.md) | 150 | `result-track:66d09cd92ac097ea3770a1777a65a27f7feed69ca74675f99711a853ce6514f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e231025c10bf84a432ce62e2117bb35f9dbfcd6c58d9f43710fd36cc3615c78e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Completeness/Variant15b17eb9729c2e76651dad254eec00afbf63c902763d459bac07ae6a2d5a835a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Completeness/Variant15b17eb9729c2e76651dad254eec00afbf63c902763d459bac07ae6a2d5a835a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
