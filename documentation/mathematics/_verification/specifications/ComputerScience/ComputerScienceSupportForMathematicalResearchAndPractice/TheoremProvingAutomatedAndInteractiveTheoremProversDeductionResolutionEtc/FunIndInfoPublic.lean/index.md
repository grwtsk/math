# Verification target: Fun Ind Info Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12fae402295b2c2d0ef73a6bcfe0cfc7e24cd76e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndInfo/Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12fae402295b2c2d0ef73a6bcfe0cfc7e24cd76e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndInfo/Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndInfo/Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6.lean.json)

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
| 1 | `inductive` | [FunIndParamKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/funindparamkind.md) | 23 | `declaration-track:4228ea55a68c2b0d46d4f0031fc09f957e793d2af4bfe190487e356492c9d617` |
| 2 | `structure` | [FunIndInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/funindinfo.md) | 35 | `declaration-track:edcb807a44d29d4c0fe0175296bd210183027e28942424e93119f4eda9c8f610` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/builtin-initialize.md) | 46 | `declaration-track:c5ad09b83b88566bc7e2188c9fd1b3769395ed28cf0966d7c77cbacf2656b748` |
| 4 | `def` | [getFunInductName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getfuninductname.md) | 48 | `declaration-track:8cf8c0fafe331e970eeaeffd2565bbef054cef29c235b7f1abb6846d02931d78` |
| 5 | `def` | [getFunCasesName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getfuncasesname.md) | 54 | `declaration-track:408935ebec731b36a13f2436df36f8877579bdc523312785cd9dc525f4bd3ffb` |
| 6 | `def` | [getMutualInductName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getmutualinductname.md) | 60 | `declaration-track:2038e08d8de1cd93d1d71f4c19a9c38d4e521e4f65ac14ee77d7d1bd5c77ace8` |
| 7 | `def` | [getFunInduct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getfuninduct.md) | 66 | `declaration-track:50192e069eaa33fb54d79927e5f21539e93b4a9af3c6a1d2ee47a2e530582879` |
| 8 | `def` | [setFunIndInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/setfunindinfo.md) | 78 | `declaration-track:4e2766442c21056bbe3c00a97a5b37505d02fc3b8a628742fa6ef448fe8e738f` |
| 9 | `def` | [getFunIndInfoForInduct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getfunindinfoforinduct.md) | 82 | `declaration-track:5ab48fb029f2ed9333949afc552be31094e13eb0c4e23217a4910f79ccff681a` |
| 10 | `def` | [getFunIndInfo?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunIndInfoPublic.lean/declarations/getfunindinfo.md) | 85 | `declaration-track:294cead33107586abd818a8f14349e709ccc50cc18377e2c31143a694b8ff2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=824cff45c583e7a9a6f37118bc094d141d40b618db500d86e1881d7d548083b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndInfo/Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndInfo/Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
