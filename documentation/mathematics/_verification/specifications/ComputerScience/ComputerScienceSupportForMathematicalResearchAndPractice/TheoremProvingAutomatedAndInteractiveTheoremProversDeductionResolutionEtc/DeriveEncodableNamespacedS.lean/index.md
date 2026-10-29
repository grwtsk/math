# Verification target: Derive Encodable Namespaced S

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Transform` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Inductive` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [S](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/s.md) | 82 | `declaration-track:81e5a8084d7bdca9090814d1fd32a7b7257fc526ce0c6b6527373690568d0c71` |
| 2 | `def` | [S.encode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/s-encode.md) | 86 | `declaration-track:7ed1de8a46dbdf8e54ef96bedf32bb113e5042c8ca890ca68cd6dcb29c0d6b12` |
| 3 | `lemma` | [nat_unpair_lt_2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/nat-unpair-lt-2.md) | 90 | `result-track:c81bf4ec78bb386f32afe345c343d7878bc1fbc7db48ba4b3fa6933d2e2d0af3` |
| 4 | `def` | [S.decode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/s-decode.md) | 98 | `declaration-track:6bf62848e31913fb38605b26fb3e16dd26a77f79263a3313d67b7e472aada2a1` |
| 5 | `def` | [S_equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/s-equiv.md) | 108 | `declaration-track:42625dd3e86433c79c60cb353be69e68ad219eba2e056b85c32f5fdbd01e4fbf` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/instance.md) | 137 | `declaration-track:b5ff052f8774852936f78c475786ad6d895be8bcc4487b22828090e4fff4c5e4` |
| 7 | `def` | [mkToSMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mktosmatch.md) | 147 | `declaration-track:042b92e340a81770218e2c5c8b2d213dbbbdd78ef73002dcac5bfb99590f7f9a` |
| 8 | `def` | [mkToSFuns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mktosfuns.md) | 183 | `declaration-track:a6ba543064fc49be861a730bbeace23076c6b345d5f44a6ff6dee4298559a9d1` |
| 9 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/anonymous.md) | 192 | `declaration-track:8e2bd0128c1ae64da25fdea40ed2ce5d78976fbe10b9494f07128eb908f9f12c` |
| 10 | `def` | [mkFromSMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkfromsmatch.md) | 201 | `declaration-track:c967bb5f13b16e97ab118dd643a71052bf56f25b5b34373229901ccd87c11970` |
| 11 | `def` | [mkFromSFuns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkfromsfuns.md) | 251 | `declaration-track:f7bd9b72dea0a5b82ad1e128f7ed6ce40af9ea8751315b171ce4b532d12b57cf` |
| 12 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/anonymous-source-edition-3.md) | 262 | `declaration-track:eb00d6de29919d17c35889604cea01e8715ada3d28acce46d17f0e09e0f01a02` |
| 13 | `def` | [mkInjThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkinjthms.md) | 275 | `declaration-track:b9be50126ca8bacd2f9ec75c51cfe70de25ff4ed483f39835621ef8571c5c1e8` |
| 14 | `theorem` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/anonymous-source-edition-2.md) | 295 | `result-track:ab6db86f4483272d63c5a50572245a428fca355b989ea0fd81237ddcf6d2ad6e` |
| 15 | `def` | [mkEncodableInstanceCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkencodableinstancecmds.md) | 307 | `declaration-track:078286272b5b7d98d1e4936a4c40c5009154a8dcef6059c5a0de01af99603601` |
| 16 | `instance` | [$binders](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/binders.md) | 323 | `declaration-track:e8c9210fa8aa2f622b50fadc91205883bea1ef8594ec350d8f254b18ea770e05` |
| 17 | `def` | [mkEncodableCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkencodablecmds.md) | 329 | `declaration-track:5c9c0e8ff8c5eeea0c2e0b5c3206cb9a628d973b498d10f1111321d4aa4d400d` |
| 18 | `def` | [mkEncodableInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/mkencodableinstance.md) | 354 | `declaration-track:233ef7de31c42c7c7e8d918b95fb764bc90f41f164517a9bee433aabc27b2cc2` |
| 19 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedS.lean/declarations/initialize.md) | 370 | `declaration-track:813cbfe27e5434d04b68d274f9750688dffb53be9c1c4a2a366896f1ba19c7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a338997eb17e3dac6a6740ea16641522cf0773d48e27174067d06c3682964da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
