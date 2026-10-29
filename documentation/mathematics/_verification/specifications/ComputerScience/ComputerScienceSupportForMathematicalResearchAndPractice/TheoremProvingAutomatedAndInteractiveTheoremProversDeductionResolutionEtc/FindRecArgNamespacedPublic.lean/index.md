# Verification target: Find Rec Arg Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85ae05060d8eb075af235554f65dafdfc6e0a69",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85ae05060d8eb075af235554f65dafdfc6e0a69`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prettyParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/prettyparam.md) | 27 | `declaration-track:327f7942acbc0ea1cf500692160e0531c4a782e2f458cc54f3b09b978916ee9a` |
| 2 | `def` | [prettyRecArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/prettyrecarg.md) | 32 | `declaration-track:890565de947dd2a3122481c89cc1b49a68559d6454439e9d6e547003736d8ba9` |
| 3 | `def` | [prettyParameterSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/prettyparameterset.md) | 36 | `declaration-track:8474949a826a8b5d4af4c9be73f37bb3b2867de9cf01242d43cd5d7ce204d538` |
| 4 | `def` | [getIndexMinPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/getindexminpos.md) | 46 | `declaration-track:4e59d2b560275f5ee14e9d5cac352dc18432735adcf56a4b55b16464fc72288b` |
| 5 | `def` | [hasBadIndexDep?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/hasbadindexdep.md) | 55 | `declaration-track:2c6e183e0d265ebfe37e7e2ed802a212d23f1bfd852ce2d394a6ad36a92b34f4` |
| 6 | `def` | [hasBadParamDep?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/hasbadparamdep.md) | 64 | `declaration-track:463a98169b24f4e36d348fd07c4f82049dd75f923b180892c5a5f32c3a06176b` |
| 7 | `def` | [getRecArgInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/getrecarginfo.md) | 75 | `declaration-track:aff6633136797a503da5a39f77cfaeec6fe6485a84f0c456d0eca5f2bf7fc46f` |
| 8 | `def` | [getRecArgInfos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/getrecarginfos.md) | 128 | `declaration-track:245dd1357ca3f893750d2212aa21ddb8b40d6df82336c0b7c41c81744368fd9c` |
| 9 | `def` | [nonIndicesFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/nonindicesfirst.md) | 160 | `declaration-track:dd42e9f1f4f4997347f6b35387db2231570b131e0dd54d3f948814d63b33cb3a` |
| 10 | `def` | [dedup](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/dedup.md) | 168 | `declaration-track:b92a0fbd86c6f57ba2b96170ecadf1b324fdb04474ad55103e3eb72486d961dd` |
| 11 | `def` | [inductiveGroups](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/inductivegroups.md) | 178 | `declaration-track:9ff4208f45c4dc6f7bbf5bb7f8514977474eb83ddb9e05e8baab5703c99680d3` |
| 12 | `def` | [argsInGroup](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/argsingroup.md) | 194 | `declaration-track:419cc9a7dfd80d9f70655ac61faac08fe649f95e726e0116520b04f3144b4d54` |
| 13 | `def` | [maxCombinationSize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/maxcombinationsize.md) | 234 | `declaration-track:a6559abb0699d1570ebb70281f21936ed897cca9e4115b042f3b8dd22e297572` |
| 14 | `def` | [allCombinations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/allcombinations.md) | 236 | `declaration-track:75eb4b2e46a16244e8bd870974a3ec35fb1f137ab18bca926fcf9c843f8c5c21` |
| 15 | `structure` | [RecArgCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/recargcandidate.md) | 249 | `declaration-track:a274198fb9a3c0c559d66303773efc05c95a16ee42da1f7328a001214dae9c58` |
| 16 | `structure` | [RecArgCandidates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/recargcandidates.md) | 254 | `declaration-track:b1a08151e64b73353fb782a89c9f9bd56631cf4a99cc66c3d0ae692fa3c090db` |
| 17 | `def` | [findRecArgCandidates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/findrecargcandidates.md) | 264 | `declaration-track:12cc158fefd383553cb18446b842333c9c71357d1a24747a527e9210b875b545` |
| 18 | `def` | [tryCandidates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindRecArgNamespacedPublic.lean/declarations/trycandidates.md) | 304 | `declaration-track:e4c7c8131dbb9739fa007914a24fd5644b59a3bbdf3aba40b156d8d21fc25629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a178b3582ac2f3a39f9f8143a0934342e9d4f327212b37c376356dc9a7dc5ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
