# Verification target: Ring Theory Laurent Series Laurent Series Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cedaa88e867efe21ad908eb4147ccb4ae267aa4c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cedaa88e867efe21ad908eb4147ccb4ae267aa4c`.

Source path: `GRWTSK/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/laurentseries.md) | 40 | `declaration-track:71f03c0bf1f69d850b45bad927b1c2bad95d8faa9b11c7529ca300327c1bf13f` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 52 | `declaration-track:e676ea3b73d3b1e066946a391b4a7b0d052ecf0cab5025104325b950ad76f77e` |
| 3 | `theorem` | [coeff_coe_powerSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coeff-coe-powerseries.md) | 62 | `result-track:978c4833aff7b0a96dfe4404b0be3e6a3fe155a7f3d3d22e48f85fa78bd0c902` |
| 4 | `def` | [powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/powerseriespart.md) | 70 | `declaration-track:5e2532e62584f4abcb1a2f91029365cab09f842ff8b22dbf33157bd105e51718` |
| 5 | `theorem` | [powerSeriesPart_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/powerseriespart-coeff.md) | 75 | `result-track:0b3cb5471118badc7acc3d9ab9fdb2c70ef8be440010f488e0b20f79a3548c0e` |
| 6 | `theorem` | [powerSeriesPart_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/powerseriespart-zero.md) | 81 | `result-track:7bbbcc03c65448df3ce9899a207ae93f574961e420187a17d4f92e254043efd1` |
| 7 | `theorem` | [powerSeriesPart_eq_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/powerseriespart-eq-zero.md) | 87 | `result-track:3969d2bd681691f683ae5aed3270dec35bcfe5538ec1f18ab13d825aff441174` |
| 8 | `theorem` | [single_order_mul_powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/single-order-mul-powerseriespart.md) | 100 | `result-track:2909bb444fc96aa29a5af0c110b882ce88aa68bff7e9af61441faa4e3ac82235` |
| 9 | `theorem` | [ofPowerSeries_powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/ofpowerseries-powerseriespart.md) | 118 | `result-track:a5aba7ea7884ae112445fb8f5891d410e1d3d587c44e470a42f171e8516561ca` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 126 | `declaration-track:aab2906411e53016e0d883e30d4716f6da01b7783991d9cf871870ad19d6f789` |
| 11 | `theorem` | [coe_algebraMap](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-algebramap.md) | 130 | `result-track:5f0c4f6bce23be6b3412a345ef9a261f161dd9e5900f8601c601595524656f53` |
| 12 | `instance` | [of_powerSeries_localization](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/of-powerseries-localization.md) | 137 | `declaration-track:c6532809197469fb7b9e79a411223d3eca08f57f02a2f80b634d9e3d964d3533` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/instance.md) | 178 | `declaration-track:6aa26e15a5ca1e998b580f5b4193f1b0fc3a5398fc0c836451b2c9cdd6ba8764` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 179 | `declaration-track:f26d28e64cc70bb02e9333a8383e7924d05744081e015500f18a7d18a2b84c3e` |
| 15 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-zero.md) | 193 | `result-track:6604f5c540d4f7748efeb5b2cf2831ca44235e0f45d77a89dff3e7b83bb2c036` |
| 16 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-one.md) | 198 | `result-track:3ea6f3398c733d41b2c13c986a48436e998ca01c2ccf36a2c70fec2cd6062c87` |
| 17 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-add.md) | 203 | `result-track:0021cc4a84a348ae9784fe05a8d9e9ef75a225700bce13bc1cf3be0e0975b8c3` |
| 18 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-sub.md) | 208 | `result-track:0a1a37073c87450e0e2fb1674e6d1b9e1cd11c8b6a41e0488d7cb6e8818bd222` |
| 19 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-neg.md) | 213 | `result-track:f441dab9509f6059f4662d4641959dfa35309330c93187783ef0fcaba8d570c7` |
| 20 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-mul.md) | 218 | `result-track:d34f5f583ae1453676365fa5ab6b37f5332d7e6ad82b0f5e9b9dc6898e2e13e0` |
| 21 | `theorem` | [coeff_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coeff-coe.md) | 222 | `result-track:2866661371e20c2a813d22a758ad637cc78e1d3335de8e27cb0b8d5f6e29a4b5` |
| 22 | `theorem` | [coe_C](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-c.md) | 235 | `result-track:a46b496aef02431336592b582a1f2d68e2075c3d2295d3fb1173d5a95f63df2c` |
| 23 | `theorem` | [coe_X](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-x.md) | 241 | `result-track:03e83ad352e87d1117aa28b6e7e5f1c284580d1ce6c60a8b043aaed4b6581927` |
| 24 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-smul.md) | 247 | `result-track:cad9f6607f55fbe84001a884a42a123ca0ba99e1fdbc48c5958ecf7047ed1d7f` |
| 25 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesNamespacedSourceEdition1.lean/declarations/coe-pow.md) | 258 | `result-track:92cfd2fa08de145aa5915be5234849dc6130eea669f3091399d12979dabff3df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8d57b8612a9c062cb37eab981e46b5e1ffbdcdb75a306c2a992a118ac93bccf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean","GRWTSK/_verification/specifications/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
