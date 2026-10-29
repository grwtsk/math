# Verification target: Perm Support Namespaced Not Mem Support

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78a2d364753cdd35fb348332b8ea8175f12df249",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78a2d364753cdd35fb348332b8ea8175f12df249`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint.md) | 45 | `declaration-track:c306c6932f5801e74ed68d705a41f828d054519763574dba092485f9f6a3000c` |
| 2 | `theorem` | [Disjoint.symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-symm.md) | 52 | `result-track:503a74015fad7564fc87e792e6db81d27e2c9ca11bfcbb5ca725b518116a20c1` |
| 3 | `theorem` | [Disjoint.symmetric](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-symmetric.md) | 55 | `result-track:ce49b3d9d92205917434833743d821fbd3c42acf5985f765ad070dcb5bec8fa8` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/instance.md) | 58 | `declaration-track:6cff0c0ef8500df29ec8ad82f04897551231799f6ade09f7c9db3e865caf4d47` |
| 5 | `theorem` | [disjoint_comm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-comm.md) | 61 | `result-track:2114a31951b077b8292a315617449721429bb98ee46d3f5b1d5fa4e37f6a45fd` |
| 6 | `theorem` | [Disjoint.commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-commute.md) | 65 | `result-track:b1cfb9465bba1be5b431fc4b41f673abfd91bcfd3cc75296023ee1d1aa7c1443` |
| 7 | `theorem` | [disjoint_one_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-one-left.md) | 77 | `result-track:5e21e67f1072fb6a4314a45b1c12d1405084f033b32e04a43b2c3a8a017a33a8` |
| 8 | `theorem` | [disjoint_one_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-one-right.md) | 81 | `result-track:ac41bca98c86cb947be2bea912ea2bf59bbe6ff186d23fee563151ebb4f0e081` |
| 9 | `theorem` | [disjoint_iff_eq_or_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-iff-eq-or-eq.md) | 84 | `result-track:e1062833a0c310c3272d82313cfffc074295acc1bae90e9229c366a0fd675ad3` |
| 10 | `theorem` | [disjoint_refl_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-refl-iff.md) | 89 | `result-track:87ed5160f94ea4b41d6c4edc0df98a99aa23c408a54bcbd06833a983f6de6c0e` |
| 11 | `theorem` | [Disjoint.inv_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-inv-left.md) | 95 | `result-track:13dcec775d5a58fdf4b47328c826e351ca234c433d7abfadb1b3d6f0e20f8b02` |
| 12 | `theorem` | [Disjoint.inv_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-inv-right.md) | 101 | `result-track:cfd19bc6c88ef05d819ac06784458cb64159dd50e003b9630f4a45d967781889` |
| 13 | `theorem` | [disjoint_inv_left_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-inv-left-iff.md) | 106 | `result-track:fbf4cc3f1ad62650773841d0bfacd55b58df402afd9b3c7febecb5c568c411f1` |
| 14 | `theorem` | [disjoint_inv_right_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-inv-right-iff.md) | 112 | `result-track:344524d806358febeb0ec0270af4ae017694374a859429f3091aeb9a79a88304` |
| 15 | `theorem` | [Disjoint.mul_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mul-left.md) | 116 | `result-track:d42d83d335e79028ab25600c3f2f3885cb76e4588e28b8bbf0ab88f57ec84ac0` |
| 16 | `theorem` | [Disjoint.mul_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mul-right.md) | 120 | `result-track:9eb7674256416924c70ffcefa687cb1994c6fd08727bfb7f45141f2cc82bfa7c` |
| 17 | `theorem` | [disjoint_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-conj-source-edition-2.md) | 126 | `result-track:d20753878301707d02123f3b517f1e90ef01f3e452665fe5c2315d8cdced3c21` |
| 18 | `theorem` | [Disjoint.conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-conj.md) | 129 | `result-track:84d82d3092f542faeb7894457116eb1c16b65fb07d5836468a946f59408cf488` |
| 19 | `theorem` | [disjoint_prod_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-prod-right.md) | 132 | `result-track:ada8b9977b6356b6a4d8dfa975f606f21404420c5f4418afb0796987b75ed774` |
| 20 | `theorem` | [disjoint_prod_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-prod-perm.md) | 140 | `result-track:5c569fcd89ccbd70e54be3c6b6b8b94bd88d70fbe925a4ab97ee4f25ce2ef1a0` |
| 21 | `theorem` | [nodup_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/nodup-of-pairwise-disjoint.md) | 145 | `result-track:d4e5f3830b580e96d2fdf521a4191f1607f4f8592f86af1861cecba6d53b8660` |
| 22 | `theorem` | [pow_apply_eq_self_of_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/pow-apply-eq-self-of-apply-eq-self.md) | 156 | `result-track:f19da06d0e03b08b046d0950852a4f5c98c0a608bafe6370caa97a9249a47847` |
| 23 | `theorem` | [zpow_apply_eq_self_of_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/zpow-apply-eq-self-of-apply-eq-self.md) | 161 | `result-track:2b414214b530dc4f2c81887e56f40a8584911caf198618847b625e245ae25dd3` |
| 24 | `theorem` | [pow_apply_eq_of_apply_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/pow-apply-eq-of-apply-apply-eq-self.md) | 166 | `result-track:a7d405e11aad1f1619d79df939239cd41f5c9ad5c1c8cbaada52a9fc3719c0fb` |
| 25 | `theorem` | [zpow_apply_eq_of_apply_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/zpow-apply-eq-of-apply-apply-eq-self.md) | 175 | `result-track:97dbf5cb501e32d87a76c5194983628aa004dfbac26b1bf140c29d80cfc13454` |
| 26 | `theorem` | [Disjoint.mul_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mul-apply-eq-iff.md) | 184 | `result-track:a730062b84ff2bda12c16c82e6d8ab03e52c0805e871f6ef0a4bfcd4e083957a` |
| 27 | `theorem` | [Disjoint.mul_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mul-eq-one-iff.md) | 192 | `result-track:fd28e18896c50f0515f47f19be5f86fb4e917a7d6bfd1d9b3d12dcdee3907df3` |
| 28 | `theorem` | [Disjoint.zpow_disjoint_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-zpow-disjoint-zpow.md) | 196 | `result-track:3bde6e9ec84a6e0bf0d3c52407351ea54e7b021e93357094b55a2deac58a2511` |
| 29 | `theorem` | [Disjoint.pow_disjoint_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-pow-disjoint-pow.md) | 202 | `result-track:46ca7a47cdf161ce468e82ba5a2e7a8b1a88007fb70dfb9ce81159dcd0cae9f1` |
| 30 | `def` | [IsSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/isswap.md) | 214 | `declaration-track:5528a96022e9df2b69c775a7892cab857f19e53d4a627ec0cbc129750a02e200` |
| 31 | `theorem` | [ofSubtype_swap_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/ofsubtype-swap-eq.md) | 219 | `result-track:4e67304cfa56f92b4245b476620c85ae4bfba917fbef3bcf61a72aac778f5a88` |
| 32 | `theorem` | [IsSwap.of_subtype_isSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/isswap-of-subtype-isswap.md) | 240 | `result-track:a019eda2c9acfcb9aad8a775c299cc939ad6b3580b3375c2e98115362c20f986` |
| 33 | `theorem` | [ne_and_ne_of_swap_mul_apply_ne_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/ne-and-ne-of-swap-mul-apply-ne-self.md) | 249 | `result-track:f0ddf7e306bbddf0e7fda811106435810d8e620b73febf5f0893bc55df29e2ea` |
| 34 | `theorem` | [set_support_inv_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/set-support-inv-eq.md) | 265 | `result-track:091b1c9277cb84bc2980a628a0eae33794c1f7f8c70a48ca9105bf2a0f2994b4` |
| 35 | `theorem` | [set_support_apply_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/set-support-apply-mem.md) | 271 | `result-track:6b53b63840c97d64dc1e29f4aee6ec074ea369671a8b37676543a02babb61f0d` |
| 36 | `theorem` | [set_support_zpow_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/set-support-zpow-subset.md) | 275 | `result-track:d047555e8cad84e9249485613196861e450d4e1e4781d047283feb1d3a207b23` |
| 37 | `theorem` | [set_support_mul_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/set-support-mul-subset.md) | 282 | `result-track:e73d75d54d4e7d7e3a2128039376d4edd113e7cfd07d30b7c8694cbb419a9d8c` |
| 38 | `def` | [support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support.md) | 293 | `declaration-track:6d0edf1794a1c8ac4efcfad42ff7a3e096c8c74fdae096efcf0b9602daf2127c` |
| 39 | `theorem` | [mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/mem-support.md) | 298 | `result-track:398bc5d831ce48a186a2860b142fe9f8e8eabcc733f7192ef99360603f9dd38e` |
| 40 | `theorem` | [not_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/not-mem-support.md) | 302 | `result-track:6f6193a74fa3e1b8526725068e85c358fea9de7c0db4e91b2ef616a0ce8f4a68` |
| 41 | `theorem` | [coe_support_eq_set_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/coe-support-eq-set-support.md) | 305 | `result-track:cf2448c13568d47c151a6814a58d7164b33bc0eeaeb8303dcba7037e4ff30da4` |
| 42 | `theorem` | [support_eq_empty_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-eq-empty-iff.md) | 311 | `result-track:97f54ba94255d5715bf6f1bd0feb64881bba1ac562c8ff92fe300d426276f040` |
| 43 | `theorem` | [support_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-one.md) | 317 | `result-track:8179042396e421cb9e1a97cf544f58e506657658c2f8f23e5a69a1df4bde9412` |
| 44 | `theorem` | [support_refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-refl.md) | 321 | `result-track:b54857c1c1df1a61db55319a005d1ef52c07fed37b2992fb5e3b6b29727d5dd7` |
| 45 | `theorem` | [support_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-congr.md) | 325 | `result-track:a96ae6998d18cfccd04883c4625103b1d6025de3f5577967ef5604bc3790bf37` |
| 46 | `theorem` | [support_mul_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-mul-le.md) | 333 | `result-track:a269f259bcd0553fd9a7cc02c33c5cfd49872d2ef369e6ce6462afb8aba0937e` |
| 47 | `theorem` | [exists_mem_support_of_mem_support_prod](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/exists-mem-support-of-mem-support-prod.md) | 340 | `result-track:461dac70d27efbebbf98ba19a225a5f85c77baf27c94c855bccedbb7128a99b5` |
| 48 | `theorem` | [support_pow_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-pow-le.md) | 354 | `result-track:242bdad0aafcf3097c239ca879d9cfb6cbb2381a89970a4fd83a47ffc7243cd0` |
| 49 | `theorem` | [support_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-inv.md) | 359 | `result-track:29b2d8e6bbeeafe15d9a2ca7f04c74814ce3ae7c4445f69285680765683f6ea0` |
| 50 | `theorem` | [apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/apply-mem-support.md) | 364 | `result-track:ae0f74e60bd94e5112cba501a06da43935395b63cdb5f5df2ceba827ae9b9bff` |
| 51 | `theorem` | [apply_pow_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/apply-pow-apply-eq-iff.md) | 370 | `result-track:b71088f40cf96047aefa9e1cea1eeca77e9ae87ae614f1a76ed674118dcebe6f` |
| 52 | `theorem` | [pow_apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/pow-apply-mem-support.md) | 375 | `result-track:15a4e81d73293fbf4aaec7d69ae26c5b0098a215689c432b6af920c234694122` |
| 53 | `theorem` | [apply_zpow_apply_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/apply-zpow-apply-eq-iff.md) | 381 | `result-track:203752371af24b399e994a39f1460661bec33d9f28e640c6fd0cb3b8cbd8e130` |
| 54 | `theorem` | [zpow_apply_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/zpow-apply-mem-support.md) | 386 | `result-track:7bb35b9a51c2bbe3776b6024ce44b8a55c0cb4acbf527f1460ce849caf92470c` |
| 55 | `theorem` | [pow_eq_on_of_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/pow-eq-on-of-mem-support.md) | 390 | `result-track:4d10c75462765c2226b7198d73973fb1311b9316aec376846ad2a7d7e6b0cd2d` |
| 56 | `theorem` | [disjoint_iff_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-iff-disjoint-support.md) | 399 | `result-track:55c88dedf8f30d045e9d4688372861a89cb8a4a231277a28e9b8ec8be0c79f90` |
| 57 | `theorem` | [Disjoint.disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-disjoint-support.md) | 404 | `result-track:c454712fb54cf843b0a47e203890ed623e7320255280cf5a96f143a5c328cd27` |
| 58 | `theorem` | [Disjoint.support_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-support-mul.md) | 408 | `result-track:9ae35edb653ff820cc15c822a5335c80c1dd5110c264e3aa684c95cd3c303064` |
| 59 | `theorem` | [support_prod_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-prod-of-pairwise-disjoint.md) | 416 | `result-track:549de5533b8cfc1ae47479fe14efa53b35ec3b982e1ccc4f6ef8b63b96111b06` |
| 60 | `theorem` | [support_prod_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-prod-le.md) | 425 | `result-track:b5db892884fb62ad49b12f94c2ad506135cbebe365658d882008ccefb7df29da` |
| 61 | `theorem` | [support_zpow_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-zpow-le.md) | 433 | `result-track:99fc465377acc66a8378ad06a5b76cfd223964fa4c51e5c4ae7e5eb3fac6047b` |
| 62 | `theorem` | [support_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-swap.md) | 438 | `result-track:698284a796eb161f77ec28ffce3cab297325b9d67592746478ca865098b72b3b` |
| 63 | `theorem` | [support_swap_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-swap-iff.md) | 447 | `result-track:39236b0c581b978135601b219c63f3b4105c1afdb9af40c22772d4ff37e9943c` |
| 64 | `theorem` | [support_swap_mul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-swap-mul-swap.md) | 459 | `result-track:38a61f4759b9c445097fbe3ceb336dd6c69f350bc0fa024017c49afa4f5d139a` |
| 65 | `theorem` | [support_swap_mul_ge_support_diff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-swap-mul-ge-support-diff.md) | 478 | `result-track:c44d0d2dfa32ca7cfc7dd6fc86ea4fedf0fa8e1848acd64e0ba77b44bbd74e5d` |
| 66 | `theorem` | [support_swap_mul_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-swap-mul-eq.md) | 489 | `result-track:f7c6368c65e9850a255711cc8a7288bc578042719289494582fb7cdca930395a` |
| 67 | `theorem` | [mem_support_swap_mul_imp_mem_support_ne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/mem-support-swap-mul-imp-mem-support-ne.md) | 503 | `result-track:e0ad66afc862f1b221d2afd1bdff1cfe8e5349f5abe7ac2a0ff7e5b9eecffa92` |
| 68 | `theorem` | [Disjoint.mem_imp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mem-imp.md) | 514 | `result-track:2a892401a0a09e28cc7a7a5e132c72132e2b5ee548b9928be886a16ee12cc8a5` |
| 69 | `theorem` | [eq_on_support_mem_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/eq-on-support-mem-disjoint.md) | 518 | `result-track:e7e0171b1764a957f406c226cda56d861200f08ce2a81e92d47ff497ef7b153d` |
| 70 | `theorem` | [Disjoint.mono](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-mono.md) | 533 | `result-track:4cc8a7bf5c1573e9cfe02a45aa8ec689ea14341db8572d1af4491defb6f0b612` |
| 71 | `theorem` | [support_le_prod_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-le-prod-of-mem.md) | 539 | `result-track:c68b41bd34ab0715a1fd587f4f8b65f7efa1b292aece552cf3e6db816c66abe4` |
| 72 | `theorem` | [support_extend_domain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-extend-domain.md) | 550 | `result-track:1a958a1c38d823da9e81e0fd5aeff81cd51cfae30a8b9544aa8bd96d2017803a` |
| 73 | `theorem` | [card_support_extend_domain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-extend-domain.md) | 575 | `result-track:d3e6a4a03dec156aeec5dc8b6fff5f10a06ccf96c0e6c017dc218220a8613141` |
| 74 | `theorem` | [card_support_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-eq-zero.md) | 584 | `result-track:87abf7d1af95172f68386e5dabc7d2890947ca30fe97ef90d66da55a9cc67b8e` |
| 75 | `theorem` | [one_lt_card_support_of_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/one-lt-card-support-of-ne-one.md) | 588 | `result-track:10375c724d9023a04dffcc2c1fc255f7fe49e949ecf18a37567c792f2f2d8692` |
| 76 | `theorem` | [card_support_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-ne-one.md) | 596 | `result-track:e6ca418bcfe7b8d639c4a3e2efbac086ef1fac9c4192c6ce207be80fb3c49614` |
| 77 | `theorem` | [card_support_le_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-le-one.md) | 603 | `result-track:72f4eb1bbf91aa1941a478ea2e43547824a354c9975ca07be3b25bc3bc5bb83a` |
| 78 | `theorem` | [two_le_card_support_of_ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/two-le-card-support-of-ne-one.md) | 608 | `result-track:aa2c4379912a79598bf5e1cf15d8e40e37e56100a35231896cd979f226aa08e5` |
| 79 | `theorem` | [card_support_swap_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-swap-mul.md) | 612 | `result-track:6ddb41e23fd8bf4d6939ab5e4711edffe55682cfb637df66eac6b36e28620ed1` |
| 80 | `theorem` | [card_support_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-swap.md) | 619 | `result-track:d26232ffb563721a48f288b565da47c41d6c41b1b60bb6f5878030433cccd310` |
| 81 | `theorem` | [card_support_eq_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-eq-two.md) | 625 | `result-track:66ee11186742847cbae410307c71cb0b0925b41d2b1a0f651be29ee049105095` |
| 82 | `theorem` | [Disjoint.card_support_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/disjoint-card-support-mul.md) | 644 | `result-track:5d7b488ea9dd6a8e874e6fb896fb7e8ebcf0cb449f11b177900065671abb346d` |
| 83 | `theorem` | [card_support_prod_list_of_pairwise_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/card-support-prod-list-of-pairwise-disjoint.md) | 653 | `result-track:f675abc07c23ea84f6f73dcde1c08a79901ff5dbf21b66cdd963d5d361380aba` |
| 84 | `theorem` | [support_subtype_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermSupportNamespacedNotMemSupport.lean/declarations/support-subtype-perm.md) | 667 | `result-track:3bb61accfc7ba8e44757a10c0fbe2d922fd2c288709e23781b5e8f637cb281d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa46cf4206f7e722c544a1127a75ffea9025c620b3b980c4f780e8bbc196cf5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
