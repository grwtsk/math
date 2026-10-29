# Limits Shapes Terminal Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8630c3d3cb60e899c2d605e90f75917cf8c6041a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesTerminalNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTerminal](declarations/hasterminal.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasTerminalChangeDiagram](declarations/hasterminalchangediagram.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasTerminalChangeUniverse](declarations/hasterminalchangeuniverse.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [terminal](declarations/terminal.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hasTerminal_of_unique](declarations/hasterminal-of-unique.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTerminal.hasTerminal](declarations/isterminal-hasterminal.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [terminal.from](declarations/terminal-from.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [terminalIsTerminal](declarations/terminalisterminal.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [uniqueToTerminal](declarations/uniquetoterminal.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [terminal.hom_ext](declarations/terminal-hom-ext.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [terminal.comp_from](declarations/terminal-comp-from.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [initialIsoIsInitial](declarations/initialisoisinitial.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [terminal.isSplitMono_from](declarations/terminal-issplitmono-from.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [hasInitial_op_of_hasTerminal](declarations/hasinitial-op-of-hasterminal.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasTerminal_of_hasInitial_op](declarations/hasterminal-of-hasinitial-op.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [limitConstTerminal](declarations/limitconstterminal.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [limitConstTerminal_inv_π](declarations/limitconstterminal-inv.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [colimitConstInitial](declarations/colimitconstinitial.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ι_colimitConstInitial_hom](declarations/colimitconstinitial-hom.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [InitialMonoClass.of_initial](declarations/initialmonoclass-of-initial.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [InitialMonoClass.of_terminal](declarations/initialmonoclass-of-terminal.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [terminalComparison](declarations/terminalcomparison.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [hasLimit_of_domain_hasInitial](declarations/haslimit-of-domain-hasinitial.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [limitOfInitial](declarations/limitofinitial.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasLimit_of_domain_hasTerminal](declarations/haslimit-of-domain-hasterminal.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [limitOfTerminal](declarations/limitofterminal.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isIso_π_of_isInitial](declarations/isiso-of-isinitial.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [isIso_π_initial](declarations/isiso-initial.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isIso_π_of_isTerminal](declarations/isiso-of-isterminal.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [isIso_π_terminal](declarations/isiso-terminal.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=559c2fbd804bada3d5afd9bc50919b82c9db6c21c6110f424c87e6a3cc1ad65e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
