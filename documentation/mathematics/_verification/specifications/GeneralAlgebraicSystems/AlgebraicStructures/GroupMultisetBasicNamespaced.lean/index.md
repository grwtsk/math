# Verification target: Group Multiset Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffc0279650c57e2d3dd7838e98503f0f5812b38b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant19f210bbd6ad52e8e032a86b82759508fe1a0dbcecbd08b441964249fc782815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffc0279650c57e2d3dd7838e98503f0f5812b38b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant19f210bbd6ad52e8e032a86b82759508fe1a0dbcecbd08b441964249fc782815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant19f210bbd6ad52e8e032a86b82759508fe1a0dbcecbd08b441964249fc782815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-erase.md) | 44 | `result-track:3037c1f30b93f09a1701a3f8aace89c89430880024400292c895683ea65df3b9` |
| 2 | `theorem` | [prod_map_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-erase.md) | 48 | `result-track:aa8b2678db10907564a9d96da7bbb6e2dca758a623e6c97f19967ae415b8f39b` |
| 3 | `theorem` | [prod_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-add.md) | 54 | `result-track:cadaa38357ad93b232d8cbb717d9d379c3442ec3a7666c1ee091b698fbc9db07` |
| 4 | `theorem` | [prod_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-nsmul.md) | 58 | `result-track:773b352fb55946ab7f230f48d060887dda56296a7485f3e71c6f1ab8466bc598` |
| 5 | `theorem` | [prod_filter_mul_prod_filter_not](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-filter-mul-prod-filter-not.md) | 65 | `result-track:871504c05825c5c32e63583725a31c94db0cc3c0d8c2d74c7df4d6648e075674` |
| 6 | `theorem` | [prod_map_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-eq-pow-single.md) | 70 | `result-track:d8286ed69689c78fdf6c4d43287938ba2cd16b6fe9a6ca860ea0f3c83f372dbb` |
| 7 | `theorem` | [prod_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-eq-pow-single.md) | 76 | `result-track:4bafb1cc1bc1a0d7e5f2cd12a7ce9831d884dd1e38623b8392042b72149c053d` |
| 8 | `lemma` | [prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-eq-one.md) | 81 | `result-track:1efdc53a5b3f7678913e8bd9aa3bb0e8e2b424a98e26458907ff295ca4393217` |
| 9 | `theorem` | [prod_hom_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-hom-ne-zero-source-edition-2.md) | 85 | `result-track:a434efef10e1fd0f3d3769565ed2ddf495ff78a47ab615028b9dbec0703c9d6a` |
| 10 | `theorem` | [prod_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-hom.md) | 91 | `result-track:3b349a24fd7330d706f03424292bee6e8c1c7c5a46e70a57d4f2a17405f2515b` |
| 11 | `theorem` | [prod_hom'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-hom-source-edition-2.md) | 97 | `result-track:9665c119d7d20c14d29a5d657d965a3e88623f1960c87ebf55ae09c90873e744` |
| 12 | `theorem` | [prod_hom₂_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-hom-ne-zero.md) | 104 | `result-track:0be7c18457763fc28eabed693d67f39857bb88b79303f5baf467540d5cfc1d62` |
| 13 | `theorem` | [prod_hom₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-hom-source-edition-3.md) | 110 | `result-track:a47dd60a8e51bfb47943cab7d051819e2a25e34f678f6439854d78b665bf84ef` |
| 14 | `theorem` | [prod_map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-mul.md) | 117 | `result-track:60eb89542a457911b4dbcaab529824487501659dfce1eef2c8a7c5371dd0e265` |
| 15 | `theorem` | [prod_map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-pow.md) | 121 | `result-track:e2fd7ccd86d27ddb9ed4790f9513b3d7158f29da74e9c252a3a19378a2d203ab` |
| 16 | `theorem` | [prod_map_prod_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-prod-map.md) | 125 | `result-track:414e702285f95f80ec8c010f27cc96410318acb74f62218a3732edc11e022893` |
| 17 | `theorem` | [prod_dvd_prod_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-dvd-prod-of-le.md) | 130 | `result-track:1963d477bcea8408d2d1b55c691b08c2a9c94e47c311a7783dccf63d6f854e42` |
| 18 | `lemma` | [Group Multiset Basic Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/map-multiset-prod.md) | 135 | `result-track:687ae4915cc6f9ee1ac607ad0b80c97e718c418c2ebc68d61983c43403f324ef` |
| 19 | `lemma` | [Group Multiset Basic Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/map-multiset-ne-zero-prod-source-line-139-occurrence-2.md) | 139 | `result-track:da2eb62ed35f382cc2a644d0a736bad8279d7396e7310b7988c8460e44584ba9` |
| 20 | `lemma` | [Group Multiset Basic Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/map-multiset-prod-source-line-144-occurrence-2.md) | 144 | `result-track:999e48262613523bc33ebd953414912e9cbc4cbbb89c22f59140699477b8dc28` |
| 21 | `lemma` | [Group Multiset Basic Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/map-multiset-ne-zero-prod.md) | 148 | `result-track:cc61211f2d57e53cf0ddd1976ea5dbddd09dca00f877ef322629018ecb2d50db` |
| 22 | `lemma` | [dvd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/dvd-prod.md) | 151 | `result-track:01807f3f0a5fd65fc58cd93dc27729bb43ddbb5846777b56db58163e655d5944` |
| 23 | `lemma` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/fst-prod.md) | 154 | `result-track:7f6280295224ff35c15d186edc29df0a084b13f3ebecfe778cf872f7cee4187b` |
| 24 | `lemma` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/snd-prod.md) | 157 | `result-track:8772002aa990b463ecf5952a24425e6d618c0e2f51a3fadacb41c36c90399e24` |
| 25 | `theorem` | [prod_dvd_prod_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-dvd-prod-of-dvd.md) | 162 | `result-track:d8111f1f23520ff8f6b0ea92291f81656d2d8d6343e80b4a965d59a5cac641e4` |
| 26 | `def` | [sumAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/sumaddmonoidhom.md) | 175 | `declaration-track:647ac782071b8fdcb18df3ea730c1da9edd050460b4c7e801471a9c227f49ea1` |
| 27 | `theorem` | [coe_sumAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/coe-sumaddmonoidhom.md) | 181 | `result-track:badbace5ef7bd8709109f63cfe09dcfcae3a6bc9013a321fad7691e47e6a9b98` |
| 28 | `theorem` | [prod_map_inv'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-inv-source-edition-2.md) | 191 | `result-track:e9db5646007d4bf145205482585465bcb202f705f80bc0bc4cd2549d222a1116` |
| 29 | `theorem` | [prod_map_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-inv.md) | 195 | `result-track:b7765639f04f5962291c82c46897a257bbb8c0e289dc6d2213b1e590691d6b1b` |
| 30 | `theorem` | [prod_map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-div.md) | 199 | `result-track:a225ba2563d9ecf68cf20eb2b95f25ebb49bc6b251d77f7ebc686f6f6c53a3f7` |
| 31 | `theorem` | [prod_map_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-map-zpow.md) | 203 | `result-track:47198fa30f105c73cf24cb7c80c814dc95a6677fd59aa868dcbb364bf5188329` |
| 32 | `theorem` | [sum_map_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/sum-map-singleton.md) | 210 | `result-track:e41461b04a40c26dcf2375da9e4a38d285ee6a593d9b8242817cae3a24cc7c05` |
| 33 | `theorem` | [sum_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/sum-nat-mod.md) | 213 | `result-track:7b04983e1a7eb2afba523c39b52b0c924d68a4a5278ef596fa7b0af82a851f14` |
| 34 | `theorem` | [prod_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-nat-mod.md) | 216 | `result-track:7ce040809a40718cafb9ea4bdb2684453271c07e86ec4b4fe1748b206bd3efa8` |
| 35 | `theorem` | [sum_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/sum-int-mod.md) | 219 | `result-track:7bb3d17a13ef19facc1563d0cc5667b0202fd134e6a070950335137885180c44` |
| 36 | `theorem` | [prod_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/prod-int-mod.md) | 222 | `result-track:8f6fb9def26281ca38565cbb19f2289db67a7cb4b3ea1126a0c7134f5753e958` |
| 37 | `theorem` | [sum_map_tsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetBasicNamespaced.lean/declarations/sum-map-tsub.md) | 227 | `result-track:0303796c0d6c3a046db034096a9990cdcf70cf38ab7645229a0bcfb0fcd3f2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74dccac17b9b5cd233fada4719f16a7de7d8a9704901eee98b35de338e5cafd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant19f210bbd6ad52e8e032a86b82759508fe1a0dbcecbd08b441964249fc782815.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant19f210bbd6ad52e8e032a86b82759508fe1a0dbcecbd08b441964249fc782815.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
