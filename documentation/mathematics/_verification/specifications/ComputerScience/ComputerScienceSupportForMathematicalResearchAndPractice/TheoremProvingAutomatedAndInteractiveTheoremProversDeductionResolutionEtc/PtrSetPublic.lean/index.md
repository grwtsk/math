# Verification target: Ptr Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b833996a5a104f07972c9c2946bc28358843085",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b833996a5a104f07972c9c2946bc28358843085`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5.lean.json)

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
| 1 | `structure` | [Ptr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptr.md) | 16 | `declaration-track:5c8452f18ebe5d9991fb71d609d45750a84c6d51e392c29348fed23902f0f9f7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/instance-source-edition-2.md) | 19 | `declaration-track:e9078bd004ac7e6eaabb6be0cc8978a91f0f9720c80ff51dae1d9ba5e8157c29` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/instance.md) | 22 | `declaration-track:b4789f5e52d148d460532277f9eca1bebd2e0abc15e15f198fbf6788b877c3e6` |
| 4 | `def` | [PtrSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrset.md) | 28 | `declaration-track:ec99a1de926cca25bc666e97827ff1049addee50b4b3203598e6b738777fe077` |
| 5 | `def` | [mkPtrSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/mkptrset.md) | 31 | `declaration-track:f99e8e5721493b21a31f60db0ee0f3665b81200efdf61e743844f9d06530e80c` |
| 6 | `abbrev` | [PtrSet.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrset-insert.md) | 34 | `declaration-track:10481c750459c2488af851723d7e6f7e5882b5c36aeb0f3dc8d432ca133dbd63` |
| 7 | `abbrev` | [PtrSet.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrset-contains.md) | 37 | `declaration-track:e529d9991ef4f9c90cafaa7ab84ad76850dcf097238d6811ba72e9f033fd6f71` |
| 8 | `def` | [PtrMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrmap.md) | 43 | `declaration-track:7069a20adf86f0e24ff0c6c796c1f893d278f3a320956f2152dcbd1ec4ef654c` |
| 9 | `def` | [mkPtrMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/mkptrmap.md) | 46 | `declaration-track:067db7eca73c0b495f4dc02c84c66452f71f61f812acb2a4113abf3b9eead160` |
| 10 | `abbrev` | [PtrMap.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrmap-insert.md) | 49 | `declaration-track:48b1c37b85f6e949289ebd8f75d0efb6b6c8d16296df6ad892e937b3799ed423` |
| 11 | `abbrev` | [PtrMap.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrmap-contains.md) | 52 | `declaration-track:08ab7f072304b6da81fc3bb462af5643044619409ffb96f130d556e12d17ec11` |
| 12 | `abbrev` | [PtrMap.find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PtrSetPublic.lean/declarations/ptrmap-find.md) | 55 | `declaration-track:a58c891bd9642bf2c056aa9bf73ccaeeec8ebc27407ce7a83119ace4b21c0e6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccf6abab8959ed48b0c6c6f10f79f5e131e9d4562bd97a94b917f45a63e8c1c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
