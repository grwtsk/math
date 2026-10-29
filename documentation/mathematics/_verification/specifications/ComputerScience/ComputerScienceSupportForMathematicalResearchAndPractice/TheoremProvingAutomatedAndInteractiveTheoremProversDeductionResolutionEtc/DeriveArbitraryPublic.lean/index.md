# Verification target: Derive Arbitrary Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9212e5be9db9aca4d47ab53e6c5555b3ec51e6d6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9212e5be9db9aca4d47ab53e6c5555b3ec51e6d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Plausible.ArbitraryFueled` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getCtorArgsNamesAndTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/getctorargsnamesandtypes.md) | 77 | `declaration-track:b4c35926775b0bc04a7c74ebecf4859e41de53fe1bb84d17b57187f5a489db3b` |
| 2 | `def` | [mkHeaderWithOnlyImplicitBinders](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkheaderwithonlyimplicitbinders.md) | 101 | `declaration-track:5f2ae3982d314fca5fbddbcabd52d5a7f22c91610b4d936b17eaf4d316a01eab` |
| 3 | `def` | [mkArbitraryFueledInstanceCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkarbitraryfueledinstancecmds.md) | 122 | `declaration-track:1b0b10bd468f70dafcb7b5db203e2e8cf8ff9669e5283ee6b144ab48d937d6c4` |
| 4 | `def` | [mkArbitraryHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkarbitraryheader.md) | 141 | `declaration-track:3fbaeecfb53cf368c4c4c544decb02fb3d5279522a87167cf61b987d38ad7226` |
| 5 | `def` | [mkBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkbody.md) | 145 | `declaration-track:6d8f489fda9182b90e26e730637154d2de31bd2dfadadd5aa4246c3ff323e1dd` |
| 6 | `def` | [mkAuxFunction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkauxfunction.md) | 259 | `declaration-track:b1b4d3161070439c83353cd6385a62a086345d23b92f75afeea5f3a04ac095b8` |
| 7 | `def` | [mkMutualBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkmutualblock.md) | 289 | `declaration-track:85a080653cd7852b3776a06f9072c6e6694fcdff6ad1f7e91211fc3e2555a376` |
| 8 | `def` | [mkArbitraryFueledInstanceCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkarbitraryfueledinstancecmd.md) | 298 | `declaration-track:93784ee35c7d9a90690292a80c8b8e38707ad2854d28261fa10a14a8de4a9078` |
| 9 | `def` | [mkArbitraryInstanceHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/mkarbitraryinstancehandler.md) | 306 | `declaration-track:b7ef759741110cd1dcf3b63ca26ffecdda220e22aa0750df51db9694b7b529ec` |
| 10 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveArbitraryPublic.lean/declarations/initialize.md) | 318 | `declaration-track:319b444cea426ec4446c14b6d4f895e28487c24a45b9c287192ccaaaa2239deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac295ce60b36d02f4ed6c0f2bbde2028e81e12afa65936759d2b3e606ed52e78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
