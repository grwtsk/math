# Verification target: Process Namespaced Public Resource Usage Stats

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e596d35a6a5195c43f3e64eefece7a7ecb548c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e596d35a6a5195c43f3e64eefece7a7ecb548c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Ord.UInt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResourceUsageStats](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/resourceusagestats.md) | 36 | `declaration-track:d5fa2b7075128d9f18cfff93e05e6c27caffc88308c127515942f21e09c02cd1` |
| 2 | `structure` | [PId](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/pid.md) | 122 | `declaration-track:de5fe8caf2b4acd965d490324b1a2bac8d0d6e6a2af8ab6c8c034e77c38b007d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/instance.md) | 129 | `declaration-track:6fd6571126adaf5dc4023332ea9e5fde8176c84db16d691097beb97dc97a3fec` |
| 4 | `def` | [getProcessTitle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getprocesstitle.md) | 136 | `declaration-track:7a1de45cf406abc468cddd03677d6a1f5f1a09931b4b9d7a3515f1427c71fa20` |
| 5 | `def` | [setProcessTitle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/setprocesstitle.md) | 143 | `declaration-track:6f6f98ffe8c3047c5ae059b8352cda763f2d76011c350cf842de86f2be0ed61f` |
| 6 | `def` | [getId](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getid.md) | 150 | `declaration-track:308fe5021dc8b5ca5e3c85134e3f127e5e0ab4e51089b6c1808e7fe306df76e7` |
| 7 | `def` | [getParentId](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getparentid.md) | 157 | `declaration-track:76ccba88d5a4dbc83a0e2f50bb8fdfaf6f6b48615c03b680b232c07965a2842a` |
| 8 | `def` | [getCwd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getcwd.md) | 164 | `declaration-track:b0c0b40500da496c7e0fd479c2bdbdeb881a7a507044773e4725d4e3c2d8ebe6` |
| 9 | `def` | [setCwd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/setcwd.md) | 171 | `declaration-track:edfe9a3dee3ea04bd7a464dce8bd95fe120c1961df384da3fdcbde5db11dcbfc` |
| 10 | `def` | [getPriority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getpriority.md) | 178 | `declaration-track:556e68f5f26d33262f9afadbe407dce0b63a9aec8cc8587ada5be0e4b53aa7dc` |
| 11 | `def` | [setPriority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/setpriority.md) | 185 | `declaration-track:7ebae618fc727c612b7554b9cd0bc81297ca8169a5e47f1d191566cf3f22c13c` |
| 12 | `def` | [getResourceUsage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getresourceusage.md) | 192 | `declaration-track:d0d019305924438da4de7735045da40feb89ffae23c485a1ac7d24476f245b91` |
| 13 | `def` | [getExecutablePath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/getexecutablepath.md) | 217 | `declaration-track:2dfa4f8645faa3045daa60e5e016346862561e3766f2172d726f8b191f78e93e` |
| 14 | `def` | [freeMemory](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/freememory.md) | 224 | `declaration-track:2f39fa9d6595d16e5ab01d387be229e8da850dacac9799e4fdf8af41bb8c67ac` |
| 15 | `def` | [totalMemory](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/totalmemory.md) | 231 | `declaration-track:b49d920bdad55db8d6a73d622325f19572dd45fdf92f6145f908f6e2703ab63e` |
| 16 | `def` | [constrainedMemory](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/constrainedmemory.md) | 238 | `declaration-track:2af93e1d404d1a8afbc1b318f0023ba3b93bc7f97dcf136e64f60ae4d5836725` |
| 17 | `def` | [availableMemory](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProcessNamespacedPublicResourceUsageStats.lean/declarations/availablememory.md) | 245 | `declaration-track:fa40efe90254ed27f904283a9380224e40ce823c722a319f73b173f86d677517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ab938b558391da069e9c002978bebcc55b13edf5842d60217894f9f1e74dea3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
