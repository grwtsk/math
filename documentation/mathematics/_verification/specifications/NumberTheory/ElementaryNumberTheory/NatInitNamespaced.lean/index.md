# Verification target: Nat Init Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31d436f8c166c4b0251486a09f3faa202f4b2396",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31d436f8c166c4b0251486a09f3faa202f4b2396`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [succ_pos'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/succ-pos.md) | 72 | `result-track:560c29b28a12678fa9b8532c969aef619b20dff7be5cec56f85ff394fb806d51` |
| 2 | `lemma` | [forall_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/forall-lt-succ.md) | 78 | `result-track:741784c268f51704c830a8792dd324ac7965a81153b91ca06f113561e8ce7521` |
| 3 | `lemma` | [exists_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/exists-lt-succ.md) | 81 | `result-track:420ecc4132c1c95ed60cab79b4f5c5922dedff3d02263b2c77c63fc5760adaee` |
| 4 | `lemma` | [two_lt_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/two-lt-of-ne.md) | 86 | `result-track:860d51acecdd8d5676b83f4b2e8ebdfcac6913ea8a6589f0fa2cde8203946cb1` |
| 5 | `lemma` | [two_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/two-le-iff.md) | 92 | `result-track:096ed38d6f1c31cad8f9bdba49ee538391c087f6d8c0f15646479eb3496e9f31` |
| 6 | `lemma` | [mul_def](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/mul-def.md) | 103 | `result-track:4db88f804afd6238d3721bfcab81bdfb123f86fb7c202c97b824d0974ea3e052` |
| 7 | `lemma` | [two_mul_ne_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/two-mul-ne-two-mul-add-one.md) | 105 | `result-track:b5c720d25aefe27811634acce2310f6b46b3180586da407c243a654444361fb2` |
| 8 | `lemma` | [mul_right_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/mul-right-eq-self-iff.md) | 110 | `result-track:031ce8805be4bbfe51127256b1ed4f1713be8e634f9ae2ec7b1a8502f03f59ae` |
| 9 | `lemma` | [mul_left_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/mul-left-eq-self-iff.md) | 111 | `result-track:686d8f6dfaeade96c5dbd68cf05ad81e7f92f86cdc71a04cf487d3b59dfe2ed7` |
| 10 | `lemma` | [eq_zero_of_double_le](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/eq-zero-of-double-le.md) | 113 | `result-track:e15d90053f8f7d66f80fbb019c90b6cbe5a0d8fc0c269de6975c303a22f729fc` |
| 11 | `lemma` | [le_div_two_iff_mul_two_le](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/le-div-two-iff-mul-two-le.md) | 117 | `result-track:4bdc17e252f86912c075db53e57bf80996858d9541851a97b21b05001ec62e1d` |
| 12 | `lemma` | [div_lt_self'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/div-lt-self.md) | 121 | `result-track:98912e05d30e434218f126de680860ce5a6403d7368f5da53507534dcd9b8710` |
| 13 | `lemma` | [le_div_iff_mul_le'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/le-div-iff-mul-le.md) | 125 | `result-track:9367160f8b72ee2ffe80fe020f110eb40c392a28f6b78c81ecbe8f3c45344f00` |
| 14 | `lemma` | [div_lt_iff_lt_mul'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/div-lt-iff-lt-mul.md) | 128 | `result-track:2e2b9e012672ae70e080253c11695934782fa66b031d86cd746603b6074179e2` |
| 15 | `lemma` | [eq_zero_of_le_half](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/eq-zero-of-le-half.md) | 132 | `result-track:2847f9cd14094de41a321770f0b3af83dbdd559f7f6d7fcce7f494538bbad0e1` |
| 16 | `lemma` | [le_half_of_half_lt_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/le-half-of-half-lt-sub.md) | 134 | `result-track:2b4061235cb3fcc0f976bbd693c6d6f541a0c77a1faa2c054ca4596b74c3a5e9` |
| 17 | `lemma` | [half_le_of_sub_le_half](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/half-le-of-sub-le-half.md) | 136 | `result-track:52bccda766433594a3942609eda28f16903776cc0eab1c49b12436493aa9b354` |
| 18 | `lemma` | [div_le_of_le_mul'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/div-le-of-le-mul.md) | 138 | `result-track:b1e358ba730513d5483a6e4d9dcdf134ce6d30ef77f093acd17bd0ca7493f447` |
| 19 | `lemma` | [div_le_self'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/div-le-self.md) | 140 | `result-track:b67cc3f8261cdff97957f1c0873b6e176e703db15c9bcd431b0e3e75fbd9190e` |
| 20 | `lemma` | [two_mul_odd_div_two](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/two-mul-odd-div-two.md) | 142 | `result-track:1ead45c9753c99f93be79ba3d977dc434bc81376f2d9b8d6e9073ce9ea19389b` |
| 21 | `lemma` | [one_le_pow'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/one-le-pow.md) | 147 | `result-track:2e6bcb2c8be248382704ca2a3447e3994aa0f5cb6d06d473382ce6d8128523a3` |
| 22 | `lemma` | [rec_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/rec-zero.md) | 159 | `result-track:b9139318f8d609b24de2d5a5fddc3c4af83c7d9329515390d6337e34b3036021` |
| 23 | `lemma` | [rec_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/rec-add-one.md) | 162 | `result-track:802a1117fe7d108e2953fa172277edcf22d05193f029395b8a7f58750d0b508e` |
| 24 | `lemma` | [rec_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/rec-one.md) | 165 | `result-track:ee6cd8c6018f54f1ebba38b8f30b3ce4aecddb6f7e100163c2b1e713a6e7e87d` |
| 25 | `def` | [leRec](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec.md) | 180 | `declaration-track:e274311a5aa7944b78f704e26bf0671976e0c37ffb43c9983750f855167f0c7a` |
| 26 | `theorem` | [leRec_eq_leRec](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-eq-lerec.md) | 192 | `result-track:d9e552120fe99597cd65feb061ca58edd3b353f66a0e368307a6cfb5c0b272f8` |
| 27 | `lemma` | [leRec_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-self.md) | 195 | `result-track:68bb5ad9c4f9e31000a2dd885cc0b9ae0567aa2db493077a2bb10d2c1a96c98a` |
| 28 | `lemma` | [leRec_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-succ.md) | 203 | `result-track:9d09abaa154777860ed4a1c35d4005ca50167124fd57fecbe91457a782d35c10` |
| 29 | `lemma` | [leRec_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-succ-source-edition-2.md) | 213 | `result-track:d20faf79827e1e9391c64c64119d672c4fe69728f2241ac3183f93ffd3047e8d` |
| 30 | `lemma` | [leRec_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-trans.md) | 217 | `result-track:7b9de32e8f381fb952777294c923f6c182c960f853dedb567d50336916fb9703` |
| 31 | `lemma` | [leRec_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerec-succ-left.md) | 227 | `result-track:6dcec202f71777b8cb974d688225c310d49ff2def2c3331a85ce20dc7a6898da` |
| 32 | `def` | [leRecOn](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon.md) | 239 | `declaration-track:60a0ea6cb1f7d040b30530561eca481cd630f06fe9d4482cdc7c4d89e5ea5aa2` |
| 33 | `lemma` | [leRecOn_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon-self.md) | 242 | `result-track:94f370cb5b9eaf526fb819a7e1f44b0ee4cc0810913c110de27d4f123cb698d6` |
| 34 | `lemma` | [leRecOn_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon-succ.md) | 246 | `result-track:3ca63a28edcb07aca51ce765eface462ec8463aea248e2bde0b94a67af0519a8` |
| 35 | `lemma` | [leRecOn_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon-succ-source-edition-2.md) | 250 | `result-track:935ec0f50cf573bb9b4be85345940e82c959a4ecd7fc9126e8260c3d363c624c` |
| 36 | `lemma` | [leRecOn_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon-trans.md) | 254 | `result-track:b5475b4a9b35239a8ddd1a6ef0ad58b0cf9ded88d6588a29e4b8248a2453f6ca` |
| 37 | `lemma` | [leRecOn_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/lerecon-succ-left.md) | 259 | `result-track:c45a8e8b63ff898e228d2ba3d76af937186589dfae69f72a759f2b674a351d32` |
| 38 | `def` | [strongRec'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/strongrec.md) | 266 | `declaration-track:47a68d93f2fda0648010785f8a17e1b5efcc2976df14e70c8d54643c8565c46a` |
| 39 | `def` | [strongRecOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/strongrecon.md) | 271 | `declaration-track:83abcac9526b53e168a8adfa0e169dab132ca7ccf9c71bf9410dc0d105d10a21` |
| 40 | `lemma` | [strongRecOn'_beta](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/strongrecon-beta.md) | 274 | `result-track:997050fc57cbcc0b592feac54d3e5cb4d942ffd812edf0d1193b33de92c12a28` |
| 41 | `lemma` | [le_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/le-induction.md) | 284 | `result-track:03df9f5929439a6696830f9fffa5a531f9decb59d5e95ba74f987a828bcb3f49` |
| 42 | `def` | [twoStepInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/twostepinduction.md) | 289 | `declaration-track:aeb001d4d9d678d13e3e149acd8a91522eaf739ace94f35a5acdc48370103c1a` |
| 43 | `theorem` | [strong_induction_on](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/strong-induction-on.md) | 296 | `result-track:50ceffaf1fa6a8c20aa8c2ed9d5bfd4bfeaff5849c9dc6bd28ce21cfaae0940c` |
| 44 | `theorem` | [case_strong_induction_on](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/case-strong-induction-on.md) | 300 | `result-track:8cdb4cc0e86c30baada0b2f7cdbae565588f91e78bcbb7496a66106de2c8d352` |
| 45 | `def` | [decreasingInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction.md) | 310 | `declaration-track:79605fa8e35aea97205a4081945b34fbdca6d4a161f49f4850871ab2e0e24039` |
| 46 | `lemma` | [decreasingInduction_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-self.md) | 319 | `result-track:001a7a5508485608fc78ff5f87af597cdaf8a0c8316444452ebed6b60213d2bc` |
| 47 | `lemma` | [decreasingInduction_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-succ-source-edition-2.md) | 324 | `result-track:e663a7a35b3e09cea3a948d7c80046ecd4b68fccbb775ea5b07ecf724e12bb5e` |
| 48 | `lemma` | [decreasingInduction_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-succ.md) | 332 | `result-track:535322807ccc46fae4649bab6cc62a74b5aa38df1365dc0687250ba94babff5c` |
| 49 | `lemma` | [decreasingInduction_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-trans.md) | 336 | `result-track:59751e70a285b7b00e9cc6d695866cd0291223780e408f2dfdd0e20992b99693` |
| 50 | `lemma` | [decreasingInduction_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-succ-left.md) | 345 | `result-track:6309abadc1dc80b48939b9a120d00abd7fe1f02662fd7966a7591c907042aebb` |
| 51 | `def` | [strongSubRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/strongsubrecursion.md) | 357 | `declaration-track:4b0f10b6ba9b95fdc8e44a6bdfb69488d90202f55c799254fcc9a139908321d9` |
| 52 | `def` | [pincerRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/pincerrecursion.md) | 368 | `declaration-track:1ad2aad8cc4422a276b76b96159652a0075cecb004cd0a799e106003e59cf68c` |
| 53 | `def` | [decreasingInduction'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decreasinginduction-source-edition-2.md) | 379 | `declaration-track:eece91d0316e436a2ee0e71d2b32c177d00d4a110e00462898945a255ddc6806` |
| 54 | `theorem` | [diag_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/diag-induction.md) | 391 | `result-track:c3ea761b1c8e3dda1061c9838c12ecf5e161dffca97c4e464152d74d287069bf` |
| 55 | `lemma` | [not_pos_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/not-pos-pow-dvd.md) | 407 | `result-track:7779b17b48c2db5d6d366b7a83b07262583002cd60e1328ebf8cab31bd8a25c3` |
| 56 | `theorem` | [not_dvd_of_between_consec_multiples](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/not-dvd-of-between-consec-multiples.md) | 412 | `result-track:cfd78dace3a880975651b139a1ad05a4c4aa89af45a9d6bd301ef5acbc59838a` |
| 57 | `theorem` | [not_two_dvd_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/not-two-dvd-bit1.md) | 416 | `result-track:f3cf7f56d2ca702fc23bec9fe081d11d7eb47b18e9b11a286a1f35e95f3607a2` |
| 58 | `lemma` | [dvd_add_self_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/dvd-add-self-left.md) | 420 | `result-track:83fa6dd4f7387052a3b85882a0caa246b7c5d8b99728480891acd39b06e08b58` |
| 59 | `lemma` | [dvd_add_self_right](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/dvd-add-self-right.md) | 423 | `result-track:8ea6feaf3c448fb404f0554c72627605f24a2e17bd3b4cffa1df86a4aa4d010f` |
| 60 | `lemma` | [not_dvd_iff_between_consec_multiples](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/not-dvd-iff-between-consec-multiples.md) | 426 | `result-track:f1934807f7ccf612c9251fff096a954dce9294a0bd97cddb78216ac4cff52bb0` |
| 61 | `lemma` | [dvd_right_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/dvd-right-iff-eq.md) | 431 | `result-track:5649d6e416415f33bbefdba79dadda839e91e20a71cb814c4f62fc5982855673` |
| 62 | `lemma` | [dvd_left_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/dvd-left-iff-eq.md) | 436 | `result-track:e5b42c890b1e1604f089102d8b62ed75e1d4a171024f411776fa8cce3509030f` |
| 63 | `instance` | [decidableLoHi](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decidablelohi.md) | 442 | `declaration-track:2cc5cb97932f28a2f09a2b14eed2b86f51383b2b84b211074cdd745fdb72c3b2` |
| 64 | `instance` | [decidableLoHiLe](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespaced.lean/declarations/decidablelohile.md) | 450 | `declaration-track:d10a8a8648fba2ac84c00ec3f8ca80925b21538f64a75a6b06329ab34eba2058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74aea06dac4d31467f46366e73ba2d2bdde83d8ab262beba5db73fb518cc623e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
