# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.UniformPairRegion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c37bb480b329df6cb264ec9566937c1eb44ad69",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c37bb480b329df6cb264ec9566937c1eb44ad69`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairRegion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairRegion.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [config](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/config.md) | 33 | `declaration-track:e9e644376de9de90c81366c0b4e8a83c3a7ae4e5fee91267eea9856652f57490` |
| 2 | `def` | [linear](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/linear.md) | 34 | `declaration-track:d7899c84371bc4290a961e2203e244b43657c854d9bc5d819a0dc831e3955d04` |
| 3 | `def` | [products](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/products.md) | 35 | `declaration-track:84ad50dc8fc08eaac4a5b8d36ea6757503a0130cc1ee4664ff563a02ecb4dd98` |
| 4 | `def` | [series](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/series.md) | 39 | `declaration-track:fedefc9cdb315e0243790584dfbb77c4da4ae69f4199c16facc8712ce7318cfb` |
| 5 | `def` | [weightCoefficients](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/weightcoefficients.md) | 41 | `declaration-track:c2d2dcfdbb6ff9c35c55d9b1374ad413c595435d99b6451251f7a7b7ced4b690` |
| 6 | `def` | [unshifted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/unshifted.md) | 48 | `declaration-track:370313c1338de09b4bc516f41c7010ac72504b1ca252deac25e19867337c0a35` |
| 7 | `def` | [shifted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/shifted.md) | 51 | `declaration-track:bff77cbd698678574c02c98a7f86a94c4ce28ba02464721d2a35acea51db7cb7` |
| 8 | `def` | [certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/certificate.md) | 53 | `declaration-track:96518980f660a1af10efd2ca26e6acb3989dbad2ad7cf1dd72c9ad3e94d59851` |
| 9 | `lemma` | [eval_linear](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/eval-linear.md) | 61 | `result-track:f94424f161396c9be9647832fab067027e4f9f87d8877c63c2bebdec1a2013c3` |
| 10 | `lemma` | [eval_products](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/eval-products.md) | 64 | `result-track:d18e5a9ede1cb157b25730237db47533886f5c30fb85eeba13934c9b8bdbe82a` |
| 11 | `lemma` | [eval_series](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/eval-series.md) | 73 | `result-track:b5e2cc5f2e3c5a7723f90b980af5fc51ddd26d82366d3f19749e4e8ea5aa9a10` |
| 12 | `lemma` | [eval_weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/eval-weight.md) | 80 | `result-track:2fed19788b01b082da80f146725087fd56766d07dc8c116fe668a2d9d78a3c08` |
| 13 | `lemma` | [power_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/power-one.md) | 87 | `result-track:77b728b89a78dace7b2b0407fe599f419a4516e34f5233845b189e8df447dc95` |
| 14 | `lemma` | [unshifted_binding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/unshifted-binding.md) | 92 | `result-track:a37db8a2467abf48becaadc435bec6149ea0f516a3dbfaaae9b9bfe8494cdd47` |
| 15 | `theorem` | [source_binding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/source-binding.md) | 104 | `result-track:8e8ec03a847505dedd9a046198b571449783cd9b86e28409d82591cac7cbaced` |
| 16 | `theorem` | [region_accepts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/region-accepts.md) | 112 | `result-track:fb6567145e34c345bcc8e2881655c536bf6c6b49585803abb667c696a0fee7e9` |
| 17 | `lemma` | [even_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/even-lower.md) | 113 | `result-track:dc110f100b28eb43c5cd94d5967525e94c061239e7af37a1b75b963cae212ee6` |
| 18 | `lemma` | [odd_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/odd-lower.md) | 114 | `result-track:a28c3ab7eb938b97fd331533df57ce3621e235be0044b889fddc83ed0da913ff` |
| 19 | `lemma` | [mem_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/mem-carrier.md) | 116 | `result-track:bf11d540692b3cdf6b44ac09392958a18a5008e6ffc3fbb0d87b5020fcd18092` |
| 20 | `theorem` | [all_point_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/all-point-margin.md) | 127 | `result-track:c78082b2633b128c3fa67ee5f38e42d07df41bc781f86ac09c92710ff7c0de71` |
| 21 | `theorem` | [rectangle_RH](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/rectangle-rh.md) | 148 | `result-track:35afebfbc54c60d9cdae56897c499b287f895985f32461276c73e9118926fa6e` |
| 22 | `theorem` | [rectangle_fiber_capacity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/rectangle-fiber-capacity.md) | 150 | `result-track:bdea7f889828ff5a8b4b521f9e2087f56ca572bab163fb0e443ab39528122c1a` |
| 23 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-10.md) | 154 | `declaration-track:fa64f77050c33dde332060e1dfc9dc5d6c98475af2bff9817254f8cd32b59871` |
| 24 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-3.md) | 156 | `declaration-track:63aacc34c25fcb93b310e77c9f334c2bc8f25167ff277bca09fbd9b5ab824f9b` |
| 25 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example.md) | 157 | `declaration-track:402e8f6e249a49008e84969c20755a2a07573f4e44551f477e99fa0ded8b4430` |
| 26 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-8.md) | 160 | `declaration-track:d6e9dac031d530e71d2035e92ed9c9dd896c39cce745b12ecf13b185ffb2d635` |
| 27 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-11.md) | 168 | `declaration-track:fff7f365c0e4789bc9b1e3ae484a6963b065e1ab7e337aad8813443cde48398c` |
| 28 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-7.md) | 171 | `declaration-track:c457986a93974ec70d7a44d5dcb6133063f069ed7b3da8abedcef2f005e17fa4` |
| 29 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-6.md) | 174 | `declaration-track:bc196cd91e6860a0460916561a82fd5308a97264e4df395c92452681fb2d53df` |
| 30 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-4.md) | 176 | `declaration-track:709a6c0544c4a3ac0f50a00e5c5b131b07c883bccbe33dcdb18b49c6d2a5e2f9` |
| 31 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-5.md) | 177 | `declaration-track:770b3b78310b5c3f572ff0e8e8d05ef19f8494ada9de6b2c48eb8cb1eed01dd9` |
| 32 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-9.md) | 178 | `declaration-track:e1c074ffe1a103b207b8d29a5d8d8e8a31e9b98e1fdaa3ad839e6a96af85d6b8` |
| 33 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformPairRegion.lean/declarations/example-source-edition-2.md) | 181 | `declaration-track:52e6d1eff0fb23a84255a40f8c461bd055639eb4301a5cc24b04774fd45ee21f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af088170ef378e0e36dac472f438b540581681d55a3621eaedc266ea6e29631f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
