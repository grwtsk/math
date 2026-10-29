# Verification target: Pairwise Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f02640b40a8e16879209171cc871767dd8948ac",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f02640b40a8e16879209171cc871767dd8948ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairwise_iff_get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pairwise-iff-get.md) | 36 | `result-track:e932f3e74b3b54464000e347f17cbe211bf49056fc88107a030b32edfcb52f55` |
| 2 | `theorem` | [pwFilter_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-nil.md) | 46 | `result-track:f0bece05600b781dfcb017667c31cfb9758a968e85951da8c77a0d8cbe107292` |
| 3 | `theorem` | [pwFilter_cons_of_pos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-cons-of-pos.md) | 48 | `result-track:0996eae6bf473e01645456d3ad9764a4fd1ea2e998ec0c9958309a40104ac9be` |
| 4 | `theorem` | [pwFilter_cons_of_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-cons-of-neg.md) | 51 | `result-track:e65b7cc130eae3ae92836a4bbbe98ea763d697b9ebf53603e4393bd864717d89` |
| 5 | `theorem` | [pwFilter_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-map.md) | 54 | `result-track:417aa7e02e4c54dac7d90dbd1497598b2accaacd3ffca4a858aeb7d125fde0fd` |
| 6 | `theorem` | [pwFilter_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-sublist.md) | 68 | `result-track:183afe101c9db3a8e8458eb8e3248d4210ea6d2bf66eded1cde98e1b39522413` |
| 7 | `theorem` | [pwFilter_subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-subset.md) | 76 | `result-track:96f80533e117f18bb01658d7ea4a53bd668bd8835b3c7d05d4dd7bbd7d4e6a87` |
| 8 | `theorem` | [pairwise_pwFilter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pairwise-pwfilter.md) | 79 | `result-track:8e9908e2f572ce64c60439d21c73049ad93794fa135b4855f5fe648e78d26a9f` |
| 9 | `theorem` | [pwFilter_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-eq-self.md) | 87 | `result-track:775f223e27f1c68f44ed4d62f16e0f0737c13d572ef0219da64267dc6bd37507` |
| 10 | `theorem` | [pwFilter_idem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/pwfilter-idem.md) | 98 | `result-track:1a91cfabc8c7f8d5368683eee4b32d245839ce4dd418c0bb52a1a1b6b1dc3fbd` |
| 11 | `theorem` | [forall_mem_pwFilter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition2.lean/declarations/forall-mem-pwfilter.md) | 101 | `result-track:c6d7df061b798c9d3061abeb368cf76ea0c1180813069bc5633f7250185b9bac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b29bdf7179943e6abdb6734d41e44c5ccc6a902841406e8f40884d2789093330 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
