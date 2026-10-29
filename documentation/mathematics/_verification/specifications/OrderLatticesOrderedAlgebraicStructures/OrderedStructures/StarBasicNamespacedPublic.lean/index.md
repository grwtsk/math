# Verification target: Star Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a8d109f8dec75d0bdb7e034b929bff83abe099f",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a8d109f8dec75d0bdb7e034b929bff83abe099f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean.json)

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
| 1 | `lemma` | [smul_mem_closure_star_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/smul-mem-closure-star-mul.md) | 64 | `result-track:30e2dc911aa5b8721d84c3ca273f24d50c7085e76a050a59982f240a3a22daa7` |
| 2 | `class` | [StarOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/starorderedring.md) | 87 | `declaration-track:1e06a0d68636718ee8cc3fa7333175e93c56d2b0ea2b8171f4d235be803a04b1` |
| 3 | `class` | [SelfAdjointDecompose](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/selfadjointdecompose.md) | 99 | `declaration-track:307b9b1888bf169713b665e6f872830cb125015c65559279baa873d5f45e14b7` |
| 4 | `lemma` | [IsSelfAdjoint.exists_nonneg_sub_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-exists-nonneg-sub-nonneg.md) | 105 | `result-track:fbf20dc35c3e95805e62d3f6e73327873915865a4052db878d77c67dcda796a5` |
| 5 | `lemma` | [of_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/of-le-iff.md) | 123 | `result-track:f8e607af7a01184137f79b2d4be286c7a2d1b17015b3a0bd405565e2230c2257` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 140 | `declaration-track:a07ec4505d9513cad85400c2ca4dfed1fccbcafbc240d7c71f456574411a4645` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance.md) | 148 | `declaration-track:0a32626ff9effd8e1b0ce7a00275de7b2dab567986d143e42d1743e86eabc59c` |
| 8 | `lemma` | [nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/nonneg-iff.md) | 153 | `result-track:5ca7efeeac08b8dc03c70d251d33caa001d1b925bd7438d588073f98f24abe1c` |
| 9 | `lemma` | [pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/pos-iff.md) | 156 | `result-track:adef361b13196ab8b9edaa22ae0346998b153cd4708bb05389ba9e29ffa24925` |
| 10 | `lemma` | [lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/lt-iff.md) | 161 | `result-track:8401a9cb22e517463a0219b385a3d7c603d242e093e766b689249f752cc10f80` |
| 11 | `lemma` | [of_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/of-nonneg-iff-source-edition-2.md) | 172 | `result-track:2fbcb670f5d22828d29dc2f01520be2c6d5b9d7fb2007a0c931acd528a4654f2` |
| 12 | `lemma` | [of_nonneg_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/of-nonneg-iff.md) | 187 | `result-track:09eb03abc2c8a9a984db8c7ad022b382d1252b6f8cb093a5695bce0c9ce16e6f` |
| 13 | `lemma` | [IsSelfAdjoint.of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-of-ge.md) | 200 | `result-track:527a782cc71e904144db3ba1ce908de93eacb01526ac84a145ca5ec0c94ab260` |
| 14 | `lemma` | [IsSelfAdjoint.of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-of-nonneg.md) | 212 | `result-track:9da5219286a61152c47441e60f0822e44ae9f68550e3bad1871e0e633abe65f6` |
| 15 | `lemma` | [LE.le.star_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/le-le-star-eq.md) | 219 | `result-track:7201ce7ee9b2000417ce8f6ffe1eb942df22e984122059275dc358edfffb124e` |
| 16 | `theorem` | [star_mul_self_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-mul-self-nonneg.md) | 223 | `result-track:1d727f0cd5f89a0abacf9164c99f0fe01dc5629342f4d3b053e1c746e2b5062f` |
| 17 | `theorem` | [mul_star_self_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/mul-star-self-nonneg.md) | 227 | `result-track:7c1087b5eb22ca9250e1d17c5da09e3f48600beb696f3aaa61aaecfcf6d2d1fd` |
| 18 | `theorem` | [IsSelfAdjoint.mul_self_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-mul-self-nonneg.md) | 231 | `result-track:148f89d63fb37257604070afc6b0349441ce6dd89e0e94b7597ca7a4ba83b6bb` |
| 19 | `theorem` | [IsStarProjection.nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isstarprojection-nonneg.md) | 236 | `result-track:18daa445c3c2b384437b8bd2a24b863db452a1fd11e840ee22f0c16241a35c64` |
| 20 | `theorem` | [star_left_conjugate_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-left-conjugate-nonneg.md) | 240 | `result-track:51ed24a696c1d48d5899d46b6618dcf84fdc51de2c936e2051b4ff828238ec56` |
| 21 | `theorem` | [star_right_conjugate_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-right-conjugate-nonneg.md) | 253 | `result-track:1ce861810dc3f21d6ca0cc2f274040ad6b94d664c1bc9b32029abf7dbaab3a1f` |
| 22 | `theorem` | [IsSelfAdjoint.conjugate_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-conjugate-nonneg.md) | 257 | `result-track:547ac5f87065e53f59342852c962abd68ba770f0dd20d97e0f6624fb451ce65d` |
| 23 | `theorem` | [conjugate_nonneg_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/conjugate-nonneg-of-nonneg.md) | 261 | `result-track:dd0ae693754c8bed508ee8da63ffcdc0f74bb6ec17892a5c23931ffb5df4efa1` |
| 24 | `theorem` | [star_left_conjugate_le_conjugate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-left-conjugate-le-conjugate.md) | 265 | `result-track:cbb373ca7ea7c58162462f4fa3e2ee1f9ca9bcc651356457963e9c57f6bcf3fe` |
| 25 | `theorem` | [star_right_conjugate_le_conjugate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-right-conjugate-le-conjugate.md) | 272 | `result-track:757c85c7bc7ddf93c45c153f281cee35d20822aedc28f37efcb881b3ff830ca9` |
| 26 | `theorem` | [IsSelfAdjoint.conjugate_le_conjugate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-conjugate-le-conjugate.md) | 276 | `result-track:6516feaf84b872244015245b9fd705c80254542a80f9f83cc1b8f1ff30a12b58` |
| 27 | `theorem` | [conjugate_le_conjugate_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/conjugate-le-conjugate-of-nonneg.md) | 280 | `result-track:a4cedd362e498320736b4710533b5a6281cf932a73062c61d1aefc8a4b4f7d40` |
| 28 | `lemma` | [star_le_star_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-le-star-iff.md) | 285 | `result-track:559dc9789243a606f88583cbac9896e7210e356cd5da98771edc850de15f38f6` |
| 29 | `lemma` | [star_lt_star_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-lt-star-iff.md) | 297 | `result-track:264f977399cdce7e8f7d459f190f95b8e0e0e316cf1c72b9e6038a1b6901eaf8` |
| 30 | `lemma` | [star_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-le-iff.md) | 302 | `result-track:79fa54a91b86dae30626874a45e6bc2eaa1e6184cac8c90ccce2476f04d8b132` |
| 31 | `lemma` | [star_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-lt-iff.md) | 304 | `result-track:36500db3ff9341f66188cb9d5a0949a26a9faa854a2d706b59e3a455cf1e0d14` |
| 32 | `lemma` | [star_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-nonneg-iff.md) | 307 | `result-track:74d6cb76184fd9532b8c0138d9d3819af1f6f39fcff9dfffcdbb61168c8f1292` |
| 33 | `lemma` | [star_nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-nonpos-iff.md) | 311 | `result-track:50ef47284d2dd41ee106e6e2f96d668592ac1609c98da0c5130ab2f083d192cd` |
| 34 | `lemma` | [star_pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-pos-iff.md) | 315 | `result-track:9a7734e8f6b04db9c6dc9b5241803476c56b39c0ba3581ef76a6933bd5afb0b2` |
| 35 | `lemma` | [star_neg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-neg-iff.md) | 319 | `result-track:1173d02fa2761b2f5c440fce9c5d851d6ff3cd6f223a72977c0d76fb630df358` |
| 36 | `theorem` | [star_left_conjugate_lt_conjugate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-left-conjugate-lt-conjugate.md) | 322 | `result-track:0b8e48b0a69fbe236f96c6095d7ef18c82a9c5d1a61760c7e30f9d926925a506` |
| 37 | `theorem` | [star_right_conjugate_lt_conjugate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-right-conjugate-lt-conjugate.md) | 327 | `result-track:1ca0775065069c72213ab22f360723545c5e73019b6d6c8c92818a8466aea0ec` |
| 38 | `theorem` | [star_left_conjugate_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-left-conjugate-pos.md) | 331 | `result-track:7cf9f47fc04d37a439bc2e09e5459d5f0cae6368ef8519a450b0bf5256926281` |
| 39 | `theorem` | [star_right_conjugate_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-right-conjugate-pos.md) | 335 | `result-track:649b3f19fa1a7a4f30c878e16e20552b7997f36380167c27d70c48564c92c7b8` |
| 40 | `theorem` | [star_mul_self_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-mul-self-pos.md) | 339 | `result-track:2aa157ac8a8aea1eea9d858f6c2d7220dff514716a11d2688465736a9af31af8` |
| 41 | `theorem` | [mul_star_self_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/mul-star-self-pos.md) | 343 | `result-track:c08e5dcc8f3c20c1e747e5a4fd680d95498ff94be08375146534f116171ffd12` |
| 42 | `lemma` | [IsSelfAdjoint.iff_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-iff-of-le.md) | 352 | `result-track:c7755e0326c5f8201746f8996ebc0451ac90a7e38c996d2135a5e1c59310b514` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 364 | `declaration-track:6438479a794b8f5bfc11c3e2f00b16d71920e9672b4dc4aca7ad02001fda5d80` |
| 44 | `lemma` | [one_le_star_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/one-le-star-iff.md) | 368 | `result-track:6f65f5dbea2fe9c644e8ddf0f1f4370ff55b81c32910b312f0e90acc8ba89150` |
| 45 | `lemma` | [star_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-le-one-iff.md) | 372 | `result-track:9e979845306546c3cc74f5fc112a17f7a8b9f738699ef72834b59815ef648741` |
| 46 | `lemma` | [one_lt_star_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/one-lt-star-iff.md) | 376 | `result-track:d9281b33f03c20dc11221d9a3e12529f5c3e56ffa0e3b9b9177d080218075d05` |
| 47 | `lemma` | [star_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/star-lt-one-iff.md) | 380 | `result-track:25d5d688a2ad64178e5ee7464c39719b8b31025428c9ea045c233f0a25deebf6` |
| 48 | `theorem` | [IsSelfAdjoint.sq_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-sq-nonneg.md) | 384 | `result-track:53c2a0186ad3fa435321780696fd6adca008fd7785b330914c9d4392cfe1d3bd` |
| 49 | `lemma` | [IsUnit.star_right_conjugate_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isunit-star-right-conjugate-nonneg-iff.md) | 387 | `result-track:4c31fc26dc06172ee0c1c7dc5a242cb29262186c6a3bf911b06d7f5a887e40a1` |
| 50 | `lemma` | [IsUnit.star_left_conjugate_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isunit-star-left-conjugate-nonneg-iff.md) | 394 | `result-track:93ea869da556565970a8ff9948bb21c51b5e87e18e9fb14ab9799166874bd649` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 402 | `declaration-track:26b8afcb163159f970345c3100c710bef0e2c3a6c11ef3eed1b951e6a0d4f209` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 420 | `declaration-track:4f8e470b7c4ce004e9801f475452710a1470e677c33129bf6b07dadd00a4debf` |
| 53 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 434 | `declaration-track:70bfff5ae52da52d880c8cf006f2c2c831dd092d5ffcdbbbc34e34ccf5e681af` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 442 | `declaration-track:b956568360e056c07c4a3aa09a84a669bd3b6be587bc16f6d678717f6a0b66e1` |
| 55 | `lemma` | [NonUnitalStarRingHom.map_le_map_of_map_star](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/nonunitalstarringhom-map-le-map-of-map-star.md) | 459 | `result-track:4f3805ee347cc63c621e53d482a523ec6f89ae87718308e46dde2f71012c1230` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 468 | `declaration-track:bf7808a245bb2381934daa352a0c896f8bcfbfd294809144f11b970fe7273fea` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 472 | `declaration-track:65d264a7fcf5a321a2512a583c6e60f6edbfc24e1ecf293bea3d6683bcc4bf1c` |
| 58 | `lemma` | [IsSelfAdjoint.map'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/isselfadjoint-map.md) | 487 | `result-track:ce818e2a1b2f623e822d4d7dc82d5b75dd33f06b2a78722125a8a44ce037bbb8` |
| 59 | `instance` | [Nat.instStarOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/nat-inststarorderedring.md) | 501 | `declaration-track:b5abee32c77cbf3791c6b19914d5a23e1e1dd3d8874966df9fbf14fe6e8dde11` |
| 60 | `theorem` | [one_sub_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/one-sub-nonneg.md) | 514 | `result-track:e0367341d113cd4efbf2e50300e4db1b3cada29ee22e447b6010e3af47534677` |
| 61 | `theorem` | [le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/le-one.md) | 516 | `result-track:b410ecda38e8f9865b92a53d0c547c4a60e80179bde12121e7f2d64c7a36f732` |
| 62 | `theorem` | [mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/mem-icc.md) | 519 | `result-track:fcd18a5f21a3f11bf1cf6a5a65944bd5d4e554ad5312016bd3ff63df2075bbc2` |
| 63 | `theorem` | [le_of_mul_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/le-of-mul-eq-left.md) | 528 | `result-track:edd3eccc8f90f30d8786e25088234641055a4ccfa740e76872be57cbc3908e36` |
| 64 | `theorem` | [le_of_mul_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/le-of-mul-eq-right.md) | 532 | `result-track:e495374e8f331a37b287473ec51a67f91f9030daffc2003b51bac71ca8045308` |
| 65 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 535 | `declaration-track:6a903cda74e30aa6f1011f4b5ee31b5ab48b1e6c3c151488f88360431068e2e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e8f59f3c9e8011b894d684ae65ed6ad87bb3313fc1b09e131a1fa980b8e0626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
