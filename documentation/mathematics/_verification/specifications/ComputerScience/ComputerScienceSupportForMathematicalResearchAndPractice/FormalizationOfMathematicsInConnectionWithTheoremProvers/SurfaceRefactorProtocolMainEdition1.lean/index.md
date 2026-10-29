# Verification target: Surface Refactor Protocol Main Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9a356101053d54bff9980966f3eb6f290aed2d4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant726654964ce77a6fa33415bb4b2837b813d8e67794121639fcf5c5c63aea011c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9a356101053d54bff9980966f3eb6f290aed2d4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant726654964ce77a6fa33415bb4b2837b813d8e67794121639fcf5c5c63aea011c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant726654964ce77a6fa33415bb4b2837b813d8e67794121639fcf5c5c63aea011c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 3; external provider; requires a separately pinned dependency.
- `Surface` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/requestschema.md) | 20 | `declaration-track:e8eae358e38127a4f303f32658d45e3997368223cda007f7825d5b4f84e6b9dd` |
| 2 | `def` | [responseSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/responseschema.md) | 22 | `declaration-track:ab26018a1c7c9e1c9b49c7f4d44db4ff3224776a5617a17e297f3ace5053a63f` |
| 3 | `def` | [protocolVersion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/protocolversion.md) | 24 | `declaration-track:f383e475f692005a893bedff7b5c62a821cba69a7ee33438b70374e5abba30d9` |
| 4 | `structure` | [Request](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/request.md) | 26 | `declaration-track:5ccd2e34838027c235001177ef705e803c2d41fd17d3506bb9a1bfeff5e6547f` |
| 5 | `structure` | [ProtocolError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/protocolerror.md) | 35 | `declaration-track:a5f1953ec8145af419b463fb84a26bc2d97a4d7b50ee152c55abcf5822dc305b` |
| 6 | `abbrev` | [ProtocolM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/protocolm.md) | 40 | `declaration-track:9a5df2e09f5fc3bd3816da8240241c99f223eca4edb51894c9c7c977c9be60e2` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/requestfieldorempty.md) | 42 | `declaration-track:638544b6fd4085d4b6bb56ecf1c83635d8cb32ff7ada31f1068dcb57669739f2` |
| 8 | `def` | [nameFromDottedString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/namefromdottedstring.md) | 47 | `declaration-track:c4b35d9eda8126a719acf0cd59b4255d65370727d0f48f26ec26543618c6793d` |
| 9 | `def` | [declarationModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/declarationmodule.md) | 50 | `declaration-track:6fb0ff2a35dfb4e550d2c454d93e4031ed536dc68ccd3d2438edf48b38b683dd` |
| 10 | `def` | [environmentFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/environmentfingerprint.md) | 55 | `declaration-track:9f414c8b8a7b78e7241d529a2cf1d02eef462f66aa767879e983d7d3912de887` |
| 11 | `def` | [constantKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/constantkind.md) | 59 | `declaration-track:eb12370fde96c9d4954eb59cec01a158d64d244613763c5eac418f0c5db0260a` |
| 12 | `def` | [classificationTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/classificationtags.md) | 69 | `declaration-track:c46ffb5e75203fcdb04731e87cf78d7322a178d10204c15dbe2978aa840a6f3f` |
| 13 | `def` | [positionJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/positionjson.md) | 76 | `declaration-track:f419f0a92419b6b33f169620c83514c1a88d8d3dd22e367eb0e89d45f62c2263` |
| 14 | `def` | [rangesJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/rangesjson.md) | 79 | `declaration-track:c2f95bd533a01f230a259d3b7d765506fd344519d5273ce89da985f45e33c144` |
| 15 | `def` | [errorJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/errorjson.md) | 88 | `declaration-track:506f8c747a6a1a119cc6128267eb3699b1fab4eec3a5f87f5866fe17d2a4ec0a` |
| 16 | `def` | [responseBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/responsebase.md) | 95 | `declaration-track:eb280fd7b89960d3ddb3a3c09e1ce42136fd3481167319a7dc39eaabc1331aff` |
| 17 | `def` | [success](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/success.md) | 110 | `declaration-track:d17edb5d607c5442e7408478a043fc0d309f7fce638784b462405f0cb776d0a8` |
| 18 | `def` | [failure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/failure.md) | 116 | `declaration-track:4be58b2f3c3955c194b9eeab908a4e395736a83959a2f9c85d5b2ff7a80d0a09` |
| 19 | `def` | [payload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/payload.md) | 123 | `declaration-track:b94419dd55ca7a76bf13fd3d947685033759fb1a4f89162e0df0cfc0754c3274` |
| 20 | `def` | [requirePayloadString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/requirepayloadstring.md) | 126 | `declaration-track:e7a0a568eab7e7c7132e506c0355ac885ffbeb16ef2e7b34faee2f86e3175764` |
| 21 | `def` | [requireDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/requiredeclaration.md) | 136 | `declaration-track:8f51c9d335654de09592c4abd7cad6b53bc4872edfcdf746050036263ab207f2` |
| 22 | `def` | [inspectCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/inspectcore.md) | 148 | `declaration-track:37f47c20b16f81102f3a165621088ffd7ede4ff55f3307ed1e3de63f51d31dc5` |
| 23 | `def` | [declarationDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/declarationdescription.md) | 161 | `declaration-track:b89e8f1bc832cd33faeb9f276334a837ced9c07d638b4ba2dcd969d3505f860d` |
| 24 | `def` | [canonicalDeclarations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/canonicaldeclarations.md) | 181 | `declaration-track:4666dd11eab614580be82ecce7f4539e7ddeafce5ddbbbb914aacd11b8280383` |
| 25 | `def` | [projectDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/projectdescription.md) | 188 | `declaration-track:ab7aa7c4db484a3b06b0f7194bbcb230abba98db4eff3ebe8ab258c0a08fca11` |
| 26 | `def` | [projectIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/projectindex.md) | 199 | `declaration-track:e67ed30d88b6349f36746694006ecbd31d6a8351c94c07b199ed4817a49d798f` |
| 27 | `def` | [publicApiSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/publicapisnapshot.md) | 214 | `declaration-track:3b7cad30c29b69d22c6a146c25af139a62617f66bd993070ff57338ee13277db` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/patchenvelopevalidation.md) | 228 | `declaration-track:478049d933048b9766a1329d961df777fcd72c406c2a5e75c72939aaeec156b0` |
| 29 | `def` | [dispatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/dispatch.md) | 253 | `declaration-track:f950c394f15b247413be2828abd92acf01ecf984271b0347e7be15953a8a2cf7` |
| 30 | `def` | [processLine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/processline.md) | 356 | `declaration-track:b6781fb25da52781f57ee8da1212bf8ae29196a9b4eba602d8c397185cee4f72` |
| 31 | `def` | [serve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/serve.md) | 387 | `declaration-track:8628b4807bf0f80cd4b62ac40d93d9252cf04c02eb3bd2ad0cff161622b30845` |
| 32 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/main.md) | 396 | `declaration-track:419b258ffd75ac187d84c1dc956cd2566f6498258c7b466c3d2e8c3eb76b712f` |
| 33 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition1.lean/declarations/main-source-edition-2.md) | 411 | `declaration-track:6a2b0c9b9ab844e49803990c6b30ac42df8a8c023d65ad61323fbc12b17ff8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15816ec6b60123e52bc7feef97f789b713415ba218afb45d7eecf281edfa0295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant726654964ce77a6fa33415bb4b2837b813d8e67794121639fcf5c5c63aea011c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant726654964ce77a6fa33415bb4b2837b813d8e67794121639fcf5c5c63aea011c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
