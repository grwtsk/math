# Verification target: Comparator Margin Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40af4306e486d98e6be1f0ba47db9ddc28645349",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40af4306e486d98e6be1f0ba47db9ddc28645349`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ComparatorSeparation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComparatorMarginValue](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginvalue.md) | 40 | `declaration-track:1972200b16134d83cf6d76c6938000afa59b67101ca088697ef91992f9d8e213` |
| 2 | `def` | [comparatorMarginValue](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginvalue-source-edition-2.md) | 49 | `declaration-track:6a6d02ab11a2bbc817181ec379d580c2b7ad2c8efe5488c5919fc6a1579577a8` |
| 3 | `theorem` | [comparatorMarginValue_gap](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginvalue-gap.md) | 56 | `result-track:e830d3a186fa6b328398b485525b5be3752bf82f669567ecc2755803f628c80e` |
| 4 | `theorem` | [comparatorMarginValue_sensitivity](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginvalue-sensitivity.md) | 62 | `result-track:ade8d2eced7853d5a8b1dba4307d183c205bdb7b1e944c15f817c6853316a0e8` |
| 5 | `theorem` | [comparatorMarginValue_nonnegative](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginvalue-nonnegative.md) | 69 | `result-track:4ee83ac78f1219b5dc71d127854240bcd62b4a5f1d2572b5eed60f40d219673f` |
| 6 | `structure` | [ComparatorMarginRegime](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/comparatormarginregime.md) | 80 | `declaration-track:1cb1015308182306107bdad88f8f5d9aec94da7d056ccaea22ba195a6cfffc88` |
| 7 | `theorem` | [marginValue_lower_bound](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/marginvalue-lower-bound.md) | 96 | `result-track:efffb69bdc22f62bb92a88624a3e5a82f38c63e87e519f57b17958f7ebcbd86d` |
| 8 | `theorem` | [positive_sensitivity_implies_positive_gap](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/positive-sensitivity-implies-positive-gap.md) | 103 | `result-track:4ec36a43f539ac67be516b35ac5f53f7d4080570abf4d0f39347847b447c9e53` |
| 9 | `theorem` | [positive_lower_margin](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/positive-lower-margin.md) | 113 | `result-track:df6a09783bbe7d15e04fe76ed030c8a2708e8fb187fcc1e6088bd09fc96bac43` |
| 10 | `theorem` | [sensitivity_eq_zero_of_gap_eq_zero](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/sensitivity-eq-zero-of-gap-eq-zero.md) | 122 | `result-track:1e24dd84d975de6e60c5ef7d0c6d45792e8bb2e6b9e45c39b0bb189e948ca7d0` |
| 11 | `theorem` | [gap_ne_zero_of_sensitivity_ne_zero](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/gap-ne-zero-of-sensitivity-ne-zero.md) | 139 | `result-track:5c583f56e594c953b8fe95c71e740bea371d7b61fba7c34d08dc9f813985411c` |
| 12 | `theorem` | [detects_visible](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/detects-visible.md) | 147 | `result-track:eb9504f50e07ae80977c3c0643b3a36ccc998e7fe5e365c08492ee1c660f70ab` |
| 13 | `theorem` | [toComparatorCompleteFor](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/tocomparatorcompletefor.md) | 164 | `result-track:7706b45ea282ed270b58264feadb3b27c3301646846c647d6788b7d951d45eec` |
| 14 | `theorem` | [positive_gap_via_complete](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/positive-gap-via-complete.md) | 173 | `result-track:bbde3c4aab8fa5d22f71e0ccf09e17221ddec555f5fbee6097af7b7141b65b33` |
| 15 | `theorem` | [no_zeroComparator_regime_of_positive_sensitivity](../../../../GroupTheoryAndGeneralizations/ComparatorMarginEdition2.lean/declarations/no-zerocomparator-regime-of-positive-sensitivity.md) | 182 | `result-track:6d6a3add20c10246315da4bfab8354b9e29910af0db182f0a929a50308345711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e5813b4a97f666794264ac3a5430eb21816f0949727355269d2a734d4986a12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
