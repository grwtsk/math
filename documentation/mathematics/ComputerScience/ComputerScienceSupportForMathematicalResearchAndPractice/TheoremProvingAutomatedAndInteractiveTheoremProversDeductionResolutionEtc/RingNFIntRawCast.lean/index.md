# Ring NFInt Raw Cast

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a1dfa06f4565a82c73df05931993bf20062712c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingNFIntRawCast.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](declarations/exbase-isatom.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExProd.isAtom](declarations/exprod-isatom.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExSum.isAtom](declarations/exsum-isatom.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RingMode](declarations/ringmode.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Config](declarations/config.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [M](declarations/m.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rewrite](declarations/rewrite.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_assoc_rev](declarations/add-assoc-rev.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_assoc_rev](declarations/mul-assoc-rev.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_neg](declarations/mul-neg.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add_neg](declarations/add-neg.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nat_rawCast_0](declarations/nat-rawcast-0.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nat_rawCast_1](declarations/nat-rawcast-1.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nat_rawCast_2](declarations/nat-rawcast-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [int_rawCast_1](declarations/int-rawcast-1.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [int_rawCast_2](declarations/int-rawcast-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rat_rawCast_2](declarations/rat-rawcast-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [M.run](declarations/m-run.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `initialize` | [(anonymous)](declarations/initialize.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ringNFTarget](declarations/ringnftarget.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ringNFLocalDecl](declarations/ringnflocaldecl.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro` | [(anonymous)](declarations/macro-source-edition-6.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `syntax` | [(anonymous)](declarations/syntax.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `elab` | [(anonymous)](declarations/elab.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [elabRingNFConv](declarations/elabringnfconv.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro-source-edition-5.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `macro` | [(anonymous)](declarations/macro.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `macro` | [(anonymous)](declarations/macro-source-edition-7.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `macro` | [(anonymous)](declarations/macro-source-edition-4.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=417e2e35b2b8329f451ce61b76ae4d64e6cac5921494dace9bb944c06d68662d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
