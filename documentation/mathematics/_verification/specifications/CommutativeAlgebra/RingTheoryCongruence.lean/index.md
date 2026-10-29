# Verification target: Ring Theory Congruence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93cfcd5b2a8d84a884eb658b29c73a5525c93967",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant8de7b2c62d059c6c727641e457a51a350e30bb88d02f787524b34b987f77fe7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93cfcd5b2a8d84a884eb658b29c73a5525c93967`.

Source path: `GRWTSK/Algebra/Congruence/Variant8de7b2c62d059c6c727641e457a51a350e30bb88d02f787524b34b987f77fe7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant8de7b2c62d059c6c727641e457a51a350e30bb88d02f787524b34b987f77fe7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingCon](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/ringcon.md) | 41 | `declaration-track:9c59cc560d7d93d890c6fa4f02093f8eba32dfaccb6b06ad6104c7934414d84a` |
| 2 | `inductive` | [RingConGen.Rel](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/ringcongen-rel.md) | 52 | `declaration-track:dddfe0f2e4abbed159ad4c95556a559d804ece1d042c12b619bd2f29f29438f3` |
| 3 | `def` | [ringConGen](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/ringcongen.md) | 65 | `declaration-track:d30ab940c4e7e6e85bfe134b7535539af7383e92f15ef30c342a4dbe79d77765` |
| 4 | `def` | [toAddCon](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/toaddcon.md) | 80 | `declaration-track:a4b98fc489b6ddbb5d8844f24552db203c2620d5733c3979cb71f007b9c5c0ff` |
| 5 | `def` | [toCon](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/tocon.md) | 85 | `declaration-track:28a7dfb8d6f63bf2d43f554426996f5fa31c2365116552e397581e70577f0b95` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-9.md) | 91 | `declaration-track:5cf95bbe4ee960c0959270e88be0d640056cde1f7f6927aef9f213e29847c6b9` |
| 7 | `theorem` | [rel_eq_coe](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/rel-eq-coe.md) | 100 | `result-track:c4f729daecf901cbbbf6f7a04f563d5b0b5a038cd34957b69d32b7c12040655d` |
| 8 | `theorem` | [refl](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/refl.md) | 104 | `result-track:bc07b82b15d1810bb5ecf40bcb27acb4469c71622f839d007674b36803668fce` |
| 9 | `theorem` | [symm](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/symm.md) | 108 | `result-track:c6052b85d2b205da8c5eb4e4d9a7aea5ef6568086c9f4ff027c6de812348245b` |
| 10 | `theorem` | [trans](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/trans.md) | 112 | `result-track:a661e55fe54f74af82b644f8befea51aabfd86f87567772ee8417dab4eaa359d` |
| 11 | `theorem` | [add](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/add.md) | 116 | `result-track:6be579891518851b32ab6179ecf6f19ea510a0e48e8cb785b99a7002f35e1920` |
| 12 | `theorem` | [mul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/mul.md) | 120 | `result-track:432bf04df4c4173acc4503e646f2b7b9e038a06f7180554c6af1dcb5df26827c` |
| 13 | `theorem` | [rel_mk](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/rel-mk.md) | 125 | `result-track:f2d305b3df804619cd2bb08c4f7b2d6bcdf0b141153c04772e8801cfe1a7aa82` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-22.md) | 129 | `declaration-track:a823a7ea991f1c7d4b48c01cd43ff6a7bf40c6d166b8157010d65f12509e135a` |
| 15 | `def` | [Quotient](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/quotient.md) | 141 | `declaration-track:88332f0bfa2616f36f1332ebfd0c2b1e56518752efbf62ba708a7404f6941300` |
| 16 | `def` | [toQuotient](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/toquotient.md) | 148 | `declaration-track:fc418fec570ec89a59431e0c48bf8cccb99e11d66a5af408fccb906ef28485d3` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-15.md) | 156 | `declaration-track:8f0e8efbb401d9c7da2ad1d7594869dae363d528149f8d74d57595cbcf34233b` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-10.md) | 161 | `declaration-track:61548dc6d65b54b9f0e8474cbc22f1f7f413b4bd86c0f484e96a7077b833414a` |
| 19 | `theorem` | [quot_mk_eq_coe](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/quot-mk-eq-coe.md) | 165 | `result-track:bd6f23075239b99def3b2968d30ed3e05523fde386223901e64103d543912f9d` |
| 20 | `theorem` | [eq](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/eq.md) | 172 | `result-track:788e39bed110f6fdfeaeefe237335bc21e448073b754ce8585241c86d0e81259` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-17.md) | 190 | `declaration-track:9574917b0d2278b738593bfe1690345ef2b1661ba7fa7fd04ef9a622f8274098` |
| 22 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-add.md) | 193 | `result-track:c47755877f04bb4fdf61e27125c17bb7ba4b1ed212d669ae0505416a61d50fa5` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-3.md) | 197 | `declaration-track:15b75b3d8e78c820c45fd25b2fc7e2d6946e7d97461013b464cfef81a25a08e5` |
| 24 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-mul.md) | 200 | `result-track:d26b0d8f40b39d0f6e1d3c826f064b977c8c1a9fff6d04c36c48dc215d9c6ac2` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-2.md) | 210 | `declaration-track:156c899a9e044eb54a598a3ed8adefe855bfe8073527e527f36b0e8482df657d` |
| 26 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-zero.md) | 213 | `result-track:3a6429536e64efa6cb9abea428367a4c0ffa979b3587c360ebea557f13270da5` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-7.md) | 223 | `declaration-track:3e53257f3b1d56a85ad9ac527a85eee067499c4cb51d8a7f85c07291ca45f88e` |
| 28 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-one.md) | 226 | `result-track:a3e287b8a5f68653f6008b3c8c2b22877076e875fb588927c8db8d6d062238a4` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-26.md) | 236 | `declaration-track:f0f5cc8421db7e5e885dce598dbb94603dd1f6179a3791a540988cd402447500` |
| 30 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-smul.md) | 239 | `result-track:9dd4ecdd2a65fc8fd5b432804a3a7954b569c1c06c62205e7fe47febb5204d85` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-27.md) | 249 | `declaration-track:f87447324602496865addc977423931761887253b2b3d23f63f4f4c8f7de177e` |
| 32 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-neg.md) | 252 | `result-track:500b9de74b2336222f91042f7d719cc5c797af038cae7a6734d020d5e0443355` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-20.md) | 256 | `declaration-track:a412f0fb3fb70116f10259ec15a9fb2816494d156f31d5eadee4b2e561115e9f` |
| 34 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-sub.md) | 259 | `result-track:4982291a478cbcdce54e7a3aade68176ae3aa439093f22cf9f8e58c472984c9a` |
| 35 | `instance` | [hasZsmul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/haszsmul.md) | 263 | `declaration-track:6d574c13b8ff816171bea07773b6f72ff243300195fe0bc4c0ba5c25fcb7f4bb` |
| 36 | `theorem` | [coe_zsmul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-zsmul.md) | 267 | `result-track:11f96e28983d897d6b189e738fb33f9f5f7ecc15d9460da8ac1f9f995255000b` |
| 37 | `instance` | [hasNsmul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/hasnsmul.md) | 277 | `declaration-track:25e4fefea7c4a6008b6e628804d1ba62b52e7d58a632be24d3dc31a62f02a0c0` |
| 38 | `theorem` | [coe_nsmul](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-nsmul.md) | 281 | `result-track:afc778212e056adba1137d94054826e1183f84a9691e498cf2fd92e2ea3b4c00` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-5.md) | 291 | `declaration-track:3bce625d55339cb1c8ede54ec2b7d20e9ab5990c01ae4410aed751c38c4527d2` |
| 40 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-pow.md) | 294 | `result-track:b035c41aa2b7ca81788ce616e0cdc069a1152002226937539738f14528fa6611` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-4.md) | 304 | `declaration-track:2b1ed4be4bfadf9b48e3a215deb9fb72fa48a7daa8739f17de4631f503b6c5b6` |
| 42 | `theorem` | [coe_nat_cast](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-nat-cast.md) | 308 | `result-track:583b4b09de8f996b2d5258991016dcc6a9d72682d71d3758414208d60ce35747` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-23.md) | 318 | `declaration-track:bb50709ae71576dc0a03ff680778362fd16b5c1aa19a32f63c2040f1d05d5f87` |
| 44 | `theorem` | [coe_int_cast](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/coe-int-cast.md) | 322 | `result-track:bb17e01240d4e531c608223fb36463a03ba69b4981f36f0416a94107bcd01e29` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance.md) | 328 | `declaration-track:054aa84c3e220e4a4522210e782306b8aa7d030be1a160b8eaaa3e836b34b4b5` |
| 46 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-14.md) | 341 | `declaration-track:8c81ed765c1957da9c7d90df4d53b00770b12280a51625ef490ad6b15c8effaa` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-12.md) | 345 | `declaration-track:7d568ef9144557d62ad4473ae613763dd7cc16db0807bb4c7b3c5cdbb55c78c1` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-18.md) | 349 | `declaration-track:972d089a9d7be05a3ff42107ba04d7a58059a65322b67f2207a9068f35f55668` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-6.md) | 353 | `declaration-track:3df5dbe469407ac984c9c62d11d32114590b7b160ea89d8508acf122e7b2d2ae` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-8.md) | 357 | `declaration-track:5263d53174bf5528e436ddc8c2a4d92a5aa40453251e126780d2309864bfccb3` |
| 51 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-19.md) | 361 | `declaration-track:9be514f2efc6791387908e68106cf1dde99734112c6d975d763c167c5aea227a` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-25.md) | 365 | `declaration-track:cd8397800812ae2b88e5eacdc70d7183c65670284523c1ca09f9ad2857441775` |
| 53 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-16.md) | 370 | `declaration-track:9133047429a929a7101f602120d045fe600ed37a32cde63c7eccacb6c5e62b0d` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-13.md) | 374 | `declaration-track:83d3b419a40a99eca49b6d8b83e5af5b450414dc857b0ac25ee33d2a1b256fe7` |
| 55 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-21.md) | 379 | `declaration-track:a76202eaa73372f914ed1c392f80e48c713ce16d9790dc63e76ce59b27f01865` |
| 56 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/isscalartower-right.md) | 384 | `declaration-track:4b4a0fd6031363052f174ae4ed2ae50b684a0264eaeb723f19addfa20ff181d5` |
| 57 | `instance` | [smulCommClass](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/smulcommclass-source-edition-2.md) | 389 | `declaration-track:a98034924dd8bee8a5fb1fcc276876427db2209c8df6ac5545060ef826a60cb0` |
| 58 | `instance` | [smulCommClass'](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/smulcommclass.md) | 394 | `declaration-track:833a3955dde46419d53089e20fe11c80a556aaa8b7cf8dd2258f820fd6e95235` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-24.md) | 400 | `declaration-track:be056173c66c82ea93a789f95383a9130d0723e469795795384cbd53b45a385e` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/instance-source-edition-11.md) | 407 | `declaration-track:75662f070017a529e2a23196b3e33750137c655f09f35720a72e1eacd7c4bad0` |
| 61 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheoryCongruence.lean/declarations/mk.md) | 416 | `declaration-track:37a23647791ddcfab9779361b86c9e2bf4cb15d3e869e690dfe3cc0efb33d7bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78e7d310ad8e16ec62753bf4f7c6b5962e8c40a2a3105fb1c1754a9fed40feae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Congruence/Variant8de7b2c62d059c6c727641e457a51a350e30bb88d02f787524b34b987f77fe7b.lean","GRWTSK/_verification/specifications/Algebra/Congruence/Variant8de7b2c62d059c6c727641e457a51a350e30bb88d02f787524b34b987f77fe7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
