# Verification target: Mobius Lemma Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9cdfa23f5787b369d59fa637c97570a7213888",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9cdfa23f5787b369d59fa637c97570a7213888`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaValues` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.RealSqrt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/q.md) | 38 | `declaration-track:3d30c0fc91ca8e187577c1613bef891a3b1e1b2a7662f3c01b34d36c06f8465a` |
| 2 | `def` | [R](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/r.md) | 44 | `declaration-track:13719a13c7d3a0e08eb719eee3753facbb5f83be26583f03ec6de3c1a7de526c` |
| 3 | `def` | [M](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/m.md) | 50 | `declaration-track:3e33ff9f653e2776d5cce3d2dc49747f634c62cee56e6b7a319aa5076c9624e3` |
| 4 | `def` | [sum_sq_div_moebius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sum-sq-div-moebius.md) | 53 | `declaration-track:33458b2ab0eb2201285f0bd45ccf74a93419c33e8826969aaec4a56c38b830b3` |
| 5 | `lemma` | [sq_dvd_mul_iff_of_coprime](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sq-dvd-mul-iff-of-coprime.md) | 57 | `result-track:a5bb9aa378989d836dfdf5ca8d5320358123154804caeab34ce51aaf03214d4a` |
| 6 | `lemma` | [sum_sq_div_moebius_is_multiplicative_explicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sum-sq-div-moebius-is-multiplicative-explicit.md) | 69 | `result-track:35e4231c17ce1270b9eb7f8a433699870e5b2ae2523bfdc9cba7d4929f50ae4b` |
| 7 | `lemma` | [sum_sq_div_moebius_prime_pow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sum-sq-div-moebius-prime-pow.md) | 129 | `result-track:f240090667ac3d021000d4ec2e210392be29301b4d5c2036524746f4b76ab78b` |
| 8 | `lemma` | [sum_sq_div_moebius_eq_squarefree](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sum-sq-div-moebius-eq-squarefree.md) | 140 | `result-track:f96427c016d672f6998a241317d73fb41f379e734d2365c727e140b04a09bdd0` |
| 9 | `theorem` | [mobius_lemma_1_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/mobius-lemma-1-sub.md) | 180 | `result-track:83c6336cdeb0094833e19b63f85b19f568f045d1e26d0b48f603252df39726b8` |
| 10 | `theorem` | [sum_moebius_div_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/sum-moebius-div-sq.md) | 250 | `result-track:7c343c30ebb327fd2a0be45d7555a994dd6d16de2212afbabaeace764324961f` |
| 11 | `theorem` | [integral_M_sqrt_div](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/integral-m-sqrt-div.md) | 273 | `result-track:4e28acfdbc7a5e7304dee0d0e0af16de996bd7837a0aff1b5b56cb08deb065c1` |
| 12 | `theorem` | [mobius_lemma_1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/mobius-lemma-1.md) | 397 | `result-track:34ae1ad049893912a229a4a165c05a103a10c9501a0ebd728f5ef551f7bbb6f0` |
| 13 | `theorem` | [mobius_lemma_2_sub_1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/mobius-lemma-2-sub-1.md) | 423 | `result-track:2d05154b7ace39407f565f2544981066a1ff66c7ef5797d951c367b5c71a5740` |
| 14 | `theorem` | [mobius_lemma_2_sub_2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/mobius-lemma-2-sub-2.md) | 450 | `result-track:3f5dd078bed96f628a47729f08032ce690a46ddcf82ff888451d14709d3a35ab` |
| 15 | `theorem` | [mobius_lemma_2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusLemmaNamespacedEdition2.lean/declarations/mobius-lemma-2.md) | 521 | `result-track:95789d9f937def59bb877ca5fe12031ddafcf7e670d125f5aba52510875fcd49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da312984e56ed351f3c105e2766c63a093cda1c04f25176c41aa9c5949001478 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
