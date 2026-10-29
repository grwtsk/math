# Verification target: Data ENNReal Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f7363d9d5aec468ef7ddb6ad12ca25179925b16",
  "lexical_observation_count": 200,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f7363d9d5aec468ef7ddb6ad12ca25179925b16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Operations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [div_eq_inv_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-eq-inv-mul.md) | 43 | `result-track:72708a7579f5ac6a7cef51f82de00ada3122c7aa1620a7de86e4285217fd1fbe` |
| 2 | `theorem` | [inv_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-zero.md) | 45 | `result-track:5e4dd62b966899fce0c6a8754207e613588fe75ac03c8472e4517d641c2c8755` |
| 3 | `theorem` | [inv_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-top.md) | 48 | `result-track:86c112becf5c6340b8965489bfe98d6ed5aee53c8a6369e2b0fc4a9704bb1541` |
| 4 | `theorem` | [coe_inv_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-inv-le.md) | 52 | `result-track:e4b8afc20eb5397188dbaf7f54f2ca1521e6ae9de4dc419ba069af6e741073ed` |
| 5 | `theorem` | [coe_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-inv.md) | 60 | `result-track:286d6e1e39f5ff654fa0edc7b633445f96198b74aabf112f2db545bb3bf09546` |
| 6 | `theorem` | [coe_inv_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-inv-two.md) | 64 | `result-track:4de3a6f84d746edaed63076d51c905fe6fab1383781c6cd8913815af25fc4bfe` |
| 7 | `theorem` | [coe_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-div.md) | 67 | `result-track:6d42d92fe3bf14a9aafeb76d2882aee2e33ca89f8a7a25a88cf6de11395cb566` |
| 8 | `lemma` | [coe_div_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-div-le.md) | 70 | `result-track:bb9cfd23947e624d1bf0ad734b6b1818c307e778730280c752f75828115199fc` |
| 9 | `theorem` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-zero.md) | 73 | `result-track:2d8554df5742f95e514ab765b651afb8fcdfef71abe3115a12b34d74fbdf6f8a` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/instance.md) | 75 | `declaration-track:67f735691ab51f85d38cff1260cf27eb1384a71f48c98f2bf73ccb316c49ebd3` |
| 11 | `theorem` | [inv_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-pow.md) | 79 | `result-track:86fe0e2a3d774123fe88e5b88102bed806728cf7dd941b0fe196c9a148315f7a` |
| 12 | `theorem` | [mul_inv_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-cancel.md) | 89 | `result-track:1615629d9b0b814fb4951b5ab3e2aca6b93e9f882710a936a1991edd08e3f142` |
| 13 | `theorem` | [inv_mul_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-cancel.md) | 94 | `result-track:7d8cff3f7e9ec0cc551b6e6e2284b77b0b63e5dfb24b5c5ea1b30abeffcfbdfe` |
| 14 | `lemma` | [inv_mul_cancel_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-cancel-left-source-edition-2.md) | 98 | `result-track:f21a56b08facb6c7491aa217c09c4594fd2986ecf463f56447fd0436398810c8` |
| 15 | `lemma` | [inv_mul_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-cancel-left.md) | 107 | `result-track:91c1fcb2bb5c27e8fd754c81748242908ac2bd5edb4146a0fc881469ef3b9155` |
| 16 | `lemma` | [mul_inv_cancel_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-cancel-left-source-edition-2.md) | 111 | `result-track:b509fbf8d8790f762d22340bc304da6fd021115a2640976b3639516f1cc11a0b` |
| 17 | `lemma` | [mul_inv_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-cancel-left.md) | 120 | `result-track:b0c59c7cbfe261e9b79f63bd72442368c85ca0d8551b729d968d215235b01364` |
| 18 | `lemma` | [mul_inv_cancel_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-cancel-right-source-edition-2.md) | 124 | `result-track:257458c6d47c51d6bd728349625e4d1c9036e7803c3a8043330fa2d962726e10` |
| 19 | `lemma` | [mul_inv_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-cancel-right.md) | 133 | `result-track:0c254ffd0bd845449802e2960feb4a2f2241707e30db898344d1d6c860c69335` |
| 20 | `lemma` | [inv_mul_cancel_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-cancel-right.md) | 137 | `result-track:74c2c9caecfbec5fc3321342d1302a9d288409a27bfb1d2ea1295184a718ddb8` |
| 21 | `lemma` | [inv_mul_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-cancel-right-source-edition-2.md) | 146 | `result-track:834cbfc0bc42e65ca1b2f8bceb0f7ad3aaa5dce593e115671d9078a96ae98d13` |
| 22 | `lemma` | [mul_div_cancel_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-cancel-right-source-edition-2.md) | 150 | `result-track:fb331b6ba256cd38f47f203e33693aa8b586e66f820c54519768a9714810ab7d` |
| 23 | `lemma` | [mul_div_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-cancel-right.md) | 154 | `result-track:2d7558ec000869daa87f6677b145488066df96ec0e2a826f015be3a817c68ef4` |
| 24 | `lemma` | [div_mul_cancel'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-mul-cancel-source-edition-2.md) | 158 | `result-track:e4e9f5d0a28b30814a2d227c6290248692041f08190fc15d1deeb0bfe1ac0ff4` |
| 25 | `lemma` | [div_mul_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-mul-cancel.md) | 162 | `result-track:220c6a99d8479a867ce2229adff02b72e1785c959ee1f7275919be0c28fea70f` |
| 26 | `lemma` | [mul_div_cancel'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-cancel.md) | 166 | `result-track:1e3a5876efa9b7927965c1d49d2967b9dddbd2ebda6a091bf93f732fc1a10d99` |
| 27 | `lemma` | [mul_div_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-cancel-source-edition-2.md) | 170 | `result-track:d73feeea1776c3cfe42c69c0a684602917106f17f5bab55f42c1ca9820915c2d` |
| 28 | `theorem` | [mul_comm_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-comm-div.md) | 173 | `result-track:5f03fa992a1e0d53a9c137fcddc9e953fa8ade78e21cbfba9d1f385236b1a5f3` |
| 29 | `theorem` | [mul_div_right_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-right-comm.md) | 176 | `result-track:e9f108bde695d512ff498e3ca4fda94d7ad01720f4cbb66bedbfe8d2fd2e96b3` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/instance-source-edition-2.md) | 179 | `declaration-track:ea70afed76ce8b34a0de4e6b58f49bde34307e4a86b51b846b6d8e584a9bfa7c` |
| 31 | `lemma` | [inv_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-eq-one.md) | 183 | `result-track:d7653fc759bf7e3269b4edcabce614be66c2a63f0c98da3722db6a17ecddc79b` |
| 32 | `theorem` | [inv_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-eq-top.md) | 185 | `result-track:2014688e80adeec4d037316375bc29e5f5f5404a9f0262210c4fd594e4669ef3` |
| 33 | `theorem` | [inv_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-ne-top.md) | 187 | `result-track:bd32f37a9829d8dd1ef987470931fe4e39aac84b7d04a6ac8535475de7713b17` |
| 34 | `theorem` | [inv_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-lt-top.md) | 193 | `result-track:4f662b477b2fd647113d1ea7d70e007b06e91b05da6c904074d19b040ab4f35d` |
| 35 | `theorem` | [div_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-lt-top.md) | 196 | `result-track:cfe696eb4b3f649d8d284a3367feed0bc6c09de74bafeab2356ca85b120b0724` |
| 36 | `theorem` | [inv_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-eq-zero.md) | 200 | `result-track:37e6b7dfdc8a55de0aa4157a97c14991f3fbffc3b15faa38be25cdf9517de16a` |
| 37 | `theorem` | [inv_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-ne-zero.md) | 203 | `result-track:c664b4ed41ee48357fb8f5d667c41dbfb1fac4eb7424741b2aa6a11ecb1f25b2` |
| 38 | `theorem` | [div_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-pos.md) | 205 | `result-track:629ac2b11f91a68918e9f533864c98944655fe6eaf1a7640ac9d746836363b64` |
| 39 | `theorem` | [inv_mul_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-le-iff.md) | 208 | `result-track:313288abed8287855ffec46279e7be61633e0eb1394ee80eba4efea09d9f3bab` |
| 40 | `theorem` | [mul_inv_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-le-iff.md) | 212 | `result-track:ba70a78ce8808ebda31c51e4ac563bcd405f10d4ea4c11a5309b93ca3da6f170` |
| 41 | `theorem` | [div_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-iff-source-edition-2.md) | 216 | `result-track:c34c57282b60dcffcea9ab438d17adc472131f4265a0a8332230fd6a2f615ee6` |
| 42 | `theorem` | [div_le_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-iff.md) | 220 | `result-track:0e9a44c7d62756cb61478030c4b51a9b0a3add700b8afa969424d4a7b5f48d11` |
| 43 | `theorem` | [mul_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv.md) | 224 | `result-track:7c47ad85ceb3a5045bfa7502fa9b66a20a8b991dd4084e7f9f67c62dad840ddb` |
| 44 | `theorem` | [inv_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-div.md) | 242 | `result-track:e35d4889844c213e6d77e4f37712fa199307387631fb075570f069dc3651ef93` |
| 45 | `theorem` | [mul_div_mul_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-mul-left.md) | 248 | `result-track:c1579ea4fdbec0a4ce8581a104d6006a74d2f96c1b256f1e8f20ec47ae12a450` |
| 46 | `theorem` | [mul_div_mul_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-mul-right.md) | 253 | `result-track:eb3a085648a8fa575df3db4a7813608ff9511afd78404b3c2278ec3029d926c7` |
| 47 | `theorem` | [sub_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/sub-div.md) | 258 | `result-track:85ae807a46e170d2634e90a1cd322e63d93ab12fa8c4fa79458969491a7b019c` |
| 48 | `theorem` | [inv_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-pos.md) | 263 | `result-track:ecbc1c7a13186e9ed71e2f820c275fbd463cae884f42f35f55bfc7cf5dd8ab1e` |
| 49 | `theorem` | [inv_strictAnti](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-strictanti.md) | 266 | `result-track:8e39588a286bc04148a0e710d22d02671c00d015c6075a9c31e12af9c883452d` |
| 50 | `theorem` | [inv_lt_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-lt-inv-source-edition-2.md) | 276 | `result-track:d9e395f9f3c38ffdda32c01e3ff8b3d21c54eae17a0d3808df3a4a6c27eb9f3b` |
| 51 | `theorem` | [inv_lt_iff_inv_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-lt-iff-inv-lt.md) | 279 | `result-track:2b590adf47d8ca4befd0a13995d307d121785510a929777b81bdc942838424e1` |
| 52 | `theorem` | [lt_inv_iff_lt_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/lt-inv-iff-lt-inv.md) | 282 | `result-track:c700e29ef25e1f73433de1d8a434b83434f5e28648ee038e62325620ec2d48ca` |
| 53 | `theorem` | [inv_le_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-le-inv.md) | 286 | `result-track:00ede83aab70b04c3528f906372242d26505177f4b1a75c88d974704303fdff5` |
| 54 | `theorem` | [inv_le_iff_inv_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-le-iff-inv-le.md) | 289 | `result-track:6d14bda5fd53b57054a8d845aa37514b4e39f01afacebcdc7a8e220cd9b2b7f5` |
| 55 | `theorem` | [le_inv_iff_le_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-inv-iff-le-inv.md) | 292 | `result-track:4f4847cd2d450cfc7548cedce003376f36bf159a16260322bdbbea89398e86c4` |
| 56 | `theorem` | [inv_le_inv'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-le-inv-source-edition-2.md) | 295 | `result-track:3a5a959ed4a434af61ad005a001c88bd46334b99993895fb1f382a4d3040f227` |
| 57 | `theorem` | [inv_lt_inv'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-lt-inv.md) | 298 | `result-track:b4636ab9a7e525e3205c13fc80c0f2a9782b754b998def727c0d78b1f19990ec` |
| 58 | `theorem` | [inv_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-le-one.md) | 301 | `result-track:438d135dc1b08e92f7b159406f189f741a060f5ce64b8a6b78ba63d3b8dfb442` |
| 59 | `theorem` | [one_le_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/one-le-inv.md) | 303 | `result-track:5c6aca7308ef56a4b1729122e7a10fc784d6998a0307d0895f7f9e40ce79ae17` |
| 60 | `theorem` | [inv_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-lt-one.md) | 306 | `result-track:9f3459a1702218f3bb25aa597ff1e6fdd761fbee42176ee35efd6526f2dc3416` |
| 61 | `theorem` | [one_lt_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/one-lt-inv.md) | 309 | `result-track:13cae44cc2e0cc1a42e234a43f0afbd6f77852bc69cf28812087016b3287be69` |
| 62 | `def` | [_root_.OrderIso.invENNReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/root-orderiso-invennreal.md) | 313 | `declaration-track:d9e5c8f310121994e191664c9527b5c090f2186278b68dc81c7b7c1cde23b837` |
| 63 | `theorem` | [_root_.OrderIso.invENNReal_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/root-orderiso-invennreal-symm-apply.md) | 318 | `result-track:78a1f403c401c1327a35ec64f672268d345e90d6285143956d67a82b7acf23b9` |
| 64 | `theorem` | [div_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-top.md) | 322 | `result-track:2184d4e28b297969cf752ddfcd811bebab33bad9845e3e05919c94e8154a21a0` |
| 65 | `theorem` | [top_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/top-div.md) | 324 | `result-track:c079c9c8ff778aa58100f236d5a557cef386def69caa10eeaf5e8147497ca60e` |
| 66 | `theorem` | [top_div_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/top-div-of-ne-top.md) | 326 | `result-track:bf1beef1d6f4ca8c024700beb7f40245730d03226012d4334f71e5462f813c4c` |
| 67 | `theorem` | [top_div_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/top-div-coe.md) | 328 | `result-track:fb258da86f1604cb947b25ee1fd21f63d21a7dda4644bea39035514a774a2a1d` |
| 68 | `theorem` | [top_div_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/top-div-of-lt-top.md) | 330 | `result-track:1ad6b4a816861fd69af32ec80f1e97d957de647a43656334975d58a1287ab126` |
| 69 | `theorem` | [zero_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zero-div.md) | 332 | `result-track:8da507fb55b2ef6ecac66e1d886be43229964f523f25ecf40aa33d155681cc7b` |
| 70 | `theorem` | [div_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-eq-top.md) | 334 | `result-track:174b914c822970578e559b6f69b71eecc98c82ab8b605cacd49c0c8ba99655ce` |
| 71 | `theorem` | [le_div_iff_mul_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-div-iff-mul-le.md) | 337 | `result-track:0f8e00d9f0495e551f4027f751a0f443e8950f8045e3ab63bdd8383241ff667b` |
| 72 | `theorem` | [div_le_iff_le_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-iff-le-mul.md) | 349 | `result-track:5bdaa6c6ba43f03a53560fd179b6e99d547faf24190e76a7459cd1223febd211` |
| 73 | `theorem` | [lt_div_iff_mul_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/lt-div-iff-mul-lt.md) | 354 | `result-track:26661411b314a64f924f5fbdd1d5196e0d83ac1f99023e59df3d8a49cedc90cf` |
| 74 | `theorem` | [div_le_of_le_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-of-le-mul-source-edition-2.md) | 358 | `result-track:8d3f314be796d18098f3728d7ca9573c05a3ea22e7b63f5708bcbe13d19d8376` |
| 75 | `theorem` | [div_le_of_le_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-of-le-mul.md) | 365 | `result-track:691c1900fda7584f19918ab00899b3482eb9f5a7783234e4ae523ea6e9ddf03c` |
| 76 | `theorem` | [div_self_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-self-le-one.md) | 368 | `result-track:409aa763c1a6b8baa942b6c6cf4da2d4f0f251ab0d5b178ff5f7a65162669ac1` |
| 77 | `lemma` | [mul_inv_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-le-one.md) | 370 | `result-track:0e38404a6436fe339149390ca7adf1ce11a57b507ceaa803701eb0ccad93ee44` |
| 78 | `lemma` | [inv_mul_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-le-one.md) | 371 | `result-track:fa9934f17f3b13af2eb8013130cefbb5cbb3af964128f25a6bd6d71e2ac67fab` |
| 79 | `lemma` | [mul_inv_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-inv-ne-top.md) | 373 | `result-track:d29a0b90b83dcc4f089201a6ae18f9083d502168eea6d300e5ba21ab97cde2f1` |
| 80 | `lemma` | [inv_mul_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-mul-ne-top.md) | 376 | `result-track:1feeb9ad6efa1df587c208873150e5424682d04d6ff38514c5d40be06d0d9dd5` |
| 81 | `theorem` | [mul_le_of_le_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-le-of-le-div-source-edition-2.md) | 378 | `result-track:ba34796985256b9ca0a93c8d50b30822e2cb036180db1bcc87622221561ef315` |
| 82 | `theorem` | [mul_le_of_le_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-le-of-le-div.md) | 382 | `result-track:24b37e126dbf36c9f37d936a3f5ba03842d918b071939b031fa30024c641c316` |
| 83 | `theorem` | [div_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-lt-iff.md) | 385 | `result-track:5260b95f20b31e82d35e6b66bdd3ab2a9cbc4f04b97b77a4d61ebb45e08f7d53` |
| 84 | `theorem` | [mul_lt_of_lt_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-lt-of-lt-div.md) | 388 | `result-track:53e988598f1fae9d08991d3e3c7f02561abda67db3e8abbbd403cfa6e9b3e3d6` |
| 85 | `theorem` | [mul_lt_of_lt_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-lt-of-lt-div-source-edition-2.md) | 392 | `result-track:6624df194c43f99823ca37e78dd6e91cc6c3c71742a6735b937dc63c292a86ef` |
| 86 | `theorem` | [div_lt_of_lt_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-lt-of-lt-mul.md) | 395 | `result-track:b3a055fbb7b01b3341d781e64baacd353aff60a2a58c531a981daa4b99cdd5a7` |
| 87 | `theorem` | [div_lt_of_lt_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-lt-of-lt-mul-source-edition-2.md) | 398 | `result-track:d22a5dc30f503160db7162cd8c562103536dd02e913e4316f37941fcd38ed642` |
| 88 | `theorem` | [inv_le_iff_le_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-le-iff-le-mul.md) | 401 | `result-track:c00f39057001abb0a219e54d4a95ca3e01117bbe8672471dd11f0d15c30a19a8` |
| 89 | `theorem` | [le_inv_iff_mul_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-inv-iff-mul-le.md) | 406 | `result-track:f1fc925fb362cdab5fa5703fb07df4d179fba9b3e84a6f495b43ef390f06167d` |
| 90 | `theorem` | [div_le_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-div.md) | 411 | `result-track:fbd2f064dcdded2e8463219f6ef6a9e42f9b55ea7d1f7b63a1236e75cc79065c` |
| 91 | `theorem` | [div_le_div_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-div-left.md) | 414 | `result-track:9279c7567e015571933acaa2961acf12cc4ee4757ec5e1cf5fe853c2f660016e` |
| 92 | `theorem` | [div_le_div_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-le-div-right.md) | 417 | `result-track:1f9e1d6838bc60e9a1635baf9a1fbf85d2b50bcf1e521762f0f0988271859ddd` |
| 93 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 420 | `result-track:8bbd502ff0e64100fe5c96a16845e57ab47616d9b64b8a038441dc179d7325af` |
| 94 | `theorem` | [mul_le_iff_le_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-le-iff-le-inv.md) | 426 | `result-track:f5518b1dbd128989307ede9c0ffa971b2a11cb1547d6ce73ed24b6245160dbca` |
| 95 | `theorem` | [le_of_forall_nnreal_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-of-forall-nnreal-lt.md) | 430 | `result-track:b90ad6a1000368bb5ab22c064cd4bdcf6770f8842aa413a0d36ae1a3b33d80d9` |
| 96 | `lemma` | [eq_of_forall_nnreal_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/eq-of-forall-nnreal-iff.md) | 435 | `result-track:0991f65a728d59c5b5c833f46181a192154804f53488d244ef1edf3970ae13b0` |
| 97 | `theorem` | [le_of_forall_pos_nnreal_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-of-forall-pos-nnreal-lt.md) | 439 | `result-track:bc63b1d0a67bebd7baae3633a172b39411e91d46399e1b531b411016686c3011` |
| 98 | `theorem` | [eq_top_of_forall_nnreal_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/eq-top-of-forall-nnreal-le.md) | 443 | `result-track:d6084bc27a64a5952f531cacffbc7915c8bf288d87100f30ac42a891fe833046` |
| 99 | `theorem` | [add_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-div.md) | 446 | `result-track:dd40181ea64543b6456dc27d58bf969587b845c6daf685faceec5e3c8057ce68` |
| 100 | `theorem` | [div_add_div_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-add-div-same.md) | 449 | `result-track:3d67bc193a4192f1fc184c30e0276cfbbff0322520e55866f18ed320d215d970` |
| 101 | `theorem` | [div_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-self.md) | 452 | `result-track:6cf74e26611637b69975832967fc8f91654de71f6fda1fde0da54842d653f183` |
| 102 | `theorem` | [mul_div_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-le.md) | 455 | `result-track:15732a09cfac5fb2723f1f773daeafeb5a7e5845c0ceb83fc206ead116f1bbdd` |
| 103 | `theorem` | [eq_div_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/eq-div-iff.md) | 458 | `result-track:dd7cbd0472767238c2e2ec317f3f960679d3cef33624265214fd6252a82bd6a0` |
| 104 | `theorem` | [div_eq_div_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-eq-div-iff.md) | 462 | `result-track:45ac89e0e2c47389c5a62962cb0ddac474bac31039c3bad5b117943de753932b` |
| 105 | `theorem` | [div_eq_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-eq-one-iff.md) | 468 | `result-track:5c8462541ecce05bfcf4fc4e41ea7192c5c453512f8d72b928f4aa85b861afb8` |
| 106 | `theorem` | [inv_two_add_inv_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-two-add-inv-two.md) | 472 | `result-track:f63fc27d201613609133f77d773ad0a5646eb5e731371cb6eb6ff6595da02cfd` |
| 107 | `theorem` | [inv_three_add_inv_three](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-three-add-inv-three.md) | 475 | `result-track:a9bd0a0d5f2386bceda4551a96b5781ade43116912a1fb7043992b15e21645a6` |
| 108 | `theorem` | [add_halves](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-halves.md) | 480 | `result-track:8f079856e73728fe95ad055d946f99e982789eb5e8992bbd34a92dddadfb48f6` |
| 109 | `theorem` | [add_thirds](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-thirds.md) | 484 | `result-track:b90731c12c2b7953e82115cf2a9273837d603a80f73c1ba6f6875eaa56e3f8de` |
| 110 | `theorem` | [div_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-eq-zero-iff.md) | 487 | `result-track:ac21b1b1be3c3e764d5b90c54116ba922686499ca8e69d2b43383bfd38b456c5` |
| 111 | `theorem` | [div_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-pos-iff.md) | 489 | `result-track:04d22cee6b3e0aa2dbddce2833116a7adf8691e93cf99cac45c568a6ae9b71bc` |
| 112 | `lemma` | [div_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-ne-zero.md) | 491 | `result-track:51dedb4714b6e7e716ea13ee1c73d59bbca1bfd0abb325817970c8e2bdb83c78` |
| 113 | `lemma` | [div_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/div-mul.md) | 494 | `result-track:a53cc2d1ccc2e04dc2dfb52a24a0e258cc8530cf684dd4319680ffa01c048197` |
| 114 | `lemma` | [mul_div_mul_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-div-mul-comm.md) | 502 | `result-track:b1986e34fc2c545673cc69f907369d64114450cdeeb9f6f71ecdc4573d30863d` |
| 115 | `theorem` | [half_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/half-pos.md) | 507 | `result-track:929abdadd920da770c7e1cfacee429edcc64fe0e700fdfc782e0402f6f39399c` |
| 116 | `theorem` | [one_half_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/one-half-lt-one.md) | 510 | `result-track:4777651fd424960489da08c2a8b7d991bb5b2b702717932740fa272af3112d93` |
| 117 | `theorem` | [half_lt_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/half-lt-self.md) | 513 | `result-track:ce3574aa841445d20e89edd2df0d4eecbb0b1b3472cadb4c2b431f0178bb5702` |
| 118 | `theorem` | [half_le_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/half-le-self.md) | 519 | `result-track:1de4d3eaf6a90366e2d207c8359c1380690938f4277ab1bd39b16ac71890fa61` |
| 119 | `theorem` | [sub_half](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/sub-half.md) | 522 | `result-track:6be6db8d6fb2116b7172e8f2e25414e5b55dc0eee07d89eab986c0a6dd08f215` |
| 120 | `theorem` | [one_sub_inv_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/one-sub-inv-two.md) | 525 | `result-track:ac10c9b017755bd85acde496371d267ef6efc2656395f133916603f61fb3d992` |
| 121 | `lemma` | [exists_lt_mul_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-lt-mul-left.md) | 528 | `result-track:9f8b301ab9b14d35b37f9823ebcbf85216368ae5da5cbe2f902df6f937d1332c` |
| 122 | `lemma` | [exists_lt_mul_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-lt-mul-right.md) | 533 | `result-track:dc27549361e4a0afd55ab0d0e23d750452deba9da8661fd60ff9ffab494ede0c` |
| 123 | `lemma` | [mul_le_of_forall_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-le-of-forall-lt.md) | 536 | `result-track:9d87de7285f6d01c3b1c790fb2364b5b35f2875f3cd5de4aa4b3e02d6f695273` |
| 124 | `lemma` | [le_mul_of_forall_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-mul-of-forall-lt.md) | 542 | `result-track:3a6c9e5db769326106d0a1cf8cd1fd72217e7f1ad2d4bf4c272b3114b8dcc676` |
| 125 | `def` | [orderIsoIicOneBirational](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisoiiconebirational.md) | 551 | `declaration-track:a75dd67ebf073dbe96901f823cc9069542e18dffcfc515d5b1587d2329dfb485` |
| 126 | `theorem` | [orderIsoIicOneBirational_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisoiiconebirational-symm-apply.md) | 560 | `result-track:df7fcb55bb1b90b3d5a1ab312409340c4cdf34765bb6917a474cecf8af6bd6f1` |
| 127 | `def` | [orderIsoIicCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisoiiccoe.md) | 566 | `declaration-track:de4e8e253998e9e310b68ed1509fcc86d5d34a76eaa12a6725b7ca2e1f015cd0` |
| 128 | `theorem` | [orderIsoIicCoe_symm_apply_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisoiiccoe-symm-apply-coe.md) | 576 | `result-track:2972f619691fd7b30fe8b4937ad48c986dcee2954a4ff40d1958e941e21812ec` |
| 129 | `def` | [orderIsoUnitIntervalBirational](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisounitintervalbirational.md) | 581 | `declaration-track:f3db42b963dca8365f92c0c9953dd9be713beb6cf35d67f7281a7d8f646e8b65` |
| 130 | `theorem` | [orderIsoUnitIntervalBirational_apply_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/orderisounitintervalbirational-apply-coe.md) | 585 | `result-track:8678e5db82bab496207344b74039d49e6f35f7124b3edb6ecdaa2509555a2deb` |
| 131 | `theorem` | [exists_inv_nat_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-inv-nat-lt.md) | 589 | `result-track:5af309228bdbd46a9795edf7feb3e6ea7a52d837bdab9e43f975b50eb1ced73b` |
| 132 | `theorem` | [exists_nat_pos_mul_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-nat-pos-mul-gt.md) | 592 | `result-track:a1f53fd00583992bc10b96ba2aa68c9909d236081a2e9e9a7b22dd4608574bca` |
| 133 | `theorem` | [exists_nat_mul_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-nat-mul-gt.md) | 597 | `result-track:6485071477f113a51e1225a91905dcff0a7d1e76e8a2995c9e5753fbed929071` |
| 134 | `theorem` | [exists_nat_pos_inv_mul_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-nat-pos-inv-mul-lt.md) | 600 | `result-track:565d7f273ed9cce2121ac1c627531f78a11d2d14e3d44f239b542e8241808060` |
| 135 | `theorem` | [exists_nnreal_pos_mul_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-nnreal-pos-mul-lt.md) | 607 | `result-track:104dc8aeed92fc550f62971cd9d36368e704b2131b63951a906801fd21d048bf` |
| 136 | `theorem` | [exists_inv_two_pow_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-inv-two-pow-lt.md) | 612 | `result-track:8cd956670519fb761e468d9021e5cf487cc908a89284f84fbf671dd7c0f8bef2` |
| 137 | `theorem` | [coe_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/coe-zpow.md) | 620 | `result-track:47279df64fcfe8aa9338277f088a565fc6c4355c314b5d8f9ccfbc175c23a3bc` |
| 138 | `theorem` | [zpow_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-pos.md) | 626 | `result-track:82ea62ddd6352b93af10e5cb582c2aac91bde7c3073577b9ad79cfe231208007` |
| 139 | `theorem` | [zpow_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-lt-top.md) | 632 | `result-track:c2a226602986133e27a985aca246229653c849b3c00cd194a12455d711d3e83d` |
| 140 | `theorem` | [exists_mem_Ico_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-mem-ico-zpow.md) | 637 | `result-track:a5d7feb08c62baba95110a2ee1f6c83e31e5085862496750eac6d6191ddfc335` |
| 141 | `theorem` | [exists_mem_Ioc_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-mem-ioc-zpow.md) | 649 | `result-track:bea5e2ca0d134f771d6c03ea22657b905f4191e3020bff74d1f2ae1dd81d7a0e` |
| 142 | `theorem` | [Ioo_zero_top_eq_iUnion_Ico_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ioo-zero-top-eq-iunion-ico-zpow.md) | 661 | `result-track:8ca1448cc84bb7addefc8ba711529c43fe670e6eed384a7c5f0ea7fce42bf47c` |
| 143 | `theorem` | [zpow_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-le-of-le.md) | 676 | `result-track:0b3a7a165cb0509df198f22520480c10424864fac063d6600fa77f5823d2ecf2` |
| 144 | `theorem` | [monotone_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/monotone-zpow.md) | 688 | `result-track:78f65701caba123abf4e60cb4fa4c33cd63722921fd204f887a3f51460f2ca2c` |
| 145 | `theorem` | [zpow_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-add.md) | 691 | `result-track:9aaf6e407d2c1bad7629f1b19dc8dd242f55774e29019605729d5b5861c01ce7` |
| 146 | `theorem` | [zpow_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-neg.md) | 697 | `result-track:c0a95b3bfe1a1d221526c361493761afb2f66d3e11f6f01e4c15bfcbf8607da4` |
| 147 | `theorem` | [zpow_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/zpow-sub.md) | 701 | `result-track:4649bc9bdbcddd28d41528d14844146a02b7655149f9b04a647846cd9eb06852` |
| 148 | `lemma` | [iSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-eq-zero.md) | 707 | `result-track:1b6078146bb4cb30e00f2c14cbca7c70c21de441e6337ee25a60fc4c2ba4da34` |
| 149 | `lemma` | [iSup_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-zero.md) | 709 | `result-track:6ef0003443914c5ebd3b951c19e9f4e67cf6d682c36c140334c8232fe7680a19` |
| 150 | `lemma` | [iSup_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-natcast.md) | 714 | `result-track:7633154e30d151a4f76eaeeafb2ba4c2959cdc0b2805ae9f84d7e3ee5e18dd85` |
| 151 | `lemma` | [iSup_lt_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-lt-eq-self.md) | 717 | `result-track:981e569d6b974ff1b409b70d7e50cf18a7ef4881d795ded350f668bee52ccc9b` |
| 152 | `lemma` | [isUnit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isunit-iff.md) | 723 | `result-track:2cf090f568b61c34bcb03da026f16e18617cc69ab6db9bcac1ef35094af872d0` |
| 153 | `def` | [mulLeftOrderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mulleftorderiso.md) | 734 | `declaration-track:537858b6c6817bb3c5f9c094f38511b9e8567ecd9e4545bbd930e13f1c26b038` |
| 154 | `def` | [mulRightOrderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mulrightorderiso.md) | 740 | `declaration-track:ebb644a396f66c7935c2b9a4eae0cbd5dad519543e420f5e75003411cc78e551` |
| 155 | `lemma` | [mul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-isup.md) | 744 | `result-track:fc2dfac34c54d56e32ad80278f4d39f51b6623054d22d55aa1da1cd734f90565` |
| 156 | `lemma` | [iSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-mul.md) | 755 | `result-track:a06273163b3db909df99ca45c8367fc030d8ef4174e2659554e8b48b6e061c94` |
| 157 | `lemma` | [mul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-ssup.md) | 758 | `result-track:d4bd36a7268ce9827b33758afc7a0fd54335f743498700c376480aab86bb8742` |
| 158 | `lemma` | [sSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ssup-mul.md) | 761 | `result-track:e611ef477aee5bf9e285a2d84aa5ef5ab4352f473e8a300693c23b7ee02b6655` |
| 159 | `lemma` | [iSup_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-div.md) | 764 | `result-track:b4c98bd45f2b77fe9158a4175afe3f3d470ec0f8a8e1c84b78d80d096b23e485` |
| 160 | `lemma` | [sSup_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ssup-div.md) | 765 | `result-track:93df6aba44d1a2b92bfcf0abaad1614090b40837fe758f967082f8c403ae6725` |
| 161 | `lemma` | [mul_iInf'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-iinf.md) | 771 | `result-track:6a7b7055b3b84c470b96dd2bac8be1ee18e3cc11dfeb56e967dcad0a4d8fb863` |
| 162 | `lemma` | [iInf_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-mul-source-edition-2.md) | 787 | `result-track:d47cd9ef62f300c7a20b02d39bf04e0e4b4462e0123ae7122c526860708e4a5b` |
| 163 | `lemma` | [mul_iInf_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-iinf-of-ne.md) | 794 | `result-track:098445b3a2032f3ee0b71d5a1b3cc6a737b44df33c677a7f5b16bd1e97d90524` |
| 164 | `lemma` | [iInf_mul_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-mul-of-ne.md) | 801 | `result-track:ff74830aa06dcd2b4172896e0253634f6a5fe7bb6794830859c54d01f8b358ab` |
| 165 | `lemma` | [mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/mul-iinf-source-edition-2.md) | 806 | `result-track:df38d5ef6033844f0f2453616a9ef95c8ac5bad059b564d274819cb4c045efa5` |
| 166 | `lemma` | [iInf_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-mul.md) | 811 | `result-track:06b66acdfae80acb8d6b9ff48ef37b8ba7e3860ce2fcb7381b9c5368ff0bdab6` |
| 167 | `lemma` | [iInf_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-div.md) | 818 | `result-track:279dbb70ce6269a22d59574777addf4f918849c6f6ce84358292aad8cbc9bbe9` |
| 168 | `lemma` | [iInf_div_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-div-of-ne.md) | 825 | `result-track:791a0ec8feda1062f2df14ee84e976c379b2abbbdfb15ee014d2201e1ac07c1f` |
| 169 | `lemma` | [iInf_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-div-source-edition-2.md) | 830 | `result-track:6ec514abce209d2ce262af569f253690264dbcb68e91dad2f8b73739ca445067` |
| 170 | `lemma` | [inv_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-iinf.md) | 833 | `result-track:f56d5c6190fc8d50333013835cd82777534cd836ae7df0dce46d5fd000dddbc1` |
| 171 | `lemma` | [inv_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-isup.md) | 834 | `result-track:01ef175c6c0d59d7756bdadb95f238ceec8f30d1335cc1030a6765e40290818d` |
| 172 | `lemma` | [inv_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-sinf.md) | 836 | `result-track:179df332d939d5a59a20c59b11b2f3d7831dab702901786b1e484848b5aed19b` |
| 173 | `lemma` | [inv_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/inv-ssup.md) | 837 | `result-track:fe3be7fb80fd390cd246e75807388a14b11996cdff3cee38b5333ad1fa96e4ec` |
| 174 | `lemma` | [le_iInf_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-iinf-mul.md) | 839 | `result-track:2a73629f76a0936217b976c5dc63ade8c480c6a94c3acc73788d270f4068d9d4` |
| 175 | `lemma` | [iSup_mul_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-mul-le.md) | 843 | `result-track:7591e731007127d8f7b1ab0caf20f94765cf11c30915d6a9bc9fe65f0dfe6b3f` |
| 176 | `lemma` | [add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-isup.md) | 847 | `result-track:925d772c023fca667ba9dba1946b28f085f65960c265e0b08d1fa102de6dc2f5` |
| 177 | `lemma` | [iSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-add.md) | 854 | `result-track:ec1629ddb9a7d95dc4c4abfee8217c06fff2abd9b303b0d0384e1a48bfcaef26` |
| 178 | `lemma` | [add_biSup'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-bisup-source-edition-2.md) | 857 | `result-track:a04f41ebcf15ca5f8c8f825eaa60fa992991c427ed681176e0dbba7711b74a49` |
| 179 | `lemma` | [biSup_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/bisup-add.md) | 862 | `result-track:4ac31892299f89c655333ccf39c0c204f8925cb7ae4f130f2bf737be186b8caf` |
| 180 | `lemma` | [add_biSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-bisup.md) | 865 | `result-track:20051eadaca9623b1b1826f79f09e5e6ad80ec5ae25cd469e77e277732c25538` |
| 181 | `lemma` | [biSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/bisup-add-source-edition-2.md) | 868 | `result-track:82c95ce99991be70568900799cf566f5b7c2560a1c4b73d0b533bea6aa0763ca` |
| 182 | `lemma` | [add_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/add-ssup.md) | 871 | `result-track:945dcd877e787a24b8381411570ca9b240a768e537feab30d25a22c6d0a42d19` |
| 183 | `lemma` | [sSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ssup-add.md) | 874 | `result-track:54ae416dff23e089440e04fde27b444f02c270bb7903e3a3f2e66ce194af8e8b` |
| 184 | `lemma` | [iSup_add_iSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-add-isup-le.md) | 877 | `result-track:931379153420cee502899ebdc0764d9e6ef7e1ada5c0b514e00e0a019333aee0` |
| 185 | `lemma` | [biSup_add_biSup_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 880 | `result-track:7c92d951afe3362dcf1f24fce2d0d169135603fc211dbd8d222845e2f6f8d137` |
| 186 | `lemma` | [biSup_add_biSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/bisup-add-bisup-le.md) | 886 | `result-track:3ae9ae7d12b3f13bfd55a6a96813c9582b2bbc47c848af32e2b3ac9ce5c14401` |
| 187 | `lemma` | [iSup_add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-add-isup.md) | 890 | `result-track:5f0709335c3bb69bc5b4a1678076845661265f5e5fb041877430561e26858467` |
| 188 | `lemma` | [iSup_add_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/isup-add-isup-of-monotone.md) | 898 | `result-track:d396bc315f92ef833adacb7c68563e476907982052cd660167664c2cea2d5b48` |
| 189 | `lemma` | [le_iInf_mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/le-iinf-mul-iinf.md) | 902 | `result-track:f32ffb676510561cf60dda5841fe01fc516289987c50bfb593e1640808055ef6` |
| 190 | `lemma` | [iInf_mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/iinf-mul-iinf.md) | 912 | `result-track:38c6e4313564d7374911d0c316a35c05a69bf0420c43ff783ce546176524bf68` |
| 191 | `lemma` | [smul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/smul-isup.md) | 919 | `result-track:edcb07b683e48f6b11bec32ec162c08e885879bb60dcbba6183ef7735d5ecb08` |
| 192 | `lemma` | [smul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/smul-ssup.md) | 923 | `result-track:371d1d6e2ba954c6344690e4b4ee99743c749ffb3814fc23aa375f85add14897` |
| 193 | `lemma` | [sub_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/sub-isup.md) | 927 | `result-track:6c38df6d0baa0e72a1705b1081bbf5aa65f14d05ac6bd51be1a9a43a035521a1` |
| 194 | `lemma` | [exists_lt_add_of_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/exists-lt-add-of-lt-add.md) | 940 | `result-track:4dcb63941abe137d327f6e992326f8c214d2b7233ac02a1890f832410a0f2c05` |
| 195 | `theorem` | [ofReal_inv_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ofreal-inv-of-pos.md) | 945 | `result-track:a9d61186df4e1c57b362490fc34414b1ca3ba17bd79c2b8b5e74e505aa50fd5c` |
| 196 | `theorem` | [ofReal_div_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/ofreal-div-of-pos.md) | 949 | `result-track:ab9edd1ca81dc22c0cf00c0a9763f50229148ff7d34d78aaa05617d7ccc0e866` |
| 197 | `theorem` | [toNNReal_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/tonnreal-inv.md) | 953 | `result-track:67ef2b0963f17c299392a956781a7150e6486d6f7a7d1b1fcb0eb83faac26406` |
| 198 | `theorem` | [toNNReal_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/tonnreal-div.md) | 958 | `result-track:8b59b2745b592d44db6f6192aba18c8ab6d0bfb3836ed5bb9b27d758287d5c76` |
| 199 | `theorem` | [toReal_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/toreal-inv.md) | 961 | `result-track:1a54bdc2022d1e25665133be57a2341cbfca9285f9cf92ec6b8f3fb37b5228be` |
| 200 | `theorem` | [toReal_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealInv.lean/declarations/toreal-div.md) | 964 | `result-track:507dabfdc87bab0ee560411f088c1132695bb9e6f57c9c1d9e2db41a51f6edcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a97a862650a06f7bc7d1c140331b38e15548f90c1cb28c7c2174daf06dd165a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
