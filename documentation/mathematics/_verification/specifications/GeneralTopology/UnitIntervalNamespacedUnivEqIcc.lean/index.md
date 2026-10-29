# Verification target: Unit Interval Namespaced Univ Eq Icc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6a2145937f3c74fcb5a2bf9ad699da5b498865",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/index.md) · [Full source](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6a2145937f3c74fcb5a2bf9ad699da5b498865`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.ProjIcc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitInterval](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/unitinterval.md) | 36 | `declaration-track:e76f1fbd878aff03920302093bbf66834681369e831ead68b58b589e87f83cfa` |
| 2 | `theorem` | [zero_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/zero-mem.md) | 44 | `result-track:c8f625397f523ce4ac0e7a16a8c35a9bbf02f59997551b52c980524fc9e40ba5` |
| 3 | `theorem` | [one_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/one-mem.md) | 47 | `result-track:41eeebea1bbb59c9278add04a8ed82a260ff5273bccd8cb930d9ea03575beb45` |
| 4 | `theorem` | [mul_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mul-mem.md) | 50 | `result-track:f23de8f8e69e43307f929704802684c6112177ff5df7d106e3253bfef4133911` |
| 5 | `theorem` | [div_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/div-mem.md) | 53 | `result-track:191dc408786170be960daf623699ce6f77dd18f3e0c521823927ade1a29b3e15` |
| 6 | `theorem` | [fract_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/fract-mem.md) | 56 | `result-track:c563cc3e08ca81a00e4123fa0f826bdc1627e5957b78974ac519fde4e7523dfb` |
| 7 | `theorem` | [mem_iff_one_sub_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mem-iff-one-sub-mem.md) | 59 | `result-track:8b3a06ad50479fc03ab141b9423a5d007a9c6e1e9613239fb900bb30b8225d01` |
| 8 | `lemma` | [univ_eq_Icc](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/univ-eq-icc.md) | 63 | `result-track:044bbbde2ac345e227761f755e19b8c0ac2b57c8c910ef5fb590bda6b4e500f1` |
| 9 | `theorem` | [coe_ne_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-ne-zero.md) | 65 | `result-track:480b0859f5e672446021b6cb819c808dd5d76d08e532d68d379729036f5f8a05` |
| 10 | `theorem` | [coe_ne_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-ne-one.md) | 66 | `result-track:8ddc4413e25f012c05574592eff2ba7ad5886153a6033360da13ad3da68e8cbd` |
| 11 | `theorem` | [coe_pos](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-pos.md) | 67 | `result-track:596367b703323f3c80fdc8d3e7102150c4f3ed1c4b5f8861d6decd72d903bb1f` |
| 12 | `theorem` | [coe_lt_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-lt-one.md) | 68 | `result-track:89d1f17a7d04867a01940c5b373d1786e908422ed9febda359ba1d5c820d5377` |
| 13 | `theorem` | [mul_le_left](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mul-le-left.md) | 70 | `result-track:994aceb5e51d7daf4a34f1e7960b372af209ba5340d3a0393428bd64302b6fcb` |
| 14 | `theorem` | [mul_le_right](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mul-le-right.md) | 73 | `result-track:c6fbcd9f8c240886c748caad50c268d9be8bc9d4bbdc2386804ca8fa5b2dc775` |
| 15 | `def` | [symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm.md) | 77 | `declaration-track:a00dfa40c9fc54da53fe8debf3c6b9a036674159c7623524ee95f32200314b5b` |
| 16 | `theorem` | [symm_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-zero.md) | 83 | `result-track:391cfe3293d2df8999dc4a505d48a53025777b8fab1b1c3035c7de07ec02a255` |
| 17 | `theorem` | [symm_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-one.md) | 87 | `result-track:d0c11ac8f64922805fda342da13c3b8623ba5673baecdc87f3a66f998f296611` |
| 18 | `theorem` | [symm_symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-symm.md) | 91 | `result-track:fb89b660022c0bfc7229e048d9e3b04342994af1ab8dec91271e22a83ca58e08` |
| 19 | `theorem` | [symm_involutive](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-involutive.md) | 94 | `result-track:cb723373ac7fb416456a42bd94e4268efb4b8cfe9534ee0164eb298cb45dcbac` |
| 20 | `theorem` | [symm_bijective](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-bijective.md) | 96 | `result-track:0864448e33abec2a2020cdd50a8dd34f52c185f5b0fddb63a957e9758c6ee25f` |
| 21 | `theorem` | [coe_symm_eq](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-symm-eq.md) | 99 | `result-track:30df027fd26f4a42ec999f547229e52825a1da4b4b711202b773ee8cb9962a2d` |
| 22 | `theorem` | [symm_projIcc](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-projicc.md) | 103 | `result-track:e672d72b2ec8f74106adb2137319158b934d3109e4278bb3386949d9c76a8772` |
| 23 | `theorem` | [continuous_symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/continuous-symm.md) | 114 | `result-track:b5e5a5af6b2fe3b979a8572a1e406c03cf2f7095164d838e6685a5569d1ebe1d` |
| 24 | `def` | [symmHomeomorph](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symmhomeomorph.md) | 119 | `declaration-track:9fe75a3a0fb04085c4e9efa82ca8f90f27cbd0bbda79cf2234ffa01708757f43` |
| 25 | `theorem` | [strictAnti_symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/strictanti-symm.md) | 125 | `result-track:226ca743a1ab661e78670491e2503151b21a0c3f7873a30a6cd1f2b19c2f9ef5` |
| 26 | `theorem` | [symm_inj](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-inj.md) | 129 | `result-track:4af2f2a88fc462902105b82bca07b791f3cc02f57130f29849b3cf38ad3ff6e9` |
| 27 | `theorem` | [half_le_symm_iff](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/half-le-symm-iff.md) | 131 | `result-track:af79bfcc4f0c3438d65d8800b048542d47ca541cebd56b6f8434a0b3e296a24f` |
| 28 | `lemma` | [symm_eq_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-eq-one.md) | 135 | `result-track:7c3271706d1cce34161772aa40748a520888b9d3146d9097f2bb8084fe1ef8d6` |
| 29 | `lemma` | [symm_eq_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-eq-zero.md) | 139 | `result-track:52b140f71fdaedb3ab0a7a73e1b582e9bf57d652a370719bb19f6b5d8c5324ff` |
| 30 | `theorem` | [symm_le_symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-le-symm.md) | 143 | `result-track:9bbf420a70080cc6632609820fecb372c735048d881ae361410abb55222366d0` |
| 31 | `theorem` | [le_symm_comm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/le-symm-comm.md) | 146 | `result-track:5ecd7d388174f03213b2f10044f3fab9230f774d3c51b5b9284d105a5ff3a25f` |
| 32 | `theorem` | [symm_le_comm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-le-comm.md) | 149 | `result-track:1b1a14c5992a33c2ae66eff58be1838fadfc4c0fc8af3175480be371bade3d00` |
| 33 | `theorem` | [symm_lt_symm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-lt-symm.md) | 153 | `result-track:1953f5a1d16d811a6a93ae7b8126e2efb154e9d1306839bac8147f3b5e43e50d` |
| 34 | `theorem` | [lt_symm_comm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/lt-symm-comm.md) | 156 | `result-track:488ae36375fb01f589d161d1a839d45748014bcac3e775253f9b5a069a73b8b6` |
| 35 | `theorem` | [symm_lt_comm](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/symm-lt-comm.md) | 159 | `result-track:65f01349879a8d49448efc0238777924233394d8f6ddbfd46c940804776201da` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/instance-source-edition-3.md) | 162 | `declaration-track:1971115e555a40f5ec948450129e10c89c14fbea82651d7eba94a8e350e07077` |
| 37 | `example` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/example.md) | 166 | `declaration-track:7210151615ad4d107c7ce40eeb1d229cf8c604eef1754b9d565b879c6e284c2e` |
| 38 | `theorem` | [nonneg](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/nonneg-source-edition-2.md) | 168 | `result-track:e64bd63d5d708f1eae2866fb65176bba06ac73b41e671542341c756d3d5226b0` |
| 39 | `theorem` | [one_minus_nonneg](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/one-minus-nonneg.md) | 171 | `result-track:b6b864c417f14f6656cc632035aa04586550c785b4196db379c51b38a4eeb11c` |
| 40 | `theorem` | [le_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/le-one.md) | 173 | `result-track:75bf37edf60306d361098bffce26e6ed52426dfee556eaea93e2df0684cc0dbe` |
| 41 | `theorem` | [one_minus_le_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/one-minus-le-one.md) | 176 | `result-track:721f3c80c178627a7ee55b16d5733ec9129de106ffa7534fde64aaa4e3c753ef` |
| 42 | `theorem` | [add_pos](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/add-pos.md) | 178 | `result-track:1451cffccdcfee6fb6518c2851bfc48895888fac5c30cb5554feaf0c4576b552` |
| 43 | `theorem` | [nonneg'](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/nonneg.md) | 182 | `result-track:245d1c8e44c296bd05cc3152177b37040f6197102cd03e2a0ae3de94264092d3` |
| 44 | `theorem` | [le_one'](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/le-one-source-edition-2.md) | 186 | `result-track:767727ce83331beb1784ad29975f3c0f8fdfb9f991274f730d91a6bc58373e0f` |
| 45 | `lemma` | [pos_iff_ne_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/pos-iff-ne-zero.md) | 189 | `result-track:81b321e222fc7f396475508cd3df2dfc0cfc6331c4294043b5c7b60ba30c0598` |
| 46 | `lemma` | [lt_one_iff_ne_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/lt-one-iff-ne-one.md) | 191 | `result-track:f3625b93c334c418a6ceed16ba81555ccb502bde67d2571feed1a8bc9e2df48a` |
| 47 | `lemma` | [eq_one_or_eq_zero_of_le_mul](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/eq-one-or-eq-zero-of-le-mul.md) | 193 | `result-track:7c69364f221ecab46a3bc454cbf7b8e1a4eb1b1cd3e7d8f0bc1d3d0215dd1656` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/instance.md) | 200 | `declaration-track:00394b55aa398789ead2b646a8f488285274bef74875a1e60cdb23fb3f73aeb1` |
| 49 | `theorem` | [mul_pos_mem_iff](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mul-pos-mem-iff.md) | 202 | `result-track:ac8e128ce634957fe356022e701fb48878e4c997379c6e21490fd69aa9e58050` |
| 50 | `theorem` | [two_mul_sub_one_mem_iff](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/two-mul-sub-one-mem-iff.md) | 209 | `result-track:1adb678bc0beeb85259299ac144ab0d5ee9bddf568f13b3cb4f003f1eecb6b67` |
| 51 | `def` | [submonoid](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/submonoid.md) | 213 | `declaration-track:f5e672d6a6f059a6d112f4a3af417a8d1ba8c130db44d61c041a0d5d0b4f66fb` |
| 52 | `theorem` | [coe_unitIntervalSubmonoid](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/coe-unitintervalsubmonoid.md) | 218 | `result-track:0354ebf9cafac4e8eb16a439526ad1d1d9e8bfa88c3bea241d074c3e6b15d82e` |
| 53 | `theorem` | [mem_unitIntervalSubmonoid](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/mem-unitintervalsubmonoid.md) | 219 | `result-track:a7f8c8bb152bccbfc6711da22b93da5ae5761c2ecba64166e7c98a8e9c0bc8e2` |
| 54 | `theorem` | [prod_mem](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/prod-mem.md) | 222 | `result-track:8901034ec2790ecd168a8ce69efcc209acd200c8c71a9860465b32f2b077d38e` |
| 55 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/instance-source-edition-2.md) | 226 | `declaration-track:045bef2a59d21f10860fb2fdb31f3d61d98e886851356f094d7c229892e3b9c2` |
| 56 | `lemma` | [Unit Interval Namespaced Univ Eq Icc](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/abs-projicc-sub-projicc.md) | 246 | `result-track:1f9d431156b69bba8fc12bdd3df2c26f5d05dc3f7d85411538af3342659a604c` |
| 57 | `def` | [addNSMul](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/addnsmul.md) | 259 | `declaration-track:750ff7871a6bb6e9f9a164a08befbf80c40d4065ec2e43dbdfc19e762001be47` |
| 58 | `lemma` | [addNSMul_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/addnsmul-zero.md) | 262 | `result-track:2e5084d800bcba8dd789b7c4870f6f6052a7141d8e1d2988c9b7540ca17436d9` |
| 59 | `lemma` | [addNSMul_eq_right](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/addnsmul-eq-right.md) | 265 | `result-track:08239f3657a641ee09b483600f3ba6507949a59a1005ea07c2b6938376cad36c` |
| 60 | `lemma` | [monotone_addNSMul](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/monotone-addnsmul.md) | 272 | `result-track:b6a747e5001284f0afe78c7bca313303342a00e2fc6be7103206a0f12f596710` |
| 61 | `lemma` | [abs_sub_addNSMul_le](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/abs-sub-addnsmul-le.md) | 275 | `result-track:6ae3836356f8f8dcd36a19aed151f765f7b719f4e1d014a985079cc64c11cb41` |
| 62 | `lemma` | [exists_monotone_Icc_subset_open_cover_Icc](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/exists-monotone-icc-subset-open-cover-icc.md) | 293 | `result-track:9cf7c9d850f5ef95923ed558340ba4978d8bbb0deb81fa722eb5d698ec1ae253` |
| 63 | `lemma` | [exists_monotone_Icc_subset_open_cover_unitInterval](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/exists-monotone-icc-subset-open-cover-unitinterval.md) | 304 | `result-track:4c19c30c779ce46b4a219d2d5ccf31752852f7f2cf08d47ece2f88e48853ed67` |
| 64 | `lemma` | [exists_monotone_Icc_subset_open_cover_unitInterval_prod_self](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/exists-monotone-icc-subset-open-cover-unitinterval-prod-self.md) | 310 | `result-track:debc0a5ae14de39114172ce75e49c0387bc443f65ac84c8eca962707a0401c83` |
| 65 | `theorem` | [projIcc_eq_zero](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/projicc-eq-zero.md) | 327 | `result-track:88d25ba81f90658381f53baa8ae60a7ce90233f91c8d3d50ca964b8538b67375` |
| 66 | `theorem` | [projIcc_eq_one](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/projicc-eq-one.md) | 331 | `result-track:53ce5981f3ac8f6b219d2eac3f0eaaf84bc5b26879211cccf727d61b9c8ac039` |
| 67 | `macro` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/macro.md) | 337 | `declaration-track:4e6b4d1eb1d9c47477fcc28bca7136f449ca281831ee54b9197176d8f26354fc` |
| 68 | `example` | [(anonymous)](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/example-source-edition-2.md) | 344 | `declaration-track:c54ddd185ef22ec1c893e43337e1c5ce56b2a5f8bda4c9bc7c70a8ed1bbb0010` |
| 69 | `theorem` | [affineHomeomorph_image_I](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/affinehomeomorph-image-i.md) | 357 | `result-track:ccc2117b7965e472d69a1791cfc9732a98c091cf974472ba6bebcd0f4f189f1d` |
| 70 | `def` | [iccHomeoI](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/icchomeoi.md) | 362 | `declaration-track:8f0f239c6e4481503f3f08eb6d03e45a858f6248dcdfb1e3bb16b899dd54c847` |
| 71 | `theorem` | [iccHomeoI_apply_coe](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/icchomeoi-apply-coe.md) | 370 | `result-track:dbfa19b620fb98b98c66979e391b636c16622e0971a4dc76577d1c391b107dfb` |
| 72 | `theorem` | [iccHomeoI_symm_apply_coe](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/icchomeoi-symm-apply-coe.md) | 375 | `result-track:15c34d052b4d453115bc6359ff2783d9436a5cfe5113b096fde4432bc98bfdbe` |
| 73 | `def` | [unitInterval.toNNReal](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/unitinterval-tonnreal.md) | 386 | `declaration-track:d64b1bb02e277481525f43a9fcdada687a12a8b4f8bd147c654670176007b9e9` |
| 74 | `lemma` | [unitInterval.toNNReal_continuous](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/unitinterval-tonnreal-continuous.md) | 389 | `result-track:3b5cc60645978be985a02740d782865e94091caf24e6903f5adcae03af75e462` |
| 75 | `lemma` | [unitInterval.coe_toNNReal](../../../../GeneralTopology/UnitIntervalNamespacedUnivEqIcc.lean/declarations/unitinterval-coe-tonnreal.md) | 394 | `result-track:359f33e84ef732f2941411321199c85ccd8db0a54e2b4f9f62b1d22218f0b285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=886a3e79da378f93d782bec2c4fff4f5444c5c89999be00ee3848ec883f1c054 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
