# Ring NFNamespaced Int Raw Cast

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f205590ff6c01eed936460dbc59969a85e3cd93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingNFNamespacedIntRawCast.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](declarations/exbase-isatom.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExProd.isAtom](declarations/exprod-isatom.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExSum.isAtom](declarations/exsum-isatom.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RingMode](declarations/ringmode.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Config](declarations/config.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [M](declarations/m.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rewrite](declarations/rewrite.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_assoc_rev](declarations/add-assoc-rev.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_assoc_rev](declarations/mul-assoc-rev.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_neg](declarations/mul-neg.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add_neg](declarations/add-neg.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nat_rawCast_0](declarations/nat-rawcast-0.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nat_rawCast_1](declarations/nat-rawcast-1.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nat_rawCast_2](declarations/nat-rawcast-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [int_rawCast_1](declarations/int-rawcast-1.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [int_rawCast_2](declarations/int-rawcast-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rat_rawCast_2](declarations/rat-rawcast-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [M.run](declarations/m-run.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `initialize` | [(anonymous)](declarations/initialize.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ringNFTarget](declarations/ringnftarget.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ringNFLocalDecl](declarations/ringnflocaldecl.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `elab` | [(anonymous)](declarations/elab.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `syntax` | [(anonymous)](declarations/syntax.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `macro` | [(anonymous)](declarations/macro-source-edition-4.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [elabRingNFConv](declarations/elabringnfconv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro-source-edition-6.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `macro` | [(anonymous)](declarations/macro-source-edition-5.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `macro` | [(anonymous)](declarations/macro-source-edition-7.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro` | [(anonymous)](declarations/macro.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad3f58f53f93968c966ab8e39d91e42660813e3b7d552dc9bff00395b4bf4360 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
