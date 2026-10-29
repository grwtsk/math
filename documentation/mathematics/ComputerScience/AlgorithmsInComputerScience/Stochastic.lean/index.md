# Stochastic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19c1a10c433474f9d1f92dd82c032820261002c4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/Stochastic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [TransitionMass](declarations/transitionmass.md) | 8 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [StochasticNetwork](declarations/stochasticnetwork.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [outgoingWeight](declarations/outgoingweight.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [transitionMass](declarations/transitionmass-source-edition-2.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [PositiveTransition](declarations/positivetransition.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [support](declarations/support.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [endpointFrom](declarations/endpointfrom.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [pathWeightFrom](declarations/pathweightfrom.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pathDenominatorFrom](declarations/pathdenominatorfrom.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [pathMassFrom](declarations/pathmassfrom.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [PositivePath](declarations/positivepath.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Reaches](declarations/reaches.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [paths](declarations/paths.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stateWeightAfter](declarations/stateweightafter.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [distributionAfter](declarations/distributionafter.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [supportAfter](declarations/supportafter.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transitionMass_numerator](declarations/transitionmass-numerator.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transitionMass_denominator](declarations/transitionmass-denominator.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [endpointFrom_nil](declarations/endpointfrom-nil.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [endpointFrom_cons](declarations/endpointfrom-cons.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pathWeightFrom_nil](declarations/pathweightfrom-nil.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pathWeightFrom_cons](declarations/pathweightfrom-cons.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pathDenominatorFrom_nil](declarations/pathdenominatorfrom-nil.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pathDenominatorFrom_cons](declarations/pathdenominatorfrom-cons.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pathMassFrom_numerator](declarations/pathmassfrom-numerator.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pathMassFrom_denominator](declarations/pathmassfrom-denominator.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Network.toStochastic](declarations/network-tostochastic.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [AsynchronousNetwork.transitionWeight](declarations/asynchronousnetwork-transitionweight.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [AsynchronousNetwork.toStochastic](declarations/asynchronousnetwork-tostochastic.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Network.toStochastic_transitionWeight](declarations/network-tostochastic-transitionweight.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AsynchronousNetwork.toStochastic_transitionWeight](declarations/asynchronousnetwork-tostochastic-transitionweight.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adabbeb99eef9b1bab6fbc8e62a5fd30ce760698d9954677b24b1c547ba25aae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
