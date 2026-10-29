# Ring NFInt Raw Cast Neg

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d74594af863d7ce67f1764f55ea4ce2c3e8c07f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingNFIntRawCastNeg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](declarations/exbase-isatom.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExProd.isAtom](declarations/exprod-isatom.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExSum.isAtom](declarations/exsum-isatom.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RingMode](declarations/ringmode.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Config](declarations/config.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [M](declarations/m.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rewrite](declarations/rewrite.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_assoc_rev](declarations/add-assoc-rev.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_assoc_rev](declarations/mul-assoc-rev.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_neg](declarations/mul-neg.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add_neg](declarations/add-neg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nat_rawCast_0](declarations/nat-rawcast-0.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nat_rawCast_1](declarations/nat-rawcast-1.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nat_rawCast_2](declarations/nat-rawcast-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [int_rawCast_neg](declarations/int-rawcast-neg.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rat_rawCast_pos](declarations/rat-rawcast-pos.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rat_rawCast_neg](declarations/rat-rawcast-neg.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [M.run](declarations/m-run.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `initialize` | [(anonymous)](declarations/initialize.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ringNFTarget](declarations/ringnftarget.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ringNFLocalDecl](declarations/ringnflocaldecl.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro` | [(anonymous)](declarations/macro-source-edition-6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `syntax` | [(anonymous)](declarations/syntax.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `elab` | [(anonymous)](declarations/elab.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `macro` | [(anonymous)](declarations/macro-source-edition-7.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [elabRingNFConv](declarations/elabringnfconv.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro-source-edition-4.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `macro` | [(anonymous)](declarations/macro.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `macro` | [(anonymous)](declarations/macro-source-edition-5.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1ed3c1d7a98f403e55f8b45b521cf576446b024e9e5374bc81c3799b18b97ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
