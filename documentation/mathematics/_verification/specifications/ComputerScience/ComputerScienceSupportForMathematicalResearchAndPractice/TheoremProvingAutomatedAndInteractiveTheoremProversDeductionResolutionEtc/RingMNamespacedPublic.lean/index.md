# Verification target: Ring MNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a898254bcffd10b7b6f9df3b050c12525b7c3302",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantf00447ec07e672253b077ba4bcf56db0bcb6a74a819891c3c9c548352bd31dc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a898254bcffd10b7b6f9df3b050c12525b7c3302`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantf00447ec07e672253b077ba4bcf56db0bcb6a74a819891c3c9c548352bd31dc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantf00447ec07e672253b077ba4bcf56db0bcb6a74a819891c3c9c548352bd31dc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkMaxSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/checkmaxsteps.md) | 23 | `declaration-track:fc5deb7f847b0925f9de6f5cd9fc9282fa6e389a3d00988464fe0dadedeb0d29` |
| 2 | `def` | [checkMaxDegree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/checkmaxdegree.md) | 26 | `declaration-track:8a4470e09e5c22f34d96c68a661e404c73ce642c347c6fc819d344708f9f3d61` |
| 3 | `def` | [incSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/incsteps.md) | 35 | `declaration-track:47b99a943d5666236e081f9069b8572212c6f02dfc64fe4070f6e6d1aeb954e6` |
| 4 | `structure` | [RingM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/ringm-context.md) | 38 | `declaration-track:2606501638742c99aa3920e3dd1a33c6c203da56f15950f19b3ca08f4b5389bf` |
| 5 | `abbrev` | [RingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/ringm.md) | 59 | `declaration-track:24ba7557d6def89ff655f0ce40ea46c65ae75845f10adfbdfd06f9bde921744a` |
| 6 | `abbrev` | [RingM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/ringm-run.md) | 61 | `declaration-track:1e9e268acda1d17298b799971ae7348874dec2785a9bbdd49516c3661904ebbb` |
| 7 | `abbrev` | [getRingId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/getringid.md) | 64 | `declaration-track:819ecd6d0fc0e63f4a0c8479b3d3a35acfaa0401775e570f135b884a188cd09f` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/instance.md) | 67 | `declaration-track:0b0a6f4a80836d85d60c9d92c022b33dbfc7ba3a9eda5241f7c6378a08f81bb5` |
| 9 | `def` | [RingM.getCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/ringm-getcommring.md) | 71 | `declaration-track:561de3de4858b755e384cb4b758c60a3f9f33660f493ab197c6d9f333d33c9eb` |
| 10 | `def` | [RingM.modifyCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/ringm-modifycommring.md) | 79 | `declaration-track:bb4f16e98569bd142e891e3819f36fe3eab33d10862140262fb26c4b7538defe` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:1f4f7b23c71d85fda93366f9aec98cfd30b36c8bdecdb614cd6a246c699d4ac4` |
| 12 | `abbrev` | [withCheckCoeffDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/withcheckcoeffdvd.md) | 87 | `declaration-track:baac2a8cd82579bdab3eac9427b4bd560f73cddddd669d3d02744550c6c009fe` |
| 13 | `def` | [checkCoeffDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/checkcoeffdvd.md) | 90 | `declaration-track:49b186af825f574b31170ed4330c6ffaf82af25c604f1adb0270df1702b87474` |
| 14 | `def` | [getTermRingId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/gettermringid.md) | 93 | `declaration-track:64b910eea111a82fe2296543f556db1f2fd6078e8438aeb20dfbb5b73afd427c` |
| 15 | `def` | [nonzeroChar?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/nonzerochar.md) | 97 | `declaration-track:fd60884607aa868721b4935e1c8f7a5943b5c9a14edbe7ab93e5eefd1c18341d` |
| 16 | `def` | [nonzeroCharInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/nonzerocharinst.md) | 104 | `declaration-track:e097b5e16bb22192347653094a0aec654deac960708582c59ac98e48d391266f` |
| 17 | `def` | [noZeroDivisorsInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/nozerodivisorsinst.md) | 110 | `declaration-track:4bc9fcc5a4207e34cb819290d7d990ae38b450dab8ebe6f9186a4a32320f8f80` |
| 18 | `def` | [noZeroDivisors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/nozerodivisors.md) | 119 | `declaration-track:d2285a8439454673c416ef050b45450fb888853c31138167a332fc61a8713d7c` |
| 19 | `def` | [hasChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/haschar.md) | 123 | `declaration-track:0ef9fc0a26847e4fae4222f069b50e208bfa4062953e2a96210f4e1fd51f3446` |
| 20 | `def` | [getCharInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/getcharinst.md) | 129 | `declaration-track:1997e19bfe51373b1664da4367c6fc74d89b8827de1b6873d6c0451db8f044f8` |
| 21 | `def` | [isField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/isfield.md) | 134 | `declaration-track:84b2d7a3ed714b2dd0295c8cd5261440211ed7f71eabcb53f8e0395e4ae9ad23` |
| 22 | `def` | [isQueueEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/isqueueempty.md) | 137 | `declaration-track:366ab57bce5f98dd914a96a16a081c40c9eb5a459a0aed3f568e7f2386263063` |
| 23 | `def` | [getNext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/getnext.md) | 140 | `declaration-track:b43c4dc703ac9887374b0489a3dc542986bcb61cca7dae6caa7ef3c7a5aefeb1` |
| 24 | `class` | [MonadSetTermId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/monadsettermid.md) | 146 | `declaration-track:e66021c51a32df55a35de8c748fb4b7c81a94fde74d737573126906c8873a490` |
| 25 | `def` | [setTermRingId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/settermringid.md) | 149 | `declaration-track:7aec4ffb0f4853df6f1970052cb8ae395be4fd8425330bfce947b9dce765b3fc` |
| 26 | `def` | [mkVarCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/mkvarcore.md) | 157 | `declaration-track:fb259449749b8987b3606163ecd15ea768b1c9ba634bfae73382c8b466c61e48` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:f88cfddf78eb6a9825c6cd8e60990c91a0083e0a03dc558ac2e14fe14b845752` |
| 28 | `def` | [mkVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMNamespacedPublic.lean/declarations/mkvar.md) | 173 | `declaration-track:c4a69dcb2a4e20b7f2d25259419173bc8c00661d055e1b5badd81942825076df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12516850c5c9301325ad94001aaada7f10e6a4e8f776c4a3813198ccd4afbdeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantf00447ec07e672253b077ba4bcf56db0bcb6a74a819891c3c9c548352bd31dc5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantf00447ec07e672253b077ba4bcf56db0bcb6a74a819891c3c9c548352bd31dc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
