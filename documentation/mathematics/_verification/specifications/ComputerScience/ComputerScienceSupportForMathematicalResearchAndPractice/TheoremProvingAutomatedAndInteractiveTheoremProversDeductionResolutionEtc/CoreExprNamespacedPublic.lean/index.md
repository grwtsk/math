# Verification target: Core Expr Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "befdad30ee96ba32947f6feb27fcb522cf725f75",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant52bca87bd27a07e9312a676c275b2f0c7116a7ae8b7d12b5fa284256865c0641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `befdad30ee96ba32947f6feb27fcb522cf725f75`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant52bca87bd27a07e9312a676c275b2f0c7116a7ae8b7d12b5fa284256865c0641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant52bca87bd27a07e9312a676c275b2f0c7116a7ae8b7d12b5fa284256865c0641.lean.json)

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
| 1 | `def` | [toSetMem?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/tosetmem.md) | 34 | `declaration-track:9958b0955fe64316507c1faa1c549f585a920526bde9a855ff77e4bb7ed4dda4` |
| 2 | `def` | [mkToSetMem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/mktosetmem.md) | 41 | `declaration-track:3b53f24b54e1b3f42723d553e68b1dd1353a0f33a34ee5441c02d601fd78ad77` |
| 3 | `def` | [IExpr.mkMem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/iexpr-mkmem.md) | 47 | `declaration-track:99206c95605cf8171ccf2afde464cd250f98eef2d3e51232f487244f0aacb380` |
| 4 | `def` | [IVar.mkCoverMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/ivar-mkcovermap.md) | 59 | `declaration-track:0ddc440811275ede151e9a7fa7df0cf3fe58d17a671cacc6bf1084e555519c2a` |
| 5 | `def` | [IVar.mkCoverMapProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/ivar-mkcovermapproof.md) | 76 | `declaration-track:5607c555188897b9d6fdb95adb96b15c66239412817e884268259228f1ab0880` |
| 6 | `def` | [IType.synthCoarsen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/itype-synthcoarsen.md) | 88 | `declaration-track:d54582fbd7d30ad3fe879211f0607d7a2c55af397690f07ea84fe51d432bd7f1` |
| 7 | `def` | [IType.mkRefine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/itype-mkrefine.md) | 95 | `declaration-track:9f30c18f6f6160dff28d733b2639596120636e7728d2a0c13b618d9519a8b1cd` |
| 8 | `def` | [IType.synthRefine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/itype-synthrefine.md) | 100 | `declaration-track:503d7f3db3da7f9b8e6f96e4831b3505dfb209118ec9a44a6e40b3913937252e` |
| 9 | `def` | [IType.mkUniv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/itype-mkuniv.md) | 107 | `declaration-track:ecca357ae0af2d4c9b2b04fe45dc0086a3241a7de6b0dbaba20162887d28181a` |
| 10 | `def` | [IExpr.mkMemUniv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/iexpr-mkmemuniv.md) | 112 | `declaration-track:6719636f50a0d078ca778eca49a69cd1257504d5f29b30b6d82db01570c8eea1` |
| 11 | `def` | [IType.synthUniv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/itype-synthuniv.md) | 119 | `declaration-track:3dd1b145704ab614f338c154d5cf24f34d30ea3e5bc7c85e16b577f3b8e439c0` |
| 12 | `def` | [mkIntervalBoolRefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/mkintervalboolrefl.md) | 125 | `declaration-track:3aa5ba359b3fc2b3e1ae5ba76fc9ce72b8601e3965f6da9a30f87554d6594d24` |
| 13 | `def` | [ExprInclusion.mkGoalProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreExprNamespacedPublic.lean/declarations/exprinclusion-mkgoalproof.md) | 130 | `declaration-track:ba9ecfc14e751fbb975dff40b62ce7741fee0db380b391030499d37338427ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5cfcae2354fa273b5769c1c793a6c941864da9ba870b15081abb058b567b557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant52bca87bd27a07e9312a676c275b2f0c7116a7ae8b7d12b5fa284256865c0641.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant52bca87bd27a07e9312a676c275b2f0c7116a7ae8b7d12b5fa284256865c0641.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
