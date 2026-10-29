# Verification target: Formal Latex Formal Latex Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748f831bb39e1c2d1d8c9965dbdd0b27673094b6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748f831bb39e1c2d1d8c9965dbdd0b27673094b6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Presentation.LeanProjection` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Latex.LeanNotation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FormalLatexProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/formallatexprojection.md) | 19 | `declaration-track:1c7c97e60b614cb9c6614f8ce9c06fbb44e4d695289f13dcc1d283d84cc42e12` |
| 2 | `theorem` | [formalLatexProjection_recordsRawFallbacks](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/formallatexprojection-recordsrawfallbacks.md) | 26 | `result-track:aa03a2c911162b290b246ed9116bde8fdd863fcc64a2c05d6cc249bb3ae0c55d` |
| 3 | `theorem` | [formalLatexProjection_usesUnicodeCapableEngine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/formallatexprojection-usesunicodecapableengine.md) | 32 | `result-track:f4db9afb4b74f23dee76791b5dda0287a9ea47d99af2bbf1b4dc63cab01f99b7` |
| 4 | `theorem` | [formalLatexProjection_hasTotalLeanTokenMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/formallatexprojection-hastotalleantokenmap.md) | 38 | `result-track:4c979d9c4ed4dae1b8563ee8e12dae691947809d6c9246773cd8de862e51f532` |
| 5 | `structure` | [RendererQAReport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/rendererqareport.md) | 44 | `declaration-track:62b4b1ca9c59d76fbf4172380f8b30e0499f51ef1eb33c78f45c63e4beda44ec` |
| 6 | `def` | [RendererQAReport.hasBlockingDefects](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/rendererqareport-hasblockingdefects.md) | 54 | `declaration-track:2683008769752c7a5aae4fbc4985e31560aaec403f618c19bfc37d4c28df4180` |
| 7 | `theorem` | [renderer_qa_fails_paper_mode_on_blocking_defects](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FormalLatexFormalLatexProjection.lean/declarations/renderer-qa-fails-paper-mode-on-blocking-defects.md) | 64 | `result-track:e62a264df145a8585602894d791b3d10684062452706c645ecbfc8e1634c6bab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c444c89ab348f6b76fa56f078bf1a7b439064e1415130cc8bad5f0db8e5c65ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
