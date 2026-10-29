# Verification target: Hom Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6f43ff86d20decf4a7486fe732dd123983ea4d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantae7fed0addbbae762953585b8e46c52391a662152794d7a754702df3fb9b56a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6f43ff86d20decf4a7486fe732dd123983ea4d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantae7fed0addbbae762953585b8e46c52391a662152794d7a754702df3fb9b56a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantae7fed0addbbae762953585b8e46c52391a662152794d7a754702df3fb9b56a8.lean.json)

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
| 1 | `class` | [NonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/nonneghomclass.md) | 89 | `declaration-track:54f4c3ab4f498e2ad4017c5116e1cdf0da4b8b9dde003d3d18f6c515e750ff59` |
| 2 | `class` | [SubadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/subadditivehomclass.md) | 94 | `declaration-track:81e93ec290d0ceba98c0b4c8c1d23ebc881eb14cca52fa6d38da3466e7f84d8e` |
| 3 | `class` | [SubmultiplicativeHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/submultiplicativehomclass.md) | 101 | `declaration-track:3291ed586389d72d7587fdabd48cccc8ecda489703e40957d49e6e5d710e42ef` |
| 4 | `class` | [MulLEAddHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/mulleaddhomclass.md) | 108 | `declaration-track:264139198fe7922957bb46af3ff9dc2eb70cf71038261c476fcd2ccf017f8247` |
| 5 | `class` | [NonarchimedeanHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/nonarchimedeanhomclass.md) | 114 | `declaration-track:6f5ed4008c27bcc057273f2ae786fe4680059a12f6c749f7dd458fcf57fbc3e9` |
| 6 | `theorem` | [map_zero_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-zero-le.md) | 134 | `result-track:c27e8e7421cfbdb5ce56bb495731656413afe7e501f47afbecb5e7438bd5c476` |
| 7 | `theorem` | [le_map_mul_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/le-map-mul-map-div.md) | 140 | `result-track:a8536c97e37394fe631e8c524349d9792b908dee18a843efe23ce4273c211d77` |
| 8 | `theorem` | [le_map_add_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/le-map-add-map-div.md) | 145 | `result-track:a026fe81847d4338b480c6e09d3069f8d094342f88b8fefb6472de81ea71b40a` |
| 9 | `theorem` | [le_map_div_mul_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/le-map-div-mul-map-div.md) | 150 | `result-track:dec7aac5677df970a9263bbf5b3e0a805a407e831525da437b0f3f4f1347cf6a` |
| 10 | `theorem` | [le_map_div_add_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/le-map-div-add-map-div.md) | 155 | `result-track:92a82f3e69311962019d4078ac2ae84e4127b15291935c7d48bf08f8b217e2d0` |
| 11 | `class` | [AddGroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/addgroupseminormclass.md) | 166 | `declaration-track:dfde05135a1d216e8b5a9c0ef9c4d9dd4be237525965dd0eee6de1db866bd9ad` |
| 12 | `class` | [GroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/groupseminormclass.md) | 178 | `declaration-track:30fef53c79becc3cf5dc7ea1d67fb4ca5479c674163b96e815c8c22311f1e450` |
| 13 | `class` | [AddGroupNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/addgroupnormclass.md) | 190 | `declaration-track:d0eec9a88a896db97941db57101d7a1a80c2dc4bf8c3458b0c3e31daca300da2` |
| 14 | `class` | [GroupNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/groupnormclass.md) | 200 | `declaration-track:83ef363d969b586e4667a9e1449d044f3b4e1f0ee93c77535a981c6e805f085b` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 217 | `declaration-track:9a2df813f894605c13ca79b1573742a8a004cf0fb2ab70729c1c2684d3c030d4` |
| 16 | `theorem` | [map_div_le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-div-le-add.md) | 226 | `result-track:66049703ba64bbcba302568c7646168bb5b14eecf81e3986d4d47e2853509b13` |
| 17 | `theorem` | [map_div_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-div-rev.md) | 231 | `result-track:4828a180e59df2f56a49992a4d77dc0cd85e726276834c68089f2e87209be1c2` |
| 18 | `theorem` | [map_inv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-inv-mul.md) | 234 | `result-track:bf45c5f9579903a6a644779950cff2283b55e17682b9213fd654afcabf3e389a` |
| 19 | `theorem` | [le_map_add_map_div'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/le-map-add-map-div-source-edition-2.md) | 239 | `result-track:a6c0eaea1253676432d174dfadc67665d2ae039476cfabf96eda23d0330602dd` |
| 20 | `theorem` | [abs_sub_map_le_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/abs-sub-map-le-div.md) | 245 | `result-track:c1707413f30c8e1e17b3629077d4074a1366a254d690ca7058402d7147feaaba` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/instance.md) | 253 | `declaration-track:001645ba3a27dabc5b2bbc7205eeb9fd54776bd96d9cffe66f0412866f89c4d6` |
| 22 | `theorem` | [map_eq_zero_iff_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-eq-zero-iff-eq-one.md) | 267 | `result-track:6624caff768e5893facbd4de263683db75df87bec05557aea3de6967f3c7626c` |
| 23 | `theorem` | [map_ne_zero_iff_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-ne-zero-iff-ne-one.md) | 273 | `result-track:92a29d94fe70383f956ed42c4c007f6a4de997df0c7ec169c8353c12c26bc699` |
| 24 | `theorem` | [map_pos_of_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/map-pos-of-ne-one.md) | 279 | `result-track:f3d4dc85e60adce6deef4599c69032c5550b933b0546bd63eb929015e91715f3` |
| 25 | `class` | [RingSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/ringseminormclass.md) | 290 | `declaration-track:17ad371ff6f3ed6b89183303e9909199bcea31734d980ae32196d6b7e2bd2cfb` |
| 26 | `class` | [RingNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/ringnormclass.md) | 297 | `declaration-track:68d2005a23ef35db430305f538d32648e6754b8d5027c9b499292fae6cf09108` |
| 27 | `class` | [MulRingSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/mulringseminormclass.md) | 305 | `declaration-track:e78212f202c81ec229b96f11f2855177c576529b0267a1ca23d0795930ec7515` |
| 28 | `class` | [MulRingNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/mulringnormclass.md) | 317 | `declaration-track:b6dc9a775464f6478de5b894101073d8a1764e595cf64154dfc502b41795b46c` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 323 | `declaration-track:78af1178f617553171ce08d9ae6c9c76e2ce50dc197177ddcf416ee35d22f665` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 329 | `declaration-track:e72f1eb48ea6ee8b42635a1a8a15914eb2cedb65a7d9d8f396bee065983e1f4d` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 334 | `declaration-track:14fcbbb7684d4948b26bbd382c01b4722fa82cb40ed78ea153e7d3b8e34bc2a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=870a2e386b3028faef56362e85f354bff7b699140851cda8aec0ecea7be8103c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantae7fed0addbbae762953585b8e46c52391a662152794d7a754702df3fb9b56a8.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variantae7fed0addbbae762953585b8e46c52391a662152794d7a754702df3fb9b56a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
