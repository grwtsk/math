# Verification target: Divisor Representation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd60ed1cea1cc0416250d9e42cb87a7270f43073",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd60ed1cea1cc0416250d9e42cb87a7270f43073`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Divisor](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/divisor.md) | 25 | `declaration-track:2f9845f7da4c325d0c2adcbdd2b466d404f7e2f13c47b61091344eb38499cce3` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/instance-source-edition-3.md) | 31 | `declaration-track:3b360c1378456368374c29a4db33488edcf5a998b7ac2fb909230a59cd148925` |
| 3 | `theorem` | [ext](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/ext.md) | 33 | `result-track:867f548989557398f9e80ed9e22d77f805037940c824cb20695231c11b76b493` |
| 4 | `theorem` | [ne_zero](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/ne-zero.md) | 35 | `result-track:8389cc9e4612391a154d2b4636f91cee107ad43c82de734b34c5e3cb426d224a` |
| 5 | `theorem` | [pos](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/pos.md) | 37 | `result-track:1d92d73f5c237849d352646f25c5985a2e9fd3925700eacd22bec11d85bac7fd` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/instance-source-edition-4.md) | 39 | `declaration-track:620d34f58ce75bfa45d9052a1ca9b6590e6ba4054cdfd10b62b3a47ce17ef3f6` |
| 7 | `theorem` | [le_iff](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/le-iff.md) | 45 | `result-track:2d1f4ab115277701646bfdb0356bb48250404d19663f9701b8835b754a47a14e` |
| 8 | `instance` | [(anonymous)](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:132d28b14945ce882438fd20916462b82ba61430ed40acaf18b738041ec8c748` |
| 9 | `instance` | [(anonymous)](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/instance-source-edition-5.md) | 57 | `declaration-track:6843040b4236adb84a3b1a86fb350720ff179cd4ee27c3221b490e08f544e620` |
| 10 | `theorem` | [coe_bot](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/coe-bot.md) | 63 | `result-track:03ac15b5d081f775a9c0ce1a9a117ad7d7464059be403b3b956e1e7ab3713b29` |
| 11 | `theorem` | [coe_top](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/coe-top.md) | 64 | `result-track:4df1870af903c1f6b908343dfc3097854f315ff972ba91abea7dec651c9cee28` |
| 12 | `theorem` | [coe_inf](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/coe-inf.md) | 65 | `result-track:38e39331ef227dff00bef8f930007347ba55186045346f3e8d28dd5629324e60` |
| 13 | `theorem` | [coe_sup](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/coe-sup.md) | 66 | `result-track:c1400cfb4858e0321fccd092ee65049e8021b5e7786487c7110857981b0ceb92` |
| 14 | `instance` | [(anonymous)](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/instance.md) | 68 | `declaration-track:0154db1bd7a3b711d93ccc5e1ea1ff11a341b1876c3dad988606a31284003de5` |
| 15 | `def` | [valuationOrderIso](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/valuationorderiso.md) | 76 | `declaration-track:6a35e9d83b8f71a6b986ef9490e73013581fc62c430eac279e5baaf9a3a0a2f8` |
| 16 | `theorem` | [valuationOrderIso_apply](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/valuationorderiso-apply.md) | 84 | `result-track:4a6e8548b62f43b3f1edebe8d38b9311a446fee669d6ba9505e05767d291d390` |
| 17 | `theorem` | [valuation_reconstruct](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/valuation-reconstruct.md) | 88 | `result-track:2433b7296a877f8e31d5b57206358a92f100bcd8baa913766d80a8a194326c2f` |
| 18 | `theorem` | [card_eq_product](../../../../Combinatorics/DivisorRepresentationNamespaced.lean/declarations/card-eq-product.md) | 93 | `result-track:7924b17f3ea4a5318b04dc0209429d0da8afa4c4d95835fa3a12f07352d355ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af632c8b3684f987e1155d80e2d9be5da2200eb793345696f55b5032afe6bdab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
