# Verification target: Smooth Transition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6f4839f54563df33db4895329bbba1bfd9d8c10",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6f4839f54563df33db4895329bbba1bfd9d8c10`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolynomialExp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expNegInvGlue](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/expneginvglue.md) | 42 | `declaration-track:ca29f62f58c04b6d9ebe2b7a30750bc3d4bdaf6593bda3eceecb276f705d2f33` |
| 2 | `theorem` | [zero_of_nonpos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero-of-nonpos-source-edition-2.md) | 48 | `result-track:ac3d567906b0dbb5c52dd07f1b54833f770748e9b397cb0a6be747abea7ebfc0` |
| 3 | `theorem` | [zero](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero-source-edition-2.md) | 51 | `result-track:6a248fd661eb933c51fef698d950b801c2638e87bec1a4fcd22f0073a801dfe3` |
| 4 | `theorem` | [pos_of_pos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/pos-of-pos-source-edition-2.md) | 54 | `result-track:6f9a29b6ab79af3b0b5e7c8f37c17ffb8ec3f9370cc2bfbc0c2f8f136fed62c7` |
| 5 | `theorem` | [nonneg](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/nonneg.md) | 58 | `result-track:347cf4d9fa8acabee9493a82f52cf93cedff3514895c863d9832b7696bf6b6da` |
| 6 | `theorem` | [zero_iff_nonpos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero-iff-nonpos-source-edition-2.md) | 63 | `result-track:db48ca8fae8d2c40fb61377965c6c93cce3cd15cf6007ac60977007761c806a9` |
| 7 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/tendsto-polynomial-inv-mul-zero.md) | 77 | `result-track:8e2d80b56cbad78adcf37a81e466a2c496defdd422f63a5e5f90c3a49db80035` |
| 8 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/hasderivat-polynomial-eval-inv-mul.md) | 87 | `result-track:bdf4c94dd8ae1fa9ec4d76ceae4364462cc705ad741d2dd638e70d7ac8331eae` |
| 9 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/differentiable-polynomial-eval-inv-mul.md) | 105 | `result-track:6306e2d1e945562fd3f178e2dd6250497cec8522e76a42d76abccd40b96ab7e5` |
| 10 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/continuous-polynomial-eval-inv-mul.md) | 109 | `result-track:a317011f61ccb65ca5228e7fe294e2780ceba8621e003637a448a19942f3123f` |
| 11 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/contdiff-polynomial-eval-inv-mul.md) | 113 | `result-track:7c4755ed5ce7681eaaa59afbcaa9df30fbf9569d41b1e9f37394d801cc2a112b` |
| 12 | `theorem` | [contDiff](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/contdiff-source-edition-2.md) | 126 | `result-track:afc6a1ecea076d95dc5f09409f2ee5bf54c082b5d1f1065760fe0a769ae828f5` |
| 13 | `def` | [Real.smoothTransition](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/real-smoothtransition.md) | 133 | `declaration-track:29eeaa62b3864b0b41f87cd786dcea0d7e4d82f01be76c7f1ac8d7b27875cb2e` |
| 14 | `theorem` | [pos_denom](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/pos-denom.md) | 144 | `result-track:d9c5a25e1cbb400cd468e5c017e2303f0deb56e2e16cc82547d965f058d27d94` |
| 15 | `theorem` | [one_of_one_le](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/one-of-one-le.md) | 148 | `result-track:8059450d9ea30bd3c3aed446dab9a85e0a72d1be3a13bd5a799a0caa42e5c4df` |
| 16 | `theorem` | [zero_iff_nonpos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero-iff-nonpos.md) | 152 | `result-track:0829f0ae9421d3cf36e97229834e740f91471f54fd49bbf0b9dbb98b084ef299` |
| 17 | `theorem` | [zero_of_nonpos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero-of-nonpos.md) | 155 | `result-track:11d163154b92e7c4b7b4b2d5f3c920751538cfbc29a213a36591588ec0b78833` |
| 18 | `theorem` | [zero](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/zero.md) | 158 | `result-track:4028f370f9c98567e876a9b1dac230251d57b8309519669ff2e464faef1f3e86` |
| 19 | `theorem` | [one](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/one.md) | 162 | `result-track:b0ae12abc7b639d6a595eee9695a5c32e6369906e073042997ebdacfe7d216ed` |
| 20 | `theorem` | [projIcc](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/projicc.md) | 168 | `result-track:b3847772b748db8a4719621997edc85333559205098ce54bda5ddbcef4ce5431` |
| 21 | `theorem` | [le_one](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/le-one.md) | 175 | `result-track:eb72e42e20f861634043d993e2ea1c0794c17def7c5215c52829cf89c3b27488` |
| 22 | `theorem` | [nonneg](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/nonneg-source-edition-2.md) | 178 | `result-track:3b7fba89f39e2eb8679700a7d9f1f77f4b2204085c1e5ed8c586433118966e71` |
| 23 | `theorem` | [lt_one_of_lt_one](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/lt-one-of-lt-one.md) | 181 | `result-track:982597614877de5558e09cd941be794dacc0076e646decc5b23c599d2817a6d7` |
| 24 | `theorem` | [pos_of_pos](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/pos-of-pos.md) | 184 | `result-track:28e3cf37051c02c13ac5768ceeeeb1356f2703096980054943091acc34696518` |
| 25 | `theorem` | [contDiff](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/contdiff.md) | 188 | `result-track:492375474939c38daabe41acd0436a2e0f52a9760b28821887c1c84193fcdf41` |
| 26 | `theorem` | [contDiffAt](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/contdiffat.md) | 194 | `result-track:8c8dc1388e2eda1e9d0feff1bf1fa1129e3fe2f4717408767977824f4a02c07a` |
| 27 | `theorem` | [continuous](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/continuous.md) | 198 | `result-track:054e08d7f7f3301d2b3bff9920157dc38c388b57c760cad7545ec818c2ab9000` |
| 28 | `theorem` | [continuousAt](../../../../SpecialFunctions/SmoothTransitionNamespaced.lean/declarations/continuousat.md) | 202 | `result-track:aa4b87c18de13dd003c46f39e92648eb1f303bf62b785227795bb678e093b3dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07de7edebdbee05c12eab8e8bfe865db7faf73d2eb4f7cf1258610df7542fd31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
