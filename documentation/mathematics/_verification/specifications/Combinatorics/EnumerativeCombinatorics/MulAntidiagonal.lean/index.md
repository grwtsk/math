# Verification target: Mul Antidiagonal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b5c2b9c716ef6aa0ce5678533197858410bf8eb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b5c2b9c716ef6aa0ce5678533197858410bf8eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.MulAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.mul](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/ispwo-mul.md) | 24 | `result-track:266aaef4c871b01ed468db0bced0fcb405209c472c661597dce685d534440cf8` |
| 2 | `theorem` | [IsWF.mul](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/iswf-mul.md) | 32 | `result-track:8f08e9c4f61f61b5198b25a9f76d872501c8e85f5472934491ff14f222332827` |
| 3 | `theorem` | [IsWF.min_mul](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/iswf-min-mul.md) | 36 | `result-track:bfb4ba86b8b71afac17467d04157177c8b778b9675608c058294be68240b0fec` |
| 4 | `def` | [mulAntidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/mulantidiagonal.md) | 59 | `declaration-track:859110dacf1629ff0b314761fa74fef92b2b5f517698fb5eec5b06b3c93bbdfb` |
| 5 | `theorem` | [mem_mulAntidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/mem-mulantidiagonal.md) | 65 | `result-track:02e5a654082f05a9c2a98cccd9be153a4b25a421ad4265aa901b1ec4d0afcc53` |
| 6 | `theorem` | [mulAntidiagonal_mono_left](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/mulantidiagonal-mono-left.md) | 69 | `result-track:081337d15bc750f800bf82494812b1f8ee5b14d18e56ced5c66e3756dd283ab0` |
| 7 | `theorem` | [mulAntidiagonal_mono_right](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/mulantidiagonal-mono-right.md) | 73 | `result-track:ce037522941af782d7435d538f7733e1f51d4f523babbb40d2b538fead179222` |
| 8 | `theorem` | [swap_mem_mulAntidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/swap-mem-mulantidiagonal.md) | 78 | `result-track:7a16d0f85f3b6a5dfdece4d9ab3acd3add98ab29dea9902be43ae2330f46cc04` |
| 9 | `theorem` | [support_mulAntidiagonal_subset_mul](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/support-mulantidiagonal-subset-mul.md) | 83 | `result-track:5a3e30f4d6444c3eb99439ee331f2086c705e8bcdeef3ab1d20d5e58d86bac70` |
| 10 | `theorem` | [isPWO_support_mulAntidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/ispwo-support-mulantidiagonal.md) | 89 | `result-track:6defe4d475eeb784412b00e7abf48c72f4d2ed4a6673b86070e074dde55c0ce4` |
| 11 | `theorem` | [mulAntidiagonal_min_mul_min](../../../../../Combinatorics/EnumerativeCombinatorics/MulAntidiagonal.lean/declarations/mulantidiagonal-min-mul-min.md) | 93 | `result-track:6a8d9b3c266d9617b187fbef043f99b03fc4ccfd2db9cea430d3664d20285001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcb9b77c539f1906abb32130f540b6c5dd5ccbac310aa4cdc5302c7d49db4a32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
