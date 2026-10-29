# Verification target: Surface Refactor Protocol Main Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "585cb208a0d14f9a96e99df9c0588e3890750bee",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `585cb208a0d14f9a96e99df9c0588e3890750bee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 8; external provider; requires a separately pinned dependency.
- `Surface` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/requestschema.md) | 28 | `declaration-track:df800d498fed74fd58b25c0e40f5f3c5dbf14fae0e60581378b101fd203d1ca1` |
| 2 | `def` | [responseSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/responseschema.md) | 30 | `declaration-track:d33a9f54a6fd568273b4836fb32e9c1cc4e8e177a7a2ef06ed56b265139fc0a0` |
| 3 | `def` | [protocolVersion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/protocolversion.md) | 32 | `declaration-track:c2d5ad7de0f1f80be860c8343467631a1befdcef6b1bc1009f766e1aeeb363af` |
| 4 | `structure` | [Request](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/request.md) | 34 | `declaration-track:d547fe9cae27bab170aff9d9778dd59c115526982c1d9aef4f611f6df046eec9` |
| 5 | `structure` | [ProtocolError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/protocolerror.md) | 43 | `declaration-track:a7ba8511b226d46190290458c5963259d6ddd895e617469a51c72755c8afc79c` |
| 6 | `abbrev` | [ProtocolM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/protocolm.md) | 48 | `declaration-track:7814d7bc0454e48bbba7d703b1333523941dd2c40efb6c6917e82f7f361ea806` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/requestfieldorempty.md) | 50 | `declaration-track:fc325f298415289821a8e00d3a570277a368834c285a3305967acb37ecb651db` |
| 8 | `def` | [nameFromDottedString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/namefromdottedstring.md) | 55 | `declaration-track:9c1920208ac08f28fad1ad0fcf827001b3f50dad78e1e63fe054e2a7e17355a8` |
| 9 | `def` | [declarationModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/declarationmodule.md) | 58 | `declaration-track:4c798682a6d8e16a7966b75edeca14a6bbd1cb08004005542834bbae0a0e14c7` |
| 10 | `def` | [environmentFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/environmentfingerprint.md) | 63 | `declaration-track:e9cf3643fd6d37066961802ef161e33155f1b501959c4cd4cdea489f8ff45534` |
| 11 | `def` | [constantKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/constantkind.md) | 67 | `declaration-track:485361fae071c4449eeae5444ab767417b9e77e557dc7f76aacafa5481ba8839` |
| 12 | `def` | [classificationTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/classificationtags.md) | 77 | `declaration-track:768e4bf42913b44222cd9f5f8c8450b05733acfc90a39cc7921a3a6e31217cff` |
| 13 | `def` | [positionJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/positionjson.md) | 84 | `declaration-track:66f7de6bfdb0bd5e71092b1db5c4530ae88d09e10f4ec45cbc90eae5fe827f3a` |
| 14 | `def` | [rangesJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/rangesjson.md) | 87 | `declaration-track:5b21f80ef4a42178a12722911ff11f8a28952e940f40a0313da57ed880bec552` |
| 15 | `def` | [errorJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/errorjson.md) | 96 | `declaration-track:d1437b80cc8f63f885e75244c1c08b78b7ead289e1af6014f1d48a52781ed5e9` |
| 16 | `def` | [responseBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/responsebase.md) | 103 | `declaration-track:868fc2afe5504d6139b761fa5c0ab8acd98b74f4d0856641ddb235ba4dab570b` |
| 17 | `def` | [success](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/success.md) | 118 | `declaration-track:7dcb1ef316840e10b89bcbae56e213032c49f9639e9c3af6e7a9d36ed15b23fc` |
| 18 | `def` | [failure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/failure.md) | 124 | `declaration-track:0b4a44930a23735e87612940c75a0f7c447afa7796b9725a61aef27d71e781e5` |
| 19 | `def` | [payload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/payload.md) | 131 | `declaration-track:45267fe2448654161cc19ccbd1f61ed9cb09677945c7cf8f5152c158486a3496` |
| 20 | `def` | [requirePayloadString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/requirepayloadstring.md) | 134 | `declaration-track:70262c842395369995b2c7c9587cc8d7f4bb2b30ad636d0874c32c0ec494ac62` |
| 21 | `def` | [requireDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/requiredeclaration.md) | 144 | `declaration-track:8a4f86cb2144f8dd4e3dc0e49dc521baef943ad69c6a1b8227c5d7bc5cfc4b5f` |
| 22 | `def` | [inspectCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/inspectcore.md) | 156 | `declaration-track:e9af5520cfce84d11e6d45b6e1d3033e17675094dc55208623a9df02a5e1663f` |
| 23 | `def` | [declarationDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/declarationdescription.md) | 169 | `declaration-track:9fa8b941bb0c3d164e6931192ffb7cb76a2142fbf481ddaf35b2bcab0426029c` |
| 24 | `def` | [canonicalDeclarations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/canonicaldeclarations.md) | 189 | `declaration-track:4b48018eb7989c79814785a6210318a8b26718d922303338cade782e2e7c7e97` |
| 25 | `def` | [projectDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/projectdescription.md) | 196 | `declaration-track:f79b70a891862570bdd9068a57637ae490bdbeb2f2bae1712bc120220d6d2537` |
| 26 | `def` | [projectIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/projectindex.md) | 207 | `declaration-track:0f53a42a66c20742506b973836241d01557122d8e61467f9e1d70a6ac454cb80` |
| 27 | `def` | [publicApiSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/publicapisnapshot.md) | 222 | `declaration-track:77c5670935f1958ed4c582691b4f71b81fc913a9f97cc4338a80ab11cf3a3f98` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/patchenvelopevalidation.md) | 236 | `declaration-track:d54bc1544eea50719d903a5845ec4680dcc27900cdcf70c1ef4bf69b347effa0` |
| 29 | `def` | [dispatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/dispatch.md) | 261 | `declaration-track:eefb51c248376c940f45dfd3cad0ed63a6939649d927c99920d4da5d9072fd9f` |
| 30 | `def` | [processLine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/processline.md) | 365 | `declaration-track:aeaf52bf0ed466cc73143236627e06818820a268aa53f0a9c3928558526b7e2f` |
| 31 | `def` | [serve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/serve.md) | 396 | `declaration-track:657f4b638d3289bfa8ffa09169c6e83e8b3dffd89f12e41d8925316309d261b2` |
| 32 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/main-source-edition-2.md) | 405 | `declaration-track:e7287a7cab1e7f2e601526ad605c603d4e46db2a974d53a2bca4ce712030f5f5` |
| 33 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition2.lean/declarations/main.md) | 420 | `declaration-track:90919b6c03f9864ec253f8ddff059b29e2df1529cb4bbe57611b8b0b7aba656c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30197c5f6a4869d2e0fe543f12affb98a2ed9c914a076ef0f6a3322c4df89ba0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
