# Verification target: Finite Dimensional

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14819d2553db9e28ffd8bab15558ed323f321102",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14819d2553db9e28ffd8bab15558ed323f321102`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finiteDimensional_vectorSpan_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-vectorspan-of-finite.md) | 40 | `result-track:127bc7409e0dc5428afa7960fa6fd36a65cc5a00eb15cb99d01be36fcebb6ee9` |
| 2 | `instance` | [finiteDimensional_vectorSpan_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-vectorspan-range.md) | 47 | `declaration-track:f69fccea8dfca97993b9e0709f67cf23d3064bb9cc67a4a1514f49920c7b1443` |
| 3 | `instance` | [finiteDimensional_vectorSpan_image_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-vectorspan-image-of-finite.md) | 54 | `declaration-track:0ba82878ecfe78d1cf5dee313e39d647b9464b47d9205091a8097d30f2cac138` |
| 4 | `theorem` | [finiteDimensional_direction_affineSpan_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-direction-affinespan-of-finite.md) | 61 | `result-track:e4d2e1257a7fa8502d6b327d4222fadb4cb6d88a8f03a400b2d72d5d0b67eb1e` |
| 5 | `instance` | [finiteDimensional_direction_affineSpan_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-direction-affinespan-range.md) | 68 | `declaration-track:5dae136f872f7b399ef5abbcb2a9a3d9e106ec34c4b406f8b6b6dda6bd26249e` |
| 6 | `instance` | [finiteDimensional_direction_affineSpan_image_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-direction-affinespan-image-of-finite.md) | 75 | `declaration-track:43cd815c06d3544145fcb92b82511cb869084ee1c12d3cda6dff27ca37cf9532` |
| 7 | `theorem` | [finite_of_fin_dim_affineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finite-of-fin-dim-affineindependent.md) | 81 | `result-track:81b28159095868381947f0e141072c038c5e76d6608912324077993d28cd439a` |
| 8 | `theorem` | [finite_set_of_fin_dim_affineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finite-set-of-fin-dim-affineindependent.md) | 91 | `result-track:155cc604361d8b18ff1f24d77ab78dad368cb72acfd72b70e5e5139b069f128b` |
| 9 | `theorem` | [AffineIndependent.finrank_vectorSpan_image_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-finrank-vectorspan-image-finset.md) | 100 | `result-track:5470e3f18360ec51bdfe328f0b23807e7583609a57f285cf2569774579b45cf0` |
| 10 | `theorem` | [AffineIndependent.finrank_vectorSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-finrank-vectorspan.md) | 120 | `result-track:c00617c4f7672ae099e55e1831d16fb873d73ef150ce3d9803657d41c06b155b` |
| 11 | `theorem` | [AffineIndependent.vectorSpan_eq_top_of_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-vectorspan-eq-top-of-card-eq-finrank-add-one.md) | 131 | `result-track:fb9055c259f7d8c9dfcdf95ca405186be5a084d3718000f6732e46f57185cc34` |
| 12 | `theorem` | [finrank_vectorSpan_image_finset_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finrank-vectorspan-image-finset-le.md) | 141 | `result-track:01bf7283731f52ecf669ade1de7f1b6b6e29d2bf6c5f76548ea887b9ff18cb83` |
| 13 | `theorem` | [finrank_vectorSpan_range_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finrank-vectorspan-range-le.md) | 157 | `result-track:80c6576d657cca8e374371a49d97842c10d43c3785f829b7b2f77e09908b76c1` |
| 14 | `theorem` | [affineIndependent_iff_finrank_vectorSpan_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-finrank-vectorspan-eq.md) | 167 | `result-track:21c1ef57266f4d34d61d510780840afa98f3ef81ea47e6611e6dff81c2797656` |
| 15 | `theorem` | [affineIndependent_iff_le_finrank_vectorSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-le-finrank-vectorspan.md) | 184 | `result-track:1008f53ff8f310be80f02dd1ccfca44aa867f12ba60edfac100905dbc4e4120f` |
| 16 | `theorem` | [affineIndependent_iff_not_finrank_vectorSpan_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-not-finrank-vectorspan-le.md) | 196 | `result-track:f79c957f382fa43193ae8add4849d5757f03186b3c0f3c23d6191bc234f728e3` |
| 17 | `theorem` | [finrank_vectorSpan_le_iff_not_affineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finrank-vectorspan-le-iff-not-affineindependent.md) | 204 | `result-track:b3dea24ada601e7861a1fca2ef3fa029bc8465778d45ad7943b7795b74955480` |
| 18 | `theorem` | [AffineIndependent.vectorSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-vectorspan-image-finset-eq-of-le-of-card-eq-finrank-ad.md) | 215 | `result-track:3162a69e55edb778f38d7554974eeb4e69c2c36df312ba03a23ff974b21e1315` |
| 19 | `theorem` | [AffineIndependent.vectorSpan_eq_of_le_of_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-vectorspan-eq-of-le-of-card-eq-finrank-add-one.md) | 226 | `result-track:e7526c1b80944f448d81037fc689fbe71ea488add2d25d1222e99d291a703251` |
| 20 | `theorem` | [AffineIndependent.affineSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-affinespan-image-finset-eq-of-le-of-card-eq-finrank-ad.md) | 236 | `result-track:b290a650ad4db38eb57e41436a6f2b4b08152fba8056731f9b8990df72266760` |
| 21 | `theorem` | [AffineIndependent.affineSpan_eq_of_le_of_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-affinespan-eq-of-le-of-card-eq-finrank-add-one.md) | 253 | `result-track:da2e59a3d9aaa2c7b6de0333bb3ecee80db99d238d7955d07e24fba80d4d085d` |
| 22 | `theorem` | [AffineIndependent.affineSpan_eq_top_iff_card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-affinespan-eq-top-iff-card-eq-finrank-add-one.md) | 265 | `result-track:bf8e39c9b232db0c7dad6e4c4d62586bf4a9a56c5d40537261fc20c1f188e022` |
| 23 | `theorem` | [Affine.Simplex.span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affine-simplex-span-eq-top.md) | 280 | `result-track:aed27f70f6d4dcf250e0a8b82a42379c99670e62c0126d10f7efd86b0637dda5` |
| 24 | `instance` | [finiteDimensional_vectorSpan_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-vectorspan-insert.md) | 287 | `declaration-track:1dacf4c606e8bdf9fd9daeb3a0df0fced153f78c549a90912324117cdf413e0a` |
| 25 | `instance` | [finiteDimensional_direction_affineSpan_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-direction-affinespan-insert.md) | 301 | `declaration-track:c64f301bfd4ce3db37d8a7da9af9fe602232472d71151d22d8b4ce6ce989ec05` |
| 26 | `instance` | [finiteDimensional_vectorSpan_insert_set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional-vectorspan-insert-set.md) | 311 | `declaration-track:1151b99068e269fa1c08a5410a051e6dc464d3c86c1a4537b99af2e3f12b5af4` |
| 27 | `def` | [Collinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear.md) | 321 | `declaration-track:40be810872fcd7122c3defc5ad57ee3c6a54d171639cdcafd51f157284325c69` |
| 28 | `theorem` | [collinear_iff_rank_le_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-rank-le-one.md) | 326 | `result-track:449593a24c0b5362ae9967b7221e7c17680f31eeec06405fc04c642cbe28c265` |
| 29 | `theorem` | [collinear_iff_finrank_le_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-finrank-le-one.md) | 335 | `result-track:b7459c287bb04f2171600e0f5c71bca056b006f2ae4f8f1f8568c7815b444cfa` |
| 30 | `theorem` | [Collinear.subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-subset.md) | 346 | `result-track:a284459f3b20dfe96c638ec49ff706ae357c6951becc08dea9881bb3bd355d23` |
| 31 | `theorem` | [Collinear.finiteDimensional_vectorSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-finitedimensional-vectorspan.md) | 351 | `result-track:c4c87d6333ef809de1b66dc1f76c50ba3a9fc17d7620435726105b5fff04a11c` |
| 32 | `theorem` | [Collinear.finiteDimensional_direction_affineSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-finitedimensional-direction-affinespan.md) | 358 | `result-track:22ad2277d55bd16b07da441ba1aa0302d1613aaec38c14c036d944cb076a65e4` |
| 33 | `theorem` | [collinear_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-empty.md) | 366 | `result-track:35c9e862b85e0dd318e8f70a323e15fafb629cc669f6ea0217494299cd5cbf51` |
| 34 | `theorem` | [collinear_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-singleton.md) | 374 | `result-track:610643d0f45abc97cfa1224c6a58614fcfe1d5f415a94b53f6646a887e771979` |
| 35 | `theorem` | [collinear_iff_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-of-mem.md) | 384 | `result-track:b86edadaf8585931a91ae54d2937ad96bcccfde8a816d5b8cc5341a7b5475273` |
| 36 | `theorem` | [collinear_iff_exists_forall_eq_smul_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-exists-forall-eq-smul-vadd.md) | 414 | `result-track:10ffde6742d7939848f52fb7c212c015ed5b2d720554ef8cd07e79a21cc0a4e7` |
| 37 | `theorem` | [collinear_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-pair.md) | 433 | `result-track:897a4b11762a303cd7fa0319de27ac0efc7264b9246afba984ec7e8231a9168b` |
| 38 | `theorem` | [affineIndependent_iff_not_collinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-not-collinear.md) | 449 | `result-track:f6db04286a13b911e285e15aec4e8181ea69f3aa3d2c1770f13568dbfaa8d3cc` |
| 39 | `theorem` | [collinear_iff_not_affineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-not-affineindependent.md) | 457 | `result-track:6d4588e3e9de54550814d6c2f2fcafee47c6122d23f6247b0ce0dbf75be9df31` |
| 40 | `theorem` | [affineIndependent_iff_not_collinear_set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-not-collinear-set.md) | 464 | `result-track:bdc3108c526d8f527fa649e9eae6073f32009e32985fcda223338a9d837253eb` |
| 41 | `theorem` | [collinear_iff_not_affineIndependent_set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-not-affineindependent-set.md) | 471 | `result-track:4341f21ff48d0d8f4751481d783af42770a7a000b9c43f5ecdfb813ee05c19bd` |
| 42 | `theorem` | [affineIndependent_iff_not_collinear_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/affineindependent-iff-not-collinear-of-ne.md) | 477 | `result-track:035eeb1482d97bdd78df1a551b7f6113ed325118659a8436f93c7e89e32e662c` |
| 43 | `theorem` | [collinear_iff_not_affineIndependent_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-iff-not-affineindependent-of-ne.md) | 488 | `result-track:6758b33289174aa3a917077b738c5cb6ba943ba8964b3fd35d6183df635fc1c7` |
| 44 | `theorem` | [ne₁₂_of_not_collinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/ne-of-not-collinear-source-edition-3.md) | 495 | `result-track:4fb0ed8c645765ceab0eb503aa14f6e8c00d725cb8e523f3eca2b5ac09d9ac93` |
| 45 | `theorem` | [ne₁₃_of_not_collinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/ne-of-not-collinear-source-edition-2.md) | 502 | `result-track:32fc182406f089ee088fc7c09b7b1669153dc4f875191080bc39974868a4114e` |
| 46 | `theorem` | [ne₂₃_of_not_collinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/ne-of-not-collinear.md) | 509 | `result-track:0873f6f23d45ad122b0e759883b0cbf8eb99af641a4b4ad05bb66c758f29c882` |
| 47 | `theorem` | [Collinear.mem_affineSpan_of_mem_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-mem-affinespan-of-mem-of-ne.md) | 517 | `result-track:3170594f623d55209b9dfdf8dcae604124615280464c68f776abe49de912f545` |
| 48 | `theorem` | [Collinear.affineSpan_eq_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-affinespan-eq-of-ne.md) | 533 | `result-track:e19fb7bb90353109f769e43c708a2726c0f2c9aa9a8916ce60f5ac4e519afa12` |
| 49 | `theorem` | [Collinear.collinear_insert_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-collinear-insert-iff-of-ne.md) | 541 | `result-track:138f200eccda69b484a6464cc84297fdcb0d7937b905d985f46c98f05324425d` |
| 50 | `theorem` | [collinear_insert_iff_of_mem_affineSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-insert-iff-of-mem-affinespan.md) | 553 | `result-track:28a9b03547875756381368a3c23acef0f4ad4b6e226a439550d65522080fb585` |
| 51 | `theorem` | [collinear_insert_of_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-insert-of-mem-affinespan-pair.md) | 559 | `result-track:db707c8fcc156dd82312b469409e939df50dc0ee86ad9da39cebbcdd0f6d6d33` |
| 52 | `theorem` | [collinear_insert_insert_of_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-insert-insert-of-mem-affinespan-pair.md) | 566 | `result-track:78c99f93fc8f2f2273b11023c3ef3e9de5533135297ad637b23e0fc536b1c3bb` |
| 53 | `theorem` | [collinear_insert_insert_insert_of_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-insert-insert-insert-of-mem-affinespan-pair.md) | 575 | `result-track:43f9c66dbb48bd23f3ecf9131ab4113264dc471fa7e8f0c8ec77942a0bdac539` |
| 54 | `theorem` | [collinear_insert_insert_insert_left_of_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-insert-insert-insert-left-of-mem-affinespan-pair.md) | 588 | `result-track:43d328ced1678916041444c83407330d1e3cc0bbca9ed731c94718f6136f5ea1` |
| 55 | `theorem` | [collinear_triple_of_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-triple-of-mem-affinespan-pair.md) | 597 | `result-track:fb07fecafeca65e0bc2f35a1990fa154cb08668119e528d16d7b5e1b3c70072b` |
| 56 | `def` | [Coplanar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar.md) | 607 | `declaration-track:780ac1e1fe4a378728e3b7ef92c4b394da96a36b1c63fac7f8ff6e9df73ecdcb` |
| 57 | `theorem` | [Coplanar.finiteDimensional_vectorSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-finitedimensional-vectorspan.md) | 614 | `result-track:3db2537bf84002b90122dbf59583383b0ae5f882621e6fbea3cf12a5887d2aeb` |
| 58 | `theorem` | [Coplanar.finiteDimensional_direction_affineSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-finitedimensional-direction-affinespan.md) | 621 | `result-track:fa84e66e8c343fc9be33131be6b1ca7094e55f9c3bb66d7cc6122424bba2a77b` |
| 59 | `theorem` | [coplanar_iff_finrank_le_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-iff-finrank-le-two.md) | 628 | `result-track:4e3c0f3a62f5d8d2f440e0e8f7adbde161855560b0aafd9158a04ca05cabd738` |
| 60 | `theorem` | [Coplanar.subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-subset.md) | 639 | `result-track:e307c61737ad639b47f1b140a7151e9167183420e88ee054631003aacbceb238` |
| 61 | `theorem` | [Collinear.coplanar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-coplanar.md) | 644 | `result-track:155ebbbbf721c32cd6330d042093e9cbe3812232cca9874d9e01542d64360a55` |
| 62 | `theorem` | [coplanar_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-empty.md) | 651 | `result-track:889d44e78c48916152067725a369b2d8b94d6a56c8bfbf2d23f6cddef878c495` |
| 63 | `theorem` | [coplanar_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-singleton.md) | 658 | `result-track:fc433d030a140e77829a3bf7057f4f33aa112ca9f7a5fba8bbe5bf6cd554a72a` |
| 64 | `theorem` | [coplanar_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-pair.md) | 663 | `result-track:1e80ea794aefa82c13a4c2f43ed3937a7c2b663292d216d8241a10d70495a5b8` |
| 65 | `theorem` | [coplanar_insert_iff_of_mem_affineSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-insert-iff-of-mem-affinespan.md) | 670 | `result-track:7ea8d738bf681d6d90d903381c4b699ed90e1308d93787a814ce69593effbc08` |
| 66 | `theorem` | [finrank_vectorSpan_insert_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finrank-vectorspan-insert-le.md) | 686 | `result-track:5d1de56f0bcbff0071b606adce73412d1dedac2771ec317d82b8b49c49236fe7` |
| 67 | `theorem` | [finrank_vectorSpan_insert_le_set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finrank-vectorspan-insert-le-set.md) | 721 | `result-track:8c09e3d82a4b31f886258aa19cf95fcb0b63b9bd30cad02ae6b488efa8409718` |
| 68 | `theorem` | [Collinear.coplanar_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/collinear-coplanar-insert.md) | 731 | `result-track:2e06f809dbe70f5fb24497a00bac2e6a25cde5fe107d2407de2f744e2fc023eb` |
| 69 | `theorem` | [coplanar_of_finrank_eq_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-of-finrank-eq-two.md) | 739 | `result-track:a4975431dec9e5f561984c01173249bf526eb843c3cfd05fe373a3f1e8607c62` |
| 70 | `theorem` | [coplanar_of_fact_finrank_eq_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-of-fact-finrank-eq-two.md) | 746 | `result-track:28bbdb77ac005633171fdb5795115817a3b8355d602622db88107b0c69957e7c` |
| 71 | `theorem` | [coplanar_triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/coplanar-triple.md) | 753 | `result-track:1f7e33fbd31b72a1457770a07020883d1741450d076f3539836b53773dbadc4c` |
| 72 | `theorem` | [finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finitedimensional.md) | 771 | `result-track:8cc3b6a718fae0ba7b723789bf45d359c988c4f0e016fa55022633e1f29e6a93` |
| 73 | `theorem` | [finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finite.md) | 776 | `result-track:c30571c36eb493641fd8de23bf1262e05d90a33cbc4d2a3051ff6b49d87729b2` |
| 74 | `theorem` | [finite_set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/finite-set.md) | 780 | `result-track:87d06b66b3208fc3d1d6870d928082510dcd8ccfe6fb326af7a93e80cbcee605` |
| 75 | `theorem` | [card_eq_finrank_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/card-eq-finrank-add-one.md) | 785 | `result-track:7e143675d263ed743e6c1e82840f4c6c191350c058df8bf646995b96dc286a72` |
| 76 | `theorem` | [exists_affineBasis_of_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensional.lean/declarations/exists-affinebasis-of-finitedimensional.md) | 791 | `result-track:a52f5a87698246c7b274cf9f0406e04c323de62f250771765e3370ac4e4c5c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2ce5682c60379eb970f933f964d4240c8b1ddbc1ca3e49b287f0a659207583e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
