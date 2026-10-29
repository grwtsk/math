# Verification target: Nat Init Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49daebd5449d0fab8de18608b6d111d57f63a75a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49daebd5449d0fab8de18608b6d111d57f63a75a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean.json)

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
| 1 | `lemma` | [succ_pos'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/succ-pos.md) | 70 | `result-track:f38b817f2506603fa03abc97008df55dc70d78213c38b7119ad4c86801dc58f3` |
| 2 | `lemma` | [two_lt_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/two-lt-of-ne.md) | 76 | `result-track:2046947d02354ffea6fea47468c0a99626fbe72dbd65479fd743f9c61b092291` |
| 3 | `lemma` | [two_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/two-le-iff.md) | 82 | `result-track:092c87b8b56859b54312895b26a1285abb2b5b93ed718ea58a6060cc163641a9` |
| 4 | `lemma` | [mul_def](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/mul-def.md) | 93 | `result-track:cfa7925cc041a7ef7f124310b673e32c24589b10b44c75494072241b2bfc0808` |
| 5 | `lemma` | [two_mul_ne_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/two-mul-ne-two-mul-add-one.md) | 95 | `result-track:42da133248b539760f052ce7111ee61a0ad5f81bf6b8f78d812fc12cc0f4acb6` |
| 6 | `lemma` | [le_div_two_iff_mul_two_le](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/le-div-two-iff-mul-two-le.md) | 101 | `result-track:7514bd19b8d42cb04b6e1c2ad96fa48efc173de1b2e85b0fc265e2d667dc82c0` |
| 7 | `lemma` | [div_lt_self'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/div-lt-self.md) | 105 | `result-track:7fbdad93f98fbff56a17fa19da02254420dff2eb03d47dce6e75a2f8096eac4a` |
| 8 | `lemma` | [two_mul_odd_div_two](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/two-mul-odd-div-two.md) | 108 | `result-track:f1a6c76d813771ca45d8f19bcb16d4610926d9705e6abafa7d474061a39e8a37` |
| 9 | `lemma` | [one_le_pow'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/one-le-pow.md) | 113 | `result-track:6bb2a98a56be22e70edab1cc7b11c935a7cca331c0fd2c30a39758c553564538` |
| 10 | `lemma` | [rec_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/rec-zero.md) | 125 | `result-track:af8dd5e0a85defafde99e4ff8a76ac0695a335993e1a6becc8cf543180751960` |
| 11 | `lemma` | [rec_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/rec-add-one.md) | 128 | `result-track:d95ff8b5dcd181e96a2a790a2ab7263432fb33680662a1fdd37805a312614083` |
| 12 | `lemma` | [rec_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/rec-one.md) | 131 | `result-track:331b776f440a58b21fa818177c199826eeef44f2cee0a083fe58cfc12fd50c83` |
| 13 | `def` | [leRec](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec.md) | 146 | `declaration-track:4ed1de0121fdf33ce27c66d979feedab6b494ad4c278a1e93046aaaa6773d63f` |
| 14 | `theorem` | [leRec_eq_leRec](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-eq-lerec.md) | 158 | `result-track:0a1932185edc79e19c958dba9768e723fd3f0cf300fa14b3926d078a1be6c147` |
| 15 | `lemma` | [leRec_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-self.md) | 161 | `result-track:8f4c1c49715bd70938c1f8c27fb9902594e238cd69f1e675a038a046e9a20ef8` |
| 16 | `lemma` | [leRec_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-succ-source-edition-2.md) | 169 | `result-track:fb714b2a7ccc34a44f50fa9c0410be50903db7d3f0e83bf3b0e415902351995a` |
| 17 | `lemma` | [leRec_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-succ.md) | 179 | `result-track:a47d3555347c23152ff3e77f01a97fbfa37207c79e6da7862aa4f94552c16f13` |
| 18 | `lemma` | [leRec_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-trans.md) | 183 | `result-track:1671beb92895e21d513c87e7b97c064960efe2e44891ba1860257495215b9c7b` |
| 19 | `lemma` | [leRec_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerec-succ-left.md) | 193 | `result-track:31f21b8d4d88237f4bd9316e60a4f4461a4302d10ed1952187ca7f4f6b55e969` |
| 20 | `def` | [leRecOn](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon.md) | 205 | `declaration-track:0999f4ca4373b9eefd6033a933f947649bccb0b94ba5e51edfd88de09210d388` |
| 21 | `lemma` | [leRecOn_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon-self.md) | 208 | `result-track:4cb135b76593c0867ff01385cf9fee4c1aaf669f5226c5fe12d41f2a2774621c` |
| 22 | `lemma` | [leRecOn_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon-succ-source-edition-2.md) | 212 | `result-track:bfd62e16cb8e4636130050a75e0aec843cb269ca0318b6433c6399fe160b2d0f` |
| 23 | `lemma` | [leRecOn_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon-succ.md) | 216 | `result-track:7be8ba2e31b4c874c61241a5f1b258229ec0c07769771b1e8cfc46bbee2dbcd9` |
| 24 | `lemma` | [leRecOn_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon-trans.md) | 220 | `result-track:827c4594a90df7d233609deeb4c3f32c2f31c0014a8624cb16f88e475f083a3a` |
| 25 | `lemma` | [leRecOn_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/lerecon-succ-left.md) | 225 | `result-track:d0dfad25168b63887e7a6d686b5ef70b9d948a4efbeb59954d7e6ae7be2f104a` |
| 26 | `lemma` | [le_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/le-induction.md) | 241 | `result-track:a764f44507547881af51aa4ac356a4d88539206c2731c42c980f56d1334b5e39` |
| 27 | `def` | [twoStepInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/twostepinduction.md) | 247 | `declaration-track:fcde9ee1db989f573776b44a37ecb4747e72f946b691718f3f4059b1f8d7d5fc` |
| 28 | `def` | [stepInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/stepinduction.md) | 260 | `declaration-track:cf0d8265b44d91f861fdc78d23c4d0190cdc72140145067c58aad7a0771ce04b` |
| 29 | `theorem` | [strong_induction_on](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/strong-induction-on.md) | 266 | `result-track:2e2e845e0d6923f21a12e5baaf7547178597cda6332426c1e761b14c02660792` |
| 30 | `theorem` | [case_strong_induction_on](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/case-strong-induction-on.md) | 270 | `result-track:9ab54d1d7c3153e228e80f88f3352257ba5fbad60bb8de3d6748f843a53b29ce` |
| 31 | `def` | [decreasingInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction.md) | 280 | `declaration-track:5eabe5e26e518130d0b878f8b1d2d471f833aeb16acbe923055bc1e284ce947b` |
| 32 | `lemma` | [decreasingInduction_self](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-self.md) | 289 | `result-track:72f716e386044739bd4dc5f87a4c4e795ceba43156975128e837895bed2d84b5` |
| 33 | `lemma` | [decreasingInduction_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-succ.md) | 294 | `result-track:74b58baa45712c7fa8a20aeffc7db18a09471b4dd4573efbb14f63a7ccb1f505` |
| 34 | `lemma` | [decreasingInduction_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-succ-source-edition-2.md) | 302 | `result-track:c82dc539f6e5c2f430dc683fc8f6eb41b2f5576d890a7805882fba9f314b0564` |
| 35 | `lemma` | [decreasingInduction_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-trans.md) | 306 | `result-track:b6e4881122723053880bcbc8bf7f0a92b7fec8721451c3dffb4470983eedd004` |
| 36 | `lemma` | [decreasingInduction_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-succ-left.md) | 315 | `result-track:a0eebcf6b4405d80f559231c4c1ac890db47cabd6ee35a0fbb88359361ccbc06` |
| 37 | `def` | [strongSubRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/strongsubrecursion.md) | 328 | `declaration-track:ebd7de2da86f6650e5f737888b74323ac8ebb61020d372ceb74b1a87bd8b0828` |
| 38 | `def` | [pincerRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/pincerrecursion.md) | 339 | `declaration-track:526d250b41ea85ba0a395110e811c5e210296af5303a07a05d420b522b21481b` |
| 39 | `def` | [decreasingInduction'](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decreasinginduction-source-edition-2.md) | 350 | `declaration-track:aade2015fe2c345a3c9f511180aa8bcbb5922f1389f18759a73b0a8bfd299070` |
| 40 | `theorem` | [diag_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/diag-induction.md) | 362 | `result-track:603fd176dff95eaeae93af9020d58c662079206758f326aa43138a00fd6f6788` |
| 41 | `lemma` | [not_pos_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/not-pos-pow-dvd.md) | 376 | `result-track:41be25a78443b490e87aa68de8d1337c7633c34661fdc7b83eb9504e9986f12c` |
| 42 | `theorem` | [not_two_dvd_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/not-two-dvd-bit1.md) | 381 | `result-track:27ede2e903f499470f5301f8e8ac668165b1b57358d6a55a0e5f4520590bf13b` |
| 43 | `lemma` | [dvd_add_self_left](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/dvd-add-self-left.md) | 385 | `result-track:75b5e32e3efe2adccbb199d1dc2eaae69eb17524f950b9bad6ff36979c1548ba` |
| 44 | `lemma` | [dvd_add_self_right](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/dvd-add-self-right.md) | 388 | `result-track:999bb336c7e4f42e04504447faa08dc275b203774d8dd8c9b7b67970d4eddc4c` |
| 45 | `lemma` | [dvd_right_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/dvd-right-iff-eq.md) | 391 | `result-track:d4c1be21e62007331ce344331cc2c89c1e975fe2d0cdbcefd67c847484e445c0` |
| 46 | `lemma` | [dvd_left_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/dvd-left-iff-eq.md) | 396 | `result-track:93e979a2dc0a41345ad08fd4ad6abde4d46e429a564b76d2e9ea86f33297fa86` |
| 47 | `instance` | [decidableLoHi](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decidablelohi.md) | 402 | `declaration-track:b8d414f6e02c5cca961b57ecfeeb356d98e135606f874fa848c8eb9746f23bbe` |
| 48 | `instance` | [decidableLoHiLe](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/decidablelohile.md) | 410 | `declaration-track:6293bbd319b3164fba5150703f6f8e0b37f110a07e4d4c20850d327e94a564f5` |
| 49 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 415 | `declaration-track:9b8f15a9023802394edc4874ca81fe2ad07183dc319c3c8c33aa8c00491e60f7` |
| 50 | `class` | [AtLeastTwo](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/atleasttwo.md) | 431 | `declaration-track:8278dfa5b5a50a443dc424df807e09aba20e641cff48a6e7805a63b25e6a0aeb` |
| 51 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 436 | `declaration-track:f6778c5336cbcafa370e51ac4600902c99cf7cf992ed15ae13c110df1e33ac58` |
| 52 | `lemma` | [one_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/one-lt.md) | 443 | `result-track:b796d8c06d1b61fb96b9d7595011f4424a10cd8e634fb4c853c0624e66a889fd` |
| 53 | `lemma` | [ne_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/ne-one.md) | 444 | `result-track:548beea54843439b47f81e3d644fa7653f2ac056ee402c34b818aa8d0fb1fb7f` |
| 54 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/instance.md) | 446 | `declaration-track:4477f85f185f2721bac89539c387a6d237c1956b288dc6484e274cf79506f0ac` |
| 55 | `lemma` | [neZero_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatInitNamespacedPublic.lean/declarations/nezero-sub-one.md) | 450 | `result-track:40df16edbd8000990b3214f7d2421e512ad783cc30168fedbe407c94e9e66f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e26d51d745307aba195d37f7c2062480519350c5e821025aafe2424f219bec82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
