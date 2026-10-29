# Verification target: Infer Borrow Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc2458c119a786ffaaf431b2b05474b66258ab27",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc2458c119a786ffaaf431b2b05474b66258ab27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.ExportAttr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.MonadScope` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.FVarUtil` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PrettyPrinter` — import line 20; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Producers.Monadic.Array` — import line 21; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Combinators.Monadic.Zip` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Key](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/key.md) | 65 | `declaration-track:8c52b4b8e34ff8a0ad57be3f4666b7a7a555cb67230366e19645623e8f0f2473` |
| 2 | `structure` | [ParamMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/parammap.md) | 72 | `declaration-track:e0a2e24e3d8933f3e4c3892094b555a29083f0feb76b6bcb2963203ddc44b3c1` |
| 3 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/insert.md) | 83 | `declaration-track:ecd039ddcbbed50e01c547942b403a1955d726583ac71912ba760a6094d9c871` |
| 4 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/erase.md) | 87 | `declaration-track:c1363ded1f779722375d6d975c1f844bb1c53f375e65bdf6ebaf19cc5660b5c7` |
| 5 | `abbrev` | [InitM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/initm.md) | 92 | `declaration-track:606da76d77a319acdb7d2615d3c9ba3efcef2ca082ec9767aa7fe5d79bf8749d` |
| 6 | `def` | [mkInitParamMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/mkinitparammap.md) | 94 | `declaration-track:2b307ceef36ebfe0a82bb48ca469942e1d028d0492138ee7c730c9cbcbe3ea11` |
| 7 | `def` | [apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/apply.md) | 140 | `declaration-track:d6a99188fc9deccabcd0c5361351864971f40127af0bee21851573cdf540477b` |
| 8 | `structure` | [Ctx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/ctx.md) | 167 | `declaration-track:264c74c27aad4bc32cb743bf2529567ae7f18e3ec6ea812d612cbb350541a019` |
| 9 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/state.md) | 182 | `declaration-track:90cb829e5b44a6ad0dc6e27b445ac8a1b6fa28426b2bb0758ca93e0b43817e2a` |
| 10 | `abbrev` | [InferM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/inferm.md) | 190 | `declaration-track:d11bb1369559d6b20cda6f4c5ffe4e71308e74e3d16b9a03886ff3233095c6f4` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/instance.md) | 192 | `declaration-track:9c0cd7d713025babdaa277d38e5f146741c685df8f6154467fded1c8d192d4c0` |
| 12 | `inductive` | [OwnReason](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/ownreason.md) | 199 | `declaration-track:b4b85c6676e97944a930161b15ca0ad2174556f4a3d31edd9f5a3029458524da` |
| 13 | `def` | [OwnReason.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/ownreason-tostring.md) | 227 | `declaration-track:1fa358bc0d441dea586853cee033a945bc046986e9ee5630067e65202bd38518` |
| 14 | `def` | [OwnReason.isForced](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/ownreason-isforced.md) | 249 | `declaration-track:64e3168515813243d81db0102c7d968033d28b51f9f5b4a37d7a034fb14f0967` |
| 15 | `def` | [infer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/infer.md) | 271 | `declaration-track:c3b73b60e5e46dad95377f98f783f5eeb18e383c5cf09483ef2fbc8449520ecf` |
| 16 | `def` | [inferBorrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/inferborrow.md) | 449 | `declaration-track:5a7c5c17c261e7d57f5684f6bce8804c92477bbafbfe6a627f4b92f8f526f047` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InferBorrowNamespacedPublic.lean/declarations/builtin-initialize.md) | 459 | `declaration-track:87664066ce1d52047fbb5994d1ea86c519b634d78065bc60b058d5f941e0f943` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea705e96efd651e2c35fd6899c19b7ebd5bd58019daaa2709523e1d49c38dae7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
