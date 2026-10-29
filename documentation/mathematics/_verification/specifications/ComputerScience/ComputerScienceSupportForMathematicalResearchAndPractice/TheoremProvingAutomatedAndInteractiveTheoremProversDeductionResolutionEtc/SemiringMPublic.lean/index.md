# Verification target: Semiring MPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9abbd8d5614d2cafd977a4525e0267448d061d5f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9abbd8d5614d2cafd977a4525e0267448d061d5f`.

Source path: `GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemiringM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-context.md) | 16 | `declaration-track:39ce3a93baa65b7e98459c96d2435db334a1a7e6b46ad678b4af5335474cae48` |
| 2 | `abbrev` | [SemiringM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm.md) | 19 | `declaration-track:9625b0f8ec7b220b46882fe41800b5963a4444db0c3df59a75d8adb4ac453e58` |
| 3 | `abbrev` | [SemiringM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-run.md) | 21 | `declaration-track:cbccaab6f91d2c120c877868675ff2545a306d412447ce08302abf25d7cda0c8` |
| 4 | `abbrev` | [getSemiringId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getsemiringid.md) | 24 | `declaration-track:2dae4f03b788c119765efabf60be2ea529e9851c0366d9c090a3d5fd5bc852b6` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/instance-source-edition-4.md) | 27 | `declaration-track:ea6fcc9024a100411db4cdc16ecc60c038d77a84daaff945ab56b814e03421a3` |
| 6 | `def` | [SemiringM.getCommSemiring](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-getcommsemiring.md) | 31 | `declaration-track:d0ca10e2157caac4ff762f9f7fac1f46214d64f975fe7a4350339eb8a6e50c4a` |
| 7 | `def` | [SemiringM.modifyCommSemiring](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-modifycommsemiring.md) | 39 | `declaration-track:4008519f6b1c4991b8443bb34b0078a13224193a2cb08f9f32f24e54a560a38d` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/instance.md) | 43 | `declaration-track:920bc0305d451e5ce22581c954817c7e1909b4dda2d7d61bbed130dbc863d4d2` |
| 9 | `def` | [SemiringM.getCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-getcommring.md) | 47 | `declaration-track:31998b2c7d3d4cc0e7cfb3bc514799207de28b7c2c68d02e21affb2a649d3002` |
| 10 | `def` | [SemiringM.modifyCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/semiringm-modifycommring.md) | 55 | `declaration-track:f2b02caea727c5a0cfdf2fe89d257cb3183e379d4089b098a380c9a9e50ddad0` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:935e4c7e8e45be0e59a9c488979df28070d74bb47331edd42ae1cd150a927a65` |
| 12 | `def` | [getToQFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/gettoqfn.md) | 63 | `declaration-track:ad75bb979c38b22a6d21d274b5e63324dc20c72b6448465de889e12c3feda37a` |
| 13 | `def` | [mkAddRightCancelInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/mkaddrightcancelinst.md) | 70 | `declaration-track:6b7aaddb79edb0ed213aaf87ed3e828a115318d09fb77248dbada3fbbfc3c018` |
| 14 | `def` | [getAddRightCancelInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getaddrightcancelinst.md) | 76 | `declaration-track:79741f3d7373c07ea0ed680b638d619d98c6b642ebf8aecd1319e5817ab01c05` |
| 15 | `def` | [getAddFn'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getaddfn.md) | 86 | `declaration-track:2cf2ed3c0b21497b20aeee6f0f3e395d81b6d6c9a54126c1492a7d7260bb7582` |
| 16 | `def` | [getMulFn'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getmulfn.md) | 94 | `declaration-track:fcb52003692088573edbd087f5f8e9136434b8d8273d2363f7903996161bf1f7` |
| 17 | `def` | [getPowFn'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getpowfn.md) | 102 | `declaration-track:3d60629c700c2a6d0a702215e4032c458d56282ec459107b0b996b9396305f5b` |
| 18 | `def` | [getNatCastFn'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/getnatcastfn.md) | 109 | `declaration-track:79840379271eb7b8cdaf2b3d4a594ae496c1a4d6fe8d550350470b84fdac49ad` |
| 19 | `def` | [getTermSemiringId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/gettermsemiringid.md) | 118 | `declaration-track:b842cdb84ee5451d1f19c2145d1d3d97427a15897b7b75188f4262b373a451da` |
| 20 | `def` | [setTermSemiringId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/settermsemiringid.md) | 121 | `declaration-track:1216d4d5a4f672ea5feb9de608aa5b52b36ffa9feb7a9f59971f3f5adacf94d9` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/instance-source-edition-3.md) | 129 | `declaration-track:c5cbf3f6b05f0578ad9f9795fbea473749b1455f902ac21ad9655a536f78debe` |
| 22 | `def` | [mkSVarCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/mksvarcore.md) | 133 | `declaration-track:c259b49655e9a16a31fc9c12774c4a824bb9a140ea2d8d66d293d8c0e33a0648` |
| 23 | `def` | [mkSVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/mksvar.md) | 146 | `declaration-track:e30074390d6dfd94cd37b381d9474fc92c90077a78411aea7028f731cfd4e337` |
| 24 | `def` | [_root_.Lean.Grind.CommRing.Expr.denoteAsRingExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SemiringMPublic.lean/declarations/root-lean-grind-commring-expr-denoteasringexpr.md) | 149 | `declaration-track:38376f5c5519f0bd6e6d22020ecf6b48825141665320259a696a3d231ddfcbb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00c77dcbb9a85c592172351d63b034808e01b785d7dd077197c599b28b41ee1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean","GRWTSK/_verification/specifications/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
