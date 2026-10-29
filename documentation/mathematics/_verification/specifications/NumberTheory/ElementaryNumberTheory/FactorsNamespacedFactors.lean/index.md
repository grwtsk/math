# Verification target: Factors Namespaced Factors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61480fd1cda78e26e1d79c5d082648564f7bf1e5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61480fd1cda78e26e1d79c5d082648564f7bf1e5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors.md) | 41 | `declaration-track:8fd2de7c0ec188a5366ddfdef5f7d9ea1a28261b09cf6ec164648d17c9eda3a5` |
| 2 | `theorem` | [factors_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-zero.md) | 51 | `result-track:8f163c83cac06f2a3a5c2d3903b41c0d8af3ce9acdc2b8fd4eb810751ce5a226` |
| 3 | `theorem` | [factors_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-one.md) | 55 | `result-track:b5f1e2fff381f8a4eb7377b648dd49ce43e5a9cc1ea037cd6de26451b55d9083` |
| 4 | `theorem` | [prime_of_mem_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/prime-of-mem-factors.md) | 58 | `result-track:589202215529c0093d1d502946bf1c0e654e8ba9f7e879335cd02a6e0f19e67a` |
| 5 | `theorem` | [pos_of_mem_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/pos-of-mem-factors.md) | 71 | `result-track:666ad582de621905fe220eb6228059a92334cbc6d89f8a8b3223bab30be82fe6` |
| 6 | `theorem` | [prod_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/prod-factors.md) | 75 | `result-track:f3b84eb061874affc3f3f35f1b81b0c5a744b6419f81f01fed7b8e34b1b63304` |
| 7 | `theorem` | [factors_prime](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-prime.md) | 88 | `result-track:c5e8c6174992c03698ec3637ced635e7ffa192b0dd04bc4bebd4723ea4d5d76d` |
| 8 | `theorem` | [factors_chain](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-chain-source-edition-2.md) | 96 | `result-track:d3bd1844ae8e85efa5595ef99d736178abddbcb0f7c526f6aa74571198f52360` |
| 9 | `theorem` | [factors_chain_2](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-chain-2.md) | 110 | `result-track:76d9f50fa33a8513108746f0dee7a95c98fdec884cb37f5e26e60cd69dabe235` |
| 10 | `theorem` | [factors_chain'](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-chain.md) | 114 | `result-track:84932d05b0a657eab8b65f6d69068f7d7669e84a9464ee5c10871fcfed26d019` |
| 11 | `theorem` | [factors_sorted](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-sorted.md) | 118 | `result-track:149160963a41c25a852ca9cce14cbf2a201231978c31166c7b64740cd59a7907` |
| 12 | `theorem` | [factors_add_two](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-add-two.md) | 123 | `result-track:347f70b646d2abb809587c0c47187e6a7d70a569e019b85bad44f57eaf57b7e6` |
| 13 | `theorem` | [factors_eq_nil](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-eq-nil.md) | 128 | `result-track:bbeda125481dff6d25fa4d8adb7031d4e7301cb33f6ab321a6d395b44d6bdd34` |
| 14 | `theorem` | [eq_of_perm_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/eq-of-perm-factors.md) | 140 | `result-track:7ca3892f9de2acb1c298c4b1bdb0df4e311001012193e2ed4b3c853662181ff1` |
| 15 | `theorem` | [mem_factors_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors-iff-dvd.md) | 148 | `result-track:0aa33b3ceaf516b30e17b2bdaf6014008a2718201002506e4fb0b326bb611607` |
| 16 | `theorem` | [dvd_of_mem_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/dvd-of-mem-factors.md) | 154 | `result-track:7d775670ba4f9fdacb075a89bf04ca17c5329e902274087ecb8d9cd2584c7bf6` |
| 17 | `theorem` | [mem_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors.md) | 160 | `result-track:649a5132db55a9415567d64e43ddc555caf5a0c5c09c7cc8cb325991b90bc0e6` |
| 18 | `theorem` | [le_of_mem_factors](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/le-of-mem-factors.md) | 165 | `result-track:b321de7565e46d48520271d27494a055615a03e510e456278c511a6fe52084a4` |
| 19 | `theorem` | [factors_unique](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-unique.md) | 173 | `result-track:aa45f26c86384e53390de59a73d42cb017953de7cdcb0e9f96b8cbbc3f7c6d06` |
| 20 | `theorem` | [Prime.factors_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/prime-factors-pow.md) | 187 | `result-track:2223017a1b9d79cdc197117da664b47b4dfd8e3f8094308b6891ae05297d4ecb` |
| 21 | `theorem` | [eq_prime_pow_of_unique_prime_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/eq-prime-pow-of-unique-prime-dvd.md) | 196 | `result-track:49a827128e59643e10235db9b81dac228c2247c480376d9cfff6da1a317f0b90` |
| 22 | `theorem` | [perm_factors_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/perm-factors-mul.md) | 204 | `result-track:c4472d33929756d4717b73e5be600ed939cb378b54d84cfcbf3dbccf1900f0d1` |
| 23 | `theorem` | [perm_factors_mul_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/perm-factors-mul-of-coprime.md) | 214 | `result-track:af296a189ec31edc45040db681074a8aa69426dfa3b1cc4184b9bb1bf710f3f0` |
| 24 | `theorem` | [factors_sublist_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-sublist-right.md) | 223 | `result-track:da2e274fce0ac2f7b3aa210b2ca6b8998cfa517d2e2614762e9997a94d8d2dfe` |
| 25 | `theorem` | [factors_sublist_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-sublist-of-dvd.md) | 231 | `result-track:961da383d8482505b1b27cd20bb1b74061e6087ffbf66af14a65eb05bc62c0a1` |
| 26 | `theorem` | [factors_subset_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-subset-right.md) | 236 | `result-track:6da9df0a8bb74706efc3a7d3d6cf96ffd1cb39b990952509d28c2595c4c829c7` |
| 27 | `theorem` | [factors_subset_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/factors-subset-of-dvd.md) | 240 | `result-track:7aee63c97fd2ff1eb87cee4fa1a9a04fbafc431b6bcff689830b358598a806fa` |
| 28 | `theorem` | [dvd_of_factors_subperm](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/dvd-of-factors-subperm.md) | 244 | `result-track:6fe4fbd211b3cd422fa0b23c10155b07e9051f10e39ae8264300e39075c92e46` |
| 29 | `theorem` | [mem_factors_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors-mul.md) | 261 | `result-track:4aef81d4ac40ddde505a7355393afbf5ef35dbbc39369a6cb08fd0a222b2cb4a` |
| 30 | `theorem` | [coprime_factors_disjoint](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/coprime-factors-disjoint.md) | 268 | `result-track:8b0c685270a5ed03da21c57be8c9eed5e9321bf5d83171f7e9cfb4e46bc7463f` |
| 31 | `theorem` | [mem_factors_mul_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors-mul-of-coprime.md) | 276 | `result-track:9e69663593bf0a359f9608275c601120c57c78f898889bf40b22bf12a87e5e43` |
| 32 | `theorem` | [mem_factors_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors-mul-left.md) | 288 | `result-track:f4d9503f3d7612003d3e38a831ddf8f1f53cdbd358f109cecc4dfca23f3235ae` |
| 33 | `theorem` | [mem_factors_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/mem-factors-mul-right.md) | 296 | `result-track:9b8e87a7e3fa2245a4b638b58556a41d56aee5fe20b8d1c215920fae728dcd51` |
| 34 | `theorem` | [eq_two_pow_or_exists_odd_prime_and_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorsNamespacedFactors.lean/declarations/eq-two-pow-or-exists-odd-prime-and-dvd.md) | 302 | `result-track:5b241257faaab0435c212acb3e73c7c4deaea823197dd5ddeccf095d9d471c74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b822616b738661cab82a2dc50ca663cf513ccb4e8929b41c4d48f0ff55c64602 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
