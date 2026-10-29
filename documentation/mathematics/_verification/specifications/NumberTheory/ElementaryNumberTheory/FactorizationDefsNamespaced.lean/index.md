# Verification target: Factorization Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization.md) | 53 | `declaration-track:28d1b9eda417612156f9b8b8625336f1511c46d599bbc06cde814215f5c8c067` |
| 2 | `lemma` | [support_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/support-factorization.md) | 59 | `result-track:8fbb813d7919ee8018fcf3ee43ea9acfb462e80afbbe66a02a200fa7200059a7` |
| 3 | `theorem` | [factorization_def](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-def.md) | 61 | `result-track:231f1a62c012c6f17ec4ce4d3f993fc2249e7b1c9b97982093ca134e1752ad5a` |
| 4 | `theorem` | [primeFactorsList_count_eq](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/primefactorslist-count-eq.md) | 67 | `result-track:ca59e0f7a84fbe67bef9cc5623eb2d3daea60a4246ba6d54b1e87d41040f4667` |
| 5 | `theorem` | [factorization_eq_primeFactorsList_multiset](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-eq-primefactorslist-multiset.md) | 83 | `result-track:1809459cde28292d8b039d9622c70d2cb3ac9ce1ae8f45722bbc0b383c7f8c49` |
| 6 | `theorem` | [Prime.factorization_pos_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/prime-factorization-pos-of-dvd.md) | 88 | `result-track:8c173145760fc2b771dbb09fdff656728c6e1da95bd487e8bb6b98bf756467a4` |
| 7 | `theorem` | [multiplicity_eq_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/multiplicity-eq-factorization.md) | 92 | `result-track:c81680b67b42166ae1fa770d6eb004daf41e245c85ba69c5c924863870fb2406` |
| 8 | `theorem` | [factorization_prod_pow_eq_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-prod-pow-eq-self.md) | 100 | `result-track:d9c833bb3ff5d8a409ff28f99edd98142dc392c46c06a6cb582da11ed29fffd0` |
| 9 | `theorem` | [eq_of_factorization_eq](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/eq-of-factorization-eq.md) | 105 | `result-track:5fa5476f3878a042f47ae605e0e0a53e2a620e405f8730e1f9b98c41e3c0f7e8` |
| 10 | `theorem` | [factorization_inj](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-inj.md) | 112 | `result-track:133240196534a76485435f8f01fb3cebfd5e516b9cddf5baba139028c5eec405` |
| 11 | `theorem` | [factorization_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-zero.md) | 116 | `result-track:cf1992d31948b9d1509b12a01ec7a51794c82cf21c887e4cdc9dc0517742f7dc` |
| 12 | `theorem` | [factorization_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-one.md) | 119 | `result-track:2c3a2a290e91d7d4f08be37019e94513decba87062eeaa84e666e3bba02def1a` |
| 13 | `theorem` | [factorization_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-eq-zero-iff.md) | 123 | `result-track:6ba470a42414c07017b2d369d83ce9a2b2c1b6211d30ceedcf69bbc596f65a96` |
| 14 | `theorem` | [factorization_eq_zero_of_non_prime](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-eq-zero-of-non-prime.md) | 128 | `result-track:bf027c4bf2d1aab2a4d25668e8c9c17205a10f9e1f45c346369c176352a64863` |
| 15 | `theorem` | [factorization_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-zero-right.md) | 132 | `result-track:c031afe76714d0f69da111877689f88a0dfcceb35ca9ec278374640ac897b9cc` |
| 16 | `theorem` | [factorization_eq_zero_of_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-eq-zero-of-not-dvd.md) | 135 | `result-track:a2ae4aea8e6a2c3ca71f126c2266b0318ced4d439966bd6d5b13da61b3886e34` |
| 17 | `theorem` | [factorization_eq_zero_of_remainder](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-eq-zero-of-remainder.md) | 138 | `result-track:05ca3a2a979ffd2a76ca3c598e10cbd8c2d834aa73b4bbe6293e9c56cf3c4c7a` |
| 18 | `theorem` | [factorization_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-mul.md) | 147 | `result-track:ebe227d54d281a11ee3b2677a1829c64189845ed218948fc3a17d74295f72f21` |
| 19 | `theorem` | [factorization_le_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-le-iff-dvd.md) | 153 | `result-track:30c836565af02e90678e45a38497ef8ade425e4ee3d75f9b429898b1241673ba` |
| 20 | `theorem` | [factorization_prod](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-prod.md) | 168 | `result-track:d1f39bcf5154e7992405498ecd6d018f6784223e347ef83f6866d6121673e511` |
| 21 | `theorem` | [factorization_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-pow.md) | 180 | `result-track:938236f6fcafd1c994182e218ba9ba7b27f53d878914351fb1bbcb69abc3d1ba` |
| 22 | `theorem` | [Prime.factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/prime-factorization.md) | 192 | `result-track:f063d64c0e76baf1efc7f623a8c0f05c97aeb259fbaf661c96d304c2f5599658` |
| 23 | `theorem` | [Prime.factorization_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/prime-factorization-pow.md) | 198 | `result-track:3afe6d9d6957b2db69d5d9934c6eb1a961940076120f25c98aeba7b00f29af13` |
| 24 | `theorem` | [pow_succ_factorization_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/pow-succ-factorization-not-dvd.md) | 201 | `result-track:bfa586230fab7d565e5a7c2d88f1d0701ad8281bf704fea91febd3e772f8a4da` |
| 25 | `theorem` | [prod_pow_factorization_eq_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/prod-pow-factorization-eq-self.md) | 212 | `result-track:cc9c20d920cfbafd6a8f05a31e2a42c9720b80e40ffa14a5dd1dc60ba3decc07` |
| 26 | `def` | [factorizationEquiv](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorizationequiv.md) | 223 | `declaration-track:e94b68ce1482f60c1019a9673aa0f467c6f9fed82daa08e1a2193cf210267fa7` |
| 27 | `theorem` | [factorization_mul_apply_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-mul-apply-of-coprime.md) | 234 | `result-track:52863a4bfeba4bffd5086c7bcae8b5f088579fbb895f5b6fd78d1ed3789c2ba1` |
| 28 | `theorem` | [factorization_mul_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorization-mul-of-coprime.md) | 240 | `result-track:92cbe46aa8847629e83b02204b491263ec979481d8be7b281e810033a60ac470` |
| 29 | `theorem` | [ordProj_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/ordproj-dvd.md) | 257 | `result-track:b1784f14e1a54133714dcb30c807d491d9b0130acdf329a00fb2f54dd1276cbb` |
| 30 | `def` | [factorizationLCMLeft](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorizationlcmleft.md) | 273 | `declaration-track:f8a15b64b523d2f9e4ca1fa41b1acc125142ee5776bdab8d930b5ada7a3f1626` |
| 31 | `def` | [factorizationLCMRight](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationDefsNamespaced.lean/declarations/factorizationlcmright.md) | 286 | `declaration-track:27f4e27eee7e869e200157aea98824df6eeea5c96002244d678078374d831634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6043bdf98dc2c33ca7406a92ee4b493e9b86d9f756003ebeae3012c6b08ca166 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
