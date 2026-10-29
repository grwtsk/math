# Verification target: Surface Refactor Protocol Main Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35da64cd13a0a7d6ba6efef2069b752cf26f0f67",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant7f077cd92860ab4bbf58fa89a2af549aec0084eeaf0b0f9fe3c932d7a984cf26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35da64cd13a0a7d6ba6efef2069b752cf26f0f67`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant7f077cd92860ab4bbf58fa89a2af549aec0084eeaf0b0f9fe3c932d7a984cf26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant7f077cd92860ab4bbf58fa89a2af549aec0084eeaf0b0f9fe3c932d7a984cf26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 3; external provider; requires a separately pinned dependency.
- `Surface` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.Audit` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/requestschema.md) | 21 | `declaration-track:b34a326a047919bb2c44c2ea18f64b8c8524f7984654f97bd1f567c2cc4643cb` |
| 2 | `def` | [responseSchema](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/responseschema.md) | 23 | `declaration-track:42ddcfdb0e9bc0026ee7ae22652fa821260f135ebe97b55d88acaa122c1b51ac` |
| 3 | `def` | [protocolVersion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/protocolversion.md) | 25 | `declaration-track:85c3f7d4050f0559fd8c9483adfe84821b22c6201cfc0b1f44f19bc4b063d74b` |
| 4 | `structure` | [Request](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/request.md) | 27 | `declaration-track:d9a41e73e23684e1cca698b682f800c2672be4648972d54dd09a5482841f4327` |
| 5 | `structure` | [ProtocolError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/protocolerror.md) | 36 | `declaration-track:23e1321664737d5df5b1f26093248081265d188ee2fb8f9eb044f29a66315fe9` |
| 6 | `abbrev` | [ProtocolM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/protocolm.md) | 41 | `declaration-track:596a3a70c4179fdb43c23af072d8c04cfcb96a8fdbff3df135016f57f874f365` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/requestfieldorempty.md) | 43 | `declaration-track:1fd49901c386bbd7386930b7b24cda0817c734475bcc24786d5d441f4bf3918d` |
| 8 | `def` | [nameFromDottedString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/namefromdottedstring.md) | 48 | `declaration-track:926d7d226392d9d98364b33f7ea3da7d665b5287583f1a1565ce5c2022a21f0b` |
| 9 | `def` | [declarationModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/declarationmodule.md) | 51 | `declaration-track:d96bd7744b511a48eb663940345b9e6fb322003561fae9b6bb24d397fe5c7e05` |
| 10 | `def` | [environmentFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/environmentfingerprint.md) | 56 | `declaration-track:a62eae1ac074bdf75d5ea4a36a5e4ebde68264b9d085419e59859526b5c1086f` |
| 11 | `def` | [constantKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/constantkind.md) | 60 | `declaration-track:5a44089196ca25b2aff505903e6a7a09632da0a3c292c32c0fdb20c4125e6fda` |
| 12 | `def` | [classificationTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/classificationtags.md) | 70 | `declaration-track:875a0eb2fd2a13258b23851dc4cbe84a4eeb10e8ed55f0eb08277e2113988d12` |
| 13 | `def` | [positionJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/positionjson.md) | 77 | `declaration-track:7c790cb3bca9707bfe17d887a869d195ed0e642b12448360761be70b05919eb0` |
| 14 | `def` | [rangesJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/rangesjson.md) | 80 | `declaration-track:45fb31e4299b4a933dad5ded6f5f3279247edc3c6697a78b490a50a3571ef9d2` |
| 15 | `def` | [errorJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/errorjson.md) | 89 | `declaration-track:1a7e685e297d203b18d2693e0f4b56afa5d3305864db402a9b8ceadaef99d5c1` |
| 16 | `def` | [responseBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/responsebase.md) | 96 | `declaration-track:68c9916099d67e3398eaf8dda9196c2fa3bac82d9d09b14bf356513dbe6d7251` |
| 17 | `def` | [success](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/success.md) | 111 | `declaration-track:38d62f9ff81d473e5c5769c3c7df1adeba8401728c68681f21464953629f9728` |
| 18 | `def` | [failure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/failure.md) | 117 | `declaration-track:910d2d74de7deeacccc08ce046a2f0a87ef3f772932b2d560497c856b2b150da` |
| 19 | `def` | [payload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/payload.md) | 124 | `declaration-track:02ba871f9a7f4e67d1ab22eff75f78265d83017d10c7651b12d61a58d962e2d5` |
| 20 | `def` | [requirePayloadString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/requirepayloadstring.md) | 127 | `declaration-track:243ee3a2d38095e965c338911e138b55b12caf543b019a671a538a3e280ea02c` |
| 21 | `def` | [requireDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/requiredeclaration.md) | 137 | `declaration-track:8db47f32334f16e6ba92368548907f76e0403fbe11831c6053696ec4ba72cc5f` |
| 22 | `def` | [inspectCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/inspectcore.md) | 149 | `declaration-track:caaf6706c12f68245e4b8508e79e9dc50f2064dd0b6bed8fcc8aa79c2a27904f` |
| 23 | `def` | [declarationDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/declarationdescription.md) | 162 | `declaration-track:b61c98d987c7290b9645878075d5ec93883382e231a197d61c5dfde198cb25d9` |
| 24 | `def` | [canonicalDeclarations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/canonicaldeclarations.md) | 182 | `declaration-track:56792803edc34e5268cf219b92dbb4c86b89f777b4b45a2a6fd8452200a072d2` |
| 25 | `def` | [projectDescription](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/projectdescription.md) | 189 | `declaration-track:6d4fabf9e5fffc2f69c5a978d7a3fe2ad3c41b49271658720fe92d41e529c6a2` |
| 26 | `def` | [projectIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/projectindex.md) | 200 | `declaration-track:31415172e2b9873256007bf27797477372b4f5e3f9b26f9404a21b80758a537a` |
| 27 | `def` | [publicApiSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/publicapisnapshot.md) | 215 | `declaration-track:1dc4c34992e72856ad7060e46e3bd03ef53a3e7ca4db80af5ad51160d09f2e65` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/patchenvelopevalidation.md) | 229 | `declaration-track:a1a8c30ff7b9374d31861454e0d15eb6350185d4df28f0f320ebb2e8142fc040` |
| 29 | `def` | [dispatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/dispatch.md) | 254 | `declaration-track:9c737c75d0a903a6c738506e4a58b42650531bdd0392447b7fb3c33e47cf83be` |
| 30 | `def` | [processLine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/processline.md) | 358 | `declaration-track:ab45e4d243c22f83096da5004cb98b7c5faa18d7b7cea66b12428c84fe4c18e0` |
| 31 | `def` | [serve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/serve.md) | 389 | `declaration-track:a6bb0d4fa491bf070e649b9e6cc6689f541fc8f74d6290a179701c7f8551aa39` |
| 32 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/main-source-edition-2.md) | 398 | `declaration-track:b3b91dde46455e2c66d809de766809dbe4656c1fea4b253431c4d35ddef5a45c` |
| 33 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceRefactorProtocolMainEdition2.lean/declarations/main.md) | 413 | `declaration-track:79a9ef1847352fc88082b4ca69c0f4b3d17f72329ecdba8c6ea2fca089c73ce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ad59e75e8653955bc10a442a07d7951564f9478450d704368ba154844b01435 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant7f077cd92860ab4bbf58fa89a2af549aec0084eeaf0b0f9fe3c932d7a984cf26.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant7f077cd92860ab4bbf58fa89a2af549aec0084eeaf0b0f9fe3c932d7a984cf26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
