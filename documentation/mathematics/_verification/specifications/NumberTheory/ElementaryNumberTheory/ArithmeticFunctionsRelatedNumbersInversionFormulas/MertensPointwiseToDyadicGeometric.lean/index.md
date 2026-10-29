# Verification target: GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c733396529d16479328faf49cf014faa96699ad6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c733396529d16479328faf49cf014faa96699ad6`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensDyadicGeometricEnvelope`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensDyadicGeometricEnvelope.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMertensDyadicEpsilon](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicepsilon.md) | 54 | `declaration-track:e446c1a66b7d6d2dfd4a7dfeaa131fdcc8125b73b019e0ac695c3ecbee0f36fa` |
| 2 | `def` | [pointwiseMertensDyadicExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicexponent.md) | 59 | `declaration-track:5f9a8f34c2983341e58e3ea9256118d808db56a822f0470a5507e4f8cb59ef27` |
| 3 | `def` | [pointwiseMertensDyadicConstantFactor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicconstantfactor.md) | 65 | `declaration-track:05e9489ff7b754ac8e5f4689324f1d5e06427c2f2cfaa164294aa0a8b43b95e6` |
| 4 | `def` | [pointwiseMertensDyadicRatio](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio.md) | 70 | `declaration-track:7e114676747fa98ea13df5b49a361fbea698f345c6d7298986aaf56087eb3371` |
| 5 | `theorem` | [pointwiseMertensDyadicRatio_eq_rpow_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-eq-rpow-neg.md) | 75 | `result-track:2c560204382cd01b31e3e20505fdce7781d86333340b9607b1b7a02ab34a026f` |
| 6 | `theorem` | [pointwiseMertensDyadicExponent_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicexponent-pos.md) | 84 | `result-track:ccbf888749ff75c4a76987231bbf049e19e4f8114fba432f98eb4694df60de6a` |
| 7 | `theorem` | [pointwiseMertensDyadicRatio_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-nonneg.md) | 92 | `result-track:948836555ad4126481564fa1ab2de5fa8917ca51df08c4c1a8b9e24a1dbf91fb` |
| 8 | `theorem` | [pointwiseMertensDyadicRatio_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-lt-one.md) | 100 | `result-track:86c7c9e426973220f3fc9a2a1ec5f098801eacede2140596932a71740dafc682` |
| 9 | `theorem` | [cast_dyadicDescendant_le_upperModel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/cast-dyadicdescendant-le-uppermodel.md) | 112 | `result-track:542ecd22b7cd7be6a4a91ab75cc4d694ae69531f916e9afbc5e87cbc58560949` |
| 10 | `theorem` | [sqrt_mul_rpow_eq_totalExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/sqrt-mul-rpow-eq-totalexponent.md) | 134 | `result-track:9f666bddcab0a83e76947d7e3edffa7f7ee791661f0ead7285c7795188b4ed76` |
| 11 | `theorem` | [upperModel_rpow_eq_geometric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/uppermodel-rpow-eq-geometric.md) | 143 | `result-track:9729d2ab44087473c9970055ae0264e45d76353746e7fb3fd9c3c45b29153994` |
| 12 | `theorem` | [dyadic_totalExponent_le_parentScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/dyadic-totalexponent-le-parentscale.md) | 179 | `result-track:aa433d0dbb008ac4961c52c5e740747d58a5ee381d9df788fb460a9af5b33d51` |
| 13 | `theorem` | [ordinaryMertens_descendant_le_geometric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/ordinarymertens-descendant-le-geometric.md) | 197 | `result-track:1bbf3d7cc3d12eca94341796032307dc8ae99f2044be3425342081095916dde5` |
| 14 | `theorem` | [dyadicOrdinaryMertensGeometricEnvelope_of_pointwise](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/dyadicordinarymertensgeometricenvelope-of-pointwise.md) | 260 | `result-track:ed7c1754ac45ce1a155a3f6645e0d789a220c722ab7a956f7d62b45d7098158e` |
| 15 | `def` | [pointwiseMertensToDyadicGeometricAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertenstodyadicgeometricadapter.md) | 287 | `declaration-track:30eb9063717e152e863014bb9f44f46c14ba0fe33dfcedac90b0ed13a3cd2e31` |
| 16 | `theorem` | [parityMertensSquareRootEnergy_of_pointwise](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/paritymertenssquarerootenergy-of-pointwise.md) | 294 | `result-track:8e7c3141f3581dafab79add201da1639d6d12b4fa4514a2ce6ceada6f1cefb8e` |
| 17 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-nonzero.md) | 302 | `result-track:32f9714f6ee69760a11455d994a2e3ac992ed8b5df0c0189d8df54df92d9324e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9cb835928012c5ffcc079e9bd78b1a815682539ce84a2be84fe3a1aeb6134668 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
