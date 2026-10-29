# Verification target: Translate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ff3ab50d2e7443ba1118ec5e669538fd43de191",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Translate/Variantfd0ce2ebfa9f8075ffee05a671691736d5d5429f61d1e90b4eee84290b36a6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Translate.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Translate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ff3ab50d2e7443ba1118ec5e669538fd43de191`.

Source path: `GRWTSK/Algebra/GroupTheory/Translate/Variantfd0ce2ebfa9f8075ffee05a671691736d5d5429f61d1e90b4eee84290b36a6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Translate/Variantfd0ce2ebfa9f8075ffee05a671691736d5d5429f61d1e90b4eee84290b36a6d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [translate](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate.md) | 36 | `declaration-track:348429e19ce3416558d32b5ffaae21dc9a74961511ed907615b37cd4a4743791` |
| 2 | `lemma` | [translate_apply](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-apply.md) | 42 | `result-track:5e7204dabfe5a23302f58706f654922acc6605ced0ecf39fdac82c1114f11ead` |
| 3 | `lemma` | [translate_zero](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-zero.md) | 43 | `result-track:9f1dbecdd7296cafc72fae87a34dbb6a82235c3aa292aaa68eb45f98e19818f6` |
| 4 | `lemma` | [translate_translate](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-translate.md) | 45 | `result-track:3a6ae0dc209ff741c762069313c088aaec4e8411e83136a21f6b2802c16a35bd` |
| 5 | `lemma` | [translate_add](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-add-source-edition-2.md) | 48 | `result-track:a032dc2f4783c9b5b081fbcb2c71dad0e644f3020e0a79972fe718badf984fa2` |
| 6 | `lemma` | [translate_add'](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-add.md) | 51 | `result-track:3c73a1dad1dd3d513a9b7d929033e184414bcce89b51824e2cb104fe38369ea5` |
| 7 | `lemma` | [translate_comm](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-comm.md) | 54 | `result-track:9ec2de76466dffbf1abf93858edcc5521fc6bb13ced469fc2f67576cf0126cea` |
| 8 | `lemma` | [comp_translate](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/comp-translate.md) | 58 | `result-track:27cb33a3f3bea8c5fe0973f57da7ca2adc3fd90c7190f0ee580c8ba773dae1e6` |
| 9 | `lemma` | [translate_eq_domAddActMk_vadd](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-eq-domaddactmk-vadd.md) | 60 | `result-track:74299e10cbc038279f7e4c993822be6730896c7f6fb14103cafb2e478d2b48e7` |
| 10 | `lemma` | [translate_smul_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-smul-right.md) | 64 | `result-track:a51fe7f68d8ddfe636542e3f3a3489b5bf40ff2d9765dd8c7bd5dd5cc773f5ca` |
| 11 | `lemma` | [translate_zero_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-zero-right.md) | 66 | `result-track:137e0b01d9d5396289349b29d6602f08ef556d0e81c64c2fb4c19a947095c10a` |
| 12 | `lemma` | [translate_add_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-add-right.md) | 67 | `result-track:2949bbd2882c7169327a78bcb0d808a22f4dafa2b228f2c8c4447af8432518fb` |
| 13 | `lemma` | [translate_sub_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-sub-right.md) | 68 | `result-track:f232b336810d8add8ba787a07ef89c15a7fc63b80130b17fc2b3223b6c357b99` |
| 14 | `lemma` | [translate_neg_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-neg-right.md) | 69 | `result-track:2521f56519127077a81078947e91291338e541842df6611bb26f0574b1649283` |
| 15 | `lemma` | [translate_sum_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-sum-right.md) | 74 | `result-track:b6850a9144aa8f1c4e1426918fc4260602dc31d1f774c22c693cc113747f7f6a` |
| 16 | `lemma` | [sum_translate](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/sum-translate.md) | 77 | `result-track:829e22696d17562c748ec0f4ade3c37e7dcf815494f13f83e79e01a9eb9019c9` |
| 17 | `lemma` | [support_translate](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/support-translate.md) | 85 | `result-track:be0e676760a696a0c4c93778c4ffeff0b781f9cb69668101584269f26bfe7ee9` |
| 18 | `lemma` | [translate_prod_right](../../../../GroupTheoryAndGeneralizations/Translate.lean/declarations/translate-prod-right.md) | 92 | `result-track:5b2a745d1f2df5dfc34a1928f8133aa0eb03791ce23954c2d10c335b9c1d1bbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=809e6c40f94698aedf074a10b7bff6f99b996cd3b5359915e8ff598204850f0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Translate/Variantfd0ce2ebfa9f8075ffee05a671691736d5d5429f61d1e90b4eee84290b36a6d3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Translate/Variantfd0ce2ebfa9f8075ffee05a671691736d5d5429f61d1e90b4eee84290b36a6d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
