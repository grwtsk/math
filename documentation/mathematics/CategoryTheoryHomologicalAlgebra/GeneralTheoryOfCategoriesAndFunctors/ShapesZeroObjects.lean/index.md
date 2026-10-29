# Shapes Zero Objects

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dde1fdd1479cabbe368e73733705f565d523348d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjects.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsZero](declarations/iszero.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [to_](declarations/to.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [eq_to](declarations/eq-to.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [to_eq](declarations/to-eq.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [from_](declarations/from.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eq_from](declarations/eq-from.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [from_eq](declarations/from-eq.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_of_src](declarations/eq-of-src.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_of_tgt](declarations/eq-of-tgt.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [epi](declarations/epi.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mono](declarations/mono.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [iso](declarations/iso.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isInitial](declarations/isinitial.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isTerminal](declarations/isterminal.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isoIsInitial](declarations/isoisinitial.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [isoIsTerminal](declarations/isoisterminal.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_iso](declarations/of-iso.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [op](declarations/op.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unop](declarations/unop.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Iso.isZero_iff](declarations/iso-iszero-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Functor.isZero](declarations/functor-iszero.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [HasZeroObject](declarations/haszeroobject.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasZeroObject_pUnit](declarations/haszeroobject-punit.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [HasZeroObject.zero'](declarations/haszeroobject-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isZero_zero](declarations/iszero-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [hasZeroObject_op](declarations/haszeroobject-op.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hasZeroObject_unop](declarations/haszeroobject-unop.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsZero.hasZeroObject](declarations/iszero-haszeroobject.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [IsZero.isoZero](declarations/iszero-isozero.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsZero.obj](declarations/iszero-obj.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [uniqueTo](declarations/uniqueto.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [uniqueFrom](declarations/uniquefrom.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [to_zero_ext](declarations/to-zero-ext.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [from_zero_ext](declarations/from-zero-ext.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [zero_to_zero_isIso](declarations/zero-to-zero-isiso.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [zeroIsInitial](declarations/zeroisinitial.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [zeroIsTerminal](declarations/zeroisterminal.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [zeroIsoIsInitial](declarations/zeroisoisinitial.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [zeroIsoIsTerminal](declarations/zeroisoisterminal.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [zeroIsoInitial](declarations/zeroisoinitial.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [zeroIsoTerminal](declarations/zeroisoterminal.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Functor.isZero_iff](declarations/functor-iszero-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84f6540c42584d31dcf509a8629ae8c06680e9fafb070c1d8d1c96fbedd622cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
