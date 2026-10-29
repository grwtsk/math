# Verification target: Common Channel Splitting And Scalar Decoder Conservation Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058dabde1ecb5cae7f2742831c626547e80636f8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarReadout/Variantfdfd5d275d4ab465754f0bb44ee59b45e96ecf21d7a924d0e887c1acb60b9348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058dabde1ecb5cae7f2742831c626547e80636f8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarReadout/Variantfdfd5d275d4ab465754f0bb44ee59b45e96ecf21d7a924d0e887c1acb60b9348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarReadout/Variantfdfd5d275d4ab465754f0bb44ee59b45e96ecf21d7a924d0e887c1acb60b9348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.TraceGramConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetMean](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/packetmean.md) | 28 | `declaration-track:9123021018c757228697eb506fffa51fc63245e7e91c5a92823e0038f56d6bed` |
| 2 | `def` | [packetDetail](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/packetdetail.md) | 33 | `declaration-track:3305b3982c3fbb9d567acd2e5985b4ef1461a5846c47cd3429cbd875a7e46ac5` |
| 3 | `theorem` | [common_plus_detail](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/common-plus-detail.md) | 35 | `result-track:8283630261560003be507aedfbce1facd0e2e250b31a349d28005281c96536d1` |
| 4 | `theorem` | [packetDetail_centered](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/packetdetail-centered.md) | 38 | `result-track:a5e66ec212ef8aa8d8cccf207b56aeea52f067aa2a5a9d3adbfc4ca15e61603b` |
| 5 | `theorem` | [scalar_packet_mean](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/scalar-packet-mean.md) | 43 | `result-track:174db7ef6aabb68d54ef10d9adc8e46ffc44ac83811a25c33a9f09614fd99922` |
| 6 | `theorem` | [scalar_packet_detail](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/scalar-packet-detail.md) | 46 | `result-track:cc4d3a76d130599d0e485cd4e824ce28d49ad1175e5cbb4d2b842a7f439834b7` |
| 7 | `theorem` | [scalar_decoder_law](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/scalar-decoder-law.md) | 51 | `result-track:efdd492df7782fbad21a94c905dfa5d2b2a246470928eb19b24337deaf414bc8` |
| 8 | `theorem` | [source_preserving_decoder](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/source-preserving-decoder.md) | 58 | `result-track:a4abc01c44c55e59811c05ec7efaca872246e2c7125253dc5f0b40e0551c1544` |
| 9 | `theorem` | [annihilating_decoder](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/annihilating-decoder.md) | 62 | `result-track:0e57a7a01cdccab0d6a4ee13682df65c9f3aaaa78250eb580082fb43df6cd006` |
| 10 | `def` | [centeredWitness](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/centeredwitness.md) | 70 | `declaration-track:d9d4d2df09a55f83bb59bf31ddd5a3613d5bc1be1a8fe641b827ef058cec31c3` |
| 11 | `theorem` | [two_centered_factors_nonzero_pairing](../../../../GroupTheoryAndGeneralizations/CommonChannelSplittingAndScalarDecoderConservationEdition2.lean/declarations/two-centered-factors-nonzero-pairing.md) | 73 | `result-track:2db2ef7699104904342aa2c21b7545afdc56b58d702750434a46b6ac0376b4a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50479389fce3d9b7b94520dba14c6d1829034783d29709171a66dfc950322f4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarReadout/Variantfdfd5d275d4ab465754f0bb44ee59b45e96ecf21d7a924d0e887c1acb60b9348.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarReadout/Variantfdfd5d275d4ab465754f0bb44ee59b45e96ecf21d7a924d0e887c1acb60b9348.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
