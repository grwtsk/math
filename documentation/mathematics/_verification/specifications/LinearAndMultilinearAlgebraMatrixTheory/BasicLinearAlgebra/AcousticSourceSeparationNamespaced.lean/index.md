# Verification target: Acoustic Source Separation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "007139266dfb082d9fe9791e75c2dd4868366cce",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `007139266dfb082d9fe9791e75c2dd4868366cce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AcousticSynergy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceChannels](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/sourcechannels.md) | 26 | `declaration-track:ada0290a5ca5884bd04404117afb8d968018cc5577c2723b50cd16d451abc5ad` |
| 2 | `def` | [sumReceiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/sumreceiver.md) | 29 | `declaration-track:6c78c0e35fa8c71c374c7a3a4854fc1c298860502bec0461c308766b77d93099` |
| 3 | `def` | [differenceReceiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/differencereceiver.md) | 33 | `declaration-track:ca3f644c247b20191a96db21a254400fe7d182f016d84f2e091290a541481aa0` |
| 4 | `def` | [pairedReceiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/pairedreceiver.md) | 37 | `declaration-track:97e252e3b22fd3123aa75a7aca368e1685e0d62fb568490cba78c03b41cc6864` |
| 5 | `def` | [pairedReceiverDecoder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/pairedreceiverdecoder.md) | 41 | `declaration-track:7b2364a135263d051d5d7e8e62e88439fe19d7b8216b33b2ff812fb3c486e56b` |
| 6 | `theorem` | [paired_receiver_decoder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/paired-receiver-decoder.md) | 45 | `result-track:45c9dacc6a48f988232b6182f0428e8a01d5d3ff7a17bb0f041faa490ceb3e7f` |
| 7 | `theorem` | [paired_receiver_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/paired-receiver-injective.md) | 51 | `result-track:65a7befc933461e3156afe072cf095d860cbc728d9449eaf6ada03fa4aea0135` |
| 8 | `theorem` | [target_descends_paired_receiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/target-descends-paired-receiver.md) | 55 | `result-track:14a893f1d09a2f70b5002f0ba0ed0cc7e2cf6fdd07e082e15dcc51a7241fc61c` |
| 9 | `def` | [sumReceiverObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/sumreceiverobstruction.md) | 60 | `declaration-track:9cf741a12c498603c583148145dcf5467f72059b597b9ede7b3880643e89026f` |
| 10 | `def` | [differenceReceiverObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/differencereceiverobstruction.md) | 68 | `declaration-track:e2766254d702efe97f86ef7d6c70c825272b9c717d4ef37a39f3883b74314e03` |
| 11 | `theorem` | [first_channel_not_determined_by_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/first-channel-not-determined-by-sum.md) | 76 | `result-track:97f5f559b4d006a1ed8d794241e1cc7fb19766fa141dc0d7167b04c369694b56` |
| 12 | `theorem` | [first_channel_not_determined_by_difference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/first-channel-not-determined-by-difference.md) | 81 | `result-track:0015aae3aa2ed924b9a483fbd251c62dea1115f20080b86878083f20953e7d7d` |
| 13 | `def` | [receiverPolicy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/receiverpolicy.md) | 86 | `declaration-track:da8d7ffdc2258b5a064e63cf4b4beb5a12b33b7a0c93da49bba3ea7cd9ed7eb2` |
| 14 | `def` | [receiverNotion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/receivernotion.md) | 91 | `declaration-track:79a21217a69f15e3f5e56f0c43beb87ddaaca830143ac9bd58689d6c6e9956ab` |
| 15 | `theorem` | [receiver_singleton_equivalent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/receiver-singleton-equivalent-iff.md) | 98 | `result-track:e45310bd8aa5868875ac695027456f86109278f8e5b166071fe67d32e470d999` |
| 16 | `theorem` | [receiver_join_determines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/receiver-join-determines.md) | 111 | `result-track:bf9e986ae4567ee9c35ef2a4691b3c0dc6bc91fd9d5e739407b9c4e7fb42732e` |
| 17 | `theorem` | [receiver_first_channel_synergy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/receiver-first-channel-synergy.md) | 124 | `result-track:13bd6dfe91257d1c9d56da3eab098f66026804d8a08f1f035a367b499925d4c6` |
| 18 | `abbrev` | [SourceWithResidual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/sourcewithresidual.md) | 138 | `declaration-track:e5d3e1a36ba8744bedd0f86c4e0525cfc0466261bd8b59572cfe6e14c1c238bc` |
| 19 | `def` | [residualReceiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/residualreceiver.md) | 141 | `declaration-track:ae0ca4dbbfd31e2b518ea96ac335c7648a296243699733c452a655a9e33a668c` |
| 20 | `def` | [residualReceiverObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/residualreceiverobstruction.md) | 146 | `declaration-track:b1a0ec67d860dae4ba31038fad94e3d474f6da62f8b05ec21ea69d6565d49b76` |
| 21 | `theorem` | [first_channel_not_determined_with_residual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/first-channel-not-determined-with-residual.md) | 156 | `result-track:ce5ac7e36afefbad46a2c7ee7a8842bfef71b29c670d758d626fb5b7011f7ba8` |
| 22 | `def` | [finiteArrayCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/finitearraycarrier.md) | 161 | `declaration-track:0e038ca6630080b1720aacd87b448d427d464a0196a54d7e51ec5e4bda0ca525` |
| 23 | `theorem` | [finite_array_target_descends](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/finite-array-target-descends.md) | 166 | `result-track:631b7131ffef5322e7c872c3b963abbeca2c754f520749064013c56316447a6e` |
| 24 | `def` | [finiteArrayKernelObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/finitearraykernelobstruction.md) | 176 | `declaration-track:4267e5d91f420c5d2106cc50c5996ea29233f235784f3c095a8247a4870504be` |
| 25 | `def` | [spectralPower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/spectralpower.md) | 186 | `declaration-track:c71e5281a89b157214accc0ccf619cbb994e27459368aa6a19047bb9fd471cbf` |
| 26 | `theorem` | [spectral_power_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/spectral-power-neg.md) | 190 | `result-track:99c0278f18a0205204314016385a82b1e51d00f9ed20bdba0323df0ab8be9b3e` |
| 27 | `def` | [spectralPowerObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/spectralpowerobstruction.md) | 196 | `declaration-track:7caf280e37a7d072f476cc1e02167c24654208b5c544388c51838f06e7bddf25` |
| 28 | `theorem` | [spectrum_not_determined_by_power](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/spectrum-not-determined-by-power.md) | 207 | `result-track:3535267c37cac3916259edbb1b62bf5fdf66590ad6f14083edfbadd3c11d1de3` |
| 29 | `theorem` | [linear_analysis_power_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/linear-analysis-power-neg.md) | 212 | `result-track:d95373206eb14b4be72797b72fd54cb2fac61491c1121a7788a135640f983292` |
| 30 | `def` | [analysisPowerObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/analysispowerobstruction.md) | 219 | `declaration-track:fe9637f8546d6883929e5dd25dc13d7823ca53c993e008ce6b34b9d9de3e2cd3` |
| 31 | `theorem` | [history_descends_of_faithful_paired_receiver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/history-descends-of-faithful-paired-receiver.md) | 229 | `result-track:ef984d68d285c3f98c9d32c51b39589e0d0e6b5a6749a491882e17c0e52a962f` |
| 32 | `abbrev` | [MixedHistory](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/mixedhistory.md) | 245 | `declaration-track:702769d51e2c14f9b2e3cf22906dd1ab485e718ce89947359719a4b36d5dffab` |
| 33 | `def` | [mixedHistoryCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/mixedhistorycarrier.md) | 248 | `declaration-track:9075c3d3573d1a9a38abdabf40bae79bc2968110e68704539be81e36171dc1b8` |
| 34 | `def` | [mixedHistoryObstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/mixedhistoryobstruction.md) | 254 | `declaration-track:801cd42f69f5df38fa36495bc442115bb1a24d17248f1ecdea9749eae27b2ffa` |
| 35 | `theorem` | [history_not_determined_by_mixed_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/declarations/history-not-determined-by-mixed-trace.md) | 275 | `result-track:31241b62298f59c16f1e8640e8b0d899459fbfb6ed295393893e14a6c12b81bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b46d7b5d797a7a053b82419ff6621d5c811349de577a77000d91134ccaf59592 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
