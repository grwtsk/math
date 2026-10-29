# Verification target: Span Valid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9951b6958af8338af84851724e045f36c00386",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Span/Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9951b6958af8338af84851724e045f36c00386`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Span/Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Span/Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.TextCarrier` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Span](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/span.md) | 12 | `declaration-track:bb5564bd03575714894bfa8f8fad12989d5a55c7ad2c49820cfc68fbb201b33e` |
| 2 | `def` | [Valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/valid-source-edition-2.md) | 23 | `declaration-track:b17f488f595c675598f44d536fd11f200fa12aa1ba02c579ddac0fbca5daddc0` |
| 3 | `def` | [length](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/length.md) | 27 | `declaration-track:ab4a1e0fe7825990df29002064181157a7d76b181d87ec0d3f9adb05e25d8354` |
| 4 | `theorem` | [ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/ext.md) | 31 | `result-track:cdfdfcbc5d99b79e1053539420d71d09cb8e74d686f4e3d0364991dc36e786d8` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/instance.md) | 41 | `declaration-track:20427a6af0b68365ebd759dfb5ca9e32ab40f7475cb216ec78fbaf3f52171e1a` |
| 6 | `theorem` | [valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/valid.md) | 50 | `result-track:28a0e7d623433db251092215ef405237730dbf5153d938ffd202659b643050be` |
| 7 | `theorem` | [length_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/length-pos.md) | 54 | `result-track:4005120ba291afcf9d6232c8c0a38e981877c6b8dab794aae91a05b9fe4874ea` |
| 8 | `def` | [extract](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/extract.md) | 60 | `declaration-track:99645eee4cba618bc7a087cb8c3f769cbf6104451ea0bfb5ae4e42178f234fc6` |
| 9 | `theorem` | [extract_size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/extract-size.md) | 69 | `result-track:78820278984a9c4e64743f7d8ac75df6152c4de567735c6ef0ce94c2f4853a74` |
| 10 | `def` | [Before](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/before.md) | 73 | `declaration-track:a515a6858911546e7f70cf64f295956fe71c0fc7504936a14d077cf38ef0418d` |
| 11 | `def` | [Overlaps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/overlaps.md) | 76 | `declaration-track:3ae468bed21cbe35ebbb7d29234c4129182e7fa9bce188314484d1114639242e` |
| 12 | `def` | [Contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/contains.md) | 80 | `declaration-track:4797c7e13a8403d019b1b245e911bf9902c9a1cce9a0d3c207e8fefc214e6fe2` |
| 13 | `def` | [Adjacent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/adjacent.md) | 85 | `declaration-track:46877fdc4d2efbd370ead5959a56bbbce5597cff54e583cf36dc7368d34eb7e1` |
| 14 | `def` | [CoversIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/coversindex.md) | 88 | `declaration-track:067ec55528a23c52053b50c1728f19b1aa0f1830c56813c4579f59a781861e67` |
| 15 | `def` | [positions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/positions.md) | 91 | `declaration-track:c31f3e98f1186b27321c0af1cc4d54b5bdeaefe18d3d967353e5f4bf06c71fa9` |
| 16 | `theorem` | [before_irrefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/before-irrefl.md) | 95 | `result-track:64624fdd4764fb9b194be0cdf71cf8f755f36bdc15761a3660eb02441f1306f0` |
| 17 | `theorem` | [overlaps_symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/overlaps-symm.md) | 100 | `result-track:ec9cb8d2dad733b59e0140e75f97e15fbe4eeb9ebff8c953371a394406d49cd8` |
| 18 | `theorem` | [adjacent_before](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/adjacent-before.md) | 104 | `result-track:3b8300880723f916af29f2b20cc0fb2e44033229e57af45645d225f7212ab327` |
| 19 | `theorem` | [contains_trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpanValid.lean/declarations/contains-trans.md) | 109 | `result-track:354e61477c76031bd3ce9b697e55b1719d9ec9c9558df301a171c4879671ef66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2253108186575292b00141ac4e9c39463c9f5be877e591a506b777f796369cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Span/Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Span/Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
