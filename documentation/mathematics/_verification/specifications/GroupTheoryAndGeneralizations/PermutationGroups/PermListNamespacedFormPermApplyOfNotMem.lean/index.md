# Verification target: Perm List Namespaced Form Perm Apply Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f82e014795bcbde1a02aa9d74b959e3bb52ad8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f82e014795bcbde1a02aa9d74b959e3bb52ad8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Rotate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm.md) | 55 | `declaration-track:b843ae2f2f41d410263a521c399bfebb40d3d1a97aa5270229db3eeab0575146` |
| 2 | `theorem` | [formPerm_nil](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-nil.md) | 60 | `result-track:2fd2020b218c553149ebecc7a5c4bba720afd6fc9ca15144563ad5310e2f3cb3` |
| 3 | `theorem` | [formPerm_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-singleton.md) | 65 | `result-track:b3b5076b67e9cfd32919d6d12b7e2d233577090128a91ea52a6639c90a2e88b3` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-cons-cons.md) | 70 | `result-track:3712cda6a89f6839c60d72d50747703420ce6a0bed07c02e7e9b9f32756dc93f` |
| 5 | `theorem` | [formPerm_pair](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-pair.md) | 75 | `result-track:e94e3455604c866777ed0d85d55455e99aaadfa01239b6d21a78af932a748c07` |
| 6 | `theorem` | [formPerm_apply_of_not_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-of-not-mem.md) | 81 | `result-track:8ea4a26aea5860a9885b2a0a483429bd8746a480609312bb195d3ba57b946fe6` |
| 7 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/mem-of-formperm-apply-ne.md) | 91 | `result-track:2533dbbdacb706dc9d7eb53ec3c649731e9e1376b4bdcd430d8f7284f3443cf2` |
| 8 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-mem-of-mem.md) | 95 | `result-track:6188a4f33c4207f8799c37dd3b995f48211f85a0afbe813a02de77e3c18772ad` |
| 9 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/mem-of-formperm-apply-mem.md) | 111 | `result-track:a6d640d041eee713a9a6b8830736c9c762abb8aae861fb6b675f7bc878aa71e7` |
| 10 | `theorem` | [formPerm_mem_iff_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-mem-iff-mem.md) | 129 | `result-track:3a1d05ff9e9c36e7f0e5c36b2b1e709a90a8543e994c94c37a23d6d842e0627f` |
| 11 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-cons-concat-apply-last.md) | 134 | `result-track:7ccc4b0a79a9b72b27b159853ba67b8f0b190b1d910c985bb7caa783a9840d26` |
| 12 | `theorem` | [formPerm_apply_getLast](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-getlast.md) | 142 | `result-track:5aebb95e3966fbfea21b43aa9589932c272a1e1f60f20889016df2be1ba6674e` |
| 13 | `theorem` | [formPerm_apply_nthLe_length](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-nthle-length.md) | 149 | `result-track:e25582d25eefd6f60b833e62cce6c90376da96dbe3c4a609d6277149074f8c5a` |
| 14 | `theorem` | [formPerm_apply_head](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-head.md) | 154 | `result-track:dea7936787ba93603b60738bc726fb50c9cb80cb65c63d8c49293fccf90b7a48` |
| 15 | `theorem` | [formPerm_apply_nthLe_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-nthle-zero.md) | 159 | `result-track:0ac2f983474500184e346775162bd7b069c816cf2155ac7b1cad172ac3317064` |
| 16 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-eq-head-iff-eq-getlast.md) | 169 | `result-track:b488a8618d54042e4f44989994dafb860e12794907cd16ab185fa040e9dcf1ba` |
| 17 | `theorem` | [zipWith_swap_prod_support'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/zipwith-swap-prod-support-source-edition-2.md) | 174 | `result-track:5792ef19e298e79607e3f2ceea0fa730fde1e223f5863f5ea2185a3b16716d1c` |
| 18 | `theorem` | [zipWith_swap_prod_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/zipwith-swap-prod-support.md) | 199 | `result-track:1df295c3110bbc76f9ba60ab2f8e9a2a2a4e758cb2b8de928a376ee09d3b93f1` |
| 19 | `theorem` | [support_formPerm_le'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/support-formperm-le-source-edition-2.md) | 206 | `result-track:88a468d50c57d07bce810acda06c31c20cd7b83496c333cfeea1a2b1a3819c41` |
| 20 | `theorem` | [support_formPerm_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/support-formperm-le.md) | 211 | `result-track:4d4c92fbe4a62efcd2a48521d575886e5e777c41e123751d121053ac006af3d3` |
| 21 | `theorem` | [formPerm_apply_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-lt.md) | 218 | `result-track:f5ec3a5a79996672688d52e43d78054767e161298fe789cc51ba799582c72769` |
| 22 | `theorem` | [formPerm_apply_nthLe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-nthle.md) | 236 | `result-track:dcda22cb91c11ff38c373b1cad9c6eec3c10c3471e284762deaa01a928d38c9f` |
| 23 | `theorem` | [support_formPerm_of_nodup'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/support-formperm-of-nodup-source-edition-2.md) | 252 | `result-track:e576f2cd211e7774ec18c2c20eb2a5fdc0fb24dde9a037fb21ab5f53b69ce433` |
| 24 | `theorem` | [support_formPerm_of_nodup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/support-formperm-of-nodup.md) | 271 | `result-track:a1c5e4f475d18ba89de1a1fdfafed8725f2af8f2c83c308ac90a5033b2c305a2` |
| 25 | `theorem` | [formPerm_rotate_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-rotate-one.md) | 279 | `result-track:e5c7dcde1623e8d7b2c7065b78d8497bbc1695cbec1632a7098497bc4ba92662` |
| 26 | `theorem` | [formPerm_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-rotate.md) | 290 | `result-track:8ec0151ea33fcbfecda05e8503e8971edf3f54b282ba4c39a24e27c8e06dbad0` |
| 27 | `theorem` | [formPerm_eq_of_isRotated](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-eq-of-isrotated.md) | 299 | `result-track:bba64a13cbef7ac2016ac95ce1d69d557c38139ed5a07185ba05bb12e630a0cb` |
| 28 | `theorem` | [formPerm_reverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-reverse.md) | 306 | `result-track:1c90c3969c3512989b14a37ca54b76f41344a5f49d4e17d5278df73d6d0cf06d` |
| 29 | `theorem` | [formPerm_pow_apply_nthLe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-pow-apply-nthle.md) | 334 | `result-track:4f220432104b3692dde98bb76026f75cdfa92dca53a41ef861962825ff692a77` |
| 30 | `theorem` | [formPerm_pow_apply_head](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-pow-apply-head.md) | 342 | `result-track:015d8eb2c37090c48396a471dbdc89f27592bc915f9d7069a9cb24c0ad6fa1d2` |
| 31 | `theorem` | [formPerm_ext_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-ext-iff.md) | 350 | `result-track:8095566938710273fc2eff9cec247c087214c3d8b5270cb7e1ac7c96bd6a473f` |
| 32 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-mem-eq-self-iff.md) | 389 | `result-track:20e1896f2c6842bae7dd60be04df3a8a3da4c4a978b4b4ff5f7516067e126838` |
| 33 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-apply-mem-ne-self-iff.md) | 402 | `result-track:5089ea0461d56b62d98e6013e9d7c2f412da797671aa6d65bd4c7cd7da4b7bc5` |
| 34 | `theorem` | [mem_of_formPerm_ne_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/mem-of-formperm-ne-self.md) | 408 | `result-track:66130d7f5a6d7e73ee59d2592c3cc71c9aad1154f4c267626523ae6dd51be032` |
| 35 | `theorem` | [formPerm_eq_self_of_not_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-eq-self-of-not-mem.md) | 415 | `result-track:04221add236935e0761765e3b6b34b4120788c2af2a1037731edba41bea98c26` |
| 36 | `theorem` | [formPerm_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-eq-one-iff.md) | 419 | `result-track:f942cc939da79a17a6feb7e6069a8103264240993763f4c22bf7479b8074b12f` |
| 37 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-eq-formperm-iff.md) | 431 | `result-track:ab77adc49e3b658e3173ad2a022f77204993653a9cb6a45666621d4974e9b2e0` |
| 38 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/form-perm-zpow-apply-mem-imp-mem.md) | 452 | `result-track:35b93e56d2a11f9becbb6c4c7eea10abc9becefefb43bd7f938ee23ebfb42fc3` |
| 39 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedFormPermApplyOfNotMem.lean/declarations/formperm-pow-length-eq-one-of-nodup.md) | 463 | `result-track:c46ecfcfcad80ff74fbea8fb1d0bb07bf387b63a60a3d3a27339941875f48b7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d86a26d3cefcf67e02d4148d2718600bc0495568f8f4a1f4d3133403d6272b5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
