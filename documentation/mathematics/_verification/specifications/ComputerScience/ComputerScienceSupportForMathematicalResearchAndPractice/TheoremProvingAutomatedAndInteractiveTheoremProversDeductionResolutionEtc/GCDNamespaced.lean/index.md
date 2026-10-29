# Verification target: GCDNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b92953df26b2c85a9620f6352901303c351d8723",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant3b094799be392df15f39231665b62470ee8d018a339a7a7f4393ae046d75d656.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b92953df26b2c85a9620f6352901303c351d8723`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant3b094799be392df15f39231665b62470ee8d018a339a7a7f4393ae046d75d656.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant3b094799be392df15f39231665b62470ee8d018a339a7a7f4393ae046d75d656.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.GCD` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_gcd_helper'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/int-gcd-helper-source-edition-2.md) | 30 | `result-track:74c790c33d20dadcef3a268ec96cfba9036f267e25a7bb22410baf3dbeb9e0a4` |
| 2 | `theorem` | [nat_gcd_helper_dvd_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-dvd-left.md) | 38 | `result-track:aff5cea2bb11e707d17e37a0bee7c4d77fcdf14b6a10d05eeba5bff5e8b21891` |
| 3 | `theorem` | [nat_gcd_helper_dvd_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-dvd-right.md) | 41 | `result-track:5b89797299dddcb81ea240ea86aa91eb7a4d64372ce7fa1c87ec791fde8f613c` |
| 4 | `theorem` | [nat_gcd_helper_2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-2.md) | 44 | `result-track:315b1125c4b674e4231fd44803ef4566f4efabf1fee79031f5c99bcb3929275b` |
| 5 | `theorem` | [nat_gcd_helper_1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-1-source-edition-2.md) | 53 | `result-track:77aec02b55386f89dd507e008c6be44cdd62f78393a46b527703473a878bd715` |
| 6 | `theorem` | [nat_gcd_helper_1'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-1.md) | 57 | `result-track:33d98a54228afd4747a26562c8bb892c3202d816faa2827b320bada2a2bf54b7` |
| 7 | `theorem` | [nat_gcd_helper_2'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-gcd-helper-2-source-edition-2.md) | 61 | `result-track:ee9ccb4d0f7007c76c989ec1192c82662a8357cbadc401f459817ed605ae4f71` |
| 8 | `theorem` | [nat_lcm_helper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/nat-lcm-helper.md) | 65 | `result-track:ddd94e98c7283f306bfa813edb8211d6e410631d15a201e5cd0d6d81559ebf87` |
| 9 | `theorem` | [int_gcd_helper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/int-gcd-helper.md) | 72 | `result-track:28e896e644bad9c50ddc13d16c9be0a154c838c9f7d48fd03f6d14df6472db9a` |
| 10 | `theorem` | [int_lcm_helper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/int-lcm-helper.md) | 76 | `result-track:2eb62e124216cbd0136cdfe939935e7790e260afa6b996dabfa1fc86caa43dc1` |
| 11 | `theorem` | [isNat_gcd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/isnat-gcd.md) | 82 | `result-track:3f1ab4efd23b54158be9b01a84a587ae58465404b2a7ccdd3927f41d843a9639` |
| 12 | `theorem` | [isNat_lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/isnat-lcm.md) | 86 | `result-track:51511b89535b1a6f03faec1b2808e80bb594f1867d87f717b2f9b4b46bc1c922` |
| 13 | `theorem` | [isInt_gcd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/isint-gcd.md) | 90 | `result-track:729113b606269ecf1da84fe19e929ce0680a1ed59ae1575d4a4219254f91579c` |
| 14 | `theorem` | [isInt_lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/isint-lcm.md) | 94 | `result-track:1a60bf99591d4db643f0bbf005dbb6bd2ef6db29c4c754a3301f7b7b42af3cbb` |
| 15 | `def` | [proveNatGCD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/provenatgcd.md) | 100 | `declaration-track:ca8ff791da39ca49134c575140c4c3ba5f881c11723a1e8f58601718ecf89662` |
| 16 | `def` | [evalNatGCD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/evalnatgcd.md) | 136 | `declaration-track:680769a5dd06e794f6c53944f26f7d57deeded73345269d949a24450cc65fb94` |
| 17 | `def` | [proveNatLCM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/provenatlcm.md) | 148 | `declaration-track:ab84658702f00e47a37684d99b56563dbb00c0be760a14e7e4da370a688a8f19` |
| 18 | `def` | [evalNatLCM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/evalnatlcm.md) | 165 | `declaration-track:be60435e7de40b0858fe410088e457b0f56060a9f8936eed3259f4f940e7adab` |
| 19 | `def` | [proveIntGCD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/proveintgcd.md) | 177 | `declaration-track:32b8f1dc50f2604f02f51022a9b78dc1580312bdd6fde906c349db165ae2ed4f` |
| 20 | `def` | [evalIntGCD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/evalintgcd.md) | 185 | `declaration-track:8231360cc5649befd73ee0d1f834861bf0d60996f5acc0a00d05e116ef736b63` |
| 21 | `def` | [proveIntLCM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/proveintlcm.md) | 196 | `declaration-track:40fa4be5ba44f76a61d21570fc11e34f71a270be9c2d2bb472c555633f38bcc5` |
| 22 | `def` | [evalIntLCM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GCDNamespaced.lean/declarations/evalintlcm.md) | 204 | `declaration-track:bedb0684ae7018bc65cc8ec1f24fd210ce064b15eaa32bd9e859428085e3b363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=216a7c8fb617e50f0ece7ad484e792b08c3bd5c1e542a8f59b805b14bf23d32b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant3b094799be392df15f39231665b62470ee8d018a339a7a7f4393ae046d75d656.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant3b094799be392df15f39231665b62470ee8d018a339a7a7f4393ae046d75d656.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
