# Verification target: Split Public Get Simp Match Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "926a29ced11c22889cd09f9306b3e4f9a7fe054d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `926a29ced11c22889cd09f9306b3e4f9a7fe054d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSimpMatchContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/getsimpmatchcontext.md) | 21 | `declaration-track:fcdb056261fce84bfe721ea2187f04732f48f796d5902b0761048f043521eeee` |
| 2 | `def` | [simpMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/simpmatch.md) | 27 | `declaration-track:e42b55b5bd006f3dbc759754a57f769a8c2cef4f9e0aea3c8c66c94495db7cb4` |
| 3 | `def` | [simpMatchTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/simpmatchtarget.md) | 40 | `declaration-track:e8f6fc5dcc39d23f22a4b2ebfa824d7704376d3c4af3047b6dc5c23146fd9c42` |
| 4 | `def` | [simpMatchCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/simpmatchcore.md) | 45 | `declaration-track:3a5eb03e2a0efef4327150ecfb4dcc7821de3368685cecd744af683dfcbf6d93` |
| 5 | `def` | [simpMatchTargetCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/simpmatchtargetcore.md) | 68 | `declaration-track:71490958b25f2ea69d6d4720edc48710dff47801927d3d9b23fd299a9b21ed26` |
| 6 | `def` | [withEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/witheqs.md) | 76 | `declaration-track:8d64c2f7a70bbf08d3a30bf9ab60848d5a061737b83d897a24f799b53a9cf1f3` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/builtin-initialize.md) | 90 | `declaration-track:02d84c34930d6242bb1900ca54134f56ba1f2b2263d4ec2930014c925594d784` |
| 8 | `def` | [isDiscrGenException](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/isdiscrgenexception.md) | 93 | `declaration-track:ce4262cbed60b454b427ad7ed28a9533714446fb4b805cb662c6d35184ca92d2` |
| 9 | `def` | [throwInternalMisuseError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/throwinternalmisuseerror.md) | 99 | `declaration-track:471f0afdf859f87a9888dafb5a762ff93e9388eca4a1b4bffa8a488b072c1a4d` |
| 10 | `def` | [generalizeMatchPropDiscrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/generalizematchpropdiscrs.md) | 107 | `declaration-track:97d7d19f6fccb9b6fe45b214bc4fcf7e797409d6ae55a40c9eb5feeec36654ea` |
| 11 | `def` | [generalizeMatchDiscrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/generalizematchdiscrs.md) | 150 | `declaration-track:97a0b72ae78a1b9b96b5e31fecf1f716d96d9a400baf52492f93ed4987b85e59` |
| 12 | `def` | [substDiscrEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/substdiscreqs.md) | 238 | `declaration-track:9cbef0de16756b63725f50f7921495aca3225a17dd1dc8c64f46f95fb36ffd9a` |
| 13 | `def` | [applyMatchSplitter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/applymatchsplitter.md) | 252 | `declaration-track:e8349be6454a7fbb89e7b9b8036e3222a1b14fb7e64702775d7d8333e41fa1cf` |
| 14 | `def` | [mkDiscrGenErrorMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/mkdiscrgenerrormsg.md) | 306 | `declaration-track:ab4f8c1e8fbf4aac3fb4865ff6c74fa1ec2139a5ff8cbe246bd8befd45e51000` |
| 15 | `def` | [throwDiscrGenError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/throwdiscrgenerror.md) | 309 | `declaration-track:73691a6614ee7d2d8423f4b585ff4cc393bd78b9c3ac1f9ccf698ebc145c4531` |
| 16 | `def` | [splitMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/splitmatch.md) | 312 | `declaration-track:9afe236a1cdfedca32b00ef31ac8335a9ab8f810da2a5b98ef8e54da6d604bf8` |
| 17 | `def` | [splitTarget?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/splittarget.md) | 329 | `declaration-track:9b49e983bab46f5856dff11c397506910637b98a1293873eeb9652ff5c0d7959` |
| 18 | `def` | [splitLocalDecl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/splitlocaldecl.md) | 349 | `declaration-track:c7a1fe9371c712072249555f20a8d0d52c1ea23d183eeea09d912f6c835a8ccf` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicGetSimpMatchContext.lean/declarations/builtin-initialize-source-edition-2.md) | 385 | `declaration-track:57951cb0f2a1477aad66f9628f3645b95a654bd91c87ac7742a986917065cdde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d06c1618d2d2fc43bd4b0a1e323bebc9bd9f448ef41886efc6424246a0f9bb66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
