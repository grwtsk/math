# Verification target: Traversable Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7bee07b1613023838a9785a16b9cceb316186e5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7bee07b1613023838a9785a16b9cceb316186e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean.json)

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
| 1 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/map.md) | 47 | `declaration-track:22b7c9f78906d06d4d077766677352e1143e756cff8e8daf49fe61ff2b667001` |
| 2 | `def` | [functor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/functor.md) | 53 | `declaration-track:ae3c0f97a409c63239bdf7309d062b9a4b26a781890b3925a6266b4c689a611b` |
| 3 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/id-map.md) | 57 | `result-track:4dd51d16a5b1591840715300a6cafa02479d4b45b0fae2b78f5d7eafdb07ee79` |
| 4 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/comp-map.md) | 60 | `result-track:506194ef52c97673f1892a8344b27eab6a3d7236c6549c6022b42333dd88c5ea` |
| 5 | `theorem` | [lawfulFunctor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/lawfulfunctor-source-edition-2.md) | 64 | `result-track:9a5c58b72a938088d210f31a913fb53afd28aa233dd459065de9d979fa00b3ee` |
| 6 | `theorem` | [lawfulFunctor'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/lawfulfunctor.md) | 73 | `result-track:11076293070a9364ac6dc60221a3306218e4b107b9436a048efd00835700f79d` |
| 7 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/traverse.md) | 96 | `declaration-track:50f05f65e8dd80d22be9f57716ddac64f0b31ac41ead82aea03088793d2752e9` |
| 8 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/traverse-def.md) | 99 | `result-track:84c28fb0d2b4f755918743c9dcb745ac8aaf654b0218c27cea362f36e0978f99` |
| 9 | `def` | [traversable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/traversable.md) | 106 | `declaration-track:2669bb0e5afcfbb11c8abea37dddd8e459cbcf242e9d5366876cad9285d14d3c` |
| 10 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/id-traverse.md) | 125 | `result-track:dfc4aa97c14dcad69b8c0152c5e2f7bab5b1107ef3b40bfef70cf526e201d9d7` |
| 11 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/traverse-eq-map-id.md) | 128 | `result-track:aead1fde7c213672b3e2a9ef2eb2d4e1098da233795a8b5d0e3142761ceb5c1d` |
| 12 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/comp-traverse.md) | 132 | `result-track:8c82d847bd34b599bf589cbdca84baa63ceaa534e378667b8a7b98e8ffc7d051` |
| 13 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/naturality.md) | 138 | `result-track:e659793fe2106a2a135c90bd9e9f70ac8dd274de6f39b838eeac5a2494f3a242` |
| 14 | `theorem` | [isLawfulTraversable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/islawfultraversable-source-edition-2.md) | 145 | `result-track:99c36667974f8c868b992bcb9b7f9a5b6e34c0d6a18b25cc2a5493d852eb4e91` |
| 15 | `theorem` | [isLawfulTraversable'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TraversableEquivPublic.lean/declarations/islawfultraversable.md) | 158 | `result-track:3153c4225cbde9bd5e38099ee6fec8b172ecb85228e85e197d74eb06a5609c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61ce0aeeffe1d4cc3a5d2789f7af08c1d354c8fe12e21bf0881b45f8f6da3e14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantc543fea1e1394a4b74e5024d62acadfa2a8d9f218db4158f55bd9548cb4407ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
