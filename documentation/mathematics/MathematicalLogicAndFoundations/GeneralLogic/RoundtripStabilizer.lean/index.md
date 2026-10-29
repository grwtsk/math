# Roundtrip Stabilizer

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79c42325f4f0a3def7311dc41bc5d64cab5ee055`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/RoundtripStabilizer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteSet](declarations/finiteset.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Ledger](declarations/ledger.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Ledger.contains](declarations/ledger-contains.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Ledger.equiv](declarations/ledger-equiv.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Ledger.appendIfNodup](declarations/ledger-appendifnodup.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Ledger.appendIfNodup_monotone](declarations/ledger-appendifnodup-monotone.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Ledger.equiv_refl](declarations/ledger-equiv-refl.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [HasFiniteResidues](declarations/hasfiniteresidues.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AuthorityBoundary](declarations/authorityboundary.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Nonclaim](declarations/nonclaim.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [LoopState](declarations/loopstate.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ledgerContains](declarations/ledgercontains.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ledgerStrictSubset](declarations/ledgerstrictsubset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [containmentUpdate](declarations/containmentupdate.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [containment_monotone](declarations/containment-monotone.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [activeContained](declarations/activecontained.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [residueCleared](declarations/residuecleared.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [contained_not_cleared](declarations/contained-not-cleared.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ReplayPath](declarations/replaypath.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [InvalidReplayPath](declarations/invalidreplaypath.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pathResidues](declarations/pathresidues.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [allInvalidPathsBlocked](declarations/allinvalidpathsblocked.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [CleanProjection](declarations/cleanprojection.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Interface](declarations/interface.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [InterfaceCompatibility](declarations/interfacecompatibility.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [interfaceAdmitted](declarations/interfaceadmitted.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CanonicalFactor](declarations/canonicalfactor.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [outputEquivalent](declarations/outputequivalent.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ReplaySignature](declarations/replaysignature.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [SignaturePolicy](declarations/signaturepolicy.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [signatureStable](declarations/signaturestable.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [CausalReplayTransport](declarations/causalreplaytransport.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [CrossingCheck](declarations/crossingcheck.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [GaugePayload](declarations/gaugepayload.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [GaugePolicy](declarations/gaugepolicy.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [gaugeEquivalent](declarations/gaugeequivalent.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [RoundtripStabilityStatus](declarations/roundtripstabilitystatus.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [EqualityPolicies](declarations/equalitypolicies.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [CorrectivePotential](declarations/correctivepotential.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [CorrectiveMove](declarations/correctivemove.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [RoundtripComparison](declarations/roundtripcomparison.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [statusOf](declarations/statusof.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [stableWithResidue_notCleared](declarations/stablewithresidue-notcleared.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [containmentExpanded_implies_strict_subset](declarations/containmentexpanded-implies-strict-subset.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [containmentExpanded_implies_ledgerContains](declarations/containmentexpanded-implies-ledgercontains.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [status_stableResidueFree_has_empty_active](declarations/status-stableresiduefree-has-empty-active.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [status_stableWithResidue_has_nonempty_active](declarations/status-stablewithresidue-has-nonempty-active.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [authority_drift_refuses_stability](declarations/authority-drift-refuses-stability.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nonclaim_drift_refuses_stability](declarations/nonclaim-drift-refuses-stability.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [correctiveEnergyIncreased_refuses_stability](declarations/correctiveenergyincreased-refuses-stability.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [roundtrip_fixed_or_residue](declarations/roundtrip-fixed-or-residue.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [haltStatus](declarations/haltstatus.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [repeatStatus](declarations/repeatstatus.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [refuseStatus](declarations/refusestatus.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c961cc5cfab8270fecafdeba633e414865244bf957420fd721e6d5cfd5456b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variant6f451b6a680b371794075e6e30a99c82f96ea670557780c903071e6623dbdc01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
