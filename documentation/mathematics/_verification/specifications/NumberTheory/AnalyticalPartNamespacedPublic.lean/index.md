# Verification target: Analytical Part Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5b1775d278e6e53000f085e2af5e9802801aa06",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5b1775d278e6e53000f085e2af5e9802801aa06`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.SumIteratedDerivative` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_cexp_mul_sumIDeriv](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/hasderivat-cexp-mul-sumideriv.md) | 39 | `result-track:e62b765774ab654d494d6471b7cc3815a27a970987599e08f9d182b809d9d08a` |
| 2 | `theorem` | [integral_exp_mul_eval](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/integral-exp-mul-eval.md) | 50 | `result-track:28e449258ff90886456da5314034cad54add96b9640e51ac056675bf9e87a588` |
| 3 | `def` | [P](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/p.md) | 70 | `declaration-track:b6dc3d3cd884f66fa361930fc914472933632c63b9020f07084380ef021e5d5e` |
| 4 | `theorem` | [P_eq_integral_exp_mul_eval](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/p-eq-integral-exp-mul-eval.md) | 73 | `result-track:ed3f8fe11a60e1a362a06e35d1ece16fee7a2bc152b7956a259987827dea19ae` |
| 5 | `theorem` | [P_algebraMap](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/p-algebramap.md) | 78 | `result-track:3817d68cf1c5b1abf776a3521a7ca2034342d28f89483aaa8df8a6470074ad49` |
| 6 | `theorem` | [P_le_aux](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/p-le-aux.md) | 87 | `result-track:9548fa4bfe40731610d556592fbac96ce141a01981bccc1de9f7529c6a3b4ee6` |
| 7 | `theorem` | [P_le](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/p-le.md) | 114 | `result-track:ed43d9adf19eafae12d14fb0424bc65a770e3208813a8a2bed7e2a92406b7eed` |
| 8 | `theorem` | [exp_polynomial_approx_aux](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/exp-polynomial-approx-aux.md) | 136 | `result-track:6eeb8468e5c97fb09934de13ee5c5d0444f6a45ddab5d4e62f14c2f57924f1c7` |
| 9 | `theorem` | [exp_polynomial_approx](../../../../NumberTheory/AnalyticalPartNamespacedPublic.lean/declarations/exp-polynomial-approx.md) | 177 | `result-track:a841371cc7bde03c5368c4959ef6a49ff4ef666f6914068d9af7cd9d325b5d45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7aafb8ae29e5a90484a5e8349a8e80cd95e724cc964f14141a3f2e57754bf5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
