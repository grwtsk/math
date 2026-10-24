# Verification target: GRWTSK.Topology.GeneralTopology.Quaternion.Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3707a4455898401327d7a97083089b657e5818d2",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3707a4455898401327d7a97083089b657e5818d2`.

Source path: `GRWTSK/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quaternion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--ee400e52c2c72736fc3b43d4.md) | 40 | `declaration-track:ee400e52c2c72736fc3b43d4577011604932029879ba106237e6910500776be4` |
| 2 | `theorem` | [inner_self](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/inner-self--86eefd6433eae35b9a91d91f.md) | 43 | `result-track:86eefd6433eae35b9a91d91f3a73d97a974a958e7e6a867d924141533e7db835` |
| 3 | `theorem` | [inner_def](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/inner-def--d8db4cb1a8dc5a0e3bd4915b.md) | 46 | `result-track:d8db4cb1a8dc5a0e3bd4915b38a488b96d7ec481b174343cec437293cbd34b40` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--03aec711f2041bc3202c2d5c.md) | 49 | `declaration-track:03aec711f2041bc3202c2d5c4051216c41272284408e1ce90d95245b8755fa8d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--7649b11912de15201499ad62.md) | 58 | `declaration-track:7649b11912de15201499ad6298bd24dc126501e46201d9127b96ce09889f7d12` |
| 6 | `theorem` | [normSq_eq_norm_mul_self](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/normsq-eq-norm-mul-self--167fc788e9a36c472636c1c5.md) | 61 | `result-track:167fc788e9a36c472636c1c563afb9dcf6d624f34309d3b380e9248ae17bd64c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--b0c59a9ab81f3ef3baa145a2.md) | 64 | `declaration-track:b0c59a9ab81f3ef3baa145a207f44102c9b0f2b815fd7f8e5cf47f6975d82942` |
| 8 | `theorem` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/norm-coe--b23114903bd45b3bcd44fb19.md) | 68 | `result-track:b23114903bd45b3bcd44fb19016985478fd90c0abc7773f49eba776961fe31b0` |
| 9 | `theorem` | [nnnorm_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/nnnorm-coe--c3b11a6ea772075d0b5699f9.md) | 72 | `result-track:c3b11a6ea772075d0b5699f9acbee0a502f0a7f072ee8c0e9fd064ca7de255b0` |
| 10 | `theorem` | [norm_star](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/norm-star--8fb88a204a1d08ab5f5de32c.md) | 76 | `result-track:8fb88a204a1d08ab5f5de32c5768bab5d404d53a245ad57c3ba7e09f9d25a856` |
| 11 | `theorem` | [nnnorm_star](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/nnnorm-star--03e83e6b868f77fc2534f367.md) | 80 | `result-track:03e83e6b868f77fc2534f367bc65a78a7bc63ef1869a979df5fb9053632bd6f3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--43c87107166a4ca654816a55.md) | 83 | `declaration-track:43c87107166a4ca654816a552afd7a25eac6053d68d58c31049a45abca635d64` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--67ffdb5f31ca70497652fb1f.md) | 87 | `declaration-track:67ffdb5f31ca70497652fb1fb921ae0c660d2bb03d3385554cdea6323bddbf0e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--d72e363202472f04d0477370.md) | 91 | `declaration-track:d72e363202472f04d04773708dc770967a83749ab6b100c8b0a2f360d4253362` |
| 15 | `def` | [coeComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex--e3ea1f6e1c65d1d83e22c947.md) | 96 | `declaration-track:e3ea1f6e1c65d1d83e22c947580d36f627b24ab4a330ea4c3fc440e7ea6ea6d8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--f7eda830f40d3c7e023e6cd9.md) | 98 | `declaration-track:f7eda830f40d3c7e023e6cd955cf5e9b8a216be7fc050dabda72a4fccea7cdcd` |
| 17 | `theorem` | [coeComplex_re](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-re--852904d2aa153e50ffbbd8cd.md) | 101 | `result-track:852904d2aa153e50ffbbd8cdf3bd839daa2354925db7caa983d2178e6e75d2a8` |
| 18 | `theorem` | [coeComplex_imI](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-imi--57318586c61c3e950461e386.md) | 105 | `result-track:57318586c61c3e950461e3867b0fad1907642ac130eb451f30b3138922a4356a` |
| 19 | `theorem` | [coeComplex_imJ](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-imj--6245ee75e3b8df94f1a35641.md) | 109 | `result-track:6245ee75e3b8df94f1a356412533ad2068497b6df0dee486072b179bf09410d4` |
| 20 | `theorem` | [coeComplex_imK](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-imk--6efb40848fdce5ced00ed0b3.md) | 113 | `result-track:6efb40848fdce5ced00ed0b3b2b0ed42b1ff8a7fe0c45ae103113b0195808445` |
| 21 | `theorem` | [coeComplex_add](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-add--7852d1121b83a52bdbb507c0.md) | 117 | `result-track:7852d1121b83a52bdbb507c09d927c5f61acec90cf90e54b822c88302ae99636` |
| 22 | `theorem` | [coeComplex_mul](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-mul--50f1e0a790678dcb0d38ed1e.md) | 120 | `result-track:50f1e0a790678dcb0d38ed1e40923c4ae3f1ca4053a77ea6b4d3c40831a5bdec` |
| 23 | `theorem` | [coeComplex_zero](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-zero--91c56f610089709aa8ba89ce.md) | 123 | `result-track:91c56f610089709aa8ba89ce714607411e436a3d06ba1849e0961eef9e0c02c9` |
| 24 | `theorem` | [coeComplex_one](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-one--79a42eaf464bdcfd135e3187.md) | 127 | `result-track:79a42eaf464bdcfd135e31871986cff690129ba319e95eb90165a9332d8f3750` |
| 25 | `theorem` | [coe_real_complex_mul](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coe-real-complex-mul--f7f2157a83579eb99674c107.md) | 131 | `result-track:f7f2157a83579eb99674c10774ac334043c056ab138f19876365a66bb141c8d2` |
| 26 | `theorem` | [coeComplex_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coecomplex-coe--797af754574812ea5e7c06e4.md) | 134 | `result-track:797af754574812ea5e7c06e4ea41abacd0ea43bcf910cf7971298da9b7f2b60a` |
| 27 | `def` | [ofComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/ofcomplex--d8aff277c0175bcb997917cb.md) | 138 | `declaration-track:d8aff277c0175bcb997917cbd57a65bb446a8f992c0f23108a717bb94d05b1a0` |
| 28 | `theorem` | [coe_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/coe-ofcomplex--c6f2edaf21bca1400a060b63.md) | 147 | `result-track:c6f2edaf21bca1400a060b632ecad41b82a9baef7de8525c302bee3379d55638` |
| 29 | `theorem` | [norm_piLp_equiv_symm_equivTuple](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/norm-pilp-equiv-symm-equivtuple--5c7e1a87c785e1d89d6a2508.md) | 150 | `result-track:5c7e1a87c785e1d89d6a250872df434612db0f4daaabc0ce99a53dade89bfa3e` |
| 30 | `def` | [linearIsometryEquivTuple](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/linearisometryequivtuple--2d744228fd43d502fcbb0eac.md) | 159 | `declaration-track:2d744228fd43d502fcbb0eacb0b12fd227f3bc3b9356f3eb2255dc52a88329eb` |
| 31 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-coe--c61ad351c0cb8d23d0900af5.md) | 167 | `result-track:c61ad351c0cb8d23d0900af5fe92d06a32a5a70234111ddfd9e2b4406b8cfab8` |
| 32 | `theorem` | [continuous_normSq](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-normsq--459e505aa1fd9f21860c5629.md) | 171 | `result-track:459e505aa1fd9f21860c5629a6de65cf46f7a907b7f6e32810ea4e9c14dc75a9` |
| 33 | `theorem` | [continuous_re](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-re--c145c7ed3b1ca5baa931e416.md) | 176 | `result-track:c145c7ed3b1ca5baa931e416e4c15307a513e1126afd6d035041a555eb6c3af8` |
| 34 | `theorem` | [continuous_imI](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-imi--61e94d4d0bb050b7165337d0.md) | 180 | `result-track:61e94d4d0bb050b7165337d0423195af63b7f1506542731766a10a2530fe2e41` |
| 35 | `theorem` | [continuous_imJ](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-imj--4f457f695a5d24e5d1613ab8.md) | 184 | `result-track:4f457f695a5d24e5d1613ab8a07fad5bff16fc65e7bd9cb3e76d1c44ff60ff0b` |
| 36 | `theorem` | [continuous_imK](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-imk--e057080d79b04922b83e43c6.md) | 188 | `result-track:e057080d79b04922b83e43c609baf2aee404fb2de926798fc960caac75da8873` |
| 37 | `theorem` | [continuous_im](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/continuous-im--f3e3106bb644ff6e8c578003.md) | 192 | `result-track:f3e3106bb644ff6e8c57800312b6b2ef8e8733c9021b62e621f00c942edd1fc3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/instance--af0fa4c4cf6d245dbc68a087.md) | 195 | `declaration-track:af0fa4c4cf6d245dbc68a0870c5f2ac05ecb433850c6ce0faa5953c4917d591c` |
| 39 | `theorem` | [hasSum_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/hassum-coe--5838493d5239561e9df11d18.md) | 205 | `result-track:5838493d5239561e9df11d186b52fbe9a60093115deb0ab1d786a8b342143e87` |
| 40 | `theorem` | [summable_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/summable-coe--4829edad3fe2931adaefc77c.md) | 212 | `result-track:4829edad3fe2931adaefc77c5095e4d6b82e7fa9bae37db077160f6dcbc416e9` |
| 41 | `theorem` | [tsum_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant11d42653d9f9d6d33dd1e4a98761ca539ad3fd99e26c9e549fe080aa81be7991.lean/declarations/tsum-coe--ee7b6348bec2b80db5349506.md) | 219 | `result-track:ee7b6348bec2b80db5349506787fbfd5b88d96dcf8dd67fa2a2e1cb167f82d78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
