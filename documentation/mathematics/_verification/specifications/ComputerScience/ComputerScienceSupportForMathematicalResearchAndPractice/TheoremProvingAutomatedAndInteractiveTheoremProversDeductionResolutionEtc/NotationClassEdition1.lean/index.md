# Verification target: Notation Class Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31c19acb9d8517dce89bfe7ce1d42e504fb81123",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31c19acb9d8517dce89bfe7ce1d42e504fb81123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Exception` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Lean.NameMapAttribute` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/syntax.md) | 36 | `declaration-track:3919d39fda2ff12c4595705c124814e4e50be830b3454f471739b322203f2fa3` |
| 2 | `def` | [findArgType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/findargtype.md) | 45 | `declaration-track:a05d819e24f09376fdec0545be7b9246e9d6d65068972d15eba8022ba4a5a91e` |
| 3 | `def` | [defaultfindArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/defaultfindargs.md) | 48 | `declaration-track:d1117394ade6fcb3d224e2bbb47b095f7bba526e1ff910da6052cc0337d8e320` |
| 4 | `def` | [copyFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/copyfirst.md) | 60 | `declaration-track:835e64f5448cfbbe74214099c0cf452fbedf5ceaa6777545faea3c8f1fe05925` |
| 5 | `def` | [copySecond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/copysecond.md) | 63 | `declaration-track:3f248237cb7b46d01e584b83dd6be14390afeb232b0fcf820feab5f19261c624` |
| 6 | `def` | [nsmulArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/nsmulargs.md) | 66 | `declaration-track:d7f406691547053c74702d0354462ff6d0f796f3e743579e9f08f9236b6f1340` |
| 7 | `def` | [zsmulArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/zsmulargs.md) | 70 | `declaration-track:72d88d333cee985e921a7123f17bb9dd6e187db33446b217e20df064b3f2963d` |
| 8 | `def` | [findZeroArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/findzeroargs.md) | 74 | `declaration-track:cd6b99ca8fe17622d2e677c552cabe36c3bf74751c150f5d7d600ad4fb7675a3` |
| 9 | `def` | [findOneArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/findoneargs.md) | 78 | `declaration-track:498142a2a97181c2f6422317a1d2b73291d775f74d11085252bbc1a1dbb801b6` |
| 10 | `def` | [findCoercionArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/findcoercionargs.md) | 82 | `declaration-track:8aa19df9d1e1f03be148c9f4de14c2e676d6d342daa4ae8e1aab8a874cf868aa` |
| 11 | `structure` | [AutomaticProjectionData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/automaticprojectiondata.md) | 91 | `declaration-track:5b948e7717edbc2f496bc192a2851281bfc611ad6de6515c10bb6f84408d52e4` |
| 12 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition1.lean/declarations/initialize.md) | 104 | `declaration-track:0458f78520e5f98cbbb873e2151327828c781d59091d9788eb50b16f45605695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b703421bc53381e6f996261c29562ee5994116fa84860a6005ae7b4822aa77c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
