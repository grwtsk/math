# Verification target: Ramification Inertia Galois Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c89b4a440226e6a070fd925a209d45476953946",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c89b4a440226e6a070fd925a209d45476953946`.

Source path: `GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdxIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ramificationidxin.md) | 67 | `declaration-track:c7f67a4d133abe73e0a922c388ad9975946a53c08291b4317101f8ab10bb1184` |
| 2 | `def` | [inertiaDegIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/inertiadegin.md) | 76 | `declaration-track:54d4e040e7b07c3b19b1ee0353cfb20e90a81b15f5a0c520a9558f4a042097eb` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/instance.md) | 85 | `declaration-track:1be4dfe393a63dbcaaf704c6506b91255faf067a944e4e67be9375aa537551d4` |
| 4 | `theorem` | [coe_smul_primesOver](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/coe-smul-primesover.md) | 91 | `result-track:f230f5665656358abbab0657b8b1182b5a18ee5104fdd1e3d00b85d74e36a030` |
| 5 | `theorem` | [coe_smul_primesOver_mk](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/coe-smul-primesover-mk.md) | 95 | `result-track:a6d0ca0ea115d2e50f3c8feebfc41b6dfe36558cdfa84084ef3aa1a5c82af837` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:1cfa175c9e851ce26816e64064a2512208545cdcb578be78bb56def8d4c1316b` |
| 7 | `theorem` | [coe_smul_primesOver_eq_map_galRestrict](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/coe-smul-primesover-eq-map-galrestrict.md) | 115 | `result-track:9ad720f4812a6a14698a2552c8ecd57999ee89d54484b37754dec971ef08a3ae` |
| 8 | `theorem` | [coe_smul_primesOver_mk_eq_map_galRestrict](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/coe-smul-primesover-mk-eq-map-galrestrict.md) | 119 | `result-track:25c433ff1e2934742c780c37a88da86785dfb251de33e17cedd84f356df919aa` |
| 9 | `theorem` | [exists_smul_eq_of_isGaloisGroup](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/exists-smul-eq-of-isgaloisgroup.md) | 135 | `result-track:db1e08ba866f901b4b0a6ceb81a47ec29626b7e9c54e7de8246af09d217c06f9` |
| 10 | `instance` | [isPretransitive_of_isGaloisGroup](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ispretransitive-of-isgaloisgroup.md) | 140 | `declaration-track:0127ec4b1ee5534536c16d118eeb50103a3ecada6a135dff84584327aa054c63` |
| 11 | `theorem` | [ramificationIdx_eq_of_isGaloisGroup](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ramificationidx-eq-of-isgaloisgroup.md) | 148 | `result-track:c0abd438df62b5f5d203065cd978b2553d40be98dc1fccf09909430838f1b4c9` |
| 12 | `theorem` | [inertiaDeg_eq_of_isGaloisGroup](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/inertiadeg-eq-of-isgaloisgroup.md) | 155 | `result-track:b51e53ca74b86ab8de297c01cfc7d14423c6c305e3df589059a4300407c4f9de` |
| 13 | `theorem` | [ramificationIdxIn_eq_ramificationIdx](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ramificationidxin-eq-ramificationidx.md) | 162 | `result-track:c3601d584786036f3ce78b3331166bd8e4ffce9394bb3a5d4d46262582217809` |
| 14 | `theorem` | [ramificationIdxIn_ne_zero](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ramificationidxin-ne-zero.md) | 170 | `result-track:446146d8b485864833d040f2986f88e7493bc3044a5ed681d73ad2543bfb3019` |
| 15 | `theorem` | [inertiaDegIn_eq_inertiaDeg](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/inertiadegin-eq-inertiadeg.md) | 178 | `result-track:a39e47eacbf21c8e4c62ab60a6ffea003484557c460effc47b39486acd48cdcf` |
| 16 | `theorem` | [inertiaDegIn_ne_zero](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/inertiadegin-ne-zero.md) | 186 | `result-track:d982b1d8ae0caf880da5d75ab7edc818918672e12bf1cad73a835928f161ae3c` |
| 17 | `theorem` | [inertiaDegIn_mul_inertiaDegIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/inertiadegin-mul-inertiadegin.md) | 200 | `result-track:503b0368a090a63c9de559b367d4a92de5082d6cc96d4cf20a0ea67aa52813c7` |
| 18 | `theorem` | [ramificationIdxIn_mul_ramificationIdxIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ramificationidxin-mul-ramificationidxin.md) | 209 | `result-track:9ccfaebb987906309e98c9f263bc119c5f086b0bf6cf36a0a0ceeef0f472efa5` |
| 19 | `theorem` | [ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ncard-primesover-mul-ramificationidxin-mul-inertiadegin.md) | 230 | `result-track:8fefcc0c925706428c2fca4f71d417db7b85705e4a8e821b1aac2d74207bf129` |
| 20 | `theorem` | [ncard_primesOver_mul_ncard_primesOver](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ncard-primesover-mul-ncard-primesover.md) | 252 | `result-track:c12a9c96e53f4773d45f411c94c6acb1fae1954ec1dee24937c044edecbe2b45` |
| 21 | `theorem` | [card_stabilizer_eq_card_inertia_mul_finrank](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/card-stabilizer-eq-card-inertia-mul-finrank.md) | 295 | `result-track:4a7660fcee75a42e01c8f0e0bb9eab0a67a89221d3522a6b25b3df916a74dac1` |
| 22 | `lemma` | [ncard_primesOver_mul_card_inertia_mul_finrank](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/ncard-primesover-mul-card-inertia-mul-finrank.md) | 317 | `result-track:934338ab2a2d11bd28e90f965e73f4f462868c1c766ede3df70c3c517cd7ac04` |
| 23 | `lemma` | [card_inertia_eq_ramificationIdxIn](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/card-inertia-eq-ramificationidxin.md) | 325 | `result-track:2db6e08c60b5d3e16f10b3108666ae1b83c939e7a54dd65fbfdc983b698ca2c5` |
| 24 | `lemma` | [card_stabilizer_eq](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/card-stabilizer-eq.md) | 338 | `result-track:33a30f74722013ca3e6c4c6c8b5e7a63d0a80f995e0dcfe9cddb330778df86a8` |
| 25 | `lemma` | [exists_comap_galRestrict_eq](../../../../NumberTheory/RamificationInertiaGaloisNamespacedPublic.lean/declarations/exists-comap-galrestrict-eq.md) | 354 | `result-track:26950eca250c6a036ab41dedc47aa76c89f3936cfe4df526ebe8d178a1de2dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec837c9b39acc50219ee0f8974dd29dd3a29bb2e224fb88a54a171317f7268e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean","GRWTSK/_verification/specifications/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
