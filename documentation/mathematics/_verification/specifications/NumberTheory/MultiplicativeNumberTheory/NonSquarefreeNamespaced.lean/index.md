# Verification target: Non Squarefree Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.PowerSums` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SdivP](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp.md) | 38 | `declaration-track:ac786931c8065762edb943a7528ee78ce232e70e37b635e34b19fa38f9969b62` |
| 2 | `lemma` | [SdivP_nonneg](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-nonneg.md) | 41 | `result-track:48684c14ec9337af2463b607fa393a04787eb850072e98cec7df145f53098ae3` |
| 3 | `lemma` | [SdivP_le_Sdiv](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-le-sdiv.md) | 45 | `result-track:2cacc21d5354e0185eb4740eb97c25e8cd71c24ec24a0dc1901a7957226ff4ce` |
| 4 | `lemma` | [SdivP_mono_pred](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-mono-pred.md) | 49 | `result-track:a56a79b9c1eda5b9a94ac712ccf5c7dd0c0adef8219bea63a0ef7e379e5af0fc` |
| 5 | `lemma` | [SdivP_or_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-or-le.md) | 55 | `result-track:a73dd0e209d485e09b8e5e765441d83aede4789d431d205106854ac8f5674515` |
| 6 | `lemma` | [SdivP_mono_u](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-mono-u.md) | 65 | `result-track:7c0692e167c7aac48c7c77240fb499ff82131402edb29190a99d8a7e082bed0f` |
| 7 | `lemma` | [SdivP_eq_sum_ite](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-eq-sum-ite.md) | 73 | `result-track:c33d4f16816c21d58f2452159c0072cbc4192d44c154ce797023fd531435c20a` |
| 8 | `theorem` | [SdivP_mul_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sdivp-mul-le.md) | 82 | `result-track:696172d2708c2e5abcaea92cc03e3c8727140a0d71a786fbae7b0d594a7c80f1` |
| 9 | `def` | [Cdef](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/cdef.md) | 144 | `declaration-track:3cebf3a204034d8ed1a16515f48a779cb5265e5efd8ddc7b1a878ccabb99671b` |
| 10 | `lemma` | [defect_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/defect-le.md) | 146 | `result-track:013fe0147c6b10a35ddfd0118e1c7d1154f5aaf789bb79b582ca36ddb20c8609` |
| 11 | `lemma` | [defect_term_nonneg](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/defect-term-nonneg.md) | 149 | `result-track:0f1438a30743f824a4c07a7fc043945cf1f11deba1eb5f0d7e6b0d070c29ded0` |
| 12 | `lemma` | [exists_prime_pow_of_vonMangoldt_ne_zero](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/exists-prime-pow-of-vonmangoldt-ne-zero.md) | 154 | `result-track:6c872439e8e74fdcdcbf9c124d0d203627e46dec72c80f49c4434aa6a07993b6` |
| 13 | `lemma` | [vonMangoldt_le_log_sub_of_not_prime](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/vonmangoldt-le-log-sub-of-not-prime.md) | 163 | `result-track:0d2466d055c848d834adad304b9d0428776e84a4a28ae8360f352dacf2c0fe82` |
| 14 | `lemma` | [not_prime_of_not_squarefree](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/not-prime-of-not-squarefree.md) | 179 | `result-track:ca7d9e81d1907345c7b69d813a553c1b365a518952ac9b7e2614836e90e4f46d` |
| 15 | `lemma` | [sum_not_prime_vonMangoldt_div_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sum-not-prime-vonmangoldt-div-le.md) | 183 | `result-track:a595727694796c1f331bac78e0f98893bc2abcc44d5950957df7360e2805eaa9` |
| 16 | `lemma` | [sum_not_squarefree_vonMangoldt_sq_div_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sum-not-squarefree-vonmangoldt-sq-div-le.md) | 202 | `result-track:aeb5d9c572959aa7e3fff4ec28d9a1bbb356ffe15ee8adbda0ee46b5d8165801` |
| 17 | `lemma` | [sum_not_squarefree_lamLog_div_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sum-not-squarefree-lamlog-div-le.md) | 219 | `result-track:abdb94174fe05b52f2cf88dc409f0c7d7abc1112510a8e76bc859fc8066a3d7c` |
| 18 | `lemma` | [sum_prime_log_sq_div_sq_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sum-prime-log-sq-div-sq-le.md) | 242 | `result-track:aae733b25f74dac71e15cbe99a6abf1d239e022fe654a8df9f1adca2e0fa2566` |
| 19 | `lemma` | [sum_dvd_vonMangoldt_div_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/sum-dvd-vonmangoldt-div-le.md) | 264 | `result-track:6ee5b53043a8bf19b863774405a76e48bb7a6b8fdab9536ae574f6ce76ab8dd7` |
| 20 | `def` | [Dsum](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/dsum.md) | 313 | `declaration-track:f6348f2031c6b9287365d347a8541c59bad1b70d94d0cd991c50f9cc81ad8c5a` |
| 21 | `lemma` | [Dsum_zero](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/dsum-zero.md) | 315 | `result-track:00cfca4622c69d6cf27c222cd455e2b1be3c22ebbaf3b1f28911a2a5b6f798d1` |
| 22 | `def` | [Gb](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/gb.md) | 325 | `declaration-track:e3385b48efd772bf59c1ee2e7c933afc937d1f8a655c343f2e99519e18a51d89` |
| 23 | `lemma` | [Gb_ge_one](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/gb-ge-one.md) | 327 | `result-track:30af426966ac68c162a8ee1661b7b1f556bec47347385aa925988e01e3f8b15c` |
| 24 | `lemma` | [Gb_nonneg](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/gb-nonneg.md) | 330 | `result-track:ee21d13a477a8ac61e5d2fd5edc9cede9dfd43e3bfe590a02be6622497a12276` |
| 25 | `lemma` | [Gb_mono_u](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/gb-mono-u.md) | 332 | `result-track:57b15f89d8e7f5f3b48b48853e93e45d2a47951935e41460fea0b58bd523aa61` |
| 26 | `lemma` | [Gb_succ](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/gb-succ.md) | 334 | `result-track:d32e55b4d08f5c42a8cf4a81032bf29b5e537624a399ad196d0710a811fb4de8` |
| 27 | `lemma` | [u_add_KM_le_Gb](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/u-add-km-le-gb.md) | 336 | `result-track:42c8f83688892d0175a6db5d8665d0e0441d8a2d009e7e3c63318826496bb129` |
| 28 | `lemma` | [pow_bound_le_Gb_pow](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/pow-bound-le-gb-pow.md) | 339 | `result-track:c73ec8a7c1ebd1444986b2cd4dafc61b142887c40583e20be0ba56723534fa99` |
| 29 | `theorem` | [Dsum_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/dsum-le.md) | 348 | `result-track:db0b7e048fec0a90ffeb7cf3495c2b674bbc2b57bf67496a043b2485161c96e9` |
| 30 | `def` | [Nsf](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/nsf.md) | 418 | `declaration-track:e3ab74cde53ec2c82f545f778929b0d66639a12fb7927d694d0d6a23d3b9dafe` |
| 31 | `lemma` | [Nsf_nonneg](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/nsf-nonneg.md) | 420 | `result-track:fcdd554f62dc67677229c00fd9ad618f9e14f87c252897374dd05c3f7f88ceb1` |
| 32 | `lemma` | [split_not_squarefree](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/split-not-squarefree.md) | 423 | `result-track:c752574fbd4db4800e726565f43faef9472091dcb67def66c56c22162968e0e2` |
| 33 | `theorem` | [Nsf_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/nsf-le.md) | 437 | `result-track:3065a92f2aa1b479bf327961d8244640918beb239baafa557e57972cea13d71a` |
| 34 | `theorem` | [Nsf_le_poly](../../../../../NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/declarations/nsf-le-poly.md) | 557 | `result-track:d647ecd1b49e5655a01ebac646d678af164066fa50663bccd365afea726abdc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d196b21a7b77fface40eb70fe0581d951f1d3bab24f3e96768c7944bdc6c6875 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
