# Stochastic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variante39070ab8088788b9b20d2e82d57d05edcc94d9c07e216857f7b34956830b3e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd118ce36bc31b5938534c868d888040f37233be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/StochasticNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [TransitionMass](declarations/transitionmass.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [StochasticNetwork](declarations/stochasticnetwork.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [outgoingWeight](declarations/outgoingweight.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [transitionMass](declarations/transitionmass-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [PositiveTransition](declarations/positivetransition.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [support](declarations/support.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [endpointFrom](declarations/endpointfrom.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [pathWeightFrom](declarations/pathweightfrom.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pathDenominatorFrom](declarations/pathdenominatorfrom.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [pathMassFrom](declarations/pathmassfrom.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [PositivePath](declarations/positivepath.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Reaches](declarations/reaches.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [paths](declarations/paths.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stateWeightAfter](declarations/stateweightafter.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [distributionAfter](declarations/distributionafter.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [supportAfter](declarations/supportafter.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transitionMass_numerator](declarations/transitionmass-numerator.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transitionMass_denominator](declarations/transitionmass-denominator.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [endpointFrom_nil](declarations/endpointfrom-nil.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [endpointFrom_cons](declarations/endpointfrom-cons.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pathWeightFrom_nil](declarations/pathweightfrom-nil.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pathWeightFrom_cons](declarations/pathweightfrom-cons.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pathDenominatorFrom_nil](declarations/pathdenominatorfrom-nil.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pathDenominatorFrom_cons](declarations/pathdenominatorfrom-cons.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pathMassFrom_numerator](declarations/pathmassfrom-numerator.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pathMassFrom_denominator](declarations/pathmassfrom-denominator.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Network.toStochastic](declarations/network-tostochastic.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [AsynchronousNetwork.transitionWeight](declarations/asynchronousnetwork-transitionweight.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [AsynchronousNetwork.toStochastic](declarations/asynchronousnetwork-tostochastic.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Network.toStochastic_transitionWeight](declarations/network-tostochastic-transitionweight.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AsynchronousNetwork.toStochastic_transitionWeight](declarations/asynchronousnetwork-tostochastic-transitionweight.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c63ecebc45fdbc299f985263072513743934cd39172e1c2a70c4d7016e802da8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variante39070ab8088788b9b20d2e82d57d05edcc94d9c07e216857f7b34956830b3e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
