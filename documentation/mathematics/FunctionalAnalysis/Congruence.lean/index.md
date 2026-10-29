# Congruence

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variant0d50857b2d620ddb0328ab1718689b1bd5665d576a56fcd8ed85029911176cca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `250cc74c149b13891cecb02da9adec4d9f19a817`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/Congruence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RepresentationDerivable](declarations/representationderivable.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RoleEquivalence](declarations/roleequivalence.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [DerivationCandidate](declarations/derivationcandidate.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DerivationCandidate.work](declarations/derivationcandidate-work.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DerivedEquation](declarations/derivedequation.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [EquationValid](declarations/equationvalid.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [admitDerivedEquation](declarations/admitderivedequation.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SubstitutionValid](declarations/substitutionvalid.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [deriveEquation](declarations/deriveequation.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [CheckedEquation](declarations/checkedequation.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [verifyEquation](declarations/verifyequation.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [verifiedEquation_sound](declarations/verifiedequation-sound.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [verifiedEquation_well_typed](declarations/verifiedequation-well-typed.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [tableOutput](declarations/tableoutput.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evaluateTerm](declarations/evaluateterm.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [RelationEntry](declarations/relationentry.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [CongruenceCandidate](declarations/congruencecandidate.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [relationPairs](declarations/relationpairs.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [catalogPairUniverse](declarations/catalogpairuniverse.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [catalogTermAt](declarations/catalogtermat.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [finiteWords](declarations/finitewords.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finiteWords_complete](declarations/finitewords-complete.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [RelationStructure](declarations/relationstructure.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [EntryProved](declarations/entryproved.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [verifyEntry](declarations/verifyentry.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [entryProved_derivable](declarations/entryproved-derivable.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [verifyEntries](declarations/verifyentries.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [CongruenceValid](declarations/congruencevalid.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [CheckedCongruence](declarations/checkedcongruence.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [verifyCongruence](declarations/verifycongruence.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [checkedCongruence_sound](declarations/checkedcongruence-sound.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [checkedCongruence_pair_derivable](declarations/checkedcongruence-pair-derivable.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56b2d57ba9b8b4d014cab1d6e2b970fad8b91f4c03830dc1b2422ec2eb79f740 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variant0d50857b2d620ddb0328ab1718689b1bd5665d576a56fcd8ed85029911176cca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
