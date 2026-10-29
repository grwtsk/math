# Verification target: Finiteness Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "928770a40fe94a33af08cd62083390bd38a1b73c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `928770a40fe94a33af08cd62083390bd38a1b73c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_bot](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-bot.md) | 37 | `result-track:2aaa8c02c34439a7da7c25daf93465605af956dbc5c456e4f3b6b3fb11944e62` |
| 2 | `theorem` | [fg_span](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-span.md) | 40 | `result-track:0406b8cb1a253d1fcefd3ea26821e0a645bd466aeb2024b06f151c7e6f76243d` |
| 3 | `theorem` | [fg_span_singleton](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-span-singleton.md) | 43 | `result-track:2f39e7340fee82c40d80012c3e283f8cf4dbe797643d269c83891e1b1407a10c` |
| 4 | `theorem` | [FG.sup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-sup.md) | 46 | `result-track:32417615319f5ba47bc51ae33771b0fd51d89e13661e46e454ff076a6872fc42` |
| 5 | `theorem` | [fg_finset_sup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-finset-sup.md) | 51 | `result-track:50e51f35b4a7be97d2ca5886280dbba77fd68f33593a8138363900e377a902af` |
| 6 | `theorem` | [fg_biSup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-bisup.md) | 55 | `result-track:f3b2b9a60df223d3528c2a535ecc08132a1b6dca8c73edd370896b8268cde0c9` |
| 7 | `theorem` | [fg_iSup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-isup.md) | 58 | `result-track:fab8b047f59e1302111822b9ce4f2be919feb131ceab5001057b15776e18fca6` |
| 8 | `theorem` | [fg_pi](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-pi.md) | 68 | `result-track:c582f7877a77c8f17a7df775e669792b61d5f004b9d7964e9ebc7d84ae742bdf` |
| 9 | `theorem` | [FG.map](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-map.md) | 79 | `result-track:338a761564d2f842bfa9dd0dd4049cc470aa7e9bef65139bb90b59eca5852360` |
| 10 | `theorem` | [fg_of_fg_map_injective](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-of-fg-map-injective.md) | 83 | `result-track:264ca36f39bca41f8682afa6a38b5d7b94d1b9f60a103cbed682461219641b58` |
| 11 | `theorem` | [fg_of_fg_map](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-of-fg-map.md) | 98 | `result-track:510f3d11eeed1344da030009ed55fc63f30750945a8a2fce2c4d16f879ce3589` |
| 12 | `theorem` | [fg_top](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-top.md) | 104 | `result-track:a549ea4a1de72c59bb1c85d8403a9410f0c4658a27b902b9e10cecc6ed24c059` |
| 13 | `theorem` | [fg_of_linearEquiv](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-of-linearequiv.md) | 108 | `result-track:a8095dd878a7763fa485a7a0295d81f6b9783d8a90274aa6ee75a83325af5b42` |
| 14 | `theorem` | [fg_induction](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-induction.md) | 111 | `result-track:97ae3bc7dd08c5aa328175fddc6f12e92cc60a05121cd0620182d3149d3683f5` |
| 15 | `theorem` | [fg_restrictScalars](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-restrictscalars.md) | 124 | `result-track:e18d45b16ff6b3dc2167bbb86239292a09a7c5bf6935274a9fb2e2f92ad13fb3` |
| 16 | `lemma` | [FG.of_restrictScalars](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-of-restrictscalars.md) | 132 | `result-track:527bdee48a0b781a10dd3e22e75b80699e5c85f18455066b5cbae683e82f3422` |
| 17 | `theorem` | [FG.stabilizes_of_iSup_eq](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-stabilizes-of-isup-eq.md) | 143 | `result-track:a8ff80faeb4e5ba48dc2a2ab347ba409a2182e282637dc52138f346c36b108d5` |
| 18 | `theorem` | [fg_iff_compact](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/fg-iff-compact.md) | 162 | `result-track:5b2bde035c27c0a3333bb40efc0005cc1d403f40b4c5af1814fc0d38a29a1da0` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/instance.md) | 204 | `declaration-track:3b39a5333fbf17c88601af7bdde861ce8a49a80071f4f4e739dbbf05828d9ee6` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:65132c0bed834e6295a58a74cd363e3a0f3046c3882c7a3f3a0fd3fbdf238aea` |
| 21 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-surjective-source-edition-2.md) | 218 | `result-track:60bb026eae54b107c7d53b65533eadd617fd914f61152376d4f763a22e8c85d3` |
| 22 | `theorem` | [Finiteness Basic Namespaced](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/finite-iff-of-bijective.md) | 224 | `result-track:6639f347bb9b001fe45b950b3e19539b774e1f9ca6e9d8c90955a08ed7ee5204` |
| 23 | `instance` | [quotient](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/quotient.md) | 231 | `declaration-track:fc5ba39ab03a950fd06c9a333e6a82b417d8865d3878a393c58aebe36df2cd57` |
| 24 | `instance` | [range](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/range.md) | 237 | `declaration-track:a8e5ee3412ad7863fbbec5d29b9eaf288c7783b7e020528620bf25a8ed7fd49b` |
| 25 | `instance` | [map](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/map.md) | 243 | `declaration-track:9aaab859ddb6bd9f3477577dd7ccc8b8adf7fba5c2b4c79f4124d69914948de7` |
| 26 | `instance` | [pi](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/pi.md) | 247 | `declaration-track:8abf3b31e3e9a114c54e9be8ac448830a7c0f95942296957df84e118336e69a3` |
| 27 | `instance` | [self](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/self.md) | 255 | `declaration-track:87b85ac825363b603f61b63afa46de0a90c88fd29498bb0d770611b811733f07` |
| 28 | `theorem` | [of_restrictScalars_finite](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-restrictscalars-finite.md) | 260 | `result-track:d19f7a3025a58b1ca43b0d6758ecdf8db8c054bec39f161500f076e91ddefe0f` |
| 29 | `theorem` | [equiv](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/equiv.md) | 272 | `result-track:ff6f7e8f765f70b3da13c5c722e7b79c3468c67cd4fe8970e01764bc1057e6d6` |
| 30 | `theorem` | [equiv_iff](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/equiv-iff.md) | 275 | `result-track:79adbe7475f1969ecec9dd5a37b01288aa6a33a0bc84f72bb5755a21b46e1401` |
| 31 | `instance` | [ulift](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/ulift.md) | 278 | `declaration-track:0a45142afa7f51fcd6854e1ad5f69dc434588dc15e5d9e1bb02cbdcbc30cd7ff` |
| 32 | `theorem` | [iff_fg](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/iff-fg.md) | 280 | `result-track:0b02d391d3a86cf1d5f7b3596bf3b0db53c7a113e7260edcf349f5a6dc485c04` |
| 33 | `instance` | [bot](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/bot.md) | 284 | `declaration-track:06dac6077733c49899e50a3e3ba3eeeb7b54d713fa7960f7aefff8edaa504ffa` |
| 34 | `instance` | [top](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/top.md) | 286 | `declaration-track:f613b684bfc056d04a7a6a9be11787877ce77f503c990db7d851b793d9ce01d7` |
| 35 | `theorem` | [span_of_finite](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/span-of-finite.md) | 291 | `result-track:bf90a50615de168fc7277f0a5ba93d237c0907a06b4dbde2e0822afbc5e5ec70` |
| 36 | `instance` | [span_singleton](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/span-singleton.md) | 296 | `declaration-track:747416d53f480c17316a7a4c13570a26586c557171c2d11a0ed7eca3fa252b92` |
| 37 | `instance` | [span_finset](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/span-finset.md) | 300 | `declaration-track:c7f03fd7c50dc68bc92a06df82cd6c370ec6e1d75129c2b9513869d2b215ccbf` |
| 38 | `theorem` | [trans](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/trans.md) | 307 | `result-track:cfd7b8ab23aea93b20cb90895700aa8b16b3f3aea096e7eb93057780fe11c349` |
| 39 | `lemma` | [of_equiv_equiv](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-equiv-equiv.md) | 317 | `result-track:31ff8aa6dd66bc77a00b4ab6ea30652ea0950857e3791248c05c2b2bec22a7e7` |
| 40 | `instance` | [finite_sup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/finite-sup.md) | 348 | `declaration-track:00086d8836e3156f894497df06c647a472912a2e9f4720eeeeaff4c3f5defa50` |
| 41 | `instance` | [finite_finset_sup](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/finite-finset-sup.md) | 358 | `declaration-track:a4ec01224a10dd4556b67b7e65bdec21997107bcba01b49c494bfde4f78837ce` |
| 42 | `theorem` | [id](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/id.md) | 375 | `result-track:23a34dc39b7b5da8bc18ea05505bf0e8c1e5d61bab08e98331b141a9700b23c0` |
| 43 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-surjective-source-edition-3.md) | 378 | `result-track:938d21bcf160453949ed4f845b3a726f0c821183e0b92c30e2a6b6808c4f3b61` |
| 44 | `theorem` | [comp](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/comp.md) | 382 | `result-track:7afbb6473b7fb9ddb8e51bc5e421967a333fc48d45a7493fbf672b6bc01e07d3` |
| 45 | `theorem` | [of_comp_finite](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-comp-finite.md) | 386 | `result-track:43ba82d667941bad6047006ded2b0c9d2f6bd16230c97544f77b0b2e48075a9d` |
| 46 | `theorem` | [id](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/id-source-edition-2.md) | 404 | `result-track:50e2fe4163b4d1ca5a92e4bd862098363a0739e41f36e9b2b4b7a7118dff10b8` |
| 47 | `theorem` | [comp](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/comp-source-edition-2.md) | 409 | `result-track:f89e4d264a78b3736afaa0500385f19732df8f7cb1f38c2dbb928b04ddeafee8` |
| 48 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-surjective.md) | 412 | `result-track:2dd3824ecb6751fb35cd0a9d63a22385d38e8b7cf687f526dc7036de723a760b` |
| 49 | `theorem` | [of_comp_finite](../../../../CommutativeAlgebra/FinitenessBasicNamespaced.lean/declarations/of-comp-finite-source-edition-2.md) | 415 | `result-track:fa372a379d1bb02e4879e2e7fb60108c4fdee20c0927830240434f570b9f32e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89a881d0fbe43b1787995e59511b8fa6a1f77e43d369af8444e44accdb41a103 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
