# Verification target: Url Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8489aa818e3c5383b88a54f49022a8730a30bb10",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8489aa818e3c5383b88a54f49022a8730a30bb10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.JsonObject` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Util.Proc` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hexEncodeByte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/hexencodebyte.md) | 28 | `declaration-track:81e2ae83dee4475ca497761f6f8dc0380021fd2377fb6824f16789fc5125b633` |
| 2 | `def` | [uriEscapeByte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/uriescapebyte.md) | 48 | `declaration-track:4fe068cf46c06d8d40851a668be38b4fccad51eeed285428a8e866b050ccd693` |
| 3 | `def` | [foldlUtf8M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/foldlutf8m.md) | 52 | `declaration-track:3e0aaf8d6c9479b81cf52dc28f31d2a52a5d8ecbed1f2b0f69b5b3476a205402` |
| 4 | `abbrev` | [foldlUtf8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/foldlutf8.md) | 73 | `declaration-track:d839e8fcd328c708a732c3da4714f3c4e3bbf5c298a60dd11e4568eec038d8e7` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/example.md) | 76 | `declaration-track:5a36b6aacebe9240ea78fbd26fead7de8e354ee43de200f3c3427f7cf1623d14` |
| 6 | `def` | [uriEscapeChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/uriescapechar.md) | 85 | `declaration-track:873ce41594b38a6a0c61a6c62033ec47c3d533bea7e611f52bc01263244b4d01` |
| 7 | `def` | [isUriUnreservedMark](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/isuriunreservedmark.md) | 98 | `declaration-track:b742c4746d9dcfad5fb8636c9270e505054afe28c2bbf17a3c3f636a2c44abee` |
| 8 | `def` | [uriEncodeChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/uriencodechar.md) | 102 | `declaration-track:241ed587dc74f578bc7a3bc1ecf4c043db77c9157025dab88a30c675b3738f50` |
| 9 | `def` | [uriEncode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/uriencode.md) | 109 | `declaration-track:8667d064bb01050b41479552070689da59a2fcd5cc8a790c816d9a040ef5d360` |
| 10 | `def` | [getUrl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/geturl.md) | 116 | `declaration-track:0668e63e3b0bfe749893fc502c4766e5f017826d8c4257c22754a3707b98c335` |
| 11 | `def` | [getUrl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UrlNamespacedPublic.lean/declarations/geturl-source-edition-2.md) | 142 | `declaration-track:1c4c863de72c3361d78552040a4be934b3a2f3f8e64d1eaacaa66b0b8080e9ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f29b04bf818c4c0ef1fa5e8c41f1a5c6cfeb454df4f11c1743f3e3f2a71b03ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
