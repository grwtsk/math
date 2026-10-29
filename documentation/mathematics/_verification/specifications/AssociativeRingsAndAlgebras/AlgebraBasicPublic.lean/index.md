# Verification target: Algebra Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.InjSurj` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [_root_.PUnit.algebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-punit-algebra.md) | 43 | `declaration-track:8bb96e5d8b34647ee82ab8430df0ef340556a6c906b655672afde56c8be034d8` |
| 2 | `theorem` | [algebraMap_pUnit](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-punit.md) | 54 | `result-track:a5e8bb3d149424aee9eafcfee5e15fb9f8bbe965eb4f369f8f8d55f5a0b21a71` |
| 3 | `instance` | [_root_.ULift.algebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ulift-algebra.md) | 61 | `declaration-track:57f26e18509c03cd5dee799669c0797b69e51dac7d468ebacbbe1e8937f4d26f` |
| 4 | `theorem` | [_root_.ULift.algebraMap_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ulift-algebramap-eq.md) | 69 | `result-track:b3f55d905a098d735c652614739a8d29ec43dab0f4a84e2ae6e3e7301b2c5494` |
| 5 | `theorem` | [_root_.ULift.down_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ulift-down-algebramap.md) | 74 | `result-track:677e8a615dc83b64f93ed9be904ffb2107c1102904314311943b6fc6b492298e` |
| 6 | `def` | [_root_.ULift.algebra'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ulift-algebra-source-edition-2.md) | 82 | `declaration-track:85ed798a1071f6ea05d830424c62f56db8a57be53a9b92747c873551940a885a` |
| 7 | `lemma` | [_root_.ULift.algebraMap_apply'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ulift-algebramap-apply.md) | 91 | `result-track:41250dd5bedd4c9d10b7f4a900fb540b3009b75d3a788e4a3ab552b1f6e2a155` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-9.md) | 101 | `declaration-track:99e1970b40fd3a4b13541b7ae71273a7c0450fa88f730743cbca6322568d0508` |
| 9 | `theorem` | [algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-ofsubsemiring.md) | 106 | `result-track:af4c1cdb670dee01992ded9c9e2fd347552d454108ce5b438b2ebb7dfc083680` |
| 10 | `theorem` | [coe_algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/coe-algebramap-ofsubsemiring.md) | 110 | `result-track:2f35964e30fcb3bc3eff8e1997c2ba6a305448bad8e54ae7b46b37d5f2737d08` |
| 11 | `theorem` | [algebraMap_ofSubsemiring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-ofsubsemiring-apply.md) | 113 | `result-track:ebb495d42155ac92ffa3ca75fd8189bdf81c2b2714955ab10241fb28b582f575` |
| 12 | `theorem` | [algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-ofsubring.md) | 116 | `result-track:422188e766e33e8096f658660980d7adb9b2677840c869efa342cac0c1821033` |
| 13 | `def` | [algebraMapSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramapsubmonoid.md) | 124 | `declaration-track:22dffcfc7cd2811347a69d195ba0b9c56d9e811979e1bf38fe479e647ab67792` |
| 14 | `theorem` | [mem_algebraMapSubmonoid_of_mem](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/mem-algebramapsubmonoid-of-mem.md) | 129 | `result-track:b288106b6d4668b53441e5963bd66f5fe543fa559f86f5491780f34da8049741` |
| 15 | `lemma` | [algebraMapSubmonoid_self](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramapsubmonoid-self.md) | 134 | `result-track:1a4e10056b3c4fc50ce0b5844d28615cbd9e14f11163de89a7df5ab011a0e0d6` |
| 16 | `lemma` | [algebraMapSubmonoid_powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramapsubmonoid-powers.md) | 138 | `result-track:2b3428c3557432a1676eabdae375122bc4e3d96717b225adc943a49f7666e610` |
| 17 | `lemma` | [algebraMapSubmonoid_isUnit_le](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramapsubmonoid-isunit-le.md) | 142 | `result-track:8eb303dfe4d3d5d5d89ff47a47121dddaf0f5c7a49a5935efcd9ff3e6c30c62a` |
| 18 | `theorem` | [mul_sub_algebraMap_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/mul-sub-algebramap-commutes.md) | 153 | `result-track:683eefd68836c544d27dc0614774e09254e692c24d5cd6618f23a6ac22e4b5d3` |
| 19 | `theorem` | [mul_sub_algebraMap_pow_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/mul-sub-algebramap-pow-commutes.md) | 156 | `result-track:b8bd8988fd0bab8a7ede02c97e5fde8632286eb89e3ab9139216d15094eee715` |
| 20 | `abbrev` | [semiringToRing](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/semiringtoring.md) | 169 | `declaration-track:9c339114d40a0c3997cf002994a3c44264f77e731cdfa7b889c6c043bbcadc27` |
| 21 | `abbrev` | [_root_.RingHom.commSemiringToCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-ringhom-commsemiringtocommring.md) | 177 | `declaration-track:96fc42e8742c82bad8aa9fb3ca43888ececdd5561c379b58510b790238cac084` |
| 22 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance.md) | 183 | `declaration-track:203ec257f0c8b80e54e595119ff882483f2d0758a678853efdbda925d008682d` |
| 23 | `instance` | [End.instAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/end-instalgebra.md) | 205 | `declaration-track:2d9fe3c0f5d5577317b90615ec70c9a03cf1fa5ed8c2d34bc330773d11a1c4a8` |
| 24 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/example-source-edition-2.md) | 209 | `declaration-track:a2504ee65785dfb5eddfcb0d1e6622d5c847e8619e5c516db3a1a02b9ffdccdc` |
| 25 | `theorem` | [algebraMap_end_eq_smul_id](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-end-eq-smul-id.md) | 211 | `result-track:1bac09d7ab98e980b503031fa60a9aae2ecc0b8c58444d37c996639bec4af68a` |
| 26 | `theorem` | [algebraMap_end_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-end-apply.md) | 215 | `result-track:a00581f7b573131102284f93730ac9d7037d7689db353a4679693a141e66145a` |
| 27 | `theorem` | [ker_algebraMap_end](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/ker-algebramap-end.md) | 219 | `result-track:75ddb56b1dd483fe356f34e4962ef55390788cc184e8fa8887f5e05d3bdbbcb3` |
| 28 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff-source-edition-2.md) | 227 | `result-track:d0d68c7293eec08e58715fd9d298d2670c537e462cefb08dae2a351553cb326a` |
| 29 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff.md) | 236 | `result-track:342c3ddc1f6da4b9aaa64b86ee1beaf11b3b618c777afed6f848417ebb496ec0` |
| 30 | `theorem` | [map_algebraMap_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/map-algebramap-mul.md) | 256 | `result-track:8a5fbeca832b1384e62a4bb801f060cadff1ac3ed23a0fe6efc7e605c0c0f477` |
| 31 | `theorem` | [map_mul_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/map-mul-algebramap.md) | 260 | `result-track:23c5d19c2748de43f37646e138250a99a42c87f2cf1700fc31a8a967ef94f1df` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-11.md) | 274 | `declaration-track:b83a44c9d7e95be3b7b09a0ae8c84a27bdb7ec2c16483465cf86758a7ac773fa` |
| 33 | `instance` | [nat_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/nat-algebra-subsingleton.md) | 279 | `declaration-track:4b6621f4d3a43b9ce1bc05996335d118e064fbd219007c0b08583fe28ea95b22` |
| 34 | `lemma` | [algebraMap_comp_natCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-comp-natcast.md) | 283 | `result-track:42bff23e1c6075bb359ddf3e0f3c4d88f6e49037fe54fd1aa0547ea2d1907287` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-5.md) | 297 | `declaration-track:487337f225219c16f3987cf1888bcc6eb5526fcccba2ec148bda21165062d1db` |
| 36 | `theorem` | [algebraMap_int_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-int-eq.md) | 304 | `result-track:955c3e1758e671eea58d18d50865fd1f3dbb4deb8b897ba86b37d0859161aee7` |
| 37 | `instance` | [int_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/int-algebra-subsingleton.md) | 309 | `declaration-track:9eaddb01d830a62d28223614fbef4025be5d083e4e5fe8446677d142d3f04883` |
| 38 | `lemma` | [algebraMap_comp_intCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-comp-intcast.md) | 313 | `result-track:e4b78042499a83c6c1cc4e25b73d88296b705494adb70a378b25b68b4f15cc9b` |
| 39 | `theorem` | [_root_.NeZero.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/root-nezero-of-faithfulsmul.md) | 321 | `result-track:4aeeb30864db76fedbe48f2ab79891baf0e112d783cc6f1719e9adede6ecc3c8` |
| 40 | `lemma` | [faithfulSMul_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/faithfulsmul-iff-algebramap-injective.md) | 329 | `result-track:ddf5f9b158372b76718ad142e6a47592faf0a2d6b17a4e92309756884a6f6834` |
| 41 | `lemma` | [algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-injective.md) | 336 | `result-track:20194e53b03dda5481d111def801b1b782c5abd1e936496d2b37b774d613c128` |
| 42 | `lemma` | [algebraMap_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-eq-zero-iff.md) | 340 | `result-track:b5b2723ab26556fcdc77e51dc0887015cb2653c0864df9a300ba0b520a2059f2` |
| 43 | `lemma` | [algebraMap_eq_one_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-eq-one-iff.md) | 344 | `result-track:173835256a5326463e11342101d6af1fdaac919677272ed333b12bcc5a313fb0` |
| 44 | `def` | [mulSemiringActionOfSmulDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/mulsemiringactionofsmuldistribclass.md) | 352 | `declaration-track:1147efb637c16b50cce963cb37d3b19fb7601a8d03ca8720b3a97baed0214d3d` |
| 45 | `theorem` | [coe_inj](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/coe-inj.md) | 378 | `result-track:dd2a642c19a9563046d4969b766b836f16384ccbee6ebae3a91946325cc3cc54` |
| 46 | `theorem` | [coe_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/coe-eq-zero-iff.md) | 382 | `result-track:be0fcc2be35ecd03bf92c0ad7734fa6c7fc6f6eb8472563774a3a897c334d006` |
| 47 | `lemma` | [Algebra.charZero_of_charZero](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebra-charzero-of-charzero.md) | 387 | `result-track:8b379a78aeb5611b6c6cb0e44e24de7b97781bebab81d6990b32978359416750` |
| 48 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-6.md) | 391 | `declaration-track:5982bfdd3060cc37f0c3955c111145b00a0a3c64cc223c72486bb80e39a46fdc` |
| 49 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-10.md) | 394 | `declaration-track:ae51870879a41f88894d21005ab5472606769db66652485dde42fce35aa5f0c7` |
| 50 | `theorem` | [algebra_compatible_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebra-compatible-smul.md) | 405 | `result-track:6ec9c09c34b2dcf50327dd58c2b41c3c1fb5bca0e539ccd139fda89139c48bcd` |
| 51 | `theorem` | [algebraMap_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/algebramap-smul.md) | 409 | `result-track:a8a0c4b8765c7a6a7f22317d6871e571f7ab990cd529c61a8ce7f2ffdeceba98` |
| 52 | `lemma` | [isSMulRegular_algebraMap_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/issmulregular-algebramap-iff.md) | 412 | `result-track:fdcdef08bc38b7a95b675f1f1648bc68157a3231a4ad59c0760e73bc087d6c6a` |
| 53 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-3.md) | 420 | `declaration-track:2fc31c433e4c6862e098937c6fa493b551fad328a7aa202c2771ee804e5f1ad2` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-7.md) | 427 | `declaration-track:5bc6ca212cbbf9ec3da284ea0eb2a574167490be8d3408210ef2772eef0295e2` |
| 55 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-2.md) | 431 | `declaration-track:295424ab3a4dfb5763ab67ee4f8310c0ab20238f324133d44129d84674f49aec` |
| 56 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-4.md) | 436 | `declaration-track:425be4f960e3d91f6acea2fa7b4b55c9fbe6222227a26b9cfa189c4d4b672e6e` |
| 57 | `theorem` | [smul_algebra_smul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/smul-algebra-smul-comm.md) | 442 | `result-track:0b93076464481e069264cd8e10fd28ec2711d6c280507caf6e71722a1f1e4180` |
| 58 | `lemma` | [NoZeroDivisors.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/nozerodivisors-of-faithfulsmul.md) | 450 | `result-track:299f901bd2cc5d7bd7eea4ef1a77210a31fee8a4941f3bfe964266114fff697a` |
| 59 | `lemma` | [IsCancelMulZero.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/iscancelmulzero-of-faithfulsmul.md) | 453 | `result-track:44ca1d6da65e44c73eec5bc01b2e60c5055096346c2cbc7b553d9b2f7cb0295a` |
| 60 | `lemma` | [IsDomain.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/isdomain-of-faithfulsmul.md) | 456 | `result-track:0ef2f5bf4bf13909bbc54ae197603f53ea10fb342800567cea0b894ac2a87f16` |
| 61 | `lemma` | [Module.IsTorsionFree.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/module-istorsionfree-of-faithfulsmul.md) | 459 | `result-track:971c8fd666335c514a45bd741d402ee38088436e478b6050791faa04fba55971` |
| 62 | `lemma` | [Module.IsTorsionFree.trans_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/module-istorsionfree-trans-faithfulsmul.md) | 464 | `result-track:d10a105019024563cf909612bc605b372ce004373acf7370e18e0f54959108be` |
| 63 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-12.md) | 469 | `declaration-track:c8ea8b5be0437b2621435bdc6e44fafdcec8d7a5fb76dc2b7fad68fb3166dc10` |
| 64 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/instance-source-edition-8.md) | 477 | `declaration-track:796337f3e66e6c54bdd11917fa28242181ed9c5e9a55faa813a0ab439f3c2925` |
| 65 | `lemma` | [isTorsionFree_iff_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/istorsionfree-iff-faithfulsmul.md) | 483 | `result-track:d00c2a747ca15bf88d23fbbe4f52c74a211810e25b1e05c5db923556d4ab432d` |
| 66 | `lemma` | [isTorsionFree_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/istorsionfree-iff-algebramap-injective.md) | 486 | `result-track:157e7c6dd18bb1afc33095425db91f3ec9887ce6fce6b80178972399fd234374` |
| 67 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/example.md) | 491 | `declaration-track:65f4a07797eebfd4b5a53a9a131d1f808ee7f7def9d6727bee79f91e34f7dd19` |
| 68 | `abbrev` | [Invertible.algebraMapOfInvertibleAlgebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/invertible-algebramapofinvertiblealgebramap.md) | 502 | `declaration-track:4801c9e8b106e93fc8ffc6e3dbb11bcf103bafde9064120c867d5266f4c16d31` |
| 69 | `lemma` | [IsUnit.algebraMap_of_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/isunit-algebramap-of-algebramap.md) | 511 | `result-track:f34027f0b891750ac2c327b29b3fe0b946013716a638234240893ea5454daabd` |
| 70 | `theorem` | [injective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/injective-algebramap-of-linearmap.md) | 525 | `result-track:94e556885be0ee5c71b90df0670b79c2ec467838992046c58a07c6d47b71e8a3` |
| 71 | `theorem` | [surjective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/surjective-algebramap-of-linearmap.md) | 532 | `result-track:2e2f69b5feaa8ff676c9e3050d84139980a84a594ea276a057f56362ce0981e9` |
| 72 | `theorem` | [bijective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/bijective-algebramap-of-linearmap.md) | 549 | `result-track:666bec405105df7cb620af7c56efbba54867cd74ca07873b60d064016d6a5940` |
| 73 | `theorem` | [bijective_algebraMap_of_linearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/bijective-algebramap-of-linearequiv.md) | 555 | `result-track:393facd546548b7b0753dea9bc1ec67383938a5687fc6c27ff444f981f4117d3` |
| 74 | `def` | [LinearMap.extendScalarsOfSurjectiveEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearmap-extendscalarsofsurjectiveequiv.md) | 568 | `declaration-track:dbc8e1e127540b596d645a73e03c302291862fc7aed99275fdea5042b059c89e` |
| 75 | `abbrev` | [LinearMap.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearmap-extendscalarsofsurjective.md) | 576 | `declaration-track:3b0537733f6540326670523ea5a6c17808d15bba51ba59e9e04d34402f0c4c30` |
| 76 | `def` | [LinearEquiv.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearequiv-extendscalarsofsurjective.md) | 581 | `declaration-track:50bf6cd23a6942d3b2627999713258e353acd7be9f936f0b91d52d26ac62d012` |
| 77 | `lemma` | [LinearMap.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearmap-extendscalarsofsurjective-apply.md) | 589 | `result-track:ffe3e1f4fd78d112126542a4025bae8c9ae9c045ebc32df2c50962a2b7e12168` |
| 78 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearequiv-extendscalarsofsurjective-apply.md) | 593 | `result-track:cc9b8c77864819c86740027eff8d31e6a1ed521e4198d885866fef6600aef7dd` |
| 79 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_symm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/linearequiv-extendscalarsofsurjective-symm.md) | 597 | `result-track:9cd614320e793ecedac5df257c34c94eb2f8fc98abcc7b74fe05b6a49526b6a1` |
| 80 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/coe-prod.md) | 609 | `result-track:ca3673d2365ce7ebacafe3da9b1e2606a1e37b6d3305c197893e43f1027d8a8e` |
| 81 | `theorem` | [coe_sum](../../../../AssociativeRingsAndAlgebras/AlgebraBasicPublic.lean/declarations/coe-sum.md) | 613 | `result-track:032bf8bc7f40e0e0f6c4cdff3e64072c8d62d2e46dc986ef11dd46ca2d6918db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c83a5fd30eae41b21989954f0a4f09abf8444b031d0936783f022176880861c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
