# Verification target: Surface Refactor Protocol Main Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a73a7fda7574bd542833e2d85c13c135a523432b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a73a7fda7574bd542833e2d85c13c135a523432b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 8; external provider; requires a separately pinned dependency.
- `Surface` — import line 9; external provider; requires a separately pinned dependency.
- `Surface.Audit` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/requestschema.md) | 29 | `declaration-track:440dcc6add1bb9634188ddf4dd2a4612696f970cdb032d4163b8d1a67b64d054` |
| 2 | `def` | [responseSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/responseschema.md) | 31 | `declaration-track:2bb1cbb8f10a83aef6e9ad7ddca4cf06c59df371c45f70f70580226e9c52b9b9` |
| 3 | `def` | [protocolVersion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/protocolversion.md) | 33 | `declaration-track:ee3065144c3089a727e34811667bf13a303c29d917fcacca7e34ece831b3cf8e` |
| 4 | `structure` | [Request](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/request.md) | 35 | `declaration-track:a27ceac87ec6fbe21dd238484d1434c390a01c49ba0985cafffbc5364b3b22d2` |
| 5 | `structure` | [ProtocolError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/protocolerror.md) | 44 | `declaration-track:031e8a449b4fdc6ee5d97d1ff9c8a65bd3b9061d74fdcce134a8c44f97774e63` |
| 6 | `abbrev` | [ProtocolM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/protocolm.md) | 49 | `declaration-track:2299835717643ea012c56963d5b08ff6698b12d8b8c298c4fc4f215f81624989` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/requestfieldorempty.md) | 51 | `declaration-track:f33e17899b393d316fc5a0b645f7116a7c882b3715e4c9f736edddc79013c79b` |
| 8 | `def` | [nameFromDottedString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/namefromdottedstring.md) | 56 | `declaration-track:21b0a37f9b3f278141c3954e6e845a0260d85dc7720620e6bcfe1fd639a53eae` |
| 9 | `def` | [declarationModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/declarationmodule.md) | 59 | `declaration-track:03463c21ff418d20a6d1a7213a6e15ae5b543e340d1ad7f4ae5ebecc3113325f` |
| 10 | `def` | [environmentFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/environmentfingerprint.md) | 64 | `declaration-track:80e9ee645522a3187df8ba9cbbf607f46ec2e3942c4e838e5c4814e7f483a5c5` |
| 11 | `def` | [constantKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/constantkind.md) | 68 | `declaration-track:82edddd958be40a00a2c6ffa57af147ed247867a6fd310209c0419ce54d47eab` |
| 12 | `def` | [classificationTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/classificationtags.md) | 78 | `declaration-track:861af00ca8d33aa11320d001dfedda20ef0fabcb8e1f8ab71d8899f476fcb1ae` |
| 13 | `def` | [positionJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/positionjson.md) | 85 | `declaration-track:13023a602f523bc342ebc9445aab2b114e4eadd570d825eedbb1b9a5b6652712` |
| 14 | `def` | [rangesJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/rangesjson.md) | 88 | `declaration-track:f558f1828d8242549527c9934d85f692530e8d33c9644657ae323bc6495a8b14` |
| 15 | `def` | [errorJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/errorjson.md) | 97 | `declaration-track:6017623f5029b1eb34757c3c0a64d1a2508d628b83106388910008ac7f311b04` |
| 16 | `def` | [responseBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/responsebase.md) | 104 | `declaration-track:773f2c485c32ba3bc26b0b77f43b0dcb1942a996c1dcb176d977bff09dd16de8` |
| 17 | `def` | [success](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/success.md) | 119 | `declaration-track:ae4568448779df73b6473d3a80cd9046a38109f0262f68acf557e74f196a3e07` |
| 18 | `def` | [failure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/failure.md) | 125 | `declaration-track:e4c7d21132895102a9fb6dfbc141ed830287206546da45b3365167dc01e555b7` |
| 19 | `def` | [payload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/payload.md) | 132 | `declaration-track:258c287222d8c2915563da540f4c6fc73be3de6e4d01b82ed489f5bd2af1df6a` |
| 20 | `def` | [requirePayloadString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/requirepayloadstring.md) | 135 | `declaration-track:a0a91df31494260184deb2e7b60a9a714402944b03efb2af6465dd285f2d32a5` |
| 21 | `def` | [requireDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/requiredeclaration.md) | 145 | `declaration-track:daf29c022d5ab4903baef793880e7f643438fc9370a10cf640dfbee262fa4e8e` |
| 22 | `def` | [inspectCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/inspectcore.md) | 157 | `declaration-track:d0936dd4a604d121421c45c505a4853eb9d9f560a8a5b88a2f418cb827831ce5` |
| 23 | `def` | [declarationDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/declarationdescription.md) | 170 | `declaration-track:1358c0abac92f30b046c78ede984cd7a3529d64479fc5d857ab7feb24289e601` |
| 24 | `def` | [canonicalDeclarations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/canonicaldeclarations.md) | 190 | `declaration-track:68a55f4cbab483052405a7f6f44c3c088c97598cbf5f043f82509fd7f8ae1023` |
| 25 | `def` | [projectDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/projectdescription.md) | 197 | `declaration-track:2f744287a3ef46c25ac82520a0a5eb81e3ad478a9b41882af19094a8242bac04` |
| 26 | `def` | [projectIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/projectindex.md) | 208 | `declaration-track:f9eb1c4b5166beba07e4330fc1af33c16a417d4dec754d899c03f04df8130e83` |
| 27 | `def` | [publicApiSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/publicapisnapshot.md) | 223 | `declaration-track:de8614154ba07557feccde192405560a03086ee199032c8a0115e59ad2d53dcc` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/patchenvelopevalidation.md) | 237 | `declaration-track:d6023784b0826a6f4282d9285d5aefa03bd460ad9fa241970afc1a86dd640069` |
| 29 | `def` | [dispatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/dispatch.md) | 262 | `declaration-track:9e1b336f5c045098cc04d1da63bd131702feed72e4b6334506d1e44ec7cc9c5d` |
| 30 | `def` | [processLine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/processline.md) | 366 | `declaration-track:b0c72b3ca3e4ab75091fed1385947ece62442eb78577a7acd7ba4f74e3d52793` |
| 31 | `def` | [serve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/serve.md) | 397 | `declaration-track:66eeae34616c5dd8de0715298e52cc0e86c9959f2e79e8b4091f226e7d9d90e4` |
| 32 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/main-source-edition-2.md) | 406 | `declaration-track:de14de02be2fb77dcc7300f41768caa0b165ba62fb6ed1a2e599091f22d7669a` |
| 33 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainNamespacedEdition1.lean/declarations/main.md) | 421 | `declaration-track:60be0cfa8873d565c6b8127a781eb12e964991cbbf58c1c16dac1972fd7c70c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c359e39785ce9121a0725853e8f222637fcfd536db32148021ea72ed84819d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
