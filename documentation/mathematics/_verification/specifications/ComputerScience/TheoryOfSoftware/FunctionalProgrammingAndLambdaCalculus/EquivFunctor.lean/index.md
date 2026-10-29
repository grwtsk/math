# Verification target: Equiv Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f04f4dfa367fb563891d14cac036b8daf79fa71d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant5870ef9ae360a23d72a47bf089a41191320cea64dfaf38943fd961d6afbb9b5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f04f4dfa367fb563891d14cac036b8daf79fa71d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant5870ef9ae360a23d72a47bf089a41191320cea64dfaf38943fd961d6afbb9b5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant5870ef9ae360a23d72a47bf089a41191320cea64dfaf38943fd961d6afbb9b5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivFunctor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/equivfunctor.md) | 29 | `declaration-track:88eb15ded79e1b419230845bddd1cc6d4648c35247db6a143d34171b636460ae` |
| 2 | `def` | [mapEquiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv.md) | 46 | `declaration-track:b354b430cd494868894d90765c9011759debcf2e3ea4eeebd118752bf456bb4d` |
| 3 | `theorem` | [mapEquiv_apply](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-apply.md) | 57 | `result-track:dd7513b971ece021adc931d39870e5cf545954eedbf64746507eb880798b063d` |
| 4 | `theorem` | [mapEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-symm-apply.md) | 60 | `result-track:92d32a97d9c8879f3704e6ad93131cebe56521a87f3c22f9c1c8e8076b594476` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-refl.md) | 64 | `result-track:09095febeb0516e1269ddfb8bfaff5078adf4a7245aab2596e71f361b0d75162` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-symm.md) | 68 | `result-track:bb12c3038568b00499b7145b040c3ac2f8ae77924d90f74f0ebe116478c6cc37` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-trans.md) | 76 | `result-track:21809ac18c4baab3a08a25d7344c6c3958cd205cb4ec10b673b5271288ed404c` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/instance.md) | 82 | `declaration-track:baa0dc8a0721ec731fecbc99123874c4f4f494169d44a2454d097740e56b1298` |
| 9 | `theorem` | [mapEquiv.injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctor.lean/declarations/mapequiv-injective.md) | 92 | `result-track:738eb64d53dedd0e0f41f5cd1d5c58c3422c6b29410c6bae0eef1beee5d6c6ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=165efbcdf254bb3621ce6eff53291b9904df2164097c56fa693679157c39b52b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant5870ef9ae360a23d72a47bf089a41191320cea64dfaf38943fd961d6afbb9b5f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant5870ef9ae360a23d72a47bf089a41191320cea64dfaf38943fd961d6afbb9b5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
