# Verification target: FVar Id Subst Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db19794ed3aff5ee4ceddea19c2d0966a4f50688",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarIdSubst/Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db19794ed3aff5ee4ceddea19c2d0966a4f50688`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarIdSubst/Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarIdSubst/Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1.lean.json)

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
| 1 | `structure` | [FVarIdSubst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/fvaridsubst.md) | 16 | `declaration-track:fd5ed56a76e639b97ac450354033e283706877ba7da9e7b0f2a64c09d6f3e77c` |
| 2 | `def` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/isempty.md) | 22 | `declaration-track:aeeb27083e6988bf53a06c46ff70f2687c28c2c70ab8d3697e565eb143cde0b0` |
| 3 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/contains.md) | 25 | `declaration-track:92aab606956556c9d05b0d9a2f7697c580b529a64bdfea457752a38c8d0ec91c` |
| 4 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/find.md) | 28 | `declaration-track:6bd7b68226d994560b9508fb197e45c4fb3e9f6135add901c47b712a623e47c8` |
| 5 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/get.md) | 31 | `declaration-track:aa84042e5867ddf296a98e2993bc92c9b3fe9954f951421a37cf4df0506085f9` |
| 6 | `def` | [apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/apply.md) | 34 | `declaration-track:f23ddffe356d0dc3b39d4934b663bd29321b2b21c19e03cd081aa21677daed43` |
| 7 | `def` | [applyToLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/applytolocaldecl.md) | 42 | `declaration-track:9fd5d883e2da11c15a82a5d8dbc74999d3cd7799d138f9b9a473978cec0fa137` |
| 8 | `def` | [domain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/domain.md) | 46 | `declaration-track:afe848da4b462828752134555b7278be6a1abc21aa3a75f529f7075f02de4546` |
| 9 | `def` | [codomain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/codomain.md) | 49 | `declaration-track:eceb3fd9f26c1d31f73766b9a75f35e5a92c784f46c2f3d15f6e9c6f5d43f6de` |
| 10 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/empty.md) | 52 | `declaration-track:01f45d469f6fac0ab88746da3d52091fb725ec6bf6dde91bfa5fbec507664788` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/instance.md) | 55 | `declaration-track:7b4883d9cece9e464709ab78786d971597746b7e86603cc8e227b2c545190c5d` |
| 12 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/insert.md) | 58 | `declaration-track:ba0e6c2f885eed416058378139f880d63df908c495d3de181d217013b6f179b9` |
| 13 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/erase.md) | 63 | `declaration-track:c176a899fa719211a9d95ee776186b722f0b2872a744909f188006492b512347` |
| 14 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/append.md) | 66 | `declaration-track:4b74ee6f52a9b3e49215d8e3033c7b5521c47d8ae8dd4a1b7b549c81aa37d3bb` |
| 15 | `def` | [ofFVarSubstIgnoringNonFVarIds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/offvarsubstignoringnonfvarids.md) | 71 | `declaration-track:8aedb018c58e7815c13c56db80e5d52403bd47e571614cff757f6c3405fefb51` |
| 16 | `def` | [ofFVarSubst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarIdSubstPublic.lean/declarations/offvarsubst.md) | 75 | `declaration-track:c0ca022b7db6ecae02c36fcbf17f2bd42e449e7517608957d77d5996ab4b203b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e0a0e8611332092bfdc3d1511ad5a9e1a8531f42ad1dc26d69d03e89698c884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarIdSubst/Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarIdSubst/Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
