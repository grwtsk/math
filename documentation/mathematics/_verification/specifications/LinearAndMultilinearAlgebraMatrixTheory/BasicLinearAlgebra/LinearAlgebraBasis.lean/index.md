# Verification target: Linear Algebra Basis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0002ce74f4a1e6a4ba22eba807f02735c3fc5283",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0002ce74f4a1e6a4ba22eba807f02735c3fc5283`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finprod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis.md) | 91 | `declaration-track:efa7de8ec5eec61480e732d8b328dd73563bd9e3298b6cc54582ece160ed74c3` |
| 2 | `instance` | [uniqueBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/uniquebasis.md) | 103 | `declaration-track:5eac1638abdffbdcf504e55e1c9e190ba9f396050f6f1b848237817d11d79f5c` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/instance.md) | 109 | `declaration-track:b06b2727901eae263ec747b33f5d27f4205908cf67ad240db6a09365700eb9cf` |
| 4 | `theorem` | [repr_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-injective.md) | 116 | `result-track:c5d8e8d3c60bdc5c378ff7a78acda09fc5a6c2dac35827cb733d1f7a8f3109f0` |
| 5 | `instance` | [funLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/funlike.md) | 121 | `declaration-track:458d91522dc1750353230b6c2f1fae2e2dfba328ddb226ed76ad50f306316cbe` |
| 6 | `theorem` | [coe_ofRepr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-ofrepr.md) | 128 | `result-track:81eff1f0260133d61301b3309b9fa4e7708e98b17f1eedbcf54c434171911476` |
| 7 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/injective.md) | 132 | `result-track:f707e42c50da8dfe0ea58140050073519aa21460e4930876694fb384772fc36c` |
| 8 | `theorem` | [repr_symm_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-symm-single-one.md) | 136 | `result-track:637c0a66cc81f39434d987aa8eb38c0b13292ed3e48b1f57b22db6347f134a3b` |
| 9 | `theorem` | [repr_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-symm-single.md) | 140 | `result-track:908fa9896e63442ce234cf098ade0a0a54d34e7a79f5dac4d07c6461d12ddebc` |
| 10 | `theorem` | [repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-self.md) | 148 | `result-track:78b5c21fc35cdcb25273d77d61b9b9f20e6fbfb74f473dbab9dc67e1cf65d598` |
| 11 | `theorem` | [repr_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-self-apply.md) | 152 | `result-track:0cc103c60f61f028d831f2a387719d3081c8ebc2b9808f1be7290bd2e37bc69a` |
| 12 | `theorem` | [repr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-symm-apply.md) | 157 | `result-track:93ba4542f32d386dedf263ecd3ff800b8aed90497e66b5c834c5cde6542baa43` |
| 13 | `theorem` | [coe_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-repr-symm.md) | 166 | `result-track:82705b4960eb26971d8985a36735f7c9cbdfc40b89e6801766ad66ea47a85eb0` |
| 14 | `theorem` | [repr_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-total.md) | 171 | `result-track:7312082137f1023f63c792a2575a23c1e46faabec6d71516df6ea04aca2684e2` |
| 15 | `theorem` | [total_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/total-repr.md) | 177 | `result-track:159aa97b3eef4635d006e72f0240cd884871650d8a1e3bc1cd5d4032009942a7` |
| 16 | `theorem` | [repr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-range.md) | 182 | `result-track:f829a4f056fd504905035e7b8e35da6311bf82e8ebebb485d55426120f38330a` |
| 17 | `theorem` | [mem_span_repr_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mem-span-repr-support.md) | 186 | `result-track:65fa9ea730a6b07a0ceeb34600668475d8a5da7bcf9649200b9a6234577d7454` |
| 18 | `theorem` | [repr_support_subset_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-support-subset-of-mem-span.md) | 190 | `result-track:3a2de0bc7a602dfdc362c264e10b8966c556de8f4acd000d1c49fffac30549dd` |
| 19 | `theorem` | [mem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mem-span-image.md) | 196 | `result-track:56b9381b845dc6cf7206cc1606a224f63e658142ce2c55c76e1501d89ea9b9d5` |
| 20 | `theorem` | [self_mem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/self-mem-span-image.md) | 201 | `result-track:299743b151c4f60002ab9dd733c432f9affd0698433f0d1f9e86ae40aca6b092` |
| 21 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coord.md) | 216 | `declaration-track:cb9645afbe90de650232cb91c8ca4c0345864277574c58767dfa308f41febad6` |
| 22 | `theorem` | [forall_coord_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/forall-coord-eq-zero-iff.md) | 220 | `result-track:b1e9b4ace64d1a3c175e570714bf106191fb137df1d9823679cd61bef88aa6ca` |
| 23 | `def` | [sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/sumcoords.md) | 226 | `declaration-track:536f4a0e0fc9b083ebf456e5965da2f7b4ede9bf6dd0b27ec5848acf47728c9b` |
| 24 | `theorem` | [coe_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-sumcoords.md) | 231 | `result-track:2ec5edcec0987afbe9fae3208348d42e2f7ad1e094771041d0420f559eaa3751` |
| 25 | `theorem` | [coe_sumCoords_eq_finsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-sumcoords-eq-finsum.md) | 235 | `result-track:210462e4ae71b838ae8624ebea68040a7fce381fc324b1c1228589bee037503b` |
| 26 | `theorem` | [coe_sumCoords_of_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-sumcoords-of-fintype.md) | 244 | `result-track:e3bcfa99bd64df8dba75fc8a5f8ae67d598b5add82516dbcd72692268886387e` |
| 27 | `theorem` | [sumCoords_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/sumcoords-self-apply.md) | 254 | `result-track:c5537df47b754efbffb2bee0aa4adbc94ff00a006897f02a070b474892ed055e` |
| 28 | `theorem` | [dvd_coord_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/dvd-coord-smul.md) | 259 | `result-track:ffd58b2e8aebb0af654ebd912f739614017ec52c485c5f5cb287433d64980b26` |
| 29 | `theorem` | [coord_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coord-repr-symm.md) | 263 | `result-track:4e48146df0a11bb5e8ed54f55ea3baea669d43b66e353f4fae56a79df03a6835` |
| 30 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/ext.md) | 276 | `result-track:6f0dc1b2663b4539f51ae21c89560d989553427103922bf2dd547d9d481ca432` |
| 31 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/ext-source-edition-2.md) | 283 | `result-track:8eb83a92bfce16f4ca345b91f0e059fe4af8d42a41877550ca5d18299eb00ed5` |
| 32 | `theorem` | [ext_elem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/ext-elem-iff.md) | 290 | `result-track:94d964dec7da92fe78312bdb655b33b86f716e069b4d7f82e311a8346e1e27b2` |
| 33 | `theorem` | [repr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-eq-iff-source-edition-2.md) | 297 | `result-track:9d1429b162613921ae3f224a4ece7af22c8baef25b9362620a6c2f6e97255f09` |
| 34 | `theorem` | [repr_eq_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-eq-iff.md) | 302 | `result-track:6560804dc94a5635f6c8898acd2aa85b8825fbafc7a2bdc4a5786178fe2cf9a0` |
| 35 | `theorem` | [apply_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/apply-eq-iff.md) | 307 | `result-track:22e1f74e24b03c881dd4fa56fd7aef5e256720b82f2d95eff20c0cdd5edc7787` |
| 36 | `theorem` | [repr_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-apply-eq.md) | 312 | `result-track:11f10709c1090e31fc9dfd79db6a96ca1ce5276718361391553f65957742d88a` |
| 37 | `theorem` | [eq_ofRepr_eq_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/eq-ofrepr-eq-repr.md) | 332 | `result-track:717f72cb17d7319aa0f70a264317e72e184e8c540ea1cc3a07b2e86d616b34f8` |
| 38 | `theorem` | [eq_of_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/eq-of-apply-eq.md) | 338 | `result-track:dc931db02989d2302796dcd65e328dd73cacefc8af4b3717cc864839b886f0ab` |
| 39 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/map.md) | 350 | `declaration-track:7e567e4d5a2f427566f53e7535e72c2d971c2482a7dbe21d2af64156f86a14ad` |
| 40 | `theorem` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/map-apply.md) | 355 | `result-track:2814941e18ac694a26bae171c102677c6e4ff5b846a813c049b3f2dc510cca18` |
| 41 | `def` | [mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mapcoeffs.md) | 374 | `declaration-track:062bca2cc06898648be150ab108a4007460916fbc0ff569154785a628a067893` |
| 42 | `theorem` | [mapCoeffs_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mapcoeffs-apply.md) | 386 | `result-track:c931de7e0b8c5f56c33106efa837dddd6c6a7e1c81372f9b55df2777aba3c6e7` |
| 43 | `theorem` | [coe_mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-mapcoeffs.md) | 401 | `result-track:d153cb549aa902e54b037cb9e4f314045919a65cddf6b9e8797c7b2b11d55d87` |
| 44 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindex.md) | 414 | `declaration-track:f25fc3cce932ebc0e7ad46d9f88cda0bb8203e1b7e938c53f3f1cb7903290369` |
| 45 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindex-apply.md) | 418 | `result-track:e172a46b6fa4e13d0e87e44db45791b2cfe8a4665c0b918066020e2eb951fc91` |
| 46 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-reindex.md) | 425 | `result-track:4d049c649c6d587f09fc0aafb8207f9da0ce62b68a29355496971cd443ae04ad` |
| 47 | `theorem` | [repr_reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-reindex-apply.md) | 429 | `result-track:3fee3c3a2057af6bd4fd51aa51891e48823f9288232db5f058a2ea0ff0a56262` |
| 48 | `theorem` | [repr_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-reindex.md) | 434 | `result-track:f8fc8563ed8287bfaaffe02f5ed9e71c5a96a95354d7cbb8f0192eac23e98daa` |
| 49 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindex-refl.md) | 439 | `result-track:c1035162bc63d3719a9c2c20e39016df51a0441c6747cb28998bd2409fa5ee36` |
| 50 | `theorem` | [range_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/range-reindex.md) | 444 | `result-track:87f3732b1531b4dc10566e0aed92648b2a12e7663e5fc2ca6c5d5b1516e44fff` |
| 51 | `theorem` | [sumCoords_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/sumcoords-reindex.md) | 449 | `result-track:350954b47ce603dc6461f724ac4a58daf26562003c7118c72c3d0774daf5f041` |
| 52 | `def` | [reindexRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange.md) | 456 | `declaration-track:d3c7e607c4cb725209ea236f1d348bd615d4727bf1692c330cd3d5f425dcfbc9` |
| 53 | `theorem` | [reindexRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange-self.md) | 466 | `result-track:8f41895af74f30b86d10ac9f7780ff5ee5608535882c5e6462af2be9ffa3da71` |
| 54 | `theorem` | [reindexRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange-repr-self.md) | 476 | `result-track:49463a25bfdcd97f356a5a5da53fa2d22475ed374a9773938910d6bae58eef8f` |
| 55 | `theorem` | [reindexRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange-apply.md) | 485 | `result-track:48de51b255852ca9b27752ae277f12429a1f3fe98e025b6100adadac836a0857` |
| 56 | `theorem` | [reindexRange_repr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange-repr.md) | 490 | `result-track:b7194f2a4c99a1ab239b338345ca1052737821224d3e8a188506c80d9345de4a` |
| 57 | `theorem` | [reindexRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexrange-repr-source-edition-2.md) | 509 | `result-track:f765a503b28e2957180d5de8326ea1b48f1660e7993a90080ce9e5107e0c9c89` |
| 58 | `def` | [reindexFinsetRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexfinsetrange.md) | 520 | `declaration-track:d4906ca727522d89da883b8858f0a9d4746d3a1a6dba4bb9520c26a28ec4493b` |
| 59 | `theorem` | [reindexFinsetRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexfinsetrange-self.md) | 524 | `result-track:fba346383638936f1b77d6e1e05019c581097d9f05cf790f05676320daad1aed` |
| 60 | `theorem` | [reindexFinsetRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexfinsetrange-apply.md) | 531 | `result-track:824b7b38eb2684258d9d220b494d4eda80d018d6bb4a0b93ebfe339db9944dc9` |
| 61 | `theorem` | [reindexFinsetRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexfinsetrange-repr-self.md) | 537 | `result-track:53635f456f1233d5c9e2fa97b08325ad44effaef2d9b181de31bebe3c2c67a5b` |
| 62 | `theorem` | [reindexFinsetRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/reindexfinsetrange-repr.md) | 547 | `result-track:618196ed7160b6f6e48b24edaf3f557c3b5474a58a388dd25e8f58a4616ac1b6` |
| 63 | `theorem` | [linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/linearindependent.md) | 556 | `result-track:8901800d3eb6c3c3f55d6fa171ad0ce5bd2a0d9375107353de9313794a4d3cdc` |
| 64 | `theorem` | [ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/ne-zero.md) | 563 | `result-track:e7f197fde470c628c5e9f52bce4d7a8f7bbb1383bc71f815bfb87f112319c88e` |
| 65 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mem-span.md) | 567 | `result-track:79838ebbe534be58d7d56ad4941c08078d861382d357eaddfb3f74919a491cf2` |
| 66 | `theorem` | [span_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/span-eq.md) | 572 | `result-track:1d51b83408b693f5d626ef422c90dd780ceee6bfec49a6a0d17807dfb6e8103a` |
| 67 | `theorem` | [index_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/index-nonempty.md) | 576 | `result-track:7048f1d6788de0b280102b80e044001d1a3aafefaafe4994d467098952855236` |
| 68 | `theorem` | [mem_submodule_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mem-submodule-iff.md) | 583 | `result-track:7efad4f10f0f490581a5231804d26f40db94deb25750c299868d4b68de271d71` |
| 69 | `def` | [constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr.md) | 605 | `declaration-track:276bfaddaae7fb9cecb752f26b41ed8be7810086a327a65b72dca749e3365eec` |
| 70 | `theorem` | [constr_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-def.md) | 622 | `result-track:b640102277ecfc161cf929d49a047988bc946f5496a5f3c08f4c2abf01ce5ca8` |
| 71 | `theorem` | [constr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-apply.md) | 627 | `result-track:2fabcfca105db41f270d1b105e00435b13f6809205dd410f18a8b73b536db421` |
| 72 | `theorem` | [constr_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-basis.md) | 634 | `result-track:3f6db66bcc2fb02cdf3af07f06677b7d6ce4b661ffe97818d1c7b0498a82c5e3` |
| 73 | `theorem` | [constr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-eq.md) | 638 | `result-track:89c94c277c40d213e3f13ad828966bf1c7eb5c680de70c2ffe76f083b4c605a0` |
| 74 | `theorem` | [constr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-self.md) | 643 | `result-track:a2bf15537a295b43b8b985ac46492b901bf0fb224d23e70cb2ca04060c045683` |
| 75 | `theorem` | [constr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-range.md) | 647 | `result-track:92d15aeba8ebebbf62c9fad6dae97a70bec06038c3bb3fef1063dedfd5f6ee57` |
| 76 | `theorem` | [constr_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/constr-comp.md) | 655 | `result-track:804584a11dd0d85a5088b35d3d70a682062c4a8fac661c064cc388d0c5aba300` |
| 77 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-source-edition-2.md) | 670 | `declaration-track:e946e906adda600221dfb7a1e0cfaac6bbd0bf3a40e9871d4812350fc53cc6d0` |
| 78 | `theorem` | [equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-apply.md) | 675 | `result-track:a87ba3f81c6581ca7dd0140a882bf48a61f04bb9fe6dd32958ee1124f9d8aa27` |
| 79 | `theorem` | [equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-refl.md) | 679 | `result-track:7b28514b9ab6872585d8521766c53ecb79502184253f506a6fde12c604237cb2` |
| 80 | `theorem` | [equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-symm.md) | 684 | `result-track:2bf59f98ea3c63b2d8d3aaa3d078d04b2770526c39dc15347f418892b11bf7a3` |
| 81 | `theorem` | [equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-trans.md) | 689 | `result-track:dbcc958fd6bbbbe366d08b37ebc648a51d4166146df2aa1e17b8cb9f0e970928` |
| 82 | `theorem` | [map_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/map-equiv.md) | 695 | `result-track:878667eb01d0d9bfdd801436d7a6e35f7abd8b0a36d4ffe2536db59be64aa3b4` |
| 83 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod.md) | 710 | `declaration-track:5f9186b7a32155e0ff4d543ad1d12aca3b775bd89e4bda8cea288ce60891d28d` |
| 84 | `theorem` | [prod_repr_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-repr-inl.md) | 715 | `result-track:fefa00d2da2ba0e619a7a692faee8f36c927c571ceabca285f524f6f0e020049` |
| 85 | `theorem` | [prod_repr_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-repr-inr.md) | 720 | `result-track:0bbfbb5fa9bebfcc4116a9351f384eea61ff8d837a145670446504d6c950d7e0` |
| 86 | `theorem` | [prod_apply_inl_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-apply-inl-fst.md) | 724 | `result-track:bddc7935e0b1c2f2020581617fe4c482b55d065db3b7c000da30308d32d821e6` |
| 87 | `theorem` | [prod_apply_inr_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-apply-inr-fst.md) | 733 | `result-track:b16946ed1afe5bc010a0ce1595ad1bbf6b38a9f0e848cb9f4ee31f33f447e915` |
| 88 | `theorem` | [prod_apply_inl_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-apply-inl-snd.md) | 743 | `result-track:48f04e66ec4e63e0a3dd8eb19996349ba6ff9a56f832ff5f2e3e1ed754c8709e` |
| 89 | `theorem` | [prod_apply_inr_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-apply-inr-snd.md) | 753 | `result-track:1e8678bce4bd1d1373dca4f7ee140d2011e8545eba77fa37378c27a99d305ec7` |
| 90 | `theorem` | [prod_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/prod-apply.md) | 763 | `result-track:70d5ca17547f6f42f39586309ede050a4be3c8be52aee12b14465a063f3de080` |
| 91 | `theorem` | [noZeroSMulDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/nozerosmuldivisors.md) | 775 | `result-track:c997b38c074c66e8d3a3043ceaaf63d8c7b5a2d73635395d7f3134484bb24ab4` |
| 92 | `theorem` | [smul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/smul-eq-zero.md) | 785 | `result-track:29046c70e1ef859b959b1714eb3c5273a81ce7c976ce9010b42e74175784349a` |
| 93 | `theorem` | [eq_bot_of_rank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/eq-bot-of-rank-eq-zero.md) | 790 | `result-track:d11d989708e5f8a7c719cb4a3f6f343c1afd98b7518a4b71fa5ebf930a838505` |
| 94 | `def` | [singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/singleton.md) | 810 | `declaration-track:21f73148ec0dc25b26c79b1c79e2dc08a60185963759ccbb3b6e4804355c5d35` |
| 95 | `theorem` | [singleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/singleton-apply.md) | 821 | `result-track:824a945ebc59902451183d910258d07bfc738891761bc51c3e648b2562b53fef` |
| 96 | `theorem` | [singleton_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/singleton-repr.md) | 826 | `result-track:e58964c7c3dfeb23b96654ab67ff8d2a2b3661d17d904bd321e3baaec3ddb3ba` |
| 97 | `theorem` | [basis_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-singleton-iff.md) | 830 | `result-track:54bd51a228493170ca37642737564431199dbb1981397bc8cd6d012356dec7f7` |
| 98 | `def` | [empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/empty.md) | 862 | `declaration-track:18a600994fe104874bb5d7cf654bf270d4fb161c9f95001bbe7536891377ff6f` |
| 99 | `instance` | [emptyUnique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/emptyunique.md) | 866 | `declaration-track:92814bf4ad75c65b3241eae3a7164528a368778ca7599aac194529a05e6a9508` |
| 100 | `def` | [Basis.equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-equivfun.md) | 885 | `declaration-track:0e231d3744185682cf2699634a80630b52ddfa73c186121a103ebc2e60bcb404` |
| 101 | `def` | [Module.fintypeOfFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/module-fintypeoffintype.md) | 895 | `declaration-track:d3d8fddb7cfa4a0db8de4efefd5a22af999f8733b21e842eeb9c1693e26f5c6b` |
| 102 | `theorem` | [Module.card_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/module-card-fintype.md) | 900 | `result-track:4118d580abb7ba750591861417ef79cc331f0a02e9b0b698acbd3769439a859b` |
| 103 | `theorem` | [Basis.equivFun_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-equivfun-symm-apply.md) | 911 | `result-track:bd247b5e7cdd1bbbbc1c07f71a20fc169ab582023d8e4ee918c3cec830c287c0` |
| 104 | `theorem` | [Basis.equivFun_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-equivfun-apply.md) | 916 | `result-track:2bf541c2c73a55c1e8f08346cfd5c923e8844773dc96ddc7be119d958f19747e` |
| 105 | `theorem` | [Basis.map_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-map-equivfun.md) | 921 | `result-track:09ee56ec0b89215a927736374fb40a4a69cbba3099a06436c79ce3f84e40561d` |
| 106 | `theorem` | [Basis.sum_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-sum-equivfun.md) | 925 | `result-track:6dfc377bdeb2b7761a9d17dd3d8340a18884403e3be7bceeae165ad51fdd527d` |
| 107 | `theorem` | [Basis.sum_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-sum-repr.md) | 930 | `result-track:f474a3e700cbee3b382dac3a9bf3c8cc6683b7f651a50428704ad887bce6950c` |
| 108 | `theorem` | [Basis.equivFun_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-equivfun-self.md) | 935 | `result-track:f6c11a77370ebd3bfe7df7edfc7df9f7bf8ae810a6d8d41647a7badf5ece8772` |
| 109 | `theorem` | [Basis.repr_sum_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-repr-sum-self.md) | 939 | `result-track:55453885318cc213eb09f86220b2038b167451def225faac60dbd494c7fe53f3` |
| 110 | `def` | [Basis.ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-ofequivfun.md) | 953 | `declaration-track:7ef2b59721af21ea5e139175055eed19d3c31c2cd5500282dfcb688e887e366a` |
| 111 | `theorem` | [Basis.ofEquivFun_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-ofequivfun-repr-apply.md) | 958 | `result-track:09c870fac1e97d68b533a80ee4dcc673292be6cda4584125d7821a238f36aea9` |
| 112 | `theorem` | [Basis.coe_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-coe-ofequivfun.md) | 964 | `result-track:a1169ecfd429d1befb55ce091cdafebb0416148ee18071919863d7770612086b` |
| 113 | `theorem` | [Basis.ofEquivFun_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-ofequivfun-equivfun.md) | 973 | `result-track:7f0343a9a1a4f1127427c60d0e8ae6c56ba37a089f5eeca62f3db24bed8769e1` |
| 114 | `theorem` | [Basis.equivFun_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-equivfun-ofequivfun.md) | 982 | `result-track:8cdbad0448b292aa61b04247077bebab15d971ae526fc47c9f299f9d712fba32` |
| 115 | `theorem` | [Basis.constr_apply_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-constr-apply-fintype.md) | 992 | `result-track:4c836adf3f9e99c769ae5f7d3ce6de558ea538a1db8e74b3c062753858f4a79c` |
| 116 | `theorem` | [Basis.mem_submodule_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-mem-submodule-iff.md) | 999 | `result-track:09fc20ecb75e3fdf0102fbcfb1b14e53db825befef59f073860dce48edecc05b` |
| 117 | `theorem` | [Basis.coord_equivFun_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-coord-equivfun-symm.md) | 1006 | `result-track:695bbe34c3da5f88052fda61ad72a11dc6e3844024970e939671752de2fc200c` |
| 118 | `def` | [equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv.md) | 1028 | `declaration-track:c8bfb9dc633ff8cc17ca21e7097cd50e60bfa11c6bfd30fa8513946150944c6b` |
| 119 | `theorem` | [equiv'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-apply-source-edition-2.md) | 1049 | `result-track:dd0dcdd91428480fb94c420457ddeda5e12b1fec2687dbd3c41116ff53348288` |
| 120 | `theorem` | [equiv'_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/equiv-symm-apply.md) | 1055 | `result-track:91aa4a5cb83f5aa1fcb75c3ae501c993d3a8ae8057ea0fc715115bb2ee44e430` |
| 121 | `theorem` | [sum_repr_mul_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/sum-repr-mul-repr.md) | 1060 | `result-track:6c9924b553a6dc2d56dc43396a20e8bc38ec182419477cedb4f0ca7f7b7c9716` |
| 122 | `theorem` | [maximal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/maximal.md) | 1090 | `result-track:7401e28b5c2ed69bb2ec6dd63d6abe97b9af21f12c9b66708868d8ce1550d120` |
| 123 | `def` | [mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk.md) | 1119 | `declaration-track:d884e97f5f6decaf0f05aa632768c66d3e88ef7c7565daab0f671889e8c8bfcf` |
| 124 | `theorem` | [mk_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk-repr.md) | 1128 | `result-track:4c75f1e56e05688326e2d13dbbff3346bbc38b1da1dd282f483ab59784ffb3ee` |
| 125 | `theorem` | [mk_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk-apply.md) | 1132 | `result-track:7eef44cc2720a8066c6c9346459a9d497aed0c386a16be559cccbe3948690a03` |
| 126 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-mk.md) | 1137 | `result-track:c58b66ae2473fd6b462edb3e101c7e8a5f7fd38c0414381bf84afa421d5e92c3` |
| 127 | `theorem` | [mk_coord_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk-coord-apply-eq.md) | 1145 | `result-track:400e05bfb73acfe3b02584205c740213c43cd2cdc84a59370340a301ca61e1e0` |
| 128 | `theorem` | [mk_coord_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk-coord-apply-ne.md) | 1151 | `result-track:444c184a3e186365bc467bad308d6c2109d2a3c7db22bdd6d355d1cbb914be19` |
| 129 | `theorem` | [mk_coord_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mk-coord-apply.md) | 1158 | `result-track:7012bd383c2ab66eb3c6de63e30cc60911225d96acdcac4542784f3d5ba3ed38` |
| 130 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/span.md) | 1172 | `declaration-track:9e7bbd0092c92fe824a5872f41f6053dfaca6bedaa5b5b996e35ab0b135fd7af` |
| 131 | `theorem` | [span_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/span-apply.md) | 1195 | `result-track:9ebe50c577fda86962be472ba39bcd6e26c124a747cf0ad11eddb64daa340d56` |
| 132 | `theorem` | [groupSMul_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/groupsmul-span-eq-top.md) | 1201 | `result-track:49d6f654d63b84a28cd8d98efa50bc52bea7e8aa836fe7abb3f833fc3b999e0f` |
| 133 | `def` | [groupSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/groupsmul.md) | 1216 | `declaration-track:29a74010a676544493230512ab07046bfc5204bd6ec4f02c9e4c7b131fb978e9` |
| 134 | `theorem` | [groupSMul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/groupsmul-apply.md) | 1221 | `result-track:63b66b36ac27857aaa240d37c23ef77bde82cf1148af406ee44c4020dcabc2fd` |
| 135 | `theorem` | [units_smul_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/units-smul-span-eq-top.md) | 1228 | `result-track:cb50ca5641f942674b6b1be2c24d15983bde2996fa7796a23802582aa64cfe98` |
| 136 | `def` | [unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/unitssmul.md) | 1235 | `declaration-track:08fa322f1655c30616d487a29a413d5c145e6ad6a3c89700c4f0b23cfb669bce` |
| 137 | `theorem` | [unitsSMul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/unitssmul-apply.md) | 1240 | `result-track:d2de2e71a04eb58432f4e1a2434531f26c64b142300f41ccaded51bc9529da51` |
| 138 | `theorem` | [coord_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coord-unitssmul.md) | 1246 | `result-track:8551a9984bba7aba01db8742f0fde41eacee81ee11f67b88f851d78b47c3fcfb` |
| 139 | `theorem` | [repr_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/repr-unitssmul.md) | 1260 | `result-track:bbef2730568886c00e9c539eacc8186ff47f0e1e7318b5e5a1ce4fb25ef8b14c` |
| 140 | `def` | [isUnitSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/isunitsmul.md) | 1266 | `declaration-track:4cda666cd5e7d296778337e0a5c8acde607a414da75a5272a3ee748aee34987a` |
| 141 | `theorem` | [isUnitSMul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/isunitsmul-apply.md) | 1270 | `result-track:e6ff39006d06e3ba3ba9cf14057405fb07d6498771603584ff8f33027724248b` |
| 142 | `def` | [mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mkfincons.md) | 1280 | `declaration-track:d032bb8916d98c233e4c13540f33d7698b2f557d5876645ce0f5d167cce96275` |
| 143 | `theorem` | [coe_mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-mkfincons.md) | 1297 | `result-track:e7e43a75f65ee19a2fc4f56313b65db02a5575024e135d0fac8851430fea8e48` |
| 144 | `def` | [mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/mkfinconsofle.md) | 1309 | `declaration-track:ed6b49738e90bf5cc0dfb9a7d1436544b21ab3c6db9f26a8c9a27bd48926312e` |
| 145 | `theorem` | [coe_mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-mkfinconsofle.md) | 1318 | `result-track:d4eb4d0940d8ea124fe94a116171658bb431f5ccfb749767127df7434cbe0d4f` |
| 146 | `def` | [finTwoProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/fintwoprod.md) | 1327 | `declaration-track:156143ebe3277c67df0a5e2c9a4316863d4460054785ac7cc3c18e84fde8d096` |
| 147 | `theorem` | [finTwoProd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/fintwoprod-zero.md) | 1332 | `result-track:3f61fda4a592174bae62f620ade45824147b26ee71fdad05df97f6fa87948350` |
| 148 | `theorem` | [finTwoProd_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/fintwoprod-one.md) | 1337 | `result-track:17be455dcad513398075570c913a582061558d108590d2de9a1ee51373a84922` |
| 149 | `theorem` | [coe_finTwoProd_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/coe-fintwoprod-repr.md) | 1342 | `result-track:dab864d08b7f08f044808b7bd20f261c044d0a37b0f179b49ae6575aedda6f41` |
| 150 | `def` | [Submodule.inductionOnRankAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/submodule-inductiononrankaux.md) | 1360 | `declaration-track:e646afbe620e72eae30b25f3e0bdb15b2cdeeaa56a2a125e7be3d645b52ffcfd` |
| 151 | `def` | [Basis.restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-restrictscalars.md) | 1406 | `declaration-track:dc67bfb7cf831ced5d8d5216f06ff6e47bd19c18969619078f6d3d49d0724b9e` |
| 152 | `theorem` | [Basis.restrictScalars_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-restrictscalars-apply.md) | 1411 | `result-track:f943db10d68d3d6655af2e7fe028387ac2e484eb8c5cd4b1392ed1456f7ff170` |
| 153 | `theorem` | [Basis.restrictScalars_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-restrictscalars-repr-apply.md) | 1416 | `result-track:10bb2a32f4fc9579200b7246bf4a577a52e9b06d5bbd7e366c2acde24a078273` |
| 154 | `theorem` | [Basis.mem_span_iff_repr_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasis.lean/declarations/basis-mem-span-iff-repr-mem.md) | 1431 | `result-track:1d0605641c160a555c184678fa20c44dd2ea6653e81560efd540e14aee5f4181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d75c94d97f287486b73ae0cbd561fb3103a2598eb5560fdb4248cb6b62c3d855 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
