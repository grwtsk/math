# Verification target: Group Theory Torsion Not Is Mul Torsion Free Of Is Torsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a039de16c3052a309ddaf001f9d87bc151477a",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a039de16c3052a309ddaf001f9d87bc151477a`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion.md) | 50 | `declaration-track:dbb3a72905c112240f615c1fb2537880ac1f76239ef43eaad5da5aa5771b1eb2` |
| 2 | `theorem` | [not_isTorsion_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/not-istorsion-iff.md) | 56 | `result-track:3d0efbc9f968118e81360f4cc0a44bf02f8146658c099c256a42636618303552` |
| 3 | `def` | [IsTorsion.group](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-group.md) | 65 | `declaration-track:1a3acf5830dbd6baa5b47f4c0902c41bfe19ff1a172c5f8aa724f275e0b9a40f` |
| 4 | `theorem` | [IsTorsion.subgroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-subgroup.md) | 78 | `result-track:4d277f46cc8f104645c4822364dba494a917206af884109523c83d0a7731c65f` |
| 5 | `theorem` | [IsTorsion.of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-of-surjective.md) | 84 | `result-track:46acde31d43e1c1980b35772590fe512823ea020b2f88554aa8788e1708bb21c` |
| 6 | `theorem` | [IsTorsion.extension_closed](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-extension-closed.md) | 92 | `result-track:2e4fbe3a453b748f9aadf7ef5f79b9f191d8aa685298f69595b6f2fa9306b30e` |
| 7 | `theorem` | [IsTorsion.quotient_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-quotient-iff.md) | 104 | `result-track:002c3b786e4767f2998d8989ef7b32edf8f4311b55f7580db6e119e23af14b84` |
| 8 | `theorem` | [ExponentExists.isTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/exponentexists-istorsion.md) | 111 | `result-track:7123daa6b8816b6faf03d1edb7fec40438bf76afbb9e728cf0fd6af9058c359c` |
| 9 | `theorem` | [IsTorsion.exponentExists](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-exponentexists.md) | 118 | `result-track:30baccc7b1067a08d2c2758a642f2813df8b205d10637fd92afbd779bfdb1ecf` |
| 10 | `theorem` | [isTorsion_of_finite](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-of-finite.md) | 125 | `result-track:5239187adeb7b7f15d99aa6938665d43b4924bb93cbab20a641dc00a84204707` |
| 11 | `lemma` | [not_isMulTorsionFree_of_isTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/not-ismultorsionfree-of-istorsion.md) | 135 | `result-track:2d52c59d29258aebf3450c62f58c96367d36da1207d0764506b373c0fc4bd363` |
| 12 | `lemma` | [not_isTorsion_of_isMulTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/not-istorsion-of-ismultorsionfree.md) | 140 | `result-track:d6c9ecd1bee3b5cd05acb7d837f9cea224761892a6cfd1ade3484a3babca2931` |
| 13 | `theorem` | [IsTorsion.module_of_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-module-of-torsion.md) | 153 | `result-track:951435fbeed895c8c4bc277985d9ce007536ca5f6b7abc53a4c9cc01f779ecde` |
| 14 | `theorem` | [IsTorsion.module_of_finite](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-module-of-finite.md) | 160 | `result-track:fc3d46d63656a8906b3d3d58173be5cf5e9bac17f0164234c199ccbea95edfe4` |
| 15 | `def` | [torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion.md) | 178 | `declaration-track:6b4e435adcf01aa339a84ea2b08a78f1bf7d4d940772931c3a34020f407e4f75` |
| 16 | `theorem` | [torsion.isTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion-istorsion.md) | 187 | `result-track:42e7167a3f54ecc9e2a5f9208c223df9b47942007b3c2e2d0b02aff4149b4026` |
| 17 | `def` | [primaryComponent](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/primarycomponent.md) | 202 | `declaration-track:58ca1d2706b1768e10af63d58a8d4f71e163e80ce84891dcb82478efd933366e` |
| 18 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/primarycomponent-exists-orderof-eq-prime-pow.md) | 219 | `result-track:fc8f1e539171e739268bcc4667d9d4524e0f7b5cc055c79b2fa884fd6646b940` |
| 19 | `theorem` | [primaryComponent.disjoint](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/primarycomponent-disjoint.md) | 227 | `result-track:c2f2386d988228cb4b20838f42c4007ce23e6870d0c5ef3c49e4d7a5d004ace7` |
| 20 | `theorem` | [torsion_eq_top](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion-eq-top.md) | 245 | `result-track:21a2bfeed005a2caea20351e56be73e459ceba1609a810248ef556a87213b4ba` |
| 21 | `def` | [torsionMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsionmulequiv.md) | 249 | `declaration-track:34b63a79c4e147f8fc5d8e0604e5d99c9463d6c4c0f68410999aa9cc997469e2` |
| 22 | `theorem` | [torsionMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsionmulequiv-apply.md) | 253 | `result-track:005956de46be64c911ee8389b502c8ab3f56b2da7f2709bc8b503f61f0bfd19f` |
| 23 | `theorem` | [torsionMulEquiv_symm_apply_coe](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsionmulequiv-symm-apply-coe.md) | 258 | `result-track:af0520297141be8f25c37bb7800ccd7ee493eee1664c70a8186ebec43513bb7e` |
| 24 | `def` | [Torsion.ofTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion-oftorsion.md) | 268 | `declaration-track:c889a3e666d161d9896ebc57329304980cc1e6d40c1fdef195dde0d7930c076e` |
| 25 | `def` | [torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion-source-edition-2.md) | 281 | `declaration-track:a05c24e71be653199eb987c3f9c49d3bdf71895c8a71e3b4639984b869efe184` |
| 26 | `theorem` | [torsion_eq_torsion_submonoid](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/torsion-eq-torsion-submonoid.md) | 288 | `result-track:bdca286851499f6721bd79f8a80fe6b798947b51dcea3da5ede5ff5fe7ec4a32` |
| 27 | `theorem` | [mem_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/mem-torsion.md) | 292 | `result-track:b703757a9b266895d75caef0d769defa810638f976379f56ae3d259a8a041c30` |
| 28 | `lemma` | [isMulTorsionFree_iff_torsion_eq_bot](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/ismultorsionfree-iff-torsion-eq-bot.md) | 295 | `result-track:41ff9bc14f98d703a706ed07854da808fec4c9d64e2b9664111f141753c2fa6a` |
| 29 | `def` | [primaryComponent](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/primarycomponent-source-edition-2.md) | 305 | `declaration-track:97e778c7c1f06d3e422587513a42e36a22b99330faa4cb9c35941e00aa4e41fc` |
| 30 | `theorem` | [primaryComponent.isPGroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/primarycomponent-ispgroup.md) | 312 | `result-track:6332efc948dbcd72efea9f15983b61c6473ea7738bae3c719a7561e02e7b4b4e` |
| 31 | `def` | [IsTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree.md) | 332 | `declaration-track:84ff098a4d35bb42c3c30f7819cb48a63d8503538ffd711801502afeaffdb760` |
| 32 | `theorem` | [not_isTorsionFree_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/not-istorsionfree-iff.md) | 340 | `result-track:d7fefb981f6e5bd6008bdae1662378c876a380dc251407a236da45590b898589` |
| 33 | `lemma` | [isTorsionFree_of_subsingleton](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-of-subsingleton.md) | 344 | `result-track:2372389005db09559530c0e6be53ff06038865fd876035d0f4c9b99d7add7bf2` |
| 34 | `lemma` | [isTorsionFree_iff_torsion_eq_bot](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-iff-torsion-eq-bot.md) | 348 | `result-track:cee08ef4df602718f8caf3855ffc992ee5fc7accd74eb6682c7633f36d0b374a` |
| 35 | `theorem` | [IsTorsion.not_torsion_free](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsion-not-torsion-free.md) | 360 | `result-track:d3859def3362cf2b6f33bd634eba538ab1dc5e999d0272ab3ac6aad93e30ccbc` |
| 36 | `theorem` | [IsTorsionFree.not_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-not-torsion.md) | 367 | `result-track:48ee05d420275362c83b90068c23e2e9926ff34a97bd62d73f4cbf3fe92b4c76` |
| 37 | `theorem` | [IsTorsionFree.subgroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-subgroup.md) | 374 | `result-track:d731963b65194cfe11acf475a4011a18b2ee5d38c4d9d60ffe0070097c4409c1` |
| 38 | `theorem` | [IsTorsionFree.prod](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-prod.md) | 380 | `result-track:9a1af1c86ddcb3566b401b4cae66229ed35153e5223bb11101b7ca081bb60a57` |
| 39 | `instance` | [_root_.QuotientGroup.instIsMulTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/root-quotientgroup-instismultorsionfree.md) | 398 | `declaration-track:db4ba923b5e300985f166d04571ca6f3fbe0a9dbc0c4091e2a1e6b71e35039f8` |
| 40 | `theorem` | [IsTorsionFree.quotient_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-quotient-torsion.md) | 409 | `result-track:499617e0a7eaa5f6731672765cb75254ecf8f7db5a56b85850e1686ddc21065b` |
| 41 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_nat](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-iff-nozerosmuldivisors-nat.md) | 423 | `result-track:8bce84ef930c53392feb50fd9d8587ca97f469e69d755c5b18d8cab5b1aebf04` |
| 42 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_int](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-iff-nozerosmuldivisors-int.md) | 429 | `result-track:0003361bd302253a4586ae3ffaf70dbb031e43ffc70e431845ab8c4f2e92a549` |
| 43 | `lemma` | [IsTorsionFree.of_noZeroSMulDivisors](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/istorsionfree-of-nozerosmuldivisors.md) | 435 | `result-track:4939d0a8eb153b3052001051d064f9a1e8d14bb8ca16602ef460b54460f1e08f` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/instance.md) | 445 | `declaration-track:a8d2cf07f4aaf12be0dd342201c1198d927ed163f64a5fd6228d7a6326f47fdc` |
| 45 | `theorem` | [neg_one_mem_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/declarations/neg-one-mem-torsion.md) | 458 | `result-track:bdf0065c2c967a026c67e22fa5552aa4336d68fc23d28326ee1af7267d6d9e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54f6b15c9118fe1ce72bf062560bd529998b6a624d63a3262e46b656d0931abe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
