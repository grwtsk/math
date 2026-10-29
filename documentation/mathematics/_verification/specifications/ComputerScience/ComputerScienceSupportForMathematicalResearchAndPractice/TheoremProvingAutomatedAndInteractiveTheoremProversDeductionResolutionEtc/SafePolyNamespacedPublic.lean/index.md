# Verification target: Safe Poly Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c`.

Source path: `GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/applychar.md) | 26 | `declaration-track:6d4567aedb260a0dff1d5a93c59f8666be3770c8ae3586f3bef12b87d5adb00b` |
| 2 | `def` | [addConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/addconst.md) | 32 | `declaration-track:e5c6f1a3cd15331303f9ce375737cab0e6516e82cfbf313f27c5dbd4a41df402` |
| 3 | `def` | [mulConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mulconst.md) | 35 | `declaration-track:28238f931d1ce4b2595db4d33d8fec3e8d939b9282b1ef8ce4674bb1e80f5392` |
| 4 | `def` | [mulMon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mulmon.md) | 38 | `declaration-track:511ecf76b988db58a89408a64fd30d96d01518c91d072f8607962e6f4797c884` |
| 5 | `def` | [combine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/combine.md) | 41 | `declaration-track:4587338269cce03c476e0b03fcf8f1d8c22aed59a22533a34d0aa4a3c0b4809f` |
| 6 | `def` | [mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mul.md) | 57 | `declaration-track:209425bc9e2c2325ff56d20f039ad8921b5a4a63abc672d6c31f45beb1cc35b4` |
| 7 | `def` | [pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/pow.md) | 67 | `declaration-track:0dc30caa43583730ca5e2277ce01fb1d02b2a12a3d94e184e9b0ddb1a6950a74` |
| 8 | `def` | [toPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/topoly.md) | 74 | `declaration-track:5267e4c1a4c8b974f1f5dacdd66ccc075aaf98153f18574ef2e2295a36596a27` |
| 9 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/topolym.md) | 97 | `declaration-track:18b1d05ce12cc44765a7bb57040a75fb24af732bb69978701778eeb59a89026f` |
| 10 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mulconstm.md) | 100 | `declaration-track:d21f9c792558082697557edc89dd352069c0b726db361e515afc51c3fff31e3c` |
| 11 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mulmonm.md) | 103 | `declaration-track:ee9f86e8b8c029827d57565743c0c662295d6241324b874fea74e2eb396ed44b` |
| 12 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/mulm.md) | 106 | `declaration-track:28191aa09ae5141fee612ae5d99b202810aee54705adf73278ef6cdb6ada9170` |
| 13 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/combinem.md) | 109 | `declaration-track:349fbfe408215890f860c57766773f90d7f1e551f8f49956901ebfb6c073726b` |
| 14 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/spolm.md) | 112 | `declaration-track:5822d2024cab93094f7ed5becd4d8000ccf28e82e2d9a4a8542a33daa4c03865` |
| 15 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/findinvnumeralvar.md) | 128 | `declaration-track:7f1a6be923c15be3a7ca09866dd74263bfa7d13b241402f16f7d13a023c44de5` |
| 16 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/findinvnumeralvar-source-line-139-occurrence-2.md) | 139 | `declaration-track:aa6f540429f56b4c4ecdb519ccb12afb5790fe91aa42b0c2171ec35c72c0771d` |
| 17 | `structure` | [SimpResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/simpresult.md) | 152 | `declaration-track:5b134e853a92458cf962fec61df084de10e7b00be3a19916b43d2bf9b74c2b7c` |
| 18 | `def` | [Safe Poly Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SafePolyNamespacedPublic.lean/declarations/simpm.md) | 173 | `declaration-track:a67d8afbf9db17a50e2433ce0bb603a08e8c5187c80d0f88becf9e09b99e51c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcc9e103af5f2cd1d7d6816e25da80d0a77b9c16472d43ff6bb37998ce945051 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean","GRWTSK/_verification/specifications/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
