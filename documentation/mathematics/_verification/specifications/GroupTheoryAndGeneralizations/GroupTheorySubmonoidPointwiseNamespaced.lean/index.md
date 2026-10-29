# Verification target: Group Theory Submonoid Pointwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309988422c05d0a9a2dbc192d75d079398c8c206",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309988422c05d0a9a2dbc192d75d079398c8c206`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.SMul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_subset](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-subset.md) | 68 | `result-track:623e3e50662ae518ccc31ed2c55400e346acd940cd248868f4f2fc6eec074a79` |
| 2 | `theorem` | [mul_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-subset-closure.md) | 75 | `result-track:daa69157c9bee426027c60f94ad53218d0cf88ecb467864df577b9a0e9007630` |
| 3 | `theorem` | [coe_mul_self_eq](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/coe-mul-self-eq.md) | 81 | `result-track:35f73bb0ee43f63ad135ddd589829e102a95cde8bc31c6451300e4ddcbba42af` |
| 4 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/closure-mul-le.md) | 90 | `result-track:624ddc9f7d6b5493df4916505f0cb1ea46a112a4a24c3c7c1d36243f48b4c63e` |
| 5 | `theorem` | [sup_eq_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/sup-eq-closure.md) | 98 | `result-track:97fc1efde5c0125c2a23aebd0b3999141f8885e7a189eed97f3d46484a5adfce` |
| 6 | `theorem` | [pow_smul_mem_closure_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pow-smul-mem-closure-smul.md) | 107 | `result-track:3172c688b776a38c12c9d87ae5cb51b68c37661a77a22890bd3ee2c48f07157c` |
| 7 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv.md) | 124 | `declaration-track:80fb75b4a761c18b62dd3433add64b52ef00aa40c97e5aeeda42ee2ee840423f` |
| 8 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/coe-inv.md) | 135 | `result-track:093de1e2ddafb5411fef83a0e7e820286bf7398e37ff08872eff57b71eea5711` |
| 9 | `theorem` | [mem_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-inv.md) | 141 | `result-track:1582373b24ab23d9358340a54e142194cbfd20c0850ad620f36675f4267d7cd6` |
| 10 | `def` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/involutiveinv.md) | 148 | `declaration-track:cdb1feb264823fd29365b647071c7e5f1e674763219bb3e6c5506bcdca1cfec4` |
| 11 | `theorem` | [inv_le_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-le-inv.md) | 154 | `result-track:5976fd85db84b629ec5f3f88ae8aa3def58fd38e5f6ae80b02f36f25d77eddcb` |
| 12 | `theorem` | [inv_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-le.md) | 160 | `result-track:3addc1e35a50edf87fad865d1988444135da06866cab029ac4f0caa8fc3e3516` |
| 13 | `def` | [invOrderIso](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/invorderiso.md) | 167 | `declaration-track:c0874af716dfe873715f5bb4a0f37b9a110a4573620f8176e98840676fd762c3` |
| 14 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/closure-inv.md) | 174 | `result-track:122b8335631629ebbd486cac2a266a6914a9037b02dc544148bf90487aa42fbe` |
| 15 | `theorem` | [inv_inf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-inf.md) | 184 | `result-track:ccf7f3d85d6e8fc56791b8cc92cc8517afc8b47cc2cb5a8b6d84962718db8408` |
| 16 | `theorem` | [inv_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-sup.md) | 190 | `result-track:f5c8c15089ed1a8e14d21dd3a93ac7184465fa828c6804a9bbde50bbcfe27b10` |
| 17 | `theorem` | [inv_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-bot.md) | 196 | `result-track:f7c71058b45e5dc71575d3f071289a6b367ec5f09ea03521d9c3b59c483493b3` |
| 18 | `theorem` | [inv_top](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-top.md) | 202 | `result-track:487e532cff0cab1e88b0fd21bab7c47586b08c46e162bb7738ae33aa9c9ea515` |
| 19 | `theorem` | [inv_iInf](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-iinf.md) | 208 | `result-track:bfc99c37b28120c51e492238be4288904c262ede5dc6835d4f5215ee390156ef` |
| 20 | `theorem` | [inv_iSup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/inv-isup.md) | 214 | `result-track:625b93d26f6878d38b7899cdc2de785d11cff91e0b3337fb612d76014564fb1f` |
| 21 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwisemulaction-source-edition-2.md) | 231 | `declaration-track:77199fa341a61936e16b5967dda98a13730e8c6961f3e54e7f7f40d8005cfdd3` |
| 22 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/coe-pointwise-smul-source-edition-2.md) | 244 | `result-track:7ffd27930fd8b65d13aaf19ba3597b952d7c00343b9e4df837bf50ef114fa253` |
| 23 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-source-edition-2.md) | 248 | `result-track:5f08d552aa79334b893f10c9b55a420e378322c13461455963d78cb7fcd5b8d8` |
| 24 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-smul-pointwise-iff-exists.md) | 252 | `result-track:98a3d8828401cc4c3c90fe93499000585def271570aa7201ae0e6336446ecd52` |
| 25 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-bot-source-edition-2.md) | 258 | `result-track:4e66b828ce971edbde759b69a2edf7c586524e6a070ea4b1f4226e10a3bc6875` |
| 26 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-sup-source-edition-2.md) | 262 | `result-track:ef7fd1893e2aaffc2e17fada2b7e4511fd3ec9f44be68bfff132bffe0dd1b9bb` |
| 27 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-closure.md) | 266 | `result-track:2cd7785871173a16b50fa5e668bb28a9f138090dc54323483d6ede930fd43fc8` |
| 28 | `lemma` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-iscentralscalar.md) | 270 | `result-track:48cafdf01d6e7ea24ebe40a277d99844fcaafaa36c8d64c673e57a33778de70b` |
| 29 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-iff.md) | 284 | `result-track:10084c9bf23a76a421fc8a18b940a1b781cd8441ff41389a9761ef6f473be2f5` |
| 30 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 288 | `result-track:5a86006d9db8ffe266f8bb7ab62f20dd6ce240f045b88d26406eb76c57bd01d4` |
| 31 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-3.md) | 293 | `result-track:a5b9e3de2d233738eb06baa4d7eb4ef6a4ecbc27c95e6165e5a4a1d6f44d1f02` |
| 32 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-2.md) | 298 | `result-track:850033de8a75d330cb5463af6a851994d23e806ccf5476fa926e202224530aa8` |
| 33 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-subset-iff.md) | 302 | `result-track:93820be1028b6ae83f1967b01bac9a0d439102e01acab5c6c4b8b17807bff8a4` |
| 34 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/subset-pointwise-smul-iff.md) | 306 | `result-track:8f8c9667f74231efe6bacc29e9f15fbb4800b7d5c2ec867663d7d3ff0f47f7d5` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-3.md) | 317 | `result-track:691f1e49e2bddef73712876609b0d33c8bdef0ae722d2eb547e352f2b530829a` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-4.md) | 322 | `result-track:8125fdb0164262d55c91eb33c268193d6410e9b49441ce4a44acdb26e1994c0c` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-inv-pointwise-smul-iff.md) | 327 | `result-track:3a1a78f1ed461a3f4a6439f97cd4b048805348ce4619f561509711c1a505b471` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-3.md) | 333 | `result-track:bb3dc171e85cabe698f87ff9a0689d3a7627276e499dc918d6d2491a40383aba` |
| 39 | `theorem` | [pointwise_smul_le_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-iff.md) | 338 | `result-track:309e526ff0674a53528560929de0a4554fb05e736d1899b309390ca93d286fab` |
| 40 | `theorem` | [le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/le-pointwise-smul-iff.md) | 342 | `result-track:277eeda9e7bf658077b7a6de3155065d55cf286caf28ce7e6dcdf9b2db28282f` |
| 41 | `theorem` | [mem_closure_inv](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-closure-inv.md) | 349 | `result-track:6e8887368b737a8dfbe8ad26f273e4c9afc2b0db5fe993e4f9b6c57f67006a12` |
| 42 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwisemulaction.md) | 365 | `declaration-track:0bdaa9d4e4e3dc00fa5073ee47527c4d90ce349054e15d85e022768c1a56099b` |
| 43 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/coe-pointwise-smul.md) | 377 | `result-track:3316f239e0404e2225ffa6ac7c4ae07c12e29fa77e95901892dd844a73f393a6` |
| 44 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul.md) | 381 | `result-track:29ec08901929dad6c6c62817040e7bcbfa143cf7bbd158540cef87564ada616a` |
| 45 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-smul-pointwise-iff-exists-source-edition-2.md) | 385 | `result-track:e4712c3ff06a9588027142c7c27b1fd4163f24e71346fdc6c17151f84f2c3a91` |
| 46 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-bot.md) | 391 | `result-track:1af2dbcf11384f889ff51841217265142962fb7263ff6b73a183b58085c9b80d` |
| 47 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-sup.md) | 395 | `result-track:0f9db44e8d5cbb10255139977e4d8f18430f6cd0f322e17ca3ca33e62184a628` |
| 48 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-closure-source-edition-2.md) | 400 | `result-track:3a881c0a2bf4e8b767d5e8f36039fd656ba3bf2e65abb129440c93532809275c` |
| 49 | `lemma` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-iscentralscalar-source-edition-2.md) | 404 | `result-track:645bc34684b51337997407b1547cc133c29992e0a57ade7f40c4c44331d86ee5` |
| 50 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-2.md) | 419 | `result-track:592ba57be23a2333210b424027d79955c040a1ece90817b456e3f4d21b94d853` |
| 51 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-3.md) | 423 | `result-track:701c3af01766ec500772797f66934af2f352c586e23adf90db156017fb416523` |
| 52 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-2.md) | 428 | `result-track:7c8517e412d981113369117bb2f1b616c5c201762dfd22aa28d5b880250c614d` |
| 53 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 433 | `result-track:79bc98ebb17dea4fd9360a1e041d69b0a5bf61d268ecc80247151cf55ab320fb` |
| 54 | `theorem` | [pointwise_smul_le_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-iff-source-edition-3.md) | 438 | `result-track:e867354641f0f651c30ae8c237eae3fc9450780a3379e537c95dfc743de81ee6` |
| 55 | `theorem` | [le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/le-pointwise-smul-iff-source-edition-2.md) | 442 | `result-track:84aab765d9744e69f89bc5c60b03c272d339ba66552d0da484501e7338eb41bd` |
| 56 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-4.md) | 453 | `result-track:b454958d362d4a0eeecbaaf04198cc6b215d84b59ef56550ffe6f833662e78cd` |
| 57 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-2.md) | 458 | `result-track:6aa26212724022d033da1cee56f8653c59acecd3e90396f177bfeeca06c67cbe` |
| 58 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-4.md) | 463 | `result-track:d453938c6aa13a6cdf9a68f60408c74fa05483c45f3ce945503da523bebea0ce` |
| 59 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-4.md) | 469 | `result-track:bbedcb8ca3a084fd38cad76db3a856b62e1683847903890b01a123d02c16eee1` |
| 60 | `theorem` | [pointwise_smul_le_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pointwise-smul-le-iff-source-edition-2.md) | 474 | `result-track:b75e922f30cf041e164d776bfb57c8d3ad2cc09cfa3a249e996ff90a6ff2b218` |
| 61 | `theorem` | [le_pointwise_smul_iff₀](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/le-pointwise-smul-iff-source-edition-3.md) | 479 | `result-track:df8b2aa16f13708b3b820ecf4344e829d22dc9d79fb92b2f6fd8ce274f7556bc` |
| 62 | `def` | [one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/one.md) | 501 | `declaration-track:cfe2535cf7e4842ac6cad9a8ec41bc4c0e53b46c080f517c5efe3196713fa1af` |
| 63 | `theorem` | [one_eq_mrange](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/one-eq-mrange.md) | 505 | `result-track:cf9e55edc393cce014bb490538485cf822961c246963ec6a513c8584afa04b63` |
| 64 | `theorem` | [natCast_mem_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/natcast-mem-one.md) | 509 | `result-track:3e8c6190e0588dfa2f98fe1fdf474472ede04b93b4205493d131b1b238ccaeac` |
| 65 | `theorem` | [mem_one](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mem-one.md) | 514 | `result-track:ea3eff584e6b42c495389a06af0223123608d2c4b693235d054148b2fa00afff` |
| 66 | `theorem` | [one_eq_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/one-eq-closure.md) | 518 | `result-track:adb882c823a1e3c0021641a0f0c3c0e9f679aa4f5d78f15b5154ac8f0eb561db` |
| 67 | `theorem` | [one_eq_closure_one_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/one-eq-closure-one-set.md) | 525 | `result-track:17691099b9267ffe1d1bd5d85c7c47d554c171e88095083af69f3e012402ed54` |
| 68 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul.md) | 537 | `declaration-track:bb41dab38ece1381371aad56aa7eed2542e67232391fa8653be59ead7349a64e` |
| 69 | `theorem` | [mul_mem_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-mem-mul.md) | 541 | `result-track:ba3348d5a388947210a21ac9e5d2d7d17aa459728bcf89958b7189cfc4661984` |
| 70 | `theorem` | [mul_le](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-le.md) | 545 | `result-track:8e146423a89949c670e5ea4842fd2b78285bda3034934acb35ec76c53d6a927b` |
| 71 | `theorem` | [mul_induction_on](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-induction-on.md) | 551 | `result-track:dc6b1dfefcaa706c4904ef7cf8915976cc296db145fe2d06488f4775d6e6ad4d` |
| 72 | `theorem` | [closure_mul_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/closure-mul-closure.md) | 559 | `result-track:3e4edbd458a083a231fab8155916e17f6514d4c37e2bb8442236d661c69d1f41` |
| 73 | `theorem` | [mul_eq_closure_mul_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-eq-closure-mul-set.md) | 573 | `result-track:0ace625f3c35ab2ceb3b3917a638e3b6de1578978407b773a15a31bb8c200a3a` |
| 74 | `theorem` | [mul_bot](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-bot.md) | 579 | `result-track:fb40500a66b01bfc7965aeef02f002ccf06fc3d7c584ee0d61fc33e2c225a074` |
| 75 | `theorem` | [bot_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/bot-mul.md) | 585 | `result-track:d3ef7afd829218f8f7b04505d2f4d2a5ef05718ff2ec2801183f87afbbf6c5bc` |
| 76 | `theorem` | [mul_le_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-le-mul.md) | 591 | `result-track:e2ee30aa9db9925728fcb87e792d2405e7dd70180130a6c13ebf2c32036a1c02` |
| 77 | `theorem` | [mul_le_mul_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-le-mul-left.md) | 595 | `result-track:25300f78fcf7894db903da9699c628a2e2ae11bbe4cd92e34bf36739fc29cf78` |
| 78 | `theorem` | [mul_le_mul_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-le-mul-right.md) | 599 | `result-track:48ffd3be255a6d9948ffa50e29105d419c00f470c843f432796d0317ed3a33d3` |
| 79 | `theorem` | [mul_subset_mul](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/mul-subset-mul.md) | 603 | `result-track:6f57c2fe05bd58ef8d32d29da4003b3186ac9de6cef82f111f081f98d1740174` |
| 80 | `def` | [hasDistribNeg](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/hasdistribneg.md) | 618 | `declaration-track:517c6d804d4417992257743a1c4ed0b8be13d15af2ae1caacfc2148b4bdf745f` |
| 81 | `def` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/muloneclass.md) | 646 | `declaration-track:0a17216fea2a28af34ef859a7ff104f7374c5d618a05e8dc8550a2eba527741c` |
| 82 | `def` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/semigroup.md) | 660 | `declaration-track:73e28f9157b8ee5d6d8ec1d002efa1fe36dad9a1c2ffaec2b47d303395be896b` |
| 83 | `def` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/monoid.md) | 681 | `declaration-track:fd4d49e38f3ca253e88ad86c75d47b383a2bbd0013aeac13d4b37a1d95a9c41a` |
| 84 | `theorem` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/closure-pow.md) | 687 | `result-track:12dfe423130f7e5cb64568a0d21a225efa4522efd41b0bd073ebc589e7c00d5e` |
| 85 | `theorem` | [pow_eq_closure_pow_set](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pow-eq-closure-pow-set.md) | 692 | `result-track:3bb8feac6df266b774a9c6d213522f20c9c6ecaa1a6d80b2056a316ff9261761` |
| 86 | `theorem` | [pow_subset_pow](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/pow-subset-pow.md) | 696 | `result-track:b8cf7cfe13c1c0b29f05d69c9c0553a987b433dec51cc12f40573119b541454b` |
| 87 | `theorem` | [submonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwiseNamespaced.lean/declarations/submonoid-closure.md) | 709 | `result-track:7334afa93f7799cd63dd7fa3c6949c76fc46fe9246086c33c102ba344d3ad90b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e653e118c6e41605275da6dc50e25bf616c4b1134a17750d79aafd9f01fa5f13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
