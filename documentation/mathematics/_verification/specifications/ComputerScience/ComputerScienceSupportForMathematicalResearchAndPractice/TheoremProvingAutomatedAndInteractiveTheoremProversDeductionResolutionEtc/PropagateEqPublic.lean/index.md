# Verification target: Propagate Eq Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43a5ffc2a9975ca9467040a2179d061fcd70324f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43a5ffc2a9975ca9467040a2179d061fcd70324f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Den` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Grind.Linarith.Poly.substVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/root-lean-grind-linarith-poly-substvar.md) | 17 | `declaration-track:d23c735f6231d8a1f86c21ef9278794bf1389465a4d5b35dbe185f7691b51fb2` |
| 2 | `def` | [DiseqCnstr.applyEq?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/diseqcnstr-applyeq.md) | 28 | `declaration-track:2c7ca84580d49bd0f08dc8b33b8dac366d8ff1f57f66c300005ea236b9471a8b` |
| 3 | `def` | [inSameStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/insamestruct.md) | 43 | `declaration-track:2793a4d1172624fd668a85e69c8998a95ad06c86666b628a6f05990e4e0d6dd7` |
| 4 | `def` | [processNewCommRingEq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewcommringeq-source-edition-2.md) | 49 | `declaration-track:b4ee5106b945bec23c1536e8e0486ece5c15771c3c7824193fefe898be3c64d6` |
| 5 | `def` | [processNewIntModuleEq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewintmoduleeq.md) | 70 | `declaration-track:c2be5e8f92475ecf181463edee339a13ed4c4a2701bf4d205ee6bbabb10c505a` |
| 6 | `def` | [EqCnstr.norm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/eqcnstr-norm.md) | 81 | `declaration-track:844e5e5360ca0db8329815ae09a456ed94c13b1190900694eb1f05321746fd50` |
| 7 | `def` | [EqCnstr.applySubsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/eqcnstr-applysubsts.md) | 92 | `declaration-track:05189d0ca0af6858ca45ef24cae8aaac9cd655b759df52bc24e062f962912ee0` |
| 8 | `def` | [IneqCnstr.applyEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/ineqcnstr-applyeq.md) | 101 | `declaration-track:54b63e3849651abec1106c0149b81f1b463d9883cb60abaa63e105ce30a73b3f` |
| 9 | `def` | [updateLeCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updatelecnstrs.md) | 112 | `declaration-track:2ffc7abf1be2e08712d36380ba3d8b5ecdca8362d24a69470f770457f80ef094` |
| 10 | `def` | [splitIneqCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/splitineqcnstrs.md) | 118 | `declaration-track:61509036db9437163079385f92e01d351b78ddee282756e2207a53cbfbb742d1` |
| 11 | `def` | [updateLowers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updatelowers.md) | 124 | `declaration-track:d133b35a9ef7396588f31046921911a53baa72da2b443acbb8fcb656d7a88f56` |
| 12 | `def` | [updateUppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updateuppers.md) | 133 | `declaration-track:3ffc80085ee409366278860d16f7dab852d7eae7c88d90c8c4f3c88edb1dc1f3` |
| 13 | `def` | [DiseqCnstr.ignore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/diseqcnstr-ignore.md) | 139 | `declaration-track:93d6539a0309543fc60598d54d4db9509dae7abeb02c51b81950ad39b8677d92` |
| 14 | `def` | [DiseqCnstr.applySubsts?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/diseqcnstr-applysubsts.md) | 145 | `declaration-track:f3fd8bb86e7a9c3624d77f017b12297fa74c6c17b97e365b5513ed68fe2cfe12` |
| 15 | `def` | [DiseqCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/diseqcnstr-assert.md) | 155 | `declaration-track:d98c2405991b1f50f91e7d4d419a95d70664bb376bdf0a7722e579bdc9edd128` |
| 16 | `def` | [splitDiseqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/splitdiseqs.md) | 169 | `declaration-track:42aca44ba79d735ac1ba65884d04b881415cc70ec533bf8c0464a1ab0d9874eb` |
| 17 | `def` | [updateDiseqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updatediseqs.md) | 172 | `declaration-track:375f57691d14efb285b76636b2004443efa44e82f47bd9659b2360cd01bb57c3` |
| 18 | `def` | [updateOccsAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updateoccsat.md) | 184 | `declaration-track:698f07064bce336360c540621947262ea78df014db8c581af89e6ac0d77f6694` |
| 19 | `def` | [updateOccs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/updateoccs.md) | 189 | `declaration-track:d14cfe67f32deef371c7b83a28a8a1f792bf7b4a1a39e2b4270675be5fe1d854` |
| 20 | `def` | [isImpliedEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/isimpliedeq.md) | 196 | `declaration-track:ea0b1d2081a66401310db367fec27f8407fc9a5d860df3267f52c2989d7de42d` |
| 21 | `def` | [ensureLeadCoeffPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/ensureleadcoeffpos.md) | 204 | `declaration-track:a3509ed391067e8406a0ea6f0dd8ad2e8d4300958c60289da02cd04d795da5c6` |
| 22 | `def` | [EqCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/eqcnstr-assert.md) | 211 | `declaration-track:b302fe32f7fd71214cc912f5d8a15e983313de469c1b77092908b6a19ce436b9` |
| 23 | `def` | [processNewCommRingEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewcommringeq.md) | 237 | `declaration-track:213206f24e435c3bea1bd1f08f95b0505572b48980932f7a4c0ba0e165f2e0fa` |
| 24 | `def` | [processNewIntModuleEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewintmoduleeq-source-edition-2.md) | 241 | `declaration-track:d66619e1b91e0ccf336a5e9df954d327226a88fdb493f7342ffa37e2e5459433` |
| 25 | `def` | [processNewNatModuleEq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewnatmoduleeq-source-edition-2.md) | 249 | `declaration-track:eaa996d924a13b70e3674d9fa5798bf30ff4551dcf0a4e031aee2ddd973cbf9b` |
| 26 | `def` | [processNewNatModuleEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewnatmoduleeq.md) | 264 | `declaration-track:24174dc0478cb51bb26f8be32e983bf92fc11a6f2bcfa5f447775f3c82ec9d6d` |
| 27 | `def` | [processNewEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processneweq.md) | 276 | `declaration-track:4467bfb06ea825f9be0788c9a320ce88d7612be583f823e376d3e9e844a3303d` |
| 28 | `def` | [processNewCommRingDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewcommringdiseq.md) | 296 | `declaration-track:aa1c0944df85bfad749a534d8a904f1a1de3efc232455de66f69d24ca1c83b52` |
| 29 | `def` | [processNewIntModuleDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewintmodulediseq.md) | 310 | `declaration-track:98e8d59b18f5c0341cdf2359a36ced7313455597b981fad9756a7cb312ffdfd6` |
| 30 | `def` | [processNewNatModuleDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewnatmodulediseq.md) | 317 | `declaration-track:52bf7a0422a08a97fb446bf7b985b7d0b8fcf3d7a296be80e9af6c07eed5c575` |
| 31 | `def` | [processNewDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PropagateEqPublic.lean/declarations/processnewdiseq.md) | 332 | `declaration-track:a432467df0876e16456b371b1fae733762b535cdfefee351031e52310b438a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=917ea9c62b4cc87b8ab781d02e5ec456835cc672927f34280eaa7b42e8aa1828 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
