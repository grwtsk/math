# Roundtrip Stabilizer Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96625e7989f2406ae83848f232252023fbe13b25`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/RoundtripStabilizerNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteSet](declarations/finiteset.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Ledger](declarations/ledger.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Ledger.contains](declarations/ledger-contains.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Ledger.equiv](declarations/ledger-equiv.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Ledger.appendIfNodup](declarations/ledger-appendifnodup.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Ledger.appendIfNodup_monotone](declarations/ledger-appendifnodup-monotone.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Ledger.equiv_refl](declarations/ledger-equiv-refl.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [HasFiniteResidues](declarations/hasfiniteresidues.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AuthorityBoundary](declarations/authorityboundary.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Nonclaim](declarations/nonclaim.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [LoopState](declarations/loopstate.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ledgerContains](declarations/ledgercontains.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ledgerStrictSubset](declarations/ledgerstrictsubset.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [containmentUpdate](declarations/containmentupdate.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [containment_monotone](declarations/containment-monotone.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [activeContained](declarations/activecontained.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [residueCleared](declarations/residuecleared.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [contained_not_cleared](declarations/contained-not-cleared.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ReplayPath](declarations/replaypath.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [InvalidReplayPath](declarations/invalidreplaypath.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pathResidues](declarations/pathresidues.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [allInvalidPathsBlocked](declarations/allinvalidpathsblocked.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [CleanProjection](declarations/cleanprojection.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Interface](declarations/interface.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [InterfaceCompatibility](declarations/interfacecompatibility.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [interfaceAdmitted](declarations/interfaceadmitted.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CanonicalFactor](declarations/canonicalfactor.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [outputEquivalent](declarations/outputequivalent.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ReplaySignature](declarations/replaysignature.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [SignaturePolicy](declarations/signaturepolicy.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [signatureStable](declarations/signaturestable.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [CausalReplayTransport](declarations/causalreplaytransport.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [CrossingCheck](declarations/crossingcheck.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [GaugePayload](declarations/gaugepayload.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [GaugePolicy](declarations/gaugepolicy.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [gaugeEquivalent](declarations/gaugeequivalent.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [RoundtripStabilityStatus](declarations/roundtripstabilitystatus.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [EqualityPolicies](declarations/equalitypolicies.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [CorrectivePotential](declarations/correctivepotential.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [CorrectiveMove](declarations/correctivemove.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [RoundtripComparison](declarations/roundtripcomparison.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [statusOf](declarations/statusof.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [stableWithResidue_notCleared](declarations/stablewithresidue-notcleared.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [containmentExpanded_implies_strict_subset](declarations/containmentexpanded-implies-strict-subset.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [containmentExpanded_implies_ledgerContains](declarations/containmentexpanded-implies-ledgercontains.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [status_stableResidueFree_has_empty_active](declarations/status-stableresiduefree-has-empty-active.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [status_stableWithResidue_has_nonempty_active](declarations/status-stablewithresidue-has-nonempty-active.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [authority_drift_refuses_stability](declarations/authority-drift-refuses-stability.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nonclaim_drift_refuses_stability](declarations/nonclaim-drift-refuses-stability.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [correctiveEnergyIncreased_refuses_stability](declarations/correctiveenergyincreased-refuses-stability.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [roundtrip_fixed_or_residue](declarations/roundtrip-fixed-or-residue.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [haltStatus](declarations/haltstatus.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [repeatStatus](declarations/repeatstatus.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [refuseStatus](declarations/refusestatus.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b19ff9d15beffe56c84b24a947f158192472c298db6dfde530a59418c3f7a5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
