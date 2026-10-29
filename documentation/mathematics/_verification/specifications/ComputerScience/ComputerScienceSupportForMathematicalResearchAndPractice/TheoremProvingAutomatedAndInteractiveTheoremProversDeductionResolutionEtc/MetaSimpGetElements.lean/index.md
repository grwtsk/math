# Verification target: Meta Simp Get Elements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c3ea85cdd4a5d09eec44196e4290953411677c1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c3ea85cdd4a5d09eec44196e4290953411677c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.PHashSet.toList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/lean-phashset-tolist.md) | 19 | `declaration-track:6ae09722b63a889c5c62e96d2903a7a45427b2bc9d42b0c77e29005f35081117` |
| 2 | `def` | [Trie.getElements](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/trie-getelements.md) | 26 | `declaration-track:7f9a279e4d98836fb78a148dd7e1b8bd9ae3cc82d87dc51ff76b9d7860971891` |
| 3 | `def` | [getElements](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/getelements.md) | 30 | `declaration-track:c3e711b4a29043efacd7b8e040dc6805cbe852517732e75dbab5415e2e10ba1e` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/instance.md) | 38 | `declaration-track:791d7eb00b582a1dd059400095ac8945979acaf40287d71ca1be8c2953b96f24` |
| 5 | `def` | [mkEqSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/mkeqsymm.md) | 50 | `declaration-track:d3a6bb62b53aff82c4ace93b13822b85ed46a6979b991428b9b4964922e56949` |
| 6 | `def` | [mkCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/mkcast.md) | 56 | `declaration-track:7445272d6a4f0cc8c248fdbde1040fc690202eb6a19e6d62ac3aa5f08a8d4ec4` |
| 7 | `def` | [getPropHyps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/getprophyps.md) | 60 | `declaration-track:1b10f8fc07de8420bfd8b1d55a8758c915d75f03677973e886a55bd66d09a7ff` |
| 8 | `def` | [mkSimpContext'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/mksimpcontext.md) | 76 | `declaration-track:13f332b2407ec9fb9e3e649b1ece336d48dfeaa05ecb36b11b891c75cb4cd4d4` |
| 9 | `def` | [mkSimpTheoremsFromConst'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/mksimptheoremsfromconst.md) | 112 | `declaration-track:396f4e778a7a6ab32040aaa9cbedbe7b7fd906d21573ecc9d510ae7ee25bbd2e` |
| 10 | `def` | [addSimpTheorem'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/addsimptheorem.md) | 134 | `declaration-track:c7a0d19f27708b2ea4a151b8f25c385c31f4138fd13bba2baf76cac17126edf2` |
| 11 | `def` | [addSimpAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/addsimpattr.md) | 143 | `declaration-track:bd12b78247b490bcd41ff5572568274834f837088d9083b2fda4d27b48fae303` |
| 12 | `def` | [addSimpAttrFromSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/addsimpattrfromsyntax.md) | 168 | `declaration-track:33bdc5001aa5e492bcecad53a6b9dd9016b3eb5a7f532529e1802a944b393e7b` |
| 13 | `def` | [simpTheoremsOfNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simptheoremsofnames.md) | 177 | `declaration-track:5c14c0256f5ace2006d5d850701f51544e63faad353a78b07a3f29f2b9958f34` |
| 14 | `def` | [Simp.Context.ofNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simp-context-ofnames.md) | 190 | `declaration-track:20487a1d2c0d2fc5efd4dcde63192331990341ee655aaf948b690e5ee11b4418` |
| 15 | `def` | [simpOnlyNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simponlynames.md) | 197 | `declaration-track:7568280ed44a1ece0488b2bb08d43b9f0168b0bdaf8997c004173df95c64f287` |
| 16 | `def` | [simpType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simptype.md) | 206 | `declaration-track:6e1e759ec0aef6b69e8933ca5534356828ea8440601d372747602cfe9e6a562a` |
| 17 | `def` | [simpEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simpeq.md) | 215 | `declaration-track:0849185f38ed429bbbd254a275956939a8d6aaf7a94a3427e2fbebf09789ec92` |
| 18 | `def` | [SimpTheorems.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/simptheorems-contains.md) | 229 | `declaration-track:cc678f30845f8133e50348fd533a7fc91d55a576baeb01af77d52cabd157a5f0` |
| 19 | `def` | [isInSimpSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/isinsimpset.md) | 234 | `declaration-track:b7abc87f7706b15001d53ac63394b84156dcbb03284146c7a96c1ee5615ba99d` |
| 20 | `def` | [getAllSimpDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/getallsimpdecls.md) | 240 | `declaration-track:82b199d595b7ab01f5342547c9a9b9ded67808d561cd887712e4c6b9889a03a3` |
| 21 | `def` | [getAllSimpAttrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaSimpGetElements.lean/declarations/getallsimpattrs.md) | 248 | `declaration-track:e67bf3cfcb6692c21c0b3ef63c93c6aaa847ff50bfa5c38c880ad377b6a1fe60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7892eced77950e9d38117f9e97c4aad79d6c0b62588ff532c1df06a22f8e7938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
