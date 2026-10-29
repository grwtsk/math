# Verification target: Algebra Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c99fbf6d09c94f85f896912c5e32a225e8dbc640",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c99fbf6d09c94f85f896912c5e32a225e8dbc640`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.InjSurj` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebra-source-line-51-occurrence-2.md) | 51 | `declaration-track:fe8147296a289b9a73d8a4696c6033aaea24a242c48f46e296a1c50be574b706` |
| 2 | `theorem` | [algebraMap_pUnit](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-punit.md) | 62 | `result-track:26199b6657117dcf6bacc1b4fc91600ad4582c6e88d8eff5b623a355f8ee4fcb` |
| 3 | `instance` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebra.md) | 69 | `declaration-track:471d23181c5c300b6d1969206e1ca08fbab4ea816896ad8e42538bdf8dbab45a` |
| 4 | `theorem` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-eq.md) | 77 | `result-track:47209b28da2de05980bc2527579275a321e02b853d883bbe4f6e6fe44ff32fc5` |
| 5 | `theorem` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/down-algebramap.md) | 82 | `result-track:fac39e2933ae1a8e83980e36583d264fa4a0b2a38566116b31e368686d1e29c7` |
| 6 | `def` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebra-source-line-90-occurrence-2.md) | 90 | `declaration-track:b7aec5ab7f3a83cce4fe3aebc2fdce1233df64ba95ff046ac35a1c15641491fb` |
| 7 | `lemma` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-apply.md) | 99 | `result-track:11b1100748f27bc1a9ac75f2885b3f073b47f8e5f7327da580705f8db41b5526` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 109 | `declaration-track:3167edc3eae43b4b57fc058d6dc0d4d2234c2d9ddd372dfbedf87d8370e607b5` |
| 9 | `theorem` | [algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-ofsubsemiring.md) | 114 | `result-track:6548c1ba9f3701195117d0250804db1a20d4ff0677bb9ca176d7276d5b10dd0a` |
| 10 | `theorem` | [coe_algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/coe-algebramap-ofsubsemiring.md) | 118 | `result-track:984142be9656ec1557c45e5fbeca0a2990032c4bc4cc935fb28ea056fb927e53` |
| 11 | `theorem` | [algebraMap_ofSubsemiring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-ofsubsemiring-apply.md) | 121 | `result-track:bff3c35227d1cfe82bcfdb5120ae83f1c008ae670e6c84f18e6c5f6f3dc49999` |
| 12 | `theorem` | [algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-ofsubring.md) | 124 | `result-track:fe26c7a4cb724c350254f85e6c43a2f6bda409600dc96aa212b8c0259e49dd7c` |
| 13 | `def` | [algebraMapSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramapsubmonoid.md) | 132 | `declaration-track:fd4671382f45c3da0eb53286297e755c0733d0186339d7b51b85089909866b3a` |
| 14 | `theorem` | [mem_algebraMapSubmonoid_of_mem](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/mem-algebramapsubmonoid-of-mem.md) | 137 | `result-track:778bccec484fa7eb5b4659ee836cadf8f834beac58f593917757028f84ddaf38` |
| 15 | `lemma` | [algebraMapSubmonoid_self](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramapsubmonoid-self.md) | 142 | `result-track:0020227f3355821020f5db17cf602b83479c2df4df1e42195ac6e019ac96ae8b` |
| 16 | `lemma` | [algebraMapSubmonoid_powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramapsubmonoid-powers.md) | 146 | `result-track:2c587b18ea27d93158739647906e0a2e6d9e263ac7929daaddd602feda46d6b9` |
| 17 | `lemma` | [algebraMapSubmonoid_isUnit_le](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramapsubmonoid-isunit-le.md) | 150 | `result-track:9599ae6fde4b80c7958c4b63a09c150464c10fc62a6831bd4e086ab51a568561` |
| 18 | `theorem` | [mul_sub_algebraMap_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/mul-sub-algebramap-commutes.md) | 161 | `result-track:74e73f53804ddd836b5f1e4605ad4cf2591fcab94d140ac3ca9ba07fcd852304` |
| 19 | `theorem` | [mul_sub_algebraMap_pow_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/mul-sub-algebramap-pow-commutes.md) | 164 | `result-track:4eea4e782211c90b2b6c5763e7ea3c1560c4ca544a1f89650e857b1e0824890d` |
| 20 | `abbrev` | [semiringToRing](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/semiringtoring.md) | 177 | `declaration-track:e295db1136a8fa126547904f24f0540577c5cb90c0ea71a7fe57182346322887` |
| 21 | `abbrev` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/commsemiringtocommring.md) | 185 | `declaration-track:cc9844eaaaddf04aca7b6283cf8c9aaa9a9f7f68afcdf0c6db9bfeabd55c1777` |
| 22 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 191 | `declaration-track:c1e5011fa7fecc5d2f98c93faaf45dbdda28b9a28e1da9fb129284c804ba2f5c` |
| 23 | `instance` | [End.instAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/end-instalgebra.md) | 213 | `declaration-track:dad8a5b84bd8cfa78407740d55ebcb92f9417fd4eb936f070450b61fb9b9d5dd` |
| 24 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 217 | `declaration-track:8636109ad1b23388130adc171a0362bee20a9638e8e05e034d959f58ee082da1` |
| 25 | `theorem` | [algebraMap_end_eq_smul_id](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-end-eq-smul-id.md) | 219 | `result-track:35a637938abb84fc069eb28117016d8d385c7513c357bc42372369b98d965b52` |
| 26 | `theorem` | [algebraMap_end_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-end-apply.md) | 223 | `result-track:c1c7adcb55e08eac8bb24762d08ea963b5e4a5dad48ddfdc42d7c9cd7a333959` |
| 27 | `theorem` | [ker_algebraMap_end](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/ker-algebramap-end.md) | 227 | `result-track:52f9c42a7004760a53e75a9a51b2588da08a0e4fbf2580328ee1d9c894bcb342` |
| 28 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff-source-edition-2.md) | 235 | `result-track:9546fb13d146b2e1687de40906876780d7b9ebae2d7c0b5156c7c479cf8ce53d` |
| 29 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff.md) | 244 | `result-track:08aa450ade7c3859f00bf8c311755d0fee105304bbf27da20b2d93f2a6896ede` |
| 30 | `theorem` | [map_algebraMap_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/map-algebramap-mul.md) | 264 | `result-track:803ea7fa1b032abcbb79d70c38e5e97f20f610438be9cb02ef4962915c1b88a5` |
| 31 | `theorem` | [map_mul_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/map-mul-algebramap.md) | 268 | `result-track:3903a606cc99c3afb6ce3b43a58a483fa2e80b96f5db78a2f5c8f1de715c3476` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 282 | `declaration-track:31586d892afdb04d87d5fdb383066a0bcafe11639b2fb2c1c48138370f326ace` |
| 33 | `instance` | [nat_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/nat-algebra-subsingleton.md) | 287 | `declaration-track:8e7981d82483a4948e503539afc02879f18327b3e0a625fdcefbbee09ce3f48a` |
| 34 | `lemma` | [algebraMap_comp_natCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-comp-natcast.md) | 291 | `result-track:62064732d7b5d41fe980e5883d4cdc4109577c2d340471f57aaad1cf14cc846e` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 305 | `declaration-track:870e05e0073ed1ac8f83041589d1baaaa204108ed224bed2bf63df784dedb133` |
| 36 | `theorem` | [algebraMap_int_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-int-eq.md) | 312 | `result-track:0ab0ff23ad8f30e3c3bc9561626e8703b9dc524479e6cec4539ece1107dce102` |
| 37 | `instance` | [int_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/int-algebra-subsingleton.md) | 317 | `declaration-track:6d1ba7956cb699d66e7ddbf6fca08b154d14823db220d68521d7e1bf3f47f00a` |
| 38 | `lemma` | [algebraMap_comp_intCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-comp-intcast.md) | 321 | `result-track:499fa5b80282e243e7d8974235014264069a1375447287f2e7a8dce404ca422d` |
| 39 | `theorem` | [Algebra Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/of-faithfulsmul.md) | 329 | `result-track:14cb00aebc1f402bb2ad680e9392dba0c491035d6d8aaaa9beb25e7d40104ac3` |
| 40 | `lemma` | [faithfulSMul_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/faithfulsmul-iff-algebramap-injective.md) | 337 | `result-track:1faaa4329b2ff9f020ed368860f75e57d37a6dfa2b4e9679b101d79e370e9106` |
| 41 | `lemma` | [algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-injective.md) | 344 | `result-track:2a3fca911b08a0190fa0516b3034892b38d5fc0211ec7476dfb6ed96d70c7669` |
| 42 | `lemma` | [algebraMap_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-eq-zero-iff.md) | 348 | `result-track:6c0a55705a29cb5cd75a0a6a573677505c3ee3e366716185a71035898bf1b3dc` |
| 43 | `lemma` | [algebraMap_eq_one_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-eq-one-iff.md) | 352 | `result-track:f9ed953add20f14e4018a3668b14ec92e76ec6c03dd7d1fe078310fee434445e` |
| 44 | `def` | [mulSemiringActionOfSmulDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/mulsemiringactionofsmuldistribclass.md) | 360 | `declaration-track:1bead30bfe33977991bf243f555a3a855eb8db238472547c61a85d0e88ddbc94` |
| 45 | `theorem` | [coe_inj](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/coe-inj.md) | 386 | `result-track:c0faaff632f4043e160fb79f5416492e6c7baf860eaf98a05efab35c99da2347` |
| 46 | `theorem` | [coe_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/coe-eq-zero-iff.md) | 390 | `result-track:33eee54a7f0a13ecae25a26e9f03bd1b177cee8c3c045864676b4e08528335e0` |
| 47 | `lemma` | [Algebra.charZero_of_charZero](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebra-charzero-of-charzero.md) | 395 | `result-track:91af37cf9b684ef9aacce4623eef45c8ceff8e2e9a963159db0f3f40a9ee0fd1` |
| 48 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 399 | `declaration-track:cbc1fc37bbb9d54a504262adb5f1837ad11339338b47c790cce2f8c3756cabc1` |
| 49 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 402 | `declaration-track:a7e5758119cfafdbe3984b9084e3c6272f854670f1d052d8985ebe204f4b4a82` |
| 50 | `theorem` | [algebra_compatible_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebra-compatible-smul.md) | 413 | `result-track:cff4d4c7841f867988b53202c85b079ea6e2d1b75f2f90e1a4ddacb48c2b2fda` |
| 51 | `theorem` | [algebraMap_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/algebramap-smul.md) | 417 | `result-track:3c13bc443103f0e92a36c57e6836d0431c2116147676ed3af6daf95c55415e11` |
| 52 | `lemma` | [isSMulRegular_algebraMap_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/issmulregular-algebramap-iff.md) | 420 | `result-track:389b580a0494aa1f262639cc7a3282a730f0dcf48a0840cd64956f7dfd400ab7` |
| 53 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance.md) | 428 | `declaration-track:019a0ebaa5e3d21ef1e6086c33d2c8ced7f844203eeabdb35745e27295508969` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 435 | `declaration-track:464f6aff2cd64e068e6a6ded5d5f90ddfd192260d525ec11affcd70e4e7e1068` |
| 55 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 439 | `declaration-track:398ba0e92e5dff1882657bd21cb0c2646228e99c6a086e522d7649c820dc5ef3` |
| 56 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 444 | `declaration-track:f29ecf7e22d2eecc9570d41dc2d10ca03e62e168df90c185951c23f648eb694f` |
| 57 | `theorem` | [smul_algebra_smul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/smul-algebra-smul-comm.md) | 450 | `result-track:be67d18d0505e835695582a33a047d9adab0ce62a2fad5064ad8d0d7756f4513` |
| 58 | `lemma` | [NoZeroDivisors.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/nozerodivisors-of-faithfulsmul.md) | 458 | `result-track:3536dd8747bd36e4686588c16ae83c845f9fcc630e3fe3cbcf9d432750bfc8cf` |
| 59 | `lemma` | [IsCancelMulZero.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/iscancelmulzero-of-faithfulsmul.md) | 461 | `result-track:1f4ac42c39d609a365944f43f9c4f6283e8f7b094ce20b680ebadd948b1f5b85` |
| 60 | `lemma` | [IsDomain.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/isdomain-of-faithfulsmul.md) | 464 | `result-track:e720e1080bfb72802b03d64527d30b8db4863e1cfa40a111973c0f9641024646` |
| 61 | `lemma` | [Module.IsTorsionFree.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/module-istorsionfree-of-faithfulsmul.md) | 467 | `result-track:b2a37f08a8ebe1bcb85bd11cd61fd5634b180d4a336a393c74fe51f141f7c636` |
| 62 | `lemma` | [Module.IsTorsionFree.trans_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/module-istorsionfree-trans-faithfulsmul.md) | 472 | `result-track:4970a8055708d74477a2b2ee33b36532f8763620a796dfba5dfa8bb9d57ecf4e` |
| 63 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 477 | `declaration-track:2bb70ef867b9920f3e91ae4a0b535a15c88aa6babcc91ba1b491e4a345bca4b8` |
| 64 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 485 | `declaration-track:053580132c99f949d94df9204dfc8e559408a2fc7af1f4cf85c213da9f21f7d2` |
| 65 | `lemma` | [isTorsionFree_iff_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/istorsionfree-iff-faithfulsmul.md) | 491 | `result-track:362a93f1927e9aa8cfa22f09eda8c792e47e81c51d7dd1707c0409da4f19974d` |
| 66 | `lemma` | [isTorsionFree_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/istorsionfree-iff-algebramap-injective.md) | 494 | `result-track:1f3d30fb75eef4d49433ed6629d5b6df601219229698e5cfe82397b83d3f53b1` |
| 67 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/example.md) | 499 | `declaration-track:4686b54c44bfb21223fa3375eb3800d9c7a99aca2afd7254fa164bf63e8c7a8a` |
| 68 | `abbrev` | [Invertible.algebraMapOfInvertibleAlgebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/invertible-algebramapofinvertiblealgebramap.md) | 510 | `declaration-track:ac2cb27145e8963d3091e7aaea5e5527ba9d9fde32cd5d8d0550d33d6afeae73` |
| 69 | `lemma` | [IsUnit.algebraMap_of_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/isunit-algebramap-of-algebramap.md) | 519 | `result-track:5071a6c4b4e7255a490e928155217812b0383470ce9d9bb28384cf769daf20e8` |
| 70 | `theorem` | [injective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/injective-algebramap-of-linearmap.md) | 533 | `result-track:bce38dce4f35bc7ca06c4b335b61514ec9db6d087420a6a1c5c241c2ced1d34f` |
| 71 | `theorem` | [surjective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/surjective-algebramap-of-linearmap.md) | 540 | `result-track:ea803c8bd52ca81f51a92fd347bf20e6ecc0215a71e60b7d09a6e94886066a2e` |
| 72 | `theorem` | [bijective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/bijective-algebramap-of-linearmap.md) | 557 | `result-track:5df63ba719ff843b5b22d7a551142e170c7a9bc5736dce141131ee506ffb8da7` |
| 73 | `theorem` | [bijective_algebraMap_of_linearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/bijective-algebramap-of-linearequiv.md) | 563 | `result-track:86b1fca18afc376f1ae5559559639ae2a566719eff9f539ef06a2440597f75bc` |
| 74 | `def` | [LinearMap.extendScalarsOfSurjectiveEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearmap-extendscalarsofsurjectiveequiv.md) | 576 | `declaration-track:ced42f93e828bcb4e916b1a2067d14ff79f4fc721f030bf17646c3a47488ee43` |
| 75 | `abbrev` | [LinearMap.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearmap-extendscalarsofsurjective.md) | 584 | `declaration-track:e0078b5e609605c74adcfc91d3b8cd475279886f53b4ea915d030380045205be` |
| 76 | `def` | [LinearEquiv.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearequiv-extendscalarsofsurjective.md) | 589 | `declaration-track:eab3e23fe5fe9871e1a74ef36f3228144b4940cd7a7a66589031adcbe4a66bb0` |
| 77 | `lemma` | [LinearMap.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearmap-extendscalarsofsurjective-apply.md) | 597 | `result-track:4040b71c36cd665a626a24aeb72c2f0e202066a90fd89dbedaff5fb48072b678` |
| 78 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearequiv-extendscalarsofsurjective-apply.md) | 601 | `result-track:efb9e7a3c55e18a91a8b9bf8bdb477df3b7b03405de5ab0a95fd1c9c1a1a9b08` |
| 79 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_symm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/linearequiv-extendscalarsofsurjective-symm.md) | 605 | `result-track:1801e46401df356aa34550724ff693f317e39b238f06f57e5ebfdbe925646786` |
| 80 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/coe-prod.md) | 617 | `result-track:b5c19ed4f4500f1554d09664bbb8ddf53f962b5ceb4562b9ea9553a00d8ddcbc` |
| 81 | `theorem` | [coe_sum](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedPublic.lean/declarations/coe-sum.md) | 621 | `result-track:c20857634eec55abc209bb943a090e6369312b6348527f5028c43a5e5538817e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=483336c334194c23d4b3204083637b3a7d8a5443f81f719f334024bfd927688c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
