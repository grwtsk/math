# Verification target: Pairwise Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e37a247aef2fde0faf4c8f9c11959ec5ed624913",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e37a247aef2fde0faf4c8f9c11959ec5ed624913`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean.json)

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
| 1 | `def` | [Pairwise](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise.md) | 23 | `declaration-track:dd5e5b3d440d839de980e21a1513d7d052c69c37ad12b86e945e78c2b77e5e0a` |
| 2 | `theorem` | [pairwise_iff_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-iff-getelem.md) | 25 | `result-track:2d7147310038ed0236ba55e6f639140b467bb0691eb4fdaf7801ff3220ae9758` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/instance.md) | 31 | `declaration-track:2ec9df68206e3115c3a2ae6cc6088e792d094ad1a22630c453198828670e1509` |
| 4 | `theorem` | [pairwise_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-empty.md) | 40 | `result-track:44de28affb41413722cfc89a846b82b8b4c067f02f2a5505ed3bf0dc2c72af35` |
| 5 | `theorem` | [pairwise_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-singleton.md) | 44 | `result-track:ecac4f69f485fb35028a0ae0b229f41a629a8bd5980bb483a8b0c232ebd48c81` |
| 6 | `theorem` | [pairwise_pair](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-pair.md) | 48 | `result-track:35b4bbda4a006f75307818383d5ac6768e68f8288b1afea41e81115e09f0d442` |
| 7 | `theorem` | [pairwise_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-append.md) | 52 | `result-track:9b8783eb33cc8f2fd4d0fd527a778a968ecbe04ed774d2dd931a64f5d9399400` |
| 8 | `theorem` | [pairwise_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-push.md) | 57 | `result-track:6bd5fe10b8ed50e6e0eb7f56a01fb7c65ffdec637e17687fb07eb8c0ffb68db3` |
| 9 | `theorem` | [pairwise_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwisePublicEdition4.lean/declarations/pairwise-extract.md) | 63 | `result-track:f48757374fccbf738dc82178bbe481f9cd5c8688766e819a53b76eac2531f009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18c7965a92df6231cde040fac7b7dca5ec007621abe965aa34945cafb1a0b7b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
