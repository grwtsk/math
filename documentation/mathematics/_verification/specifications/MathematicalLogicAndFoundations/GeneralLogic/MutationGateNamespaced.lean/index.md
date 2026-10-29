# Verification target: Mutation Gate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cea0521bed5a96e3e8930117707c8bc414e0038",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant4778b8930d4c5941fe666b3a2bbef326aff8ea7e669fe40c9e6e43bfe41785fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cea0521bed5a96e3e8930117707c8bc414e0038`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant4778b8930d4c5941fe666b3a2bbef326aff8ea7e669fe40c9e6e43bfe41785fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant4778b8930d4c5941fe666b3a2bbef326aff8ea7e669fe40c9e6e43bfe41785fb.lean.json)

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
| 1 | `inductive` | [ClaimClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/claimclass.md) | 15 | `declaration-track:255391c1d024d5ae28fb183430862e678ff1c333824b0fb7eaf5adb096df31cb` |
| 2 | `inductive` | [MutationGate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/mutationgate.md) | 33 | `declaration-track:98c23168db7f1194477a024e0c6b60e47bac632b735d9ba0ad59bc38a583a11d` |
| 3 | `structure` | [MutationReceipts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/mutationreceipts.md) | 43 | `declaration-track:17fc8fd683b12c04cbed1765699da4bfbf80157b02dee4c0dbfefaffda4568f5` |
| 4 | `inductive` | [HasGate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/hasgate.md) | 53 | `declaration-track:066599dbae673754e1e094cd2893f53f2d9b84f254f7589698b53d73723bc744` |
| 5 | `inductive` | [DiskMutationAdmissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/diskmutationadmissible.md) | 69 | `declaration-track:ed4dbc8ba15ba2788eb27f9a7b0f0f942c141d4c49c081e41d4bbbb6e6b1495f` |
| 6 | `structure` | [GitPlan](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/gitplan.md) | 81 | `declaration-track:af52296ab2a819d0bcb4d78953eb91f9368ebab384f3f14bb6cf282d61daaa9d` |
| 7 | `def` | [ExplicitCommitFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/explicitcommitflow.md) | 88 | `declaration-track:028e45b576371b225c91781dad3fc35c565fe1522b7427707539817ed292327f` |
| 8 | `inductive` | [GitCommitAdmissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/gitcommitadmissible.md) | 91 | `declaration-track:881420fbadfd7e062470d7899637db393d45cadbda8069c856ab1c58a343fe2b` |
| 9 | `theorem` | [no_nand_no_mutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-nand-no-mutation.md) | 100 | `result-track:37b0535b95987f1162a883cffeca7a25b7e1e022f1a496316b2497dad5b0cb9a` |
| 10 | `theorem` | [no_filetype_no_mutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-filetype-no-mutation.md) | 107 | `result-track:3968739f0b9b6b42e387ec42a8de9ea0c699a9f01b8c78981ed1a7a061551add` |
| 11 | `theorem` | [no_toolchain_no_mutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-toolchain-no-mutation.md) | 114 | `result-track:07dffdbcca334968eed0cea67710a5e44bdb19063048349a79e201813943e317` |
| 12 | `theorem` | [no_path_whitelist_no_mutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-path-whitelist-no-mutation.md) | 121 | `result-track:ca9b3216fe758a2bc40a4461a724fb842b30217176b9697472af758e04a5ad67` |
| 13 | `theorem` | [no_compare_and_set_no_mutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-compare-and-set-no-mutation.md) | 128 | `result-track:007c6f83e269f7611a54661b9dd3d91fe9546edf8e2678f2ceae3c0f5c524600` |
| 14 | `theorem` | [no_explicit_flow_no_git_commit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-explicit-flow-no-git-commit.md) | 135 | `result-track:7ce60d6a41606094659e9f822d571232278a44cfeda8688bcdf9532d4d9dda59` |
| 15 | `theorem` | [no_toolchain_no_git_commit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MutationGateNamespaced.lean/declarations/no-toolchain-no-git-commit.md) | 142 | `result-track:a0c69726585b944a3b9ce458fd80bff2f288a0d764fa586d055a6588f9d71851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=486d7db701088fa6a952e803e6948d9a4df94836c1acc24aa8d61a0ff7103150 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant4778b8930d4c5941fe666b3a2bbef326aff8ea7e669fe40c9e6e43bfe41785fb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant4778b8930d4c5941fe666b3a2bbef326aff8ea7e669fe40c9e6e43bfe41785fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
