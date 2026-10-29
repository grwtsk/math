# Verification target: Entails Public Unfold Triple

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ac6a88051cf9f652105bdf42d84c8319d5c110",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ac6a88051cf9f652105bdf42d84c8319d5c110`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateMVarsS` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unfoldTriple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/unfoldtriple.md) | 33 | `declaration-track:cde313e5c6bb1dd617bd7ae5200a043f526dcb041e8a5eda699bdf9dec26a41b` |
| 2 | `def` | [introPre](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/intropre.md) | 40 | `declaration-track:2db72e0b3cb62f39372246dd8c075cf538c4c7e7e24b7475bd62ab865c7fca1a` |
| 3 | `def` | [reduceEPostHead?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/reduceeposthead.md) | 53 | `declaration-track:16436a16bea743328b38caecebb932ae2affa23c6bcfef4621efb0b5bb8ebd43` |
| 4 | `def` | [refoldHimpUpperAdjoint?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/refoldhimpupperadjoint.md) | 72 | `declaration-track:b48e655fe410521310e7888ca15a00f80ca0fb379d41560df9311b9649486e73` |
| 5 | `def` | [splitLatticeOp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/splitlatticeop.md) | 93 | `declaration-track:cc6c957cadd6eb976da47272c2a195f024f53f0bde534f43732beda40bd67d71` |
| 6 | `def` | [reduceTopAppliedPre?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/reducetopappliedpre.md) | 118 | `declaration-track:95f9e062a7fa10f6afba92e60facd5323df8f7324503285872dd954cc63251a9` |
| 7 | `def` | [elimTopPre](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsPublicUnfoldTriple.lean/declarations/elimtoppre.md) | 163 | `declaration-track:86f39c4e9a56a3e3fd6fb1110f314462bb9aec4bd9cec6494cad291dcc5d6600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0aef00b9ba1983b09a024668344f9e3db39fcfce2ab844381cf13ca9d9af67e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
