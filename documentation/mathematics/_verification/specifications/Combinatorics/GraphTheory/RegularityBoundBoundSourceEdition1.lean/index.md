# Verification target: Regularity Bound Bound Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f5e4c68f90ebb55332a0e1c735192e0562c6c7",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variant4fde483dac57e921492f62c43f284f01b907eab1189eebb97180eb7d71e95592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f5e4c68f90ebb55332a0e1c735192e0562c6c7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Bound/Variant4fde483dac57e921492f62c43f284f01b907eab1189eebb97180eb7d71e95592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Bound/Variant4fde483dac57e921492f62c43f284f01b907eab1189eebb97180eb7d71e95592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stepBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/stepbound.md) | 38 | `declaration-track:c033fd896a6f4aae5d9c789c10359a3e2181b8e1fbf43159a9e1baa23a588bf6` |
| 2 | `theorem` | [le_stepBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/le-stepbound.md) | 41 | `result-track:b17fd1e7ef9b5f42aea7bf526fcdac60efc7e96add5d212534682500d7ba3854` |
| 3 | `theorem` | [stepBound_mono](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/stepbound-mono.md) | 44 | `result-track:34ce8b44f4522b4b78d1ed374d68c42d5751c807e002cecf938987d3b89dd9bf` |
| 4 | `theorem` | [stepBound_pos_iff](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/stepbound-pos-iff.md) | 46 | `result-track:0ff6f4bf192232d625f99375815444ab29e257d41c5f978d444a13b1728fe0db` |
| 5 | `lemma` | [coe_stepBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/coe-stepbound.md) | 51 | `result-track:d8fab43c2790aa0a7c625adfd2b8b4c0b41f14428840335b821978d60b8975d2` |
| 6 | `theorem` | [eps_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/eps-pos-source-edition-2.md) | 67 | `result-track:30810c1c06f252229890c0ef9da67a6909346c4c85058945ab184309ef84a111` |
| 7 | `theorem` | [m_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/m-pos-source-edition-2.md) | 71 | `result-track:b6f11ac835a5924b127292b874bb646d067a90763cf8d407a4cc8777d27bd819` |
| 8 | `macro` | [(anonymous)](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/macro.md) | 77 | `declaration-track:e8cac7da7a20ad4be53b50de21dfff471f8b9b2ebdf5a6977987f32cc1eccbd8` |
| 9 | `theorem` | [m_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/m-pos.md) | 102 | `result-track:9dc6139a4a5ff11070131cc0b0a8c86a1d43a63dd5201ceadeda1a37c513cbfd` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/coe-m-add-one-pos.md) | 105 | `result-track:5c15609a6362d7446a3426168ddadcfde83ab1cf7e7f18989b609834bb42b89e` |
| 11 | `theorem` | [one_le_m_coe](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/one-le-m-coe.md) | 107 | `result-track:5709d73ef139d1b24e450091076caab7b6b5b82434dc33ab2b442453c57f5dd4` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/eps-pow-five-pos.md) | 110 | `result-track:00169765efb2482154e57704f7516ab69ea6c2f089af78cbf304886b632cd333` |
| 13 | `theorem` | [eps_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/eps-pos.md) | 113 | `result-track:0c154d323486b9c213754dd35bda328f622d2d3e7982034185291254eb995dc4` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/hundred-div-pow-five-le-m.md) | 116 | `result-track:214b3c13f8b07eca40abb070539866afe5e9ea91e6172b755e9f50522e147388` |
| 15 | `theorem` | [hundred_le_m](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/hundred-le-m.md) | 123 | `result-track:27e20b133a36627610b6a39d297acf089cd14bc02c5d727929b374d7c908bece` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/a-add-one-le-four-pow-parts-card.md) | 129 | `result-track:10c141755532b789126186c2dba898de110c09c3bb9e6a897e6f3ab755c75338` |
| 17 | `theorem` | [card_aux₁](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/card-aux-source-edition-2.md) | 136 | `result-track:378cf61ba8c999053ebe8105490026867d4e23afd2e6ebca02cc321cde5c689d` |
| 18 | `theorem` | [card_aux₂](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/card-aux.md) | 141 | `result-track:2880fbab1e81248187d4a5969d7dd568a8c18957b1be868b27e25216c2237add` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/pow-mul-m-le-card-part.md) | 151 | `result-track:fefdc4a5f5d292334d82a2474363cc8d1882b80098136aea1d70b1f42f46e2e0` |
| 20 | `def` | [initialBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/initialbound.md) | 161 | `declaration-track:2262917572c29045c6b044955f3d40399e7801211a59aa721137e599a0d13946` |
| 21 | `theorem` | [le_initialBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/le-initialbound.md) | 164 | `result-track:3c5db77dc7939ef8c2b167e68f4830d9bc4d0b94ca5f0d6e8c6fe43d968010d2` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/seven-le-initialbound.md) | 167 | `result-track:c184c777d25d0b563b75d317891436c1e7f27ddd764b3557cf72a56e726cd08e` |
| 23 | `theorem` | [initialBound_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/initialbound-pos.md) | 170 | `result-track:0880069cc68a6ee8d838479d4d9b5b5ea731a7f5af2a65d939d3de7b69d9e31f` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/hundred-lt-pow-initialbound-mul.md) | 173 | `result-track:d964763eb753a698994b4805e7a2474df888072e20a61eeb8fdae6dc75bdf2c4` |
| 25 | `def` | [bound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/bound.md) | 184 | `declaration-track:03f05521bbbf53797b6b035e762e8c4a6d8c6d6a56bf5f72b814c58014293f2b` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/initialbound-le-bound.md) | 188 | `result-track:b3afde09bb84428d4b3b50f9bb41376ab6931106f468a76337bd94ef6c739913` |
| 27 | `theorem` | [le_bound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/le-bound.md) | 191 | `result-track:30fb18573e3458b279da60e894a6204e7b7d22d4c2ee0cae57610f15eba959db` |
| 28 | `theorem` | [bound_pos](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/bound-pos.md) | 194 | `result-track:9a4d140d4857628536878b14a0139614b188317c35b4757c0fa75f4e71acd195` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/mul-sq-le-sum-sq.md) | 199 | `result-track:7d77ceed100a38ceaf6b20969f75c584aa82d9ce7f23143fb223dd07fba80c77` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/add-div-le-sum-sq-div-card.md) | 207 | `result-track:50284271dccc432a0639d085b65fafe9487f4ed05eb41fe7ca0d5b1ddb86854a` |
| 31 | `def` | [evalInitialBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/evalinitialbound.md) | 242 | `declaration-track:9a9eafcfcd9f5862ae7167835d61f9e2b760fe4cbd028fc912db3050dc22a62e` |
| 32 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/example.md) | 250 | `declaration-track:025722d10bf84905c26c2e9110066e20123a425bb310864b117f8e75b916504a` |
| 33 | `def` | [evalBound](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/evalbound.md) | 254 | `declaration-track:87e694cad9bda78c81968ae879b867f5a4c9cabb1d2ae7253471c6e17c772872` |
| 34 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/RegularityBoundBoundSourceEdition1.lean/declarations/example-source-edition-2.md) | 261 | `declaration-track:6101f75f040bea4ff33eef5c9f2d5e252858ddfdd5d0f9ec0c2b662ba14bb286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38a6e191b3e4d62935036f516900034ea0413eae7489b60a19cb53fcfd0395d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Bound/Variant4fde483dac57e921492f62c43f284f01b907eab1189eebb97180eb7d71e95592.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Bound/Variant4fde483dac57e921492f62c43f284f01b907eab1189eebb97180eb7d71e95592.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
