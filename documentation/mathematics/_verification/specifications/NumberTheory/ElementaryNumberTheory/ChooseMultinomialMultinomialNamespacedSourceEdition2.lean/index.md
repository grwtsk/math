# Verification target: Choose Multinomial Multinomial Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63cb72f79794165cbd9cad10925db44284df4ca0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variantd8e6cfaa7f8ce4bcb9a90126c79104598c77d07ac26a5386f5856ef9df9ad660.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63cb72f79794165cbd9cad10925db44284df4ca0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variantd8e6cfaa7f8ce4bcb9a90126c79104598c77d07ac26a5386f5856ef9df9ad660.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variantd8e6cfaa7f8ce4bcb9a90126c79104598c77d07ac26a5386f5856ef9df9ad660.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-source-edition-3.md) | 52 | `declaration-track:c66f435ce45beecab2fd39f51368658b7cf96a3d033d7108f82b87abcf66c66a` |
| 2 | `theorem` | [multinomial_pos](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-pos.md) | 56 | `result-track:255e24d01f91e4c13ab38017bae20101f49fed097134ea0601bfbaafc5ec9888` |
| 3 | `theorem` | [multinomial_spec](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-spec.md) | 61 | `result-track:f019d6b1375ece62cbee4238a86f7592a41d37830437ae47230d5265bd6846f1` |
| 4 | `theorem` | [multinomial_nil](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-nil.md) | 66 | `result-track:eecc8bf058d33ada9bba611a8c73629b16728f1e91ae68235f963370fc37ab3d` |
| 5 | `theorem` | [multinomial_singleton](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-singleton.md) | 72 | `result-track:a9a82cbf44a031510f6ee9d173749a7d3b9753b10f9bc8c21aaef699705abc99` |
| 6 | `theorem` | [multinomial_insert_one](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-insert-one.md) | 77 | `result-track:1390716f62bf350224ac2423309e23407999293feba63dc4be96539f46bb1afb` |
| 7 | `theorem` | [multinomial_insert](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-insert.md) | 85 | `result-track:1384c6ddac6e543f5f20cf0a3fbe11e150a2efdb864fda06de425b480ff9f04f` |
| 8 | `theorem` | [multinomial_congr](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-congr.md) | 96 | `result-track:9fc43c4670adec916a06e57cd8dc23b25ba39c1b30cbcfa35c423d3a1b95316c` |
| 9 | `theorem` | [binomial_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/binomial-eq.md) | 111 | `result-track:17e2a564089d2eff2d819b678e82f01fcfa3d4fd6b70897ae54d48984630682b` |
| 10 | `theorem` | [binomial_eq_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/binomial-eq-choose.md) | 116 | `result-track:806e6886a1014c0849a8f21db9bbc7964015f461028c0774ffda34d11e411a9f` |
| 11 | `theorem` | [binomial_spec](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/binomial-spec.md) | 121 | `result-track:05d75721cd1465e52b58e2220b6236e7120474f9935c0c30b38c2ee3ae37eabc` |
| 12 | `theorem` | [binomial_one](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/binomial-one.md) | 127 | `result-track:b929e65579f9efea90d6d0c3a22acdbbf5911580dbb742d9d57a4d4027f9d071` |
| 13 | `theorem` | [binomial_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/binomial-succ-succ.md) | 132 | `result-track:7439038b6737f2d5b8b270a70f993a4cc1e07f5bd0fb0a2b48a2bba41738cb1f` |
| 14 | `theorem` | [succ_mul_binomial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/succ-mul-binomial.md) | 143 | `result-track:e0a547256a4872d104d8cc7b2b5561b78232f5861b7ac6fd4ee485452718ee9a` |
| 15 | `theorem` | [multinomial_univ_two](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-univ-two.md) | 154 | `result-track:85d114acff15db7f5d0f7d4b93aae7f6056c85f94d6baca8e15ac9762749be54` |
| 16 | `theorem` | [multinomial_univ_three](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-univ-three.md) | 160 | `result-track:d0687aa15920b3df7f400dd00b3bc4d33e9c05ecb1f13a663acdbaba4952bc01` |
| 17 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial.md) | 178 | `declaration-track:a355ccf999bddd2f72ae8511e94d598770985c9913ea40cbe5d41b3f6d0f46f4` |
| 18 | `theorem` | [multinomial_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-eq.md) | 182 | `result-track:862b3292a86c77cf8d09b1b7623d8714fd7f209740b5b74e185e3d633aef5ab8` |
| 19 | `theorem` | [multinomial_update](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-update.md) | 186 | `result-track:1873a01afaaf3fb690136ef0c8e66d318052af1842d4d985376dd55abe0a0840` |
| 20 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-source-edition-2.md) | 209 | `declaration-track:b5a25ec7e196dc040b587f231950b9bf273cf0ec452a68d31645c8f280ddc8be` |
| 21 | `theorem` | [multinomial_filter_ne](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/multinomial-filter-ne.md) | 213 | `result-track:573347bcfd017b46bd3dc09ff5e75d897d42469a509d0065e179d67bf3d88a5e` |
| 22 | `theorem` | [sum_pow_of_commute](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/sum-pow-of-commute.md) | 237 | `result-track:6d69d9badeb45b51233c5cd00e104c69eb665154e38f58ad286b0390a9bb8b43` |
| 23 | `theorem` | [sum_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseMultinomialMultinomialNamespacedSourceEdition2.lean/declarations/sum-pow.md) | 277 | `result-track:eca2a66a3c147376d0510910f5b7a986864a5217e4ab682ff6a007cb52b41057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f436e05c11f0ded010c0654caf4d5156962b6dd629a7863aa911a108b5846c4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variantd8e6cfaa7f8ce4bcb9a90126c79104598c77d07ac26a5386f5856ef9df9ad660.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variantd8e6cfaa7f8ce4bcb9a90126c79104598c77d07ac26a5386f5856ef9df9ad660.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
