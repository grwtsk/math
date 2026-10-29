# Eml Flip Scatter Processor

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `005b85f4e45377d68cd9283f7c8faee90b7a0303`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/EmlFlipScatterProcessor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [FlipScatterStage](declarations/flipscatterstage.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [centralizedProcessingChain](declarations/centralizedprocessingchain.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [FlipScatterResidue](declarations/flipscatterresidue.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [FlipScatterResidue.token](declarations/flipscatterresidue-token.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [EmlToposProcessorInput](declarations/emltoposprocessorinput.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinomialTransition](declarations/binomialtransition.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [binomialFlip](declarations/binomialflip.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [binomialFlipTransitions](declarations/binomialfliptransitions.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nandBit](declarations/nandbit.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [NandTraceEntry](declarations/nandtraceentry.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [transitionAdmissible](declarations/transitionadmissible.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [nandTraceForTransition](declarations/nandtracefortransition.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [nandTraceForClass](declarations/nandtraceforclass.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [nandTraceForClasses](declarations/nandtraceforclasses.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [finiteBitstreamOfTrace](declarations/finitebitstreamoftrace.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [bitstreamPayload](declarations/bitstreampayload.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [hasFiniteWitnessBitstream](declarations/hasfinitewitnessbitstream.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [WitnessPacket](declarations/witnesspacket.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [witnessPacketOfTrace](declarations/witnesspacketoftrace.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [claimedAuthorityResidues](declarations/claimedauthorityresidues.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [hasRefusalScatter](declarations/hasrefusalscatter.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hasNonAdmissibleTransition](declarations/hasnonadmissibletransition.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [processorResidues](declarations/processorresidues.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [ToposFlipScatterProcessor](declarations/toposflipscatterprocessor.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monomialScatterOverOrderedData](declarations/monomialscatteroverordereddata.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [runToposFlipScatterProcessor](declarations/runtoposflipscatterprocessor.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [defaultToposProcessorInput](declarations/defaulttoposprocessorinput.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [defaultToposFlipScatterProcessor](declarations/defaulttoposflipscatterprocessor.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nonAdmissibleToposProcessorInput](declarations/nonadmissibletoposprocessorinput.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [nonAdmissibleToposFlipScatterProcessor](declarations/nonadmissibletoposflipscatterprocessor.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [processing_chain_is_centralized](declarations/processing-chain-is-centralized.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [binomial_flip_is_zero_one_zero](declarations/binomial-flip-is-zero-one-zero.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nand_trace_lowers_flip_to_finite_bitstream](declarations/nand-trace-lowers-flip-to-finite-bitstream.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [monomial_scatter_distributes_over_ordered_torsion](declarations/monomial-scatter-distributes-over-ordered-torsion.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [witness_packet_is_next_layer_carrier_evidence](declarations/witness-packet-is-next-layer-carrier-evidence.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [prose_browser_model_are_not_authority](declarations/prose-browser-model-are-not-authority.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nonadmissible_data_emits_residue_not_witness](declarations/nonadmissible-data-emits-residue-not-witness.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [flip_scatter_processor_has_no_theorem_authority](declarations/flip-scatter-processor-has-no-theorem-authority.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bdd241eff014ec2647ea08ae2b7c224bda1feaefbe350eb9c1abb8d4780728d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
