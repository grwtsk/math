# Verification target: Pi Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d5afdb461ee7c861c207449baf3e93dc395088",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variante71cd5f13b8330bbfaf2173e8baa24bc0bba03e832f70a86b757721beb3b5128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d5afdb461ee7c861c207449baf3e93dc395088`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variante71cd5f13b8330bbfaf2173e8baa24bc0bba03e832f70a86b757721beb3b5128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variante71cd5f13b8330bbfaf2173e8baa24bc0bba03e832f70a86b757721beb3b5128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instone.md) | 48 | `declaration-track:109231e4c9eebcaccd7099b2082566032ae9a3a2ca3efa00e88a0efa7070598b` |
| 2 | `theorem` | [one_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/one-apply.md) | 54 | `result-track:32391182408f617f2aa4723d6b23ecd27499427402d9ef449c1744139746f74d` |
| 3 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/one-def.md) | 60 | `result-track:37829c0ac3d2192248170c874809d8ee2808d0e7a5af6b1e0765d0c48fd25263` |
| 4 | `theorem` | [const_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/const-one.md) | 66 | `result-track:a8933ab906a0b0bc973348ad34c5a6fa3643c313ef208d66c5cd0ee47ecc6ed0` |
| 5 | `theorem` | [one_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/one-comp.md) | 72 | `result-track:b2e79a850c95281073b7eecd14784876f14b79041e7518f8dff69af8dfe3b106` |
| 6 | `theorem` | [comp_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/comp-one.md) | 78 | `result-track:0fe2fce0504039e2f2cbf7266f79f06c3e70c6ee4e0bd64c2c4554f33e0e66a8` |
| 7 | `instance` | [instMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instmul.md) | 84 | `declaration-track:d94090f33946e7f08861ce2746ffaf39e967faafe503436ad1c57b5ecacb3f01` |
| 8 | `theorem` | [mul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mul-apply.md) | 90 | `result-track:dd09a0ecaae1dfa39dfdab9525d11bb44db55254e7f71ad41e5a535add7155a3` |
| 9 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mul-def.md) | 96 | `result-track:41c53009bed3de9703cfa35adc27b40bb47fc03da4a9ba3adfb9d671290cf744` |
| 10 | `theorem` | [const_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/const-mul.md) | 102 | `result-track:27f71cb7720f028dfb8ee23757127ef841e994e9f891864939583ced7101b553` |
| 11 | `theorem` | [mul_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mul-comp.md) | 108 | `result-track:590fde5cc2f0fb344d64992e40f5c6bae367e98d5daa3b564876bfedec39f5e6` |
| 12 | `instance` | [instSMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instsmul.md) | 114 | `declaration-track:9481897b05a9d63fa29df23dd580bc5d2baf72a30ebbd8e11b58a2f851dcf14a` |
| 13 | `instance` | [instPow](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instpow.md) | 120 | `declaration-track:262710a58e5e50bdd6350359a342bd6732d6135bcd3ad9f5dff9229105f89115` |
| 14 | `theorem` | [pow_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/pow-apply.md) | 124 | `result-track:77ee3e333d7db9840ab8c767e440dcfe15dd27fcde55bcc4e035e905cad5ee13` |
| 15 | `theorem` | [pow_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/pow-def.md) | 131 | `result-track:e6042564a2b928d82e45bbfc078a307ea827332fd0cf5c5fc684cd5e9fd08810` |
| 16 | `theorem` | [const_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/const-pow.md) | 138 | `result-track:abd2625aa43de331ca65b5da95b19638fb65d6b0ac2fd9d9a321e3e616f621a8` |
| 17 | `theorem` | [pow_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/pow-comp.md) | 145 | `result-track:08515ff5f401e2e508c33328cc74856833b0134433d475d9afe26104a0650ff6` |
| 18 | `theorem` | [bit0_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/bit0-apply.md) | 160 | `result-track:9c446ad8fda5a8b07369a92d4e72b24a0d9d0228d7b11d5615f7a9e1009943d1` |
| 19 | `theorem` | [bit1_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/bit1-apply.md) | 165 | `result-track:3b84e581555164c7f66c15f6aadbaf9980b28c851e0198c87d4108d57bf3c7bc` |
| 20 | `instance` | [instInv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instinv.md) | 172 | `declaration-track:5b3ed56191f577edb7e8b5b5e835a4940776ad19027dce7b8560480c031ea5e8` |
| 21 | `theorem` | [inv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/inv-apply.md) | 178 | `result-track:e0131bd743237ad31e8bc924f18b1ee07876d484a9580514d9aa5f39edbe11c5` |
| 22 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/inv-def.md) | 184 | `result-track:60dc59e03048dddc85c4ce7f0e9bf168d115d9dc801f6ce5ac5f575e2b56b26c` |
| 23 | `theorem` | [const_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/const-inv.md) | 190 | `result-track:2b4abda7661e36827fc94278c128f60def3bdb9942e7987ad32da99efabc1c7c` |
| 24 | `theorem` | [inv_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/inv-comp.md) | 196 | `result-track:05f8f5d5606e7c4541a8c801ff96bcace4eae462f2cacf1a55047cd0ee5d0e20` |
| 25 | `instance` | [instDiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/instdiv.md) | 202 | `declaration-track:db17517eec203a707737b0a0ea35a8b843645b0cb8e336170bf53e746b3479ac` |
| 26 | `theorem` | [div_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/div-apply.md) | 208 | `result-track:cdc33d6092ecd2c1264b3175543a53fbe85f90fff6618eea7a54e127c9e3e414` |
| 27 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/div-def.md) | 214 | `result-track:6b93633b8b525657811dbc64680614fcc31cf6e694e94d012bf646a1b2fffaa1` |
| 28 | `theorem` | [div_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/div-comp.md) | 220 | `result-track:6f69861f6748df488022ede79f96cffb72d59a1860888bb7119865aa7f311619` |
| 29 | `theorem` | [const_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/const-div.md) | 226 | `result-track:5cfe8daeca329ce98f9230c545d8193ef3b4a8d772f8f0dd5eb5034e24fc8882` |
| 30 | `def` | [mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle.md) | 239 | `declaration-track:61c2f975a45a9f3f780a8f97d02785eb89aa590921fe87026a0ca825dd088513` |
| 31 | `theorem` | [mulSingle_eq_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-eq-same.md) | 245 | `result-track:69372ff6d3b4d5a73e44e4a4a21600964c789223a5140e5c387d9dd1d640007e` |
| 32 | `theorem` | [mulSingle_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-eq-of-ne-source-edition-2.md) | 251 | `result-track:f0cda11b6e38eb90730c60896994d3267f910f74b0f7330e060a2e6b04da9f0e` |
| 33 | `theorem` | [mulSingle_eq_of_ne'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-eq-of-ne.md) | 259 | `result-track:81a83fc76d9af09794d5371487f53cdea8d9362aad22793d964f2dd33e972998` |
| 34 | `theorem` | [mulSingle_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-one.md) | 265 | `result-track:aabe69c37311bbbb3e4a0959ba870b236a1b718d1d1b25d8fcc3d086696b4149` |
| 35 | `theorem` | [mulSingle_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-apply.md) | 276 | `result-track:7620c09260745f41bfa4d522fd8ac5d2cd1a0ac965fa8ee880a6ce7c943dc98d` |
| 36 | `theorem` | [mulSingle_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-comm.md) | 285 | `result-track:f40e0b995b33d730bc3688846fb6b4e9adbf0447314a65b8195a09de1b8ba55c` |
| 37 | `theorem` | [apply_mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/apply-mulsingle-source-edition-2.md) | 292 | `result-track:f2f8763292bf5c007bce4507295e4fc6a1a5e41f16fb022e2e4a30eca11b2919` |
| 38 | `theorem` | [apply_mulSingle₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/apply-mulsingle.md) | 299 | `result-track:99d46968f84d78b2b909f8a80b39e9faeeb6a51599098c50571702e4397d29e9` |
| 39 | `theorem` | [mulSingle_op](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-op-source-edition-2.md) | 310 | `result-track:ddd46798b171705660f7bc5ca7255a8197c3d3302e113150c66ec2117dd9a77f` |
| 40 | `theorem` | [mulSingle_op₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-op.md) | 318 | `result-track:1a939be265ad3ac2359b05ac6cc22e11b1df3272eadb586bc507031f909e13d3` |
| 41 | `theorem` | [mulSingle_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-injective.md) | 328 | `result-track:42deda4dccb0bae6223f7516f1aef8c8bc377dd9ce18605a756413804542a020` |
| 42 | `theorem` | [mulSingle_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/mulsingle-inj.md) | 334 | `result-track:49ff79d2817b6e737440c446abf354a819d5d9ee153e1c0c2f595a89d54c119d` |
| 43 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/prod.md) | 343 | `declaration-track:80c8565fda57d70993f6ebd0a24ce56385502b62a175640f6b3b5352fa64a4ba` |
| 44 | `theorem` | [prod_fst_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/prod-fst-snd.md) | 349 | `result-track:1d4edaa8af1cca2577d3cd45df4f6d64382b64eb34b091940d74c743ad53ef0e` |
| 45 | `theorem` | [prod_snd_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/prod-snd-fst.md) | 355 | `result-track:7e7b1c576ca1a9fb35a03ed73ae7f6732cfe365fda72c939787a0d7c2de1da36` |
| 46 | `theorem` | [extend_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/extend-one.md) | 366 | `result-track:9bb30a316e3918bf461b4357ec00d301109b5cf06fc945c4675b728135e0ef18` |
| 47 | `theorem` | [extend_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/extend-mul.md) | 372 | `result-track:9f6565ed79722d69d674bc49881c3238b4272373042f3538a727647dd905e2eb` |
| 48 | `theorem` | [extend_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/extend-inv.md) | 386 | `result-track:60c3d1856107753714b3b9d78091f7c6aa7ddab259035107761e7a0a2681265c` |
| 49 | `theorem` | [extend_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/extend-div.md) | 400 | `result-track:908546ca5b43e57b7d9c73e59b1150bb53c0126c9f00b818721d5f450f5d939b` |
| 50 | `theorem` | [surjective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/surjective-pi-map.md) | 415 | `result-track:c3960cd9b42a85f4761c96ec627bb919e80eef2f6b079ddbc592414b69e424f0` |
| 51 | `theorem` | [injective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/injective-pi-map.md) | 420 | `result-track:fd7adbdb62a6f506eaef6a024801cf45e835b68e56b588c82d859113c162036e` |
| 52 | `theorem` | [bijective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/bijective-pi-map.md) | 425 | `result-track:1fcb16784cbef5263134a5118b4400260cdef0e8f2e14fc84b4e7778dce869db` |
| 53 | `def` | [uniqueOfSurjectiveOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/uniqueofsurjectiveone.md) | 434 | `declaration-track:bcc03e02fb448c72f6875d31f24bd47473884d719d2e81139285a04aebbc9a54` |
| 54 | `theorem` | [Subsingleton.pi_mulSingle_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/subsingleton-pi-mulsingle-eq.md) | 441 | `result-track:26a2b46b670cde08cfe9448b95e4f3c19a66a9e028cc9a89b532b300575d0ce0` |
| 55 | `theorem` | [elim_one_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-one-one.md) | 452 | `result-track:b32d8e9905e08d25a57e5e675f2ab01878316b14d9544e27bc574f24e552074d` |
| 56 | `theorem` | [elim_mulSingle_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-mulsingle-one.md) | 458 | `result-track:9e2b1e9011d0826663e9d938766435a60646ac23a68592e749a796a81bbf4096` |
| 57 | `theorem` | [elim_one_mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-one-mulsingle.md) | 463 | `result-track:47eacb55ed916479180e3d931c3dc03536e46d79116c031b498546f2e31f0578` |
| 58 | `theorem` | [elim_inv_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-inv-inv.md) | 472 | `result-track:20e2f395f9dc0769b7df8dbf2be1d9352e2eabf5cd4a21e2af6ec4f88a97fbb8` |
| 59 | `theorem` | [elim_mul_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-mul-mul.md) | 478 | `result-track:bb755e336a1224c67c10994549bc88452fa3e7a497c6a82430a7ce7cd075d86b` |
| 60 | `theorem` | [elim_div_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebraNamespaced.lean/declarations/elim-div-div.md) | 485 | `result-track:7ec347f0c17b142dace460e22a6896102f4d17cc64514d41351d2692b889d965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26cadd68f4be5a32d120dfd48b596711faa920d4da45d359a581415865a13b43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variante71cd5f13b8330bbfaf2173e8baa24bc0bba03e832f70a86b757721beb3b5128.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variante71cd5f13b8330bbfaf2173e8baa24bc0bba03e832f70a86b757721beb3b5128.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
