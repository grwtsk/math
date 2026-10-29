# Verification target: Computation Approximations Approximations Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57784793a3c2f2fef2db7353a5f21672cd2408e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_stream_fr_nonneg_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/nth-stream-fr-nonneg-lt-one.md) | 69 | `result-track:00ce05afec05b12a4265c3e438e5acc0da0431c281805fcda6c0b18451670a09` |
| 2 | `theorem` | [nth_stream_fr_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/nth-stream-fr-nonneg.md) | 83 | `result-track:5cd8e52a87b3cbab372719cc0eff3cd90bfd4ac2b94821eb426a2777a2adc8c1` |
| 3 | `theorem` | [nth_stream_fr_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/nth-stream-fr-lt-one.md) | 89 | `result-track:60ad69973fbd082df83470161075f3d06c71ab347b9c8c3cabbb702b67359e1b` |
| 4 | `theorem` | [one_le_succ_nth_stream_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/one-le-succ-nth-stream-b.md) | 95 | `result-track:0da16564f9d7cb31812868142c23c1177c6b690a2722e963ee58bda0ea8de77a` |
| 5 | `theorem` | [succ_nth_stream_b_le_nth_stream_fr_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/succ-nth-stream-b-le-nth-stream-fr-inv.md) | 114 | `result-track:db583b198583cd7f88bea73825eaa4d6f3a217844f42bf26a026fae668e6dd1d` |
| 6 | `theorem` | [of_one_le_get?_part_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/of-one-le-get-part-denom.md) | 138 | `result-track:d886ad92c9f381ce3b7c65d25f1186fc48304fe75434cd434fde48bbdb81d58f` |
| 7 | `theorem` | [of_part_num_eq_one_and_exists_int_part_denom_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/of-part-num-eq-one-and-exists-int-part-denom-eq.md) | 153 | `result-track:36e9e2acf4931fbf3281b942edac759f35b70932ce7dc2c0637e48be7228e358` |
| 8 | `theorem` | [of_part_num_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/of-part-num-eq-one.md) | 166 | `result-track:94acb8f7d943c88e0ae3e5258b4df6f6b5e2b239d8ef75d57b099a7a0e43c8a9` |
| 9 | `theorem` | [exists_int_eq_of_part_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/exists-int-eq-of-part-denom.md) | 175 | `result-track:7c59cfb1e206700a18aab75be9df512cd2f8bbebc5a7522835b810aeb793300b` |
| 10 | `theorem` | [fib_le_of_continuantsAux_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/fib-le-of-continuantsaux-b.md) | 193 | `result-track:1d6d93d24049c9e8943dc826d1dd7f2d28b45c61667d3264a216c49664051b4c` |
| 11 | `theorem` | [succ_nth_fib_le_of_nth_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/succ-nth-fib-le-of-nth-denom.md) | 237 | `result-track:c9eb1c0f9e0cf8d494323154219bb4784ee0409d20cf318bc47a82def1880b4a` |
| 12 | `theorem` | [zero_le_of_continuantsAux_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/zero-le-of-continuantsaux-b.md) | 250 | `result-track:b22ddb79a7518f3550c6dd1f5af27dec131eeec749df9dfe84603f56e5cb2732` |
| 13 | `theorem` | [zero_le_of_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/zero-le-of-denom.md) | 269 | `result-track:3d5ad0cd19a05cfca06533305a8c6231b2b1d811c5147358b73ba3aa127d02a1` |
| 14 | `theorem` | [le_of_succ_succ_get?_continuantsAux_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/le-of-succ-succ-get-continuantsaux-b.md) | 273 | `result-track:2a73cdba06feb0f44840d0e5a0d3b0f347ad623bc59dc28945b65c3b5f8e6ec5` |
| 15 | `theorem` | [le_of_succ_get?_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/le-of-succ-get-denom.md) | 284 | `result-track:7fbf856cafdec1185388fb2b1eff08959aa48225a369ed97920021f6329a8635` |
| 16 | `theorem` | [of_denom_mono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/of-denom-mono.md) | 292 | `result-track:8d94d4fca345fa98bd13e0ef906794dfe50c1cea0c33bf4bc70da6c434506a7c` |
| 17 | `theorem` | [determinant_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/determinant-aux.md) | 320 | `result-track:57755db207c2872ae1c97bf6947a812b5171b73ebc38ae3129aa2f26173ec3cb` |
| 18 | `theorem` | [determinant](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/determinant.md) | 360 | `result-track:af2eeccf4e587c08a217a63a24db3a09545458f4419387747ab47b122a2fa399` |
| 19 | `theorem` | [sub_convergents_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/sub-convergents-eq.md) | 380 | `result-track:708049b045d0693b38e0c510b3db8ce8730b45c76c8d6ad8f0c6c1d7189222e6` |
| 20 | `theorem` | [abs_sub_convergents_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/abs-sub-convergents-le-source-edition-2.md) | 466 | `result-track:d0ca870b6e7dc1a5b5a15be14e701696d7ce77cb64af319a956df8e9f07d84a2` |
| 21 | `theorem` | [abs_sub_convergents_le'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationApproximationsApproximationsSourceEdition2.lean/declarations/abs-sub-convergents-le.md) | 553 | `result-track:8e4d6b1affa8c6c3f3c72b23d6ed032b649d494aedaf9c37b7ed96ced86f1ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15a6fdb30dd7abeda52718d687667b019991709bcd7842f08a90108bc1ed4b1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
