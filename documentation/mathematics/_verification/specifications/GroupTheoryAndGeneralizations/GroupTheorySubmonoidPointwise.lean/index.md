# Verification target: Group Theory Submonoid Pointwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `522713d023d0a4509e13a11eb1413cd5f72db447`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.SMul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_subset](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-subset.md) | 60 | `result-track:bcd382461096cfdc8e5fb88a30d55f8cb1d5f64de17b34e7f64d42067f5f1d0c` |
| 2 | `theorem` | [mul_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-subset-closure.md) | 67 | `result-track:9f65db3c1766c940d18fe82128eb0b0214f72c4c99f51452c26f513838c25d88` |
| 3 | `theorem` | [coe_mul_self_eq](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/coe-mul-self-eq.md) | 73 | `result-track:a815043becbfb89d136981a377cb65355961abb539e9e5368944f9ecee1b9579` |
| 4 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/closure-mul-le.md) | 82 | `result-track:47966283aa8234376e50f20a1f9ca905fda6785598377fa4805e45479fcefd6c` |
| 5 | `theorem` | [sup_eq_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/sup-eq-closure.md) | 90 | `result-track:1e9eabb2bdac01108f435a21a41bc80b190deb0197a8bc0d5271b8491e2fded6` |
| 6 | `theorem` | [pow_smul_mem_closure_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pow-smul-mem-closure-smul.md) | 99 | `result-track:647765660f3a95b5c23ddf808647315d7a1477389afe7917d5a7f167b5e7885d` |
| 7 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv.md) | 116 | `declaration-track:ed6bc3ab4141b9af9e95575712dbf84017926bcc63285f2b6354df32b6758b75` |
| 8 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/coe-inv.md) | 127 | `result-track:7fd0793358b2aaadeaa66f23d1e9f85b8c4b5c8f470172f9704534931a7315be` |
| 9 | `theorem` | [mem_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-inv.md) | 133 | `result-track:7bbc87f751e20e1188c2d5cddf2d4d5c23ee5c3921598d48911b2b194fc63a6a` |
| 10 | `def` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/involutiveinv.md) | 140 | `declaration-track:654a70653f37ce2fef75bbb1afb681f4b28cf233600205e301ab650b0fdeb87f` |
| 11 | `theorem` | [inv_le_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-le-inv.md) | 146 | `result-track:55f4354c3807633401d71c3d69ace88e20a107a1e0c0730cb3a19e953e67458a` |
| 12 | `theorem` | [inv_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-le.md) | 152 | `result-track:9c4c67f62f255dada84f953c18e5db705bb5b7c33fc892e1e9a11a4a37821c47` |
| 13 | `def` | [invOrderIso](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/invorderiso.md) | 159 | `declaration-track:f807dc98fb2bfb0a05b19cf6e5a17524221de5cd6617abb1228fa0d8f155fc5f` |
| 14 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/closure-inv.md) | 166 | `result-track:d9f13d2ec058cd264aced908ac03217e8fd5635cd8a9e3c22a46db1cb7ff8454` |
| 15 | `theorem` | [inv_inf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-inf.md) | 176 | `result-track:d1c08508c247c416ee9cd1b14a8a04b15f89a79e5cda530e7d6de39a8e7bb927` |
| 16 | `theorem` | [inv_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-sup.md) | 182 | `result-track:cb45758e2fc6ac790c1de05d124684788f41f96ed3cada4d6324c2a9fcb83c63` |
| 17 | `theorem` | [inv_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-bot.md) | 188 | `result-track:a1fd831e5d8179bbce6a42cd8c804d76f0ae8146dc8f5238e0650365d8557de6` |
| 18 | `theorem` | [inv_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-top.md) | 194 | `result-track:5c417b641ef4fda125b77e8c701d3dc7f8a9d5b545fb5899225cb033b4e47ae8` |
| 19 | `theorem` | [inv_iInf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-iinf.md) | 200 | `result-track:63647363024b7ced55811ab6ef6faa21a99aa3da11a54d93868f98717742e479` |
| 20 | `theorem` | [inv_iSup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/inv-isup.md) | 206 | `result-track:4c1d3aa00a16130b96f389860a41051be77e6e2bb3643b50a9ccdbd18f7e8740` |
| 21 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwisemulaction.md) | 223 | `declaration-track:059ac220db7a4073f175112cb87ccd6308e51f4464cf817cd9b694b027dcc044` |
| 22 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/coe-pointwise-smul-source-edition-2.md) | 236 | `result-track:7d70c6129926b33fc926477c01bc48185b6eae576859439d4808bf90c4fcab2e` |
| 23 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul-source-edition-2.md) | 240 | `result-track:60a0e20a6da883fee10e3ae43e8c78a1421e517901a8733ce4da530a1ae92b3f` |
| 24 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-smul-pointwise-iff-exists-source-edition-2.md) | 244 | `result-track:e0f1129b290ca8a7bc0866d796bb53ef357b0e64f89aa13133604c17870b1f75` |
| 25 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-bot.md) | 250 | `result-track:c4537af50bd1c7c0283c1622fc75baef139e090603b5e53b79d676ec9d85eb79` |
| 26 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-sup-source-edition-2.md) | 254 | `result-track:cd9b45ca5957d78cac2bcdffe6cab168bbe9e697e2f5dce00090d50eae82691b` |
| 27 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-closure-source-edition-2.md) | 258 | `result-track:392b5fe3978a81d59594f9801895bd85f38b66f6de2ae4495d0659969f2463b4` |
| 28 | `lemma` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-iscentralscalar-source-edition-2.md) | 262 | `result-track:ca365ae8f4803e835d7e73fd7539748984e31a40e500175cc2d9430ccf9a4fb8` |
| 29 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-3.md) | 276 | `result-track:beefb2baf5bdecdd722d7b0136239eae30808d01e43d1cd81b88bc30a31dee82` |
| 30 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 280 | `result-track:44408bb6fde20bb6a137a863c65a28d877aad8ade56ee295488857129d414387` |
| 31 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-inv-pointwise-smul-iff.md) | 285 | `result-track:2b6d937f48a9e2776de9ac1aa29e6d130c39a840494f2f20e93d60967e5f50c2` |
| 32 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-2.md) | 290 | `result-track:71dbe3c04636be07289ba8238ddde395fb3801d770166164e4da0b2807762f70` |
| 33 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-subset-iff.md) | 294 | `result-track:704892d6b926df08405ca300f0308ef1ce2c53df44e30d9511c9eeed00b7fbea` |
| 34 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/subset-pointwise-smul-iff.md) | 298 | `result-track:8bc9cf38b5f1d3ba98eae7b29a845bc9c21f76ca660b21b7990a8f2aff1bb817` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-2.md) | 309 | `result-track:36ed55dd1aacb08cd07212a4361b7b4c0c759e9b6482877cf98793170920a013` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-3.md) | 314 | `result-track:cf371a02e7f67f7a9d19cabe9f4a149c2a8a566d48deb68e978f75f0b2557b91` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-3.md) | 319 | `result-track:938ae46af92bf4988953b5364b1b3e63777a099e1b54b8e5b71c94622f8f5050` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-4.md) | 325 | `result-track:a9bfba510b37670f1b87be6139d441a08c9c578bc3ff61bff441164241eb36ba` |
| 39 | `theorem` | [pointwise_smul_le_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-iff.md) | 330 | `result-track:0e346eec45c9f759f37b1830518d7bc6c998c4e96c1d10b250505fa8175054e4` |
| 40 | `theorem` | [le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/le-pointwise-smul-iff-source-edition-2.md) | 334 | `result-track:72fbd76d150fe3dff0aa798575c64afef0e2b9b856cabd6f0d560554f12da053` |
| 41 | `theorem` | [mem_closure_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-closure-inv.md) | 341 | `result-track:b3fb79932abc529d6d1cfe129c9d395efd78ad1927873f3c41433821599d5ab2` |
| 42 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwisemulaction-source-edition-2.md) | 357 | `declaration-track:d0dea681a99a34b737970b54ff69e652eee5287807cad6013df4c7621db74b43` |
| 43 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/coe-pointwise-smul.md) | 369 | `result-track:51fef3f102d019ef39a982b05bc601c40b53a99d2bf600039869bdd3d4e19322` |
| 44 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul.md) | 373 | `result-track:2dc65cc77b6b2b2d0ccdf71ceb4e0b55e45a70227d2b0a841d3a25403d440fda` |
| 45 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-smul-pointwise-iff-exists.md) | 377 | `result-track:94b03032b5917180c851b34f0e4da6fd9e780eb00c51e4a7da2b16bfbdc44cde` |
| 46 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-bot-source-edition-2.md) | 383 | `result-track:d602f1bea52f0cb47fe2bc108c5969c20c33d20e5db3086fcc33bff0f42d80ca` |
| 47 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-sup.md) | 387 | `result-track:62aa6564ec50bde5cbc573f411f2937b260de27d0736c13346278be43cb8c542` |
| 48 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-closure.md) | 392 | `result-track:31c6790322984eb5264ec6e5fb138b9db7aa1cbea90ab821b843f4082bb0e969` |
| 49 | `lemma` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-iscentralscalar.md) | 396 | `result-track:bed02bc3dfafba1cc00cba80c1cc01b6b1970cc81950d24a584fd9a9d42b68ff` |
| 50 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-4.md) | 411 | `result-track:d7a3691983bfcb8c9a643c8de6553a977b74c1ed80930aaf35868f8e0267b816` |
| 51 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-4.md) | 415 | `result-track:e2e8a4131f0228c251699eb9f370b74fa7316ebf5fb189970f84b80b9c670c1b` |
| 52 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-2.md) | 420 | `result-track:6f0d87c3d36aa70a4f09eafaedced805e4ecc3a91e3f8ac9336fbd515b0dba1d` |
| 53 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 425 | `result-track:214fb0561b5e03d6a90bd1f64b04e20baa7493f3209afd241b0b1d02b8d54468` |
| 54 | `theorem` | [pointwise_smul_le_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-iff-source-edition-2.md) | 430 | `result-track:6e77496f428afe2e661e9cac2b23a3abf86a83c080ed02e27f5e3e096b6ad603` |
| 55 | `theorem` | [le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/le-pointwise-smul-iff.md) | 434 | `result-track:5492cda245f3fdc40ee408c800df8ae9180492f9634a42d8a139b41891079b1f` |
| 56 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/smul-mem-pointwise-smul-iff.md) | 445 | `result-track:3159313bfb63762241d2ec55f01075cbe1c6480d935e88e7946d7299af02bf5b` |
| 57 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-2.md) | 450 | `result-track:48559ed8f879dde64ac581689ab895363c3b7237c6764d95d15899d5fb4d0883` |
| 58 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-4.md) | 455 | `result-track:df683290f8349cfd7cfbf4b840c64138b414e1981a205be61dd1a2996c5d24f6` |
| 59 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-3.md) | 461 | `result-track:9ef764cfe77feb0def6aab78cfe2eb3dae978c9935538fb59c5a4b6fa5739841` |
| 60 | `theorem` | [pointwise_smul_le_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pointwise-smul-le-iff-source-edition-3.md) | 466 | `result-track:e17965baecbc65b87b5b8670bccf72b395c09fd088115033fab944646ce01d7b` |
| 61 | `theorem` | [le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/le-pointwise-smul-iff-source-edition-3.md) | 471 | `result-track:f68a884c9d207210fe6909439ed45ee4d1e8b361406c0074806cb97e347c6b84` |
| 62 | `def` | [one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/one.md) | 493 | `declaration-track:70c35a71fff0ada0732a76d0c050ba3398979b2e4f7a07716259fd7dfdb76ffe` |
| 63 | `theorem` | [one_eq_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/one-eq-mrange.md) | 497 | `result-track:2ab6f0512d12976f30a9bc466504dbb02e32bac3d606c274ef9712a0a417209a` |
| 64 | `theorem` | [natCast_mem_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/natcast-mem-one.md) | 501 | `result-track:31b54ebd6dfba813ae86c622851aaa1e04ad77c56445a1422e0275ad35e6e62d` |
| 65 | `theorem` | [mem_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mem-one.md) | 506 | `result-track:7b9da90aede458d658d17a6942062387b883ef08e7751e1f88383713f77fa8d4` |
| 66 | `theorem` | [one_eq_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/one-eq-closure.md) | 510 | `result-track:32e480e70ba3ec95180c3a3eb499b33234e8c83310c9a3209d70adb5c47a4d50` |
| 67 | `theorem` | [one_eq_closure_one_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/one-eq-closure-one-set.md) | 517 | `result-track:c53255f215f28ec526c9358d4e1499bfaa5a051b7596b0014610ab4bde2d83a4` |
| 68 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul.md) | 529 | `declaration-track:69b4b1c59771d97c2bb0de468085c079385ea24eb99209f1bc6dbb69d05f74c6` |
| 69 | `theorem` | [mul_mem_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-mem-mul.md) | 533 | `result-track:7d521d86e1de90a5b2df2ae0acdac09d38e381c826e95f53998955b31b636737` |
| 70 | `theorem` | [mul_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-le.md) | 537 | `result-track:49b22cafd4ea15e33ba23b3885853023774792b21a30eda68f18af99b1da20a9` |
| 71 | `theorem` | [mul_induction_on](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-induction-on.md) | 543 | `result-track:368f36c14f36c33c16e2243bd75f81fdbe815cbf0c0d5ce3b7846162fed13c86` |
| 72 | `theorem` | [closure_mul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/closure-mul-closure.md) | 551 | `result-track:f7e33156a7c68427b4a96163b80f6b0f2d7f303b1d01f753a1ee00049e0fa643` |
| 73 | `theorem` | [mul_eq_closure_mul_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-eq-closure-mul-set.md) | 565 | `result-track:7b6a1e6d51bdf85a4772785505049f6e74ca5601ebc94b97e732c2408dd9755c` |
| 74 | `theorem` | [mul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-bot.md) | 571 | `result-track:b20af829b8c7986a8648f783b0d4a045e1c8a876a29c471a46dbb5e8dc44ca31` |
| 75 | `theorem` | [bot_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/bot-mul.md) | 577 | `result-track:8f01c460e15c99a8f25118ae88b25175acd650d47657681d741ce3488e9100fb` |
| 76 | `theorem` | [mul_le_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-le-mul.md) | 583 | `result-track:c0ed38f5927f17e0ad498c4b00cc90e765c3a6678c4cd614dc1920b55d94db8f` |
| 77 | `theorem` | [mul_le_mul_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-le-mul-left.md) | 587 | `result-track:68b220ee167dd47a428193272cd243c7d76a731d79d003122d93efb2e34986f4` |
| 78 | `theorem` | [mul_le_mul_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-le-mul-right.md) | 591 | `result-track:be0d2b3cbe6b1fa6448fee6e4c084683fc93c675ba3d9c9987fcee8e41004ed9` |
| 79 | `theorem` | [mul_subset_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/mul-subset-mul.md) | 595 | `result-track:1f8fe6b832f17dc19480473b65a6b40fb4beb61b615e1402f48ace8ccae5986d` |
| 80 | `def` | [hasDistribNeg](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/hasdistribneg.md) | 610 | `declaration-track:a83a0fbedd72c6ecfdb8e79362ea07e5edcc4e13ad9016dac7918c55ccc06c0b` |
| 81 | `def` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/muloneclass.md) | 638 | `declaration-track:95a1f8dbf8edb4381c64f1bb92fb60e9c343d143442a5f3c9af9fe0f6c8379c5` |
| 82 | `def` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/semigroup.md) | 652 | `declaration-track:84302a88d00a824784cf3446854c82a22b09f4ea88da9046c4ea20c03d501829` |
| 83 | `def` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/monoid.md) | 673 | `declaration-track:8cbbeb1c411b6ee06e710104671a9a092e3b0bde3a9fe2bb1ded54f8ad5b09da` |
| 84 | `theorem` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/closure-pow.md) | 679 | `result-track:ccbf4b2b175c10488636758009aed0176832285936d0e6a0855600ea1a581de4` |
| 85 | `theorem` | [pow_eq_closure_pow_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pow-eq-closure-pow-set.md) | 684 | `result-track:c9a5bfedd86c401f73d837ede127d01fedb711bb858bb9b61bc54b20d0702693` |
| 86 | `theorem` | [pow_subset_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/pow-subset-pow.md) | 688 | `result-track:9b0fe03ae01be4fcd84aeedd52e90a9392aab21ed656e4ca08cbe638c47cacc7` |
| 87 | `theorem` | [submonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/declarations/submonoid-closure.md) | 701 | `result-track:d0bcf4d022ed18b793cbed03ceef08d0349a86bcca1f539205f431581ef0056d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fd3de738e149ec6156d8c6b26fb3e091aaf07630e5e9680ac8e4194ef49a085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
