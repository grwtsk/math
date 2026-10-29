# Verification target: Builtin Notation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.BorrowedAnnotation` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabCoe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabcoe.md) | 29 | `declaration-track:1aac801161f65c85a45c89b6b26b89f7b7a0f88c60b1f7f5b1248a6014f49b90` |
| 2 | `def` | [elabCoeFunNotation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabcoefunnotation.md) | 37 | `declaration-track:e82454684a6e157ec7a0bbf83c3ff64b5e8562de4ff74114bb9746565f74dc10` |
| 3 | `def` | [elabCoeSortNotation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabcoesortnotation.md) | 44 | `declaration-track:70902011005adf08d754e04817b4a56222a759eeae95dd78baede2a7781b9f74` |
| 4 | `def` | [elabAnonymousCtor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabanonymousctor.md) | 51 | `declaration-track:2c362fd9a06de02a9973fbc112565f41cf084f2d1071ecb0478eeaa7b969dddd` |
| 5 | `def` | [elabBorrowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabborrowed.md) | 112 | `declaration-track:9062e919b920bff3954b978682b3d124bf331ea072921e936b0d33945091bec3` |
| 6 | `def` | [expandShow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandshow.md) | 117 | `declaration-track:b4968d5e12fb409d473cb619af065683b9fa789f89387cd5b0d13b20f718f7fc` |
| 7 | `def` | [elabShow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabshow.md) | 122 | `declaration-track:af8b2a92bd54a32c06e0be46a2551da3c60667c8ccbf8af6ce5429048f7ab268` |
| 8 | `def` | [expandSuffices](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandsuffices.md) | 157 | `declaration-track:0a1a558dccbb1f7174e52a50fff3188aa8a1cc8e53c1f9614682f3e215a4c5ae` |
| 9 | `def` | [elabParserMacroAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabparsermacroaux.md) | 175 | `declaration-track:e487b07c38d57af44bd9a33e3d9790b028181b9da4a08576a2e84ec9259e8baf` |
| 10 | `def` | [elabLeadingParserMacro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elableadingparsermacro.md) | 190 | `declaration-track:02dcd605b33e707a359157634973a829462cad5978994eb970798270d7eb7c72` |
| 11 | `def` | [elabTParserMacroAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabtparsermacroaux.md) | 196 | `declaration-track:9cd6c5732548e6f40030e045d393996cf917fb7a99b4bc40c73bfb5450cc6b6d` |
| 12 | `def` | [elabTrailingParserMacro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabtrailingparsermacro.md) | 202 | `declaration-track:46846abab4e6657cde83a2a451f0a4403cd9700ecb460c4a45a9c18979d1b8d5` |
| 13 | `def` | [elabPanic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabpanic.md) | 208 | `declaration-track:201db3e88134df294b92d5eae519a87f8e9a600c9c9c130a7c4bfadb1f30a6c4` |
| 14 | `def` | [expandUnreachable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandunreachable.md) | 219 | `declaration-track:465abddfc7ec1d6696db3c9285180c55e16a06d2a5427ed68f29913136e0a289` |
| 15 | `def` | [expandAssert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandassert.md) | 222 | `declaration-track:069d144bff6a3e7fecfdb251b1f79ebc7ea9f768176a6bd36db57ade53db6e71` |
| 16 | `def` | [elabDebugAssert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabdebugassert.md) | 236 | `declaration-track:f32b5f355c6018af0dfbac35694ccac311f381df4b6b084597c85b30dfea437d` |
| 17 | `def` | [expandDbgTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expanddbgtrace.md) | 245 | `declaration-track:8a2a9b28d2bc2adf5889fe9c43557ea97530272f263881a0caa371f5559ff870` |
| 18 | `def` | [elabSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabsorry.md) | 250 | `declaration-track:a236751441835092054771dc6f4b148539973a0d237843b8e24896e27ae12378` |
| 19 | `def` | [mkPairs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/mkpairs.md) | 255 | `declaration-track:3b315289dd54a38ad1f8025c02d2b3e973b0452ce0e014865fd4232c824ad7aa` |
| 20 | `def` | [mkPPairs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/mkppairs.md) | 267 | `declaration-track:c7c665fe1707da7e1d94cfe855370db6a4ddf7e821ee6e1c1710de6c36899c75` |
| 21 | `def` | [mkMPairs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/mkmpairs.md) | 279 | `declaration-track:7bce80c72eaabcd4bff46d69a3815937374aa9f39e52ce7236bfbe4097d2d979` |
| 22 | `def` | [isCDotBinderKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/iscdotbinderkind.md) | 293 | `declaration-track:242b706665677112018ecfe9e25191bcee795db2d69dfbff6f5d01079fa3259e` |
| 23 | `def` | [isCDotForInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/iscdotforinfo.md) | 300 | `declaration-track:6a60dd892197ed488e0a50ce89f2cbd059cbaaba956dedf51a9a7ff4815b44d4` |
| 24 | `def` | [hasCDot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/hascdot.md) | 314 | `declaration-track:ef4049a6ee5f8c1fd731612da5e2b9dbbd75cd745eac5fd94d641105e7585666` |
| 25 | `def` | [expandCDot?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandcdot.md) | 331 | `declaration-track:020888869b6bebcb3cac1bd67534fa5b09afdcade7a2f79be938d45a60bc1078` |
| 26 | `def` | [elabCDotFunctionAlias?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabcdotfunctionalias.md) | 387 | `declaration-track:de43ea144fae962d5004e061146fd6bdebcdff3fdcba20c9d326cfa796ad5580` |
| 27 | `def` | [expandParen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandparen.md) | 418 | `declaration-track:67ce6b26ad64edf186951680467b8d783370aa0563426b65ecf8cb821b5668ae` |
| 28 | `def` | [expandTuple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandtuple.md) | 422 | `declaration-track:5dfdc8f4959f665ad1a57cec9bb01fbfb3b94029511dced2c57c50146893ddac` |
| 29 | `def` | [expandTypeAscription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/expandtypeascription.md) | 429 | `declaration-track:8be0d1cb4ff48c93d4694b4b2c2e1b37aace92dc1399b65a4ff18f6c72bcc679` |
| 30 | `def` | [elabTypeAscription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabtypeascription.md) | 436 | `declaration-track:6ccb17f28cba8733edbe6796a2f1f51962ce15a65a801a98a1e5cde57ec98e5a` |
| 31 | `def` | [isSubstCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/issubstcandidate.md) | 447 | `declaration-track:780c3f3ec38dccb947a4e485063ebad6321f35e8e8a4b28e25b13feaec4ec0c3` |
| 32 | `def` | [withLocalIdentFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/withlocalidentfor.md) | 457 | `declaration-track:88795b54447e2341ae1c5600cf3bf06a882a4a3f9c48725882ac534f29230e22` |
| 33 | `def` | [elabSubst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabsubst.md) | 465 | `declaration-track:a28d67be4d6afbbe06e3afc0fba75c06f1ceb67b5fbf9fb99683773acbb25732` |
| 34 | `def` | [elabStateRefT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabstatereft.md) | 548 | `declaration-track:836d58832cf773af61f25d934a5fd4b322a18b399b9086e24d1dad50b1488618` |
| 35 | `def` | [elabNoindex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabnoindex.md) | 559 | `declaration-track:0d970bc22a82fda350d12c1275e2e51293dd8aae662062227cbd8b6581da168b` |
| 36 | `def` | [elabUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabunsafe.md) | 564 | `declaration-track:76a238d7386948e8084b69f99db6151323f5e1e9c37f7b6aad29cdce772dbf19` |
| 37 | `def` | [elabRunElab](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/declarations/elabrunelab.md) | 591 | `declaration-track:81fb51728994556f3c4086217d80c5a30a6342eb0d6db07862dc1cc4fdbc3bfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a32a4255107a01ed101918f4d78ed24b843dab396cb807dcab59a5c308055631 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
