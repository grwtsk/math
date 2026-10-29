# Limits Shapes Terminal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantad2926fa1cee5779652bd953d408ef2a79a3b49e118d2b2dccc7b000551961e2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d594d7b08f7abcd567e02c6a58285bdc4795159`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesTerminal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTerminal](declarations/hasterminal.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasInitial](declarations/hasinitial.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasTerminalChangeDiagram](declarations/hasterminalchangediagram.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasTerminalChangeUniverse](declarations/hasterminalchangeuniverse.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hasInitialChangeDiagram](declarations/hasinitialchangediagram.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasInitialChangeUniverse](declarations/hasinitialchangeuniverse.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [terminal](declarations/terminal.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [initial](declarations/initial.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasTerminal_of_unique](declarations/hasterminal-of-unique.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsTerminal.hasTerminal](declarations/isterminal-hasterminal.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasInitial_of_unique](declarations/hasinitial-of-unique.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsInitial.hasInitial](declarations/isinitial-hasinitial.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [terminal.from](declarations/terminal-from.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [initial.to](declarations/initial-to.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [terminalIsTerminal](declarations/terminalisterminal.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [initialIsInitial](declarations/initialisinitial.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [uniqueToTerminal](declarations/uniquetoterminal.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [uniqueFromInitial](declarations/uniquefrominitial.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [terminal.hom_ext](declarations/terminal-hom-ext.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [initial.hom_ext](declarations/initial-hom-ext.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [terminal.comp_from](declarations/terminal-comp-from.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [initial.to_comp](declarations/initial-to-comp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [initialIsoIsInitial](declarations/initialisoisinitial.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [terminalIsoIsTerminal](declarations/terminalisoisterminal.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [terminal.isSplitMono_from](declarations/terminal-issplitmono-from.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [initial.isSplitEpi_to](declarations/initial-issplitepi-to.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasInitial_op_of_hasTerminal](declarations/hasinitial-op-of-hasterminal.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [hasTerminal_op_of_hasInitial](declarations/hasterminal-op-of-hasinitial.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasTerminal_of_hasInitial_op](declarations/hasterminal-of-hasinitial-op.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasInitial_of_hasTerminal_op](declarations/hasinitial-of-hasterminal-op.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [limitConstTerminal](declarations/limitconstterminal.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limitConstTerminal_inv_π](declarations/limitconstterminal-inv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [colimitConstInitial](declarations/colimitconstinitial.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ι_colimitConstInitial_hom](declarations/colimitconstinitial-hom.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [InitialMonoClass.of_initial](declarations/initialmonoclass-of-initial.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [InitialMonoClass.of_terminal](declarations/initialmonoclass-of-terminal.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [terminalComparison](declarations/terminalcomparison.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [initialComparison](declarations/initialcomparison.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [hasLimit_of_domain_hasInitial](declarations/haslimit-of-domain-hasinitial.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [limitOfInitial](declarations/limitofinitial.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [hasLimit_of_domain_hasTerminal](declarations/haslimit-of-domain-hasterminal.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [limitOfTerminal](declarations/limitofterminal.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [hasColimit_of_domain_hasTerminal](declarations/hascolimit-of-domain-hasterminal.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `abbrev` | [colimitOfTerminal](declarations/colimitofterminal.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [hasColimit_of_domain_hasInitial](declarations/hascolimit-of-domain-hasinitial.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [colimitOfInitial](declarations/colimitofinitial.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isIso_π_of_isInitial](declarations/isiso-of-isinitial-source-edition-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [isIso_π_initial](declarations/isiso-initial-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isIso_π_of_isTerminal](declarations/isiso-of-isterminal.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [isIso_π_terminal](declarations/isiso-terminal-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isIso_ι_of_isTerminal](declarations/isiso-of-isterminal-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [isIso_ι_terminal](declarations/isiso-terminal.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isIso_ι_of_isInitial](declarations/isiso-of-isinitial.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [isIso_ι_initial](declarations/isiso-initial.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5dc37cc507dec15cc5830df7b2ef0807f06911e65db82c2a8f70e9bc83634ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantad2926fa1cee5779652bd953d408ef2a79a3b49e118d2b2dccc7b000551961e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
