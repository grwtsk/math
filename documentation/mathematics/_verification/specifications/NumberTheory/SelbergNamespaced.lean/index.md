# Verification target: Selberg Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc9e836a88d58c0c5d3b64f92aa8af485f891dce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SelbergNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/SelbergNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc9e836a88d58c0c5d3b64f92aa8af485f891dce`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lemma` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selbergBoundingSum](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergboundingsum.md) | 49 | `declaration-track:b5f687469910739ce19cd11fe3892fa379d2cc0659b4d59e73ceb05fae68eb59` |
| 2 | `theorem` | [selbergBoundingSum_pos](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergboundingsum-pos.md) | 55 | `result-track:36a1a8d4efc035e8eb68398e67e3f1a83594853ae7106f7737b58910ab342c03` |
| 3 | `theorem` | [selbergBoundingSum_ne_zero](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergboundingsum-ne-zero.md) | 69 | `result-track:03781ad1fb54ff68b5f576cb969449d9cc68de559e77ad065002e0905e5455f7` |
| 4 | `theorem` | [selbergBoundingSum_nonneg](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergboundingsum-nonneg.md) | 73 | `result-track:6b436401deb328dda1756c7844a54840dac687a88271bb1327302c64dc603acd` |
| 5 | `def` | [selbergWeights](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights.md) | 75 | `declaration-track:f2a4565094f36de40a3b6719a457ed8ada94b7ef2f73b5d6e70110a0b45765c4` |
| 6 | `theorem` | [selbergWeights_eq_zero_of_not_dvd](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights-eq-zero-of-not-dvd.md) | 85 | `result-track:6c74d51d8fc879e77f9e47371b543f1954535d29f84d7d410ffc251a4f13136e` |
| 7 | `theorem` | [selbergWeights_eq_zero](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights-eq-zero.md) | 89 | `result-track:36fb56f54e71d831f7d561558211eddb83cbe1b0028675c427ef6ed999007166` |
| 8 | `theorem` | [selbergWeights_mul_mu_nonneg](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights-mul-mu-nonneg.md) | 105 | `result-track:dc91792b769fba3fb5608db4bb0dd773e9cd7a84da0fe5b63d682ebd324b154e` |
| 9 | `lemma` | [sum_mul_subst](../../../../NumberTheory/SelbergNamespaced.lean/declarations/sum-mul-subst.md) | 124 | `result-track:e2c3f80f3ab8d919659b08586749877b70005f53fb99b8e623c702554e64df3c` |
| 10 | `theorem` | [selbergWeights_eq_dvds_sum](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights-eq-dvds-sum.md) | 165 | `result-track:c251f0a6e7a03c3b5ff2a956c018108938bd0d64570223c90428cca8115802ef` |
| 11 | `theorem` | [selbergWeights_diagonalisation](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergweights-diagonalisation.md) | 207 | `result-track:a2d4f242f8cf98e4ae480ffc291f1ed12f9a363dbc97f0f9285c160582ffe58f` |
| 12 | `def` | [selbergMuPlus](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergmuplus.md) | 241 | `declaration-track:73c2d628430119a76b78fe33fbcce014a05fc78c9f2fd55cdfd0220814a094ad` |
| 13 | `theorem` | [weight_one_of_selberg](../../../../NumberTheory/SelbergNamespaced.lean/declarations/weight-one-of-selberg.md) | 247 | `result-track:5227a99eec771007c63aa28607feaee3cccd1059b8600d95af03749f8c422f90` |
| 14 | `theorem` | [selbergμPlus_eq_zero](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-plus-eq-zero.md) | 256 | `result-track:ac627f78128438a3abcb46cde69c262c7fa6e83549836d0ab21b1177b02e9a88` |
| 15 | `def` | [selbergUbSieve](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergubsieve.md) | 260 | `declaration-track:b531bdd2fedcd3f86bd7261255b12dce21d5e389f49bf11409530c7d17582816` |
| 16 | `theorem` | [mainSum_eq_diag_quad_form](../../../../NumberTheory/SelbergNamespaced.lean/declarations/mainsum-eq-diag-quad-form.md) | 264 | `result-track:f42659a77f9941204917aa67e3d45f67ecd60ced646b74bb9f150eb9494df2c3` |
| 17 | `theorem` | [selberg_bound_simple_mainSum](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-bound-simple-mainsum.md) | 271 | `result-track:2ae86cfdb485fe38c61153151280c0a7d332201e96040909834454265631c221` |
| 18 | `lemma` | [eq_gcd_mul_of_dvd_of_coprime](../../../../NumberTheory/SelbergNamespaced.lean/declarations/eq-gcd-mul-of-dvd-of-coprime.md) | 289 | `result-track:82dc24aa4e96318eb54b57ba18ae1abb302b0f42e03af8ed2d0d4d3fdab89141` |
| 19 | `lemma` | [_helper](../../../../NumberTheory/SelbergNamespaced.lean/declarations/helper.md) | 296 | `result-track:dae425ae95c514f44786e7d98777c68eb554ee70803f7634de9d7d319c476ce6` |
| 20 | `theorem` | [selbergBoundingSum_ge](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selbergboundingsum-ge.md) | 318 | `result-track:dc3f1239e9d2de0994db05bd4d22bd5423bcd6723a27a23e221a1526769997eb` |
| 21 | `theorem` | [selberg_bound_weights](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-bound-weights.md) | 388 | `result-track:3a30d19c6ed5dd734877089fd109b702ccffe2949ea0efa12eb2db32e741b9df` |
| 22 | `theorem` | [selberg_bound_muPlus](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-bound-muplus.md) | 403 | `result-track:dac35e7cbce55abf6e4f460c3cf78b985c2f426aacbb44ad2990b3ad747bacdc` |
| 23 | `theorem` | [selberg_bound_simple_errSum](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-bound-simple-errsum.md) | 433 | `result-track:f95a83aa408aa8887b89b057d25eccd9df6b1ee68bfd265b117d9b87d9dc9efe` |
| 24 | `theorem` | [selberg_bound_simple](../../../../NumberTheory/SelbergNamespaced.lean/declarations/selberg-bound-simple.md) | 444 | `result-track:f34f39871c499ad2e5afd24359d5ed264f07e061745e813cf870cec1f5fd9101` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ecd94642be88e8131b2dea41c4c004a0cc6373463736c24bcbba9841ac6985c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Selberg/Variant302d0df9535d48e2ef39a9e1f811c89fa7110f1b6aef6a90fa94de94f9f6929d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
