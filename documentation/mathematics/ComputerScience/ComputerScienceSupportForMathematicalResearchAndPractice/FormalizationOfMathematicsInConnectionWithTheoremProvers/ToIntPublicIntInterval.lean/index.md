# To Int Public Int Interval

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a266a720e1382a16d4c2fde72b19fad17fde4aca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ToIntPublicIntInterval.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntInterval](declarations/intinterval.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [uint](declarations/uint.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [sint](declarations/sint.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lo?](declarations/lo.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [hi?](declarations/hi.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [nonEmpty](declarations/nonempty.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isFinite](declarations/isfinite.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mem](declarations/mem.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_co](declarations/mem-co.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_ci](declarations/mem-ci.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_io](declarations/mem-io.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_ii](declarations/mem-ii.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonEmpty_of_mem](declarations/nonempty-of-mem.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [wrap](declarations/wrap.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wrap_wrap](declarations/wrap-wrap.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wrap_mem](declarations/wrap-mem.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [wrap_eq_self_iff](declarations/wrap-eq-self-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [wrap_add](declarations/wrap-add.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [wrap_mul](declarations/wrap-mul.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [wrap_eq_bmod](declarations/wrap-eq-bmod.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [wrap_eq_wrap_iff](declarations/wrap-eq-wrap-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `class` | [ToInt](declarations/toint.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [ToInt.Zero](declarations/toint-zero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [ToInt.OfNat](declarations/toint-ofnat.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [ToInt.Add](declarations/toint-add.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [ToInt.Neg](declarations/toint-neg.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [ToInt.Sub](declarations/toint-sub.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [ToInt.Mul](declarations/toint-mul.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [ToInt.Pow](declarations/toint-pow.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [ToInt.Mod](declarations/toint-mod.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [ToInt.Div](declarations/toint-div.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [ToInt.LE](declarations/toint-le.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [ToInt.LT](declarations/toint-lt.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Zero.wrap_zero](declarations/zero-wrap-zero.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [wrap_toInt](declarations/wrap-toint.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Sub.of_sub_eq_add_neg](declarations/sub-of-sub-eq-add-neg.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toIntUnexpander](declarations/tointunexpander.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68b6efab8edac05cbdf534def0c876f1db27eb838b526c8de5b05d7fb68d4fca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
