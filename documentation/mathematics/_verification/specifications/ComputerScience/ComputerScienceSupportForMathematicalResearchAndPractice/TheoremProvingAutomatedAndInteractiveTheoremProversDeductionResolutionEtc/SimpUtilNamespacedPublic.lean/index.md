# Verification target: Simp Util Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8272c5609c353d84af20dc344d78edb6b24cb36b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8272c5609c353d84af20dc344d78edb6b24cb36b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MatchDiscrOnly` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ForallProp` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Simproc` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.List` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.Core` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Grind.Norm` — import line 21; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [registerNormTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/registernormtheorems.md) | 31 | `declaration-track:bb429ec27c6e77e1dd5e42f74d72a3a218a07e19277cbcadec8494f455d7b74c` |
| 2 | `def` | [isBoolEqTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/isbooleqtarget.md) | 41 | `declaration-track:a5e3148fc95b76e2c5b57dfa8f04ab15ddf2cab279e6365cc694680c0f62b877` |
| 3 | `def` | [getSimprocs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/getsimprocs.md) | 152 | `declaration-track:460c0fde669d0ce2b29ae6ffce6208821c699b5530bc7605575ef35140ee90d8` |
| 4 | `def` | [addDeclToUnfold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/adddecltounfold.md) | 181 | `declaration-track:39a262dc41e5f201dec4d3ffc66725207b46a0c04232bb2b1eb6a154bc41c35f` |
| 5 | `def` | [getNormTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/getnormtheorems.md) | 187 | `declaration-track:392ef5d53d21e5f8ea588c17a3d1aa7fade73626ec089c4d792e7dce68d9db25` |
| 6 | `def` | [getSimpContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/getsimpcontext.md) | 197 | `declaration-track:6f3a59887392565c1bdd8684af7bd4cb05758cdd75a0169c24eb3c97acc35d26` |
| 7 | `def` | [normalizeImp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpUtilNamespacedPublic.lean/declarations/normalizeimp.md) | 215 | `declaration-track:6047e412727dce4ad9c66248d2b28d83d6077d939ed5a756cf99c6d9e7e7ef7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c65711be5613b459eeea40190753c13059a631abcd35c570afacdcb849dbe2a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
