# Verification target: Algebra Polynomial Taylor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f51e76dfd3e14322f1d1c8643510ab24489d9006",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f51e76dfd3e14322f1d1c8643510ab24489d9006`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.HasseDeriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylor](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor.md) | 40 | `declaration-track:b8d61c14a6f5b3dce24a64125d0f03e33ead6ba36aa1878d992a905fc88511b3` |
| 2 | `theorem` | [taylor_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-apply.md) | 45 | `result-track:9ecb2bf9bbb81836cb9be3fd55180224e42f3b62d0b4729132aad6ed2476294b` |
| 3 | `theorem` | [taylor_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-x.md) | 49 | `result-track:9f3183d1c7879353e6e0325cf841c660d31f3ed8cddf65ca4176295f0654842d` |
| 4 | `theorem` | [taylor_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-c.md) | 52 | `result-track:d16646884cd91e0e161d96edc5e8435291b21f70c1b42df0c3887d8f2cfedabf` |
| 5 | `theorem` | [taylor_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-zero-source-edition-2.md) | 55 | `result-track:8403243ec04d03cb43253e66c7a63afa16422a2e527653e984e2f485d5fcb9ec` |
| 6 | `theorem` | [taylor_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-zero.md) | 60 | `result-track:7b90d25b02a73801a610a4698444a5faf42d83efd0cde29104c0ca6c7de5085f` |
| 7 | `theorem` | [taylor_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-one.md) | 63 | `result-track:7a0eecce4b597ca02dcc72d1ac1a4d2778fd1ebe0eaaa41ab34a047a0255fc19` |
| 8 | `theorem` | [taylor_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-monomial.md) | 66 | `result-track:154fb6e97733aa056f434159ff42e4b2a5278667b2a2f07c3c0ec7db9ed6fece` |
| 9 | `theorem` | [taylor_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-coeff.md) | 70 | `result-track:9d5f8832b2669a207ac36f777bd4ec905b54cf2cbcecc75c038d80a5a69560a6` |
| 10 | `theorem` | [taylor_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-coeff-zero.md) | 82 | `result-track:f442d2b8c0eeaa23c7999701a4a95129d77ce2a4a74b4f016a6bbaa649c4343b` |
| 11 | `theorem` | [taylor_coeff_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-coeff-one.md) | 86 | `result-track:74b85c013ec718373676f8eee0a3b4ad9f6e600ccab1114b7a4e8ffd1daa3e6e` |
| 12 | `theorem` | [natDegree_taylor](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/natdegree-taylor.md) | 90 | `result-track:8fd4aef0aa138b4dd31cd3dacf67456cff7519af111fd00af2feed4f718c991a` |
| 13 | `theorem` | [taylor_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-mul.md) | 97 | `result-track:7ed52ad04b489fb6bd59bb3583e1aff197d4cd047efa7c77711682282bc863b1` |
| 14 | `def` | [taylorAlgHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/tayloralghom.md) | 102 | `declaration-track:5456d5207a8640462e613c78709e40adf9358f56e507d318b2085cf8c4211dfb` |
| 15 | `theorem` | [taylor_taylor](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-taylor.md) | 105 | `result-track:f8d49f97f3881cc9428b697d3400f5135cd03592d6cce3c2ea1ccdc1501e2e2d` |
| 16 | `theorem` | [taylor_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-eval.md) | 109 | `result-track:a03f6af57bf34d526cbacda8a272cffd3b8a46f95f95d329dd01094a3fde12ba` |
| 17 | `theorem` | [taylor_eval_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-eval-sub.md) | 113 | `result-track:82c34e92d375a44779a3cefc465d7760d4a352d8196d60733e7709775c48e975` |
| 18 | `theorem` | [taylor_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/taylor-injective.md) | 116 | `result-track:54398c774ff24f9fa209427905200d0d641618d62d4e3c1b0e3244ef3232fe6b` |
| 19 | `theorem` | [eq_zero_of_hasseDeriv_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/eq-zero-of-hassederiv-eq-zero.md) | 122 | `result-track:68ff3e585c697a2cfe03ed55961d8dc324581ab82d7fa4192455444635664e12` |
| 20 | `theorem` | [sum_taylor_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/sum-taylor-eq.md) | 130 | `result-track:ff5dbedb35f1163933f426a4825d0f6f039fdc0fefb2caf39815de56c2869022` |
| 21 | `theorem` | [eval_add_of_sq_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialTaylorNamespaced.lean/declarations/eval-add-of-sq-eq-zero.md) | 135 | `result-track:de0caa6a5867d5be708997f3bfe526358b79f533e62d41f790ce1f1f11036d51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da855bbe97aef282a424b06df2a2249f857a9cace5008d121c8ed45125bab4da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
