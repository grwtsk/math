# Verification target: Perm Support Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45946c84f7071539b355c091b0a975518b47c901",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45946c84f7071539b355c091b0a975518b47c901`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint.md) | 46 | `declaration-track:3c391884b36c78e4b62806a1d99e0923ddfd9f8fa644cb83be8cddad49bc18e2` |
| 2 | `theorem` | [Disjoint.symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-symm.md) | 52 | `result-track:5d7d8f70f6c6ef06bef20a75f5499e47c44a77f155a6b2db22a2abe577badd3d` |
| 3 | `instance` | [Disjoint.stdSymm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-stdsymm.md) | 54 | `declaration-track:7f455498112973046432640bce101305cfa2ea27fb31487d993eaf0809cb0473` |
| 4 | `theorem` | [disjoint_comm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-comm.md) | 59 | `result-track:0b55f9d65510a8454f789f9605626f765912dbf27bd9115c9c8ad4d58b92a1ca` |
| 5 | `theorem` | [Disjoint.commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-commute.md) | 62 | `result-track:1ed4d65ad4b3d5b3620383f415fedbdce0295f27aefc8abf8ba77c811b977764` |
| 6 | `theorem` | [disjoint_one_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-one-left.md) | 73 | `result-track:9e1dce52f0349a7b2254c3a171ee0a0edb5baa6c62a3718e8b34a91254fd1d68` |
| 7 | `theorem` | [disjoint_one_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-one-right.md) | 76 | `result-track:fc081172e9e6e686d0b5d8faf617cac3e797087d669c250502ed245502c5f5ea` |
| 8 | `theorem` | [disjoint_iff_eq_or_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-iff-eq-or-eq.md) | 78 | `result-track:c17a35e3d72b150e5af6abeaa500e7b2bd8544c0cc86d349d837ab269c975775` |
| 9 | `theorem` | [disjoint_refl_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-refl-iff.md) | 82 | `result-track:106c12b7c07a1e7c24cc972afb5027c1437f9510bdc14edac2c3df50cfbc9aec` |
| 10 | `theorem` | [Disjoint.inv_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-inv-left.md) | 87 | `result-track:e8e07797c66e49d81c127369a53b68825af3e099e229994281c0462a7c663816` |
| 11 | `theorem` | [Disjoint.inv_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-inv-right.md) | 92 | `result-track:70a8481a02c03397b22be4d0647ba717ef20f5c82109b55fa05794b498011d02` |
| 12 | `theorem` | [disjoint_inv_left_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-inv-left-iff.md) | 96 | `result-track:9465b088520ca189209b428688112e868abb9b8da880ba69454d337ca894eac1` |
| 13 | `theorem` | [disjoint_inv_right_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-inv-right-iff.md) | 101 | `result-track:284fc311515df77bc68e1c6610e6bbe4d708a930b9d4a1549c758b101fb1e1f8` |
| 14 | `theorem` | [Disjoint.mul_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mul-left.md) | 104 | `result-track:aeaf806f0eaf0091ab03f5fd2608258fdff431bbc71cf3a09ba3cacd60003f64` |
| 15 | `theorem` | [Disjoint.mul_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mul-right.md) | 107 | `result-track:3a6f40aeac2df84f7243f380068964bd89773670e538fbf131a056beaf548554` |
| 16 | `theorem` | [disjoint_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-conj.md) | 112 | `result-track:0ffec493868782690743a084498ab515b3aa09ed4539b8dff1130b2aec05a1ea` |
| 17 | `theorem` | [Disjoint.conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-conj-source-edition-2.md) | 115 | `result-track:c50a12a6f2da640d754f730bf2d99d5d9dfdf3a6ee3a38cb3dc097d8d30d6879` |
| 18 | `theorem` | [disjoint_prod_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-prod-right.md) | 118 | `result-track:d559cf4c0414b6ed22d7fd3424d865c968c7ef6a7195718ea2529f2c4f1b7ad6` |
| 19 | `theorem` | [disjoint_noncommProd_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-noncommprod-right.md) | 126 | `result-track:39251a38d70a8a515c61f5a9f5e7a0ca0315fa4bc2b950ee26c808d9018dd4e9` |
| 20 | `theorem` | [disjoint_prod_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-prod-perm.md) | 133 | `result-track:f46c4a865e3782ea095ca02cfcdaa9db3a1b3892fdddf1de606442f903099556` |
| 21 | `theorem` | [nodup_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/nodup-of-pairwise-disjoint.md) | 137 | `result-track:263e105a9efa90425d1b39534e3874026f42a609e745f554ad1e93966a4b2e87` |
| 22 | `theorem` | [pow_apply_eq_self_of_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/pow-apply-eq-self-of-apply-eq-self.md) | 141 | `result-track:e97350957b107f835c7180413261510d263669bcca647f4d19b292be59061ff9` |
| 23 | `theorem` | [zpow_apply_eq_self_of_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/zpow-apply-eq-self-of-apply-eq-self.md) | 145 | `result-track:0823fa58df53468b32ac5817d9ae21abcc65dec7df5cea0b39207594763e3ee2` |
| 24 | `theorem` | [pow_apply_eq_of_apply_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/pow-apply-eq-of-apply-apply-eq-self.md) | 149 | `result-track:92cb9f626c8641d99515b8ee6729cb76b40b15d6e941ac20bd17ce2b5132d570` |
| 25 | `theorem` | [zpow_apply_eq_of_apply_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/zpow-apply-eq-of-apply-apply-eq-self.md) | 157 | `result-track:2f60dfd69a52eaec54289e8ca90ed439ceef9050f577cbbce4c1675538ce376b` |
| 26 | `theorem` | [Disjoint.mul_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mul-apply-eq-iff.md) | 165 | `result-track:2317b80fda4bba8b7077a20df1b5751f5e66a071658286dfbd12f8432c5201b1` |
| 27 | `theorem` | [Disjoint.mul_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mul-eq-one-iff.md) | 172 | `result-track:defc69f491e51890429543fe9af8209124e2dbe96fa591edb32337221d3c0d00` |
| 28 | `theorem` | [Disjoint.zpow_disjoint_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-zpow-disjoint-zpow.md) | 176 | `result-track:c72868c5833af9d8298a95b6c0d83d0a16d78e6a81030f02dc26a343218702d0` |
| 29 | `theorem` | [Disjoint.pow_disjoint_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-pow-disjoint-pow.md) | 181 | `result-track:060b1d388810d3d457d688646d1144ab573f96e23f81560a302f6afb2d159bfb` |
| 30 | `def` | [IsSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/isswap.md) | 192 | `declaration-track:e4b1de1dff47994c6cc25923d6e611750d0fdb5bc43f20bb9584e2ab2df8be65` |
| 31 | `theorem` | [ofSubtype_swap_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/ofsubtype-swap-eq.md) | 196 | `result-track:a62ee93a9c2c1069a5e7ef2b082e3398403c68781ff72a270342195b2667df6e` |
| 32 | `theorem` | [IsSwap.of_subtype_isSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/isswap-of-subtype-isswap.md) | 200 | `result-track:6f47bc497309fa84af5a2a9000daf800e04599849e0b12f2d2fa871308f74116` |
| 33 | `theorem` | [ne_and_ne_of_swap_mul_apply_ne_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/ne-and-ne-of-swap-mul-apply-ne-self.md) | 208 | `result-track:92eed5866012be572915fc5bd934b862af594f1984624440b532f82a7a8a4cba` |
| 34 | `lemma` | [set_support_symm_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/set-support-symm-eq.md) | 221 | `result-track:4d2563a7084189ac3127f19da5691914b0c8b079169115fe83692ce93bd7131f` |
| 35 | `theorem` | [set_support_apply_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/set-support-apply-mem.md) | 224 | `result-track:7ba9f1a761e9e857ef8188c9102d53030a45811ca78cc77354f412babbc49dda` |
| 36 | `theorem` | [set_support_zpow_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/set-support-zpow-subset.md) | 227 | `result-track:8d94d5cc93510f4d79198d9390a36cf76b10688bff2243fa342399d04bec26cf` |
| 37 | `theorem` | [set_support_mul_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/set-support-mul-subset.md) | 233 | `result-track:3c57868791da5361cf9fa7a454de3864492b47ea7ca064c386cc2e0980c69103` |
| 38 | `theorem` | [apply_pow_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/apply-pow-apply-eq-iff.md) | 240 | `result-track:a92da24a6ef68612c7e9b1989ec479b5c9a28d3c00b5dab70290722aed8ee6b2` |
| 39 | `theorem` | [apply_zpow_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/apply-zpow-apply-eq-iff.md) | 245 | `result-track:003480c6e16ba3842ab7a6d6184fc6b2b799285a7938c14bacd2e1dc01450dbc` |
| 40 | `def` | [support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support.md) | 252 | `declaration-track:89a1a12697f191f439a093f39cdafb8a3acc088d3afeff7059bb94c285af743e` |
| 41 | `theorem` | [mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/mem-support.md) | 255 | `result-track:6ca0aae499ceee4cba48dfec43e6b3099b3bc333de76c46009c1daac0e3b22be` |
| 42 | `theorem` | [notMem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/notmem-support.md) | 258 | `result-track:5efcf971f9e225a80590631ce34a92d92fd11f6f48de42e088dcc8e74d056f09` |
| 43 | `theorem` | [coe_support_eq_set_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/coe-support-eq-set-support.md) | 260 | `result-track:fad040334bf39b5663d98feda053515bd7d5214b90a9b31d93d981d459bf92f0` |
| 44 | `theorem` | [support_eq_empty_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-eq-empty-iff.md) | 265 | `result-track:40f5b5777565439b4cecd4169ba4ae5d9fbe83ff041537e126b3a5c71c884e5b` |
| 45 | `theorem` | [support_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-one.md) | 270 | `result-track:3817893976b0fa29e858a01ae906d048967b0e8ee64776f06cf9dea1ce1ec0d2` |
| 46 | `theorem` | [support_refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-refl.md) | 273 | `result-track:8fb8e55287df3ca2777038edf39dd295983ab39c4c439fd3fe615b824e69deee` |
| 47 | `theorem` | [support_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-congr.md) | 276 | `result-track:2c49dbbfea73847455c321cbd8068b46d1243d0de6265b8a6b7914949ba814bd` |
| 48 | `theorem` | [mem_support_iff_of_commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/mem-support-iff-of-commute.md) | 280 | `result-track:e83f429aedd8f739bbe8d04a44da31037d144fe1cdcc249652a6275326bd5207` |
| 49 | `theorem` | [support_mul_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-mul-le.md) | 285 | `result-track:05ea5c4aa591dde44097471737d896c0498afbf111037bde93636a0808bb3800` |
| 50 | `theorem` | [exists_mem_support_of_mem_support_prod](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/exists-mem-support-of-mem-support-prod.md) | 291 | `result-track:c246749861ead067fc6f3232ab6a581fc3ea311197fe0ed3ee08afab516144d7` |
| 51 | `theorem` | [support_pow_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-pow-le.md) | 302 | `result-track:787fc0d05ddd71fce53a0ff949145bd8eef36326edac8194ece486cad805664c` |
| 52 | `theorem` | [support_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-inv.md) | 306 | `result-track:5c9c9094f848fe64d79102bf99375636a700663a03b9fa7e3fd855b2ac280a3e` |
| 53 | `theorem` | [apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/apply-mem-support.md) | 309 | `result-track:35c563de2562e8b8764b0bee8a8ba43779e8f26834bbc2b73230ec9932be2e93` |
| 54 | `theorem` | [isInvariant_of_support_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/isinvariant-of-support-le.md) | 313 | `result-track:218ef43765c7c89ca05a19c71fd3334545ebdc7877c9f4030f2e6f4e0e7454fa` |
| 55 | `lemma` | [ofSubtype_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/ofsubtype-eq-iff.md) | 321 | `result-track:184ff200202422f01ee08214d30aa38f63c91227706511a26f76d644fa690557` |
| 56 | `theorem` | [support_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-ofsubtype.md) | 343 | `result-track:f1530aaf02b8cf963120f2d51f969ff10d8da511386f3490ea10a692a876aa28` |
| 57 | `theorem` | [mem_support_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/mem-support-ofsubtype.md) | 352 | `result-track:ffd2b12cb277e2fa24be4d3588935fb7be2a21b7b17e1aeeb7d8b67dbfc5684e` |
| 58 | `theorem` | [mem_support_of_mem_noncommProd_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/mem-support-of-mem-noncommprod-support.md) | 356 | `result-track:8d6c2f8bd8e8efb72ee2b2d1f33b9f1e51fc1f9b824da0fab1265b15e1f29a77` |
| 59 | `theorem` | [pow_apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/pow-apply-mem-support.md) | 371 | `result-track:0e4ba3692c5ea0ad4674f117a992435ca7a458fccdec9a5ac4ea9ae3c8029e9e` |
| 60 | `theorem` | [zpow_apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/zpow-apply-mem-support.md) | 374 | `result-track:54b193415aec0c61ade0137cd7883ccf1b1decff8d48665e013c0317fa274d6d` |
| 61 | `theorem` | [pow_eq_on_of_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/pow-eq-on-of-mem-support.md) | 377 | `result-track:49fa78ee40483fd7e18947437a99c1db8942d0ea01a7a09a09b70a86ae93e426` |
| 62 | `theorem` | [disjoint_iff_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-iff-disjoint-support.md) | 386 | `result-track:47b840e99a0c0fb99bdb09ae1fdba51ad3148620e939e506d13a9bf63a845d87` |
| 63 | `theorem` | [Disjoint.disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-disjoint-support.md) | 390 | `result-track:e9065ba9bbf76ffd7f65034dfa5a87eabaaf9cee6846f3c4bf8ca99717809649` |
| 64 | `theorem` | [Disjoint.support_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-support-mul.md) | 393 | `result-track:67f2976e34ff83b875db0dcde4278aaec1115bf0aad53c41569640b82a1e9293` |
| 65 | `theorem` | [support_prod_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-prod-of-pairwise-disjoint.md) | 400 | `result-track:964823a463bc0d0fac74304c4fe4e7e6c2c3c903fe2717f143a69b602a5fbb34` |
| 66 | `theorem` | [support_noncommProd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-noncommprod.md) | 409 | `result-track:2331149076ebcc458aa28b65b88413599dfd8910cd0e7e9e7719cca84c94c076` |
| 67 | `theorem` | [support_prod_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-prod-le.md) | 426 | `result-track:bf62b45ba785620fcb6d86b7b4e50e576b9dca90b1d7c13558bddb2404a02c0b` |
| 68 | `theorem` | [support_zpow_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-zpow-le.md) | 434 | `result-track:4b3199de6f45d7e377347e2ecdd36d6aed66e457fc4a99df0ee8c4486aacb881` |
| 69 | `theorem` | [support_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-swap.md) | 438 | `result-track:fce0f8c750dd793db411d655c4f3bdaa547c7fd21a63c47fc330c5fe844bae69` |
| 70 | `theorem` | [support_swap_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-swap-iff.md) | 441 | `result-track:612a9dd5d581ff35354336861eb8a8bb051f0824c1f2e7f1c3f2a3dd910b5f12` |
| 71 | `theorem` | [support_swap_mul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-swap-mul-swap.md) | 446 | `result-track:7373a6be78c2ab9def84f83afaa40ef3ae8548a4852fb76e3c34babca7afcb6c` |
| 72 | `theorem` | [support_swap_mul_ge_support_sdiff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-swap-mul-ge-support-sdiff.md) | 461 | `result-track:7db68bb80247eb1b2a4f670b5d80194210e2562a9e395bb2652d46ae82ea6e84` |
| 73 | `theorem` | [support_swap_mul_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-swap-mul-eq.md) | 474 | `result-track:7c1f100e743f0c93d607c03b8b7c37e2ad524c82a27c41dc8c929d9ca5024b36` |
| 74 | `theorem` | [mem_support_swap_mul_imp_mem_support_ne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/mem-support-swap-mul-imp-mem-support-ne.md) | 487 | `result-track:2392ed2c86724853cae48370cc6f2e54d6634ee0974ef5e9b3e1fbcc0272f2e5` |
| 75 | `theorem` | [disjoint_swap_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-swap-swap.md) | 493 | `result-track:3d82a11f1d1e6347ef04b1317d74586c9686637e3d392d28cfdc70845081c241` |
| 76 | `theorem` | [Disjoint.mem_imp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mem-imp.md) | 497 | `result-track:e1f073dab8c05f35b577a32d79ddbc9c179ebe1f77980f9150c5680f05b37ddc` |
| 77 | `theorem` | [eq_on_support_mem_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/eq-on-support-mem-disjoint.md) | 500 | `result-track:f02957ec22f685023069951f66e6eecc566cbb6af497cf3d02102097a17c1ca7` |
| 78 | `theorem` | [Disjoint.mono](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-mono.md) | 515 | `result-track:9aeadce422d41952288542653cdd4ff3c5a3c9da3a3e023819e21723f2ddc9b1` |
| 79 | `theorem` | [support_le_prod_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-le-prod-of-mem.md) | 520 | `result-track:8928058b9c6540c07cd6b66bf13d0dac1e949feccd70c7bab416f9e7de38f85d` |
| 80 | `theorem` | [support_extend_domain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-extend-domain.md) | 530 | `result-track:04379486a310915f759656679c4234e364b0ffae039219d18df38ae587070810` |
| 81 | `theorem` | [card_support_extend_domain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-extend-domain.md) | 543 | `result-track:574c40344ef76974e1de572ea4f53e571d543fa3adbc5015d42337944ec5947d` |
| 82 | `theorem` | [card_support_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-eq-zero.md) | 550 | `result-track:79cfca483fe50e896ff80b3dfb447a7fc14ba34303607bccccdb90d2d624ef9c` |
| 83 | `theorem` | [one_lt_card_support_of_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/one-lt-card-support-of-ne-one.md) | 553 | `result-track:e93c10d3762d9a8a4ba19b4c5a49e083b7a670e5bac3b6eab77df6f3ba57c43c` |
| 84 | `theorem` | [card_support_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-ne-one.md) | 560 | `result-track:270934b426a7dd73e1680ffd6d4090705c2296f7dff46c821a04d89b32d595f0` |
| 85 | `theorem` | [card_support_le_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-le-one.md) | 566 | `result-track:2cddb789fb539cd87347836d4fd158e872642b57f28206cc7dfb01249916f9c9` |
| 86 | `theorem` | [two_le_card_support_of_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/two-le-card-support-of-ne-one.md) | 570 | `result-track:d00a7d3b1990f2ec4c702aa8d2a429b3aa086ac45475b9fd0f744e8f04842136` |
| 87 | `theorem` | [card_support_swap_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-swap-mul.md) | 573 | `result-track:f27d31dc1c3d220d83b6f16aa283081a30dd5e4827e376225ee8bf618e2625bf` |
| 88 | `theorem` | [card_support_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-swap.md) | 579 | `result-track:2fcb7ddf9c16eccb6ac6f5d68c272155cac8b9f0ea1e35136642fb1dd942220e` |
| 89 | `theorem` | [card_support_eq_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-eq-two.md) | 584 | `result-track:a8e522e5917b54dfa4319ad9213a57375b52c7a5d97efbbc612ac2cab3d92c72` |
| 90 | `theorem` | [Disjoint.card_support_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/disjoint-card-support-mul.md) | 602 | `result-track:fb4e6bd80eb782046ee0cc874489abe76f66b787f2dbfe56fe86695cb982a9c7` |
| 91 | `theorem` | [card_support_prod_list_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-prod-list-of-pairwise-disjoint.md) | 610 | `result-track:1a9ae0ac713b01a5972966dc88c22a18bac8906cd73b540540fc8d284c1a1849` |
| 92 | `theorem` | [support_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-subtypeperm.md) | 624 | `result-track:ffd341e0d36b3ba00980065debed29f3f9bc445d37d346c9699ee54f53c59158` |
| 93 | `theorem` | [fixed_point_card_lt_of_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/fixed-point-card-lt-of-ne-one.md) | 639 | `result-track:b57b8cd298969bb77866fad8ec2d4eec577653a7ab78c5a9069b67bdd16a373d` |
| 94 | `theorem` | [support_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/support-conj.md) | 655 | `result-track:024e21e292fdb76517ecf4b6046deddd17eb371a71cdee203d6bd98e6b78f531` |
| 95 | `theorem` | [card_support_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportPublic.lean/declarations/card-support-conj.md) | 660 | `result-track:7906fdbda1fe072c026a8c2c21486e67d10415efd6459380a039e60b3d97ced8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b23875ed81e543b36f02ff66c2214e86e38ab9fea8d96d33d7b728559526bfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
