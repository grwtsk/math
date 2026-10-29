# Verification target: Types Public Lin Expr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "786d05b08e9616513d1ec0a22195b1469e213940",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `786d05b08e9616513d1ec0a22195b1469e213940`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean.json)

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
| 1 | `abbrev` | [LinExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/linexpr.md) | 15 | `declaration-track:acf792046f4610fab23987a1c0b0e4e811460bc53d57bcc036ead67554253608` |
| 2 | `structure` | [RingIneqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringineqcnstr.md) | 22 | `declaration-track:e0141dc7ab924cb44028080283d5c018a2b56ce43861f93038e53f6e3f0644f6` |
| 3 | `inductive` | [RingIneqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringineqcnstrproof.md) | 27 | `declaration-track:b946f81f49483f3bccfc773741dd87cdf666247f75967cb74654e17ddcc32a29` |
| 4 | `structure` | [RingEqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringeqcnstr.md) | 35 | `declaration-track:04392aed5cd4af0ef1fb9d22689217cb887365df6386c7fbcf87d17b4e5d15ee` |
| 5 | `inductive` | [RingEqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringeqcnstrproof.md) | 39 | `declaration-track:278a51ae33d6ccbc177271423cddc626a9cbee2cdbdfe885f67e505bf0832364` |
| 6 | `structure` | [RingDiseqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringdiseqcnstr.md) | 47 | `declaration-track:dfaa92a02962a91c4faee9343aa5e771e396de3c347bfe5455b1e9ccc8f07fe0` |
| 7 | `inductive` | [RingDiseqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ringdiseqcnstrproof.md) | 51 | `declaration-track:be64760f02e9ae062d2ad05f871ee3862a39926684d7d91cf59bb874e3245935` |
| 8 | `structure` | [EqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/eqcnstr.md) | 58 | `declaration-track:565000bcf5b3170c10c6f50ebaf4dec688227bca92da103fb91afcf34054a822` |
| 9 | `inductive` | [EqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/eqcnstrproof.md) | 62 | `declaration-track:142e9b49ac22f73cce16c17cc54697f093bfcfece6f46acb83128b1ba09c8216` |
| 10 | `structure` | [IneqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ineqcnstr.md) | 71 | `declaration-track:4a03c616803d5e9d88e7566bd021e9e9e4b5ea24a5a3d4f63e814f5f1e3b84bb` |
| 11 | `inductive` | [IneqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/ineqcnstrproof.md) | 76 | `declaration-track:f9e2740ec16360e14c255dabc65a07d85ab8b83ebde95d1f3beeb7b19b20001e` |
| 12 | `structure` | [DiseqCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/diseqcnstr.md) | 95 | `declaration-track:bc75f6a1962fad1fc48233d6715a239c07f2baf26749e8d26df819f3c794855a` |
| 13 | `inductive` | [DiseqCnstrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/diseqcnstrproof.md) | 99 | `declaration-track:8fb659dc95b6a11c61f434cd81cbf0860c6852aa500dc6be93bf444250814c9f` |
| 14 | `inductive` | [UnsatProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/unsatproof.md) | 108 | `declaration-track:52689bc61e094cc7903cb4b455960dc9be87af56203dda57e79a40abee24385f` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/instance.md) | 114 | `declaration-track:6ac54ed18228381a321bce0cab62f875d7443ad95911372f482a22ec88bc3056` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/instance-source-edition-2.md) | 117 | `declaration-track:b48371e0e99d984ef952083edbfb86b3a0f6c0b4e8cd54c1627b23d33960397d` |
| 17 | `abbrev` | [VarSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/varset.md) | 120 | `declaration-track:9a4669730bfd945c06a0e3e0e4da1177ff633b46588e37818264cf2e72dab5f5` |
| 18 | `structure` | [Struct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/struct.md) | 127 | `declaration-track:1d3dcff9e79c44d787cb2550b82b8ea746ae8199506f2a0d60efab2c6c3c11bd` |
| 19 | `structure` | [NatStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/natstruct.md) | 240 | `declaration-track:899654a9e029c170a916907fa345cc9db877234f7eb0d75a136864a6e579c6c1` |
| 20 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/state.md) | 270 | `declaration-track:fd2cbee6e286a1eafe1867cfbb16a8cb3969e0278a41d71c73953b9cc25d8999` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicLinExpr.lean/declarations/builtin-initialize.md) | 302 | `declaration-track:b5b59ea367033b5eedcc787624903869f60805c549f1ea6633da4960042ba97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d41ecb328bd9f9d3cdfa841ce872cfb0b63b32dc94a7e2d16e2ea0ea51fedbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
