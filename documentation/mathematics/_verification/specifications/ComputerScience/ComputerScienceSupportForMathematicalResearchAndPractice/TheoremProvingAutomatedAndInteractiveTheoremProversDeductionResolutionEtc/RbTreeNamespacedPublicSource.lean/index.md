# Verification target: Rb Tree Namespaced Public Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a42e062efafe61bb308d1f7d52e738e54edaae",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant74a61d8d0957339254e1ea6df6dcafd368909bda82673b9e8166505b2a9da777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a42e062efafe61bb308d1f7d52e738e54edaae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant74a61d8d0957339254e1ea6df6dcafd368909bda82673b9e8166505b2a9da777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variant74a61d8d0957339254e1ea6df6dcafd368909bda82673b9e8166505b2a9da777.lean.json)

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
| 1 | `inductive` | [RBColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbcolour.md) | 19 | `declaration-track:f34aa94b66205fa4d90b906e3788b9a6f59e5ac36a6c08d946a69be4165e586a` |
| 2 | `inductive` | [RBTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbtree.md) | 22 | `declaration-track:a8d8f73445d551b5781596513e9e78cdc4f294ce8c1f3f921f2717957162c241` |
| 3 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/contains.md) | 28 | `declaration-track:1a65fbc67dfc9199f6841f48737259c439beb1c9c8824f1cacb6cf624ff69b98` |
| 4 | `def` | [balance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/balance.md) | 35 | `declaration-track:62f5d8436c3c45b3669eedc9c1aed2693c6b7a2876996552b03e539d4005303f` |
| 5 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/insert.md) | 43 | `declaration-track:b18cecdaecb88cc73691484f2a20b1935c33c9a9f251642483b2d23a057bfb34` |
| 6 | `def` | [empty?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/empty.md) | 62 | `declaration-track:fbce8d3638533da8e28a8593298d5a825933dfbdf2f1fed86ff5d44e021afff2` |
| 7 | `def` | [Lean.Expr.app5?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/lean-expr-app5.md) | 65 | `declaration-track:8d370403303aec7bb98bd575dcfbd028bbf2f2bc00d35b1e10809074194d051c` |
| 8 | `def` | [node?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/node.md) | 76 | `declaration-track:150b5ed9934f7d63821725cf8faf2431f7930b45178d0023466f8ee828ab50da` |
| 9 | `def` | [evalColourUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/evalcolourunsafe.md) | 80 | `declaration-track:5876392a763d6fe4fe4579fa270156f62417186447973c276b3992e70d47de6b` |
| 10 | `opaque` | [evalColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/evalcolour.md) | 84 | `declaration-track:983ac88218b4052f990f7194e4de6866ca2d44a9d04fc9b0625800d08cda9345` |
| 11 | `inductive` | [RBTreeVarsColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbtreevarscolour.md) | 87 | `declaration-track:2eb157a59fe654cac3c016c85b41992344c86f5ed5d75482240041cec9316ee0` |
| 12 | `inductive` | [RBTreeVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbtreevars.md) | 97 | `declaration-track:d36ff056c1528141544d3311a7e7e54dcf8dce8bd4edf56fdde520f010a0396d` |
| 13 | `structure` | [RBDisplayProps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbdisplayprops.md) | 105 | `declaration-track:65ae133c4591b271f83df83087f547c2e34c9db6e70a4f9e3f87b64197cb0ce0` |
| 14 | `def` | [RBDisplay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbdisplay.md) | 112 | `declaration-track:d05a8f4bc050f82b4e82c62d83c7fded5b380eb1312cf017cacc37071d42b4fe` |
| 15 | `def` | [drawTree?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/drawtree.md) | 116 | `declaration-track:06f96ba24a009d4490482eba0b51c744cf71b6068dcfe112188c06511b98417b` |
| 16 | `def` | [RBTree.presenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/rbtree-presenter.md) | 137 | `declaration-track:9b85d155f4fcb25af0c42dda786f28beebccac062cee5c01ef737ca833251ff3` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespacedPublicSource.lean/declarations/example.md) | 147 | `declaration-track:f2896fbfdfadc4e5a90d45f0867ac15bee2b930f0d421db3da61049747ce215e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9856c553f93563c3c35d4f8e9c61d79e407811bd12e389f05713e98721e9f457 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant74a61d8d0957339254e1ea6df6dcafd368909bda82673b9e8166505b2a9da777.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variant74a61d8d0957339254e1ea6df6dcafd368909bda82673b9e8166505b2a9da777.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
