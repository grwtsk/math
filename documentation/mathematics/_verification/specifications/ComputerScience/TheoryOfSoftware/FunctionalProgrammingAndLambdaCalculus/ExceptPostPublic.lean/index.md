# Verification target: Except Post Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2cb89a4faef91d76ef50cf3ee07f4ec1caa0a1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2cb89a4faef91d76ef50cf3ee07f4ec1caa0a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean.json)

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
| 1 | `structure` | [EPost.Nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-nil.md) | 37 | `declaration-track:a36ceb4cf91eac71bf25852e22eb28afae474e84eb37aa1bfccf2263f4c8fd49` |
| 2 | `structure` | [EPost.Cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons.md) | 43 | `declaration-track:e235f7e3fa2ac7120eae5a1a0f00bc366858bf3ecca05cdb9f0bf90927a403a7` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:9c806f820f9a6bae35ccb6bd264ef30167ade89cbff1ab2665cbe703fee25fef` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/instance.md) | 66 | `declaration-track:4b5c3ddc0b7fb788d830451d80f8d68c97076f39435d36c23794b68dcec3c0df` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/instance-source-edition-3.md) | 70 | `declaration-track:d06d002690fbe7cc404fde324f27a615129f845a92d20319bf5197140b66d8e5` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/instance-source-edition-4.md) | 79 | `declaration-track:fe37e6ed5a33ecb97de0b0c873ce6532ba4e6f530fca27b331a0e0d998580e54` |
| 7 | `theorem` | [EPost.Cons.le_head](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons-le-head.md) | 92 | `result-track:404aa87f7de45c317d04689229070cdacd0f9338cb7a0898cf74f5d0ed514fbf` |
| 8 | `theorem` | [EPost.Cons.le_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons-le-tail.md) | 97 | `result-track:e50faaf4d0ecf8a60dd48ac25b7ca28669cb27bd7bfdd6c4c32d1c63398ad843` |
| 9 | `theorem` | [EPost.Cons.mk_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons-mk-le.md) | 102 | `result-track:daa41098bdcf0194cac9187a01c0852e84fa9d3dfdc900126278caf6cdfad234` |
| 10 | `theorem` | [EPost.Cons.mk_le_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons-mk-le-tail.md) | 109 | `result-track:bd19a6f7ddf24e9d337d4e12d7a0541897ddadc2c3634642876060feed7b77e3` |
| 11 | `theorem` | [EPost.Nil.le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-nil-le.md) | 115 | `result-track:af5915cff026029ed81284940af1a6bdf359141f0551d15c4682167fc5439d24` |
| 12 | `theorem` | [EPost.Cons.head_bot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/epost-cons-head-bot.md) | 121 | `result-track:85c1c2151df2939638737f2fb4a3ccdfcf3293ac198960cfba318f9182cc497c` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/syntax.md) | 136 | `declaration-track:30730ec33dcfb6a8b3fd882eb3799b2f572f36488d3028f4ef95b99ea8b36f46` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/syntax-source-edition-2.md) | 138 | `declaration-track:81a7cabcbd5b391868f61057a81047703ef8a80074ce58036d286c06dc47fee8` |
| 15 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/macro-rules.md) | 140 | `declaration-track:b38a3bd9e4b4ea997cd99ec8fb053e861586c7c017783d39a2cf61927e1da0b1` |
| 16 | `def` | [unexpandEPostNil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/unexpandepostnil.md) | 149 | `declaration-track:6cb7aa2574c549fc6d7d51bd5a0ba52ee2cc6c8195e9bb8579a5e922614985cd` |
| 17 | `def` | [unexpandEPostCons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/unexpandepostcons.md) | 153 | `declaration-track:8ccdb13ffb8230330df1ecb67e73181efb71a9552b1df2b7e7ce360af35c638e` |
| 18 | `def` | [unexpandEPostNilMk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/unexpandepostnilmk.md) | 163 | `declaration-track:f237dae81128cd98b742b59f3829feab853e80b1630309e3dadaeae128f22990` |
| 19 | `def` | [unexpandEPostConsMk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExceptPostPublic.lean/declarations/unexpandepostconsmk.md) | 167 | `declaration-track:19c8ca0931cfb6f295805bbce9e2dd003d240ffa0f552c29e62c7ec14cc4147f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b69d64aea88cf3f1de09e3f24e3cfbec636f435d6a5bb122b644ee6430b30598 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
