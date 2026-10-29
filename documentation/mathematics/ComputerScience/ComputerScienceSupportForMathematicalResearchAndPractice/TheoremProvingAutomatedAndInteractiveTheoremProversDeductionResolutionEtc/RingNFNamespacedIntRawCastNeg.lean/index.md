# Ring NFNamespaced Int Raw Cast Neg

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `574e1b69e3de14a1a85ca0c9e911151b9c3c0d12`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingNFNamespacedIntRawCastNeg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](declarations/exbase-isatom.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExProd.isAtom](declarations/exprod-isatom.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExSum.isAtom](declarations/exsum-isatom.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RingMode](declarations/ringmode.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Config](declarations/config.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [M](declarations/m.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rewrite](declarations/rewrite.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_assoc_rev](declarations/add-assoc-rev.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_assoc_rev](declarations/mul-assoc-rev.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_neg](declarations/mul-neg.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add_neg](declarations/add-neg.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nat_rawCast_0](declarations/nat-rawcast-0.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nat_rawCast_1](declarations/nat-rawcast-1.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nat_rawCast_2](declarations/nat-rawcast-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [int_rawCast_neg](declarations/int-rawcast-neg.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rat_rawCast_pos](declarations/rat-rawcast-pos.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rat_rawCast_neg](declarations/rat-rawcast-neg.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [M.run](declarations/m-run.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `initialize` | [(anonymous)](declarations/initialize.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ringNFTarget](declarations/ringnftarget.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ringNFLocalDecl](declarations/ringnflocaldecl.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro` | [(anonymous)](declarations/macro-source-edition-4.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `syntax` | [(anonymous)](declarations/syntax.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `elab` | [(anonymous)](declarations/elab.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [elabRingNFConv](declarations/elabringnfconv.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `macro` | [(anonymous)](declarations/macro-source-edition-7.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `macro` | [(anonymous)](declarations/macro-source-edition-6.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `macro` | [(anonymous)](declarations/macro-source-edition-5.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22d71a8b1290e344964b6c2497646cefd3d8dc85424f5ce39953ac5b34f6271b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
