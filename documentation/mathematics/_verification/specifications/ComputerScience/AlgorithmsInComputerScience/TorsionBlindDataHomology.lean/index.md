# Verification target: Torsion Blind Data Homology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f12aaeba2d03e7afb45aecb7b9c354cdc96bb6",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f12aaeba2d03e7afb45aecb7b9c354cdc96bb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/torsionfactor.md) | 53 | `declaration-track:6f1cf44a1a195cd2156e00435e60d12cc8d95c306cca93f06a416982bd4c2d6b` |
| 2 | `def` | [forgetExponent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/forgetexponent.md) | 61 | `declaration-track:1f79065a9393067930b4f74a91747bc75bf3c2fd751bb7a12c722fb461adf9b4` |
| 3 | `def` | [countByPrime](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/countbyprime.md) | 66 | `declaration-track:e87ae626fb00dab3e2e57ee50c26c90f4bf353563daae7a7ff2b1b8a6cac29d3` |
| 4 | `theorem` | [countByPrime_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/countbyprime-nil.md) | 71 | `result-track:a0990a516e8e7d17f8fa82792a1de826fccb5bccfb91cb8d2f501451844eeef1` |
| 5 | `theorem` | [countByPrime_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/countbyprime-cons.md) | 74 | `result-track:d7b06aa166635fb4ec0a266ddd2728625adc28e2228b76d61a2f5536e94e3f15` |
| 6 | `theorem` | [countByPrime_map_forgetExponent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/countbyprime-map-forgetexponent.md) | 80 | `result-track:31f9912ab2c2e4511d9b3c8cc0d8fd95dad96d3e96423772f145f1301b592020` |
| 7 | `structure` | [IntegralHomology](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/integralhomology.md) | 91 | `declaration-track:bf29dd9882cf3f5b7af567d77b1b73cd2f0c0beaabd29b5f8b9bb1c905c80f09` |
| 8 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/zero.md) | 99 | `declaration-track:d52e8ca0d531b1a66123f035feac0a72be78b0baa9a18e664c85208beabfb24e` |
| 9 | `def` | [forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/forgetexponents.md) | 104 | `declaration-track:9e91d3729820283a29c0c9cb2ebb73636a19df3af3918b0979dc8dd148d98239` |
| 10 | `def` | [pPrimaryCount](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/pprimarycount.md) | 109 | `declaration-track:c89559d010666899b014763cefd810e14a456505a1cfe90ced75c502fad65dfc` |
| 11 | `theorem` | [zero_rank](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/zero-rank.md) | 112 | `result-track:4a0ba0bbb11ef257777b7f67aa2327293b04e019f87c77a5368f966bfa769bc6` |
| 12 | `theorem` | [zero_torsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/zero-torsion.md) | 114 | `result-track:9c7a4481b14b673989f44dc31cf3dc29965fa9509194c9b8fb59208ed64bddc5` |
| 13 | `theorem` | [pPrimaryCount_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/pprimarycount-zero.md) | 116 | `result-track:6c5077af2a29c361269ff442f9222d5eab9b1e57cb056eda06b70dc05c8cea63` |
| 14 | `theorem` | [forgetExponents_rank](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/forgetexponents-rank.md) | 119 | `result-track:cca36279ce3da98b0845806265aad6d1a7f1fe6bf11fba3be9834a697cd245e6` |
| 15 | `theorem` | [pPrimaryCount_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/pprimarycount-forgetexponents.md) | 123 | `result-track:93e47afb7ece211005a549e9088e8dab6584c320662f93ca25031d3aef38d481` |
| 16 | `def` | [cyclicPTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/cyclicptorsion.md) | 130 | `declaration-track:df7e82efd874a262fbfbc45bd902c19569cfbfb8d80853a917f387593224db40` |
| 17 | `def` | [HasExactPrimePowerFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/hasexactprimepowerfactor.md) | 135 | `declaration-track:c8c9063fd21ab528fd7ac3bfc05f16db27046ebf3963955c44c17a77ac81375b` |
| 18 | `theorem` | [pPrimaryCount_cyclic_same](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/pprimarycount-cyclic-same.md) | 139 | `result-track:27fc9afe829813b60a4a8e9659f2a2b13cc1eb0bbecf88a3e17d7fae51e22ffd` |
| 19 | `theorem` | [pPrimaryCount_cyclic_exponent_blind](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/pprimarycount-cyclic-exponent-blind.md) | 144 | `result-track:96725c756363f4ab5044633554e91fc498640e59ece08018e28dcc68414b77c2` |
| 20 | `theorem` | [cyclic_has_exact_factor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/cyclic-has-exact-factor.md) | 150 | `result-track:6fa5fcd81d7235f6cc18d63777bf4d8e86fa51bb17f0c9ef3e626bd287cf18c9` |
| 21 | `theorem` | [cyclic_not_has_other_exact_factor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/cyclic-not-has-other-exact-factor.md) | 155 | `result-track:91a1fcb91214900bbb1f2a0bd6b6b9452c26744e29b8bb1dde5b4d0bebffe795` |
| 22 | `structure` | [IntegralHomologyProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/integralhomologyprofile.md) | 164 | `declaration-track:241df9bd7ac7aee988521041d773748c515ebcee5cb137660a47e970772fafd6` |
| 23 | `def` | [forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/forgetexponents-source-edition-2.md) | 170 | `declaration-track:cd37e0aafa967496adc74e13880f889d2b5c60e073d7583943973cabb44bd1ca` |
| 24 | `def` | [previousGroup](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/previousgroup.md) | 175 | `declaration-track:89d14b5697d6ad9ed062a76e2eeba14178e0ab3525849ffd2475d2221cb4b485` |
| 25 | `structure` | [UCTSummary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/uctsummary-source-edition-2.md) | 180 | `declaration-track:e71c9b006373609751a15af90c804ea0cf11a2e97e4c460b5311161dbdfaa0a3` |
| 26 | `def` | [modPDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/modpdimension.md) | 188 | `declaration-track:80f19195e4c6bcc1a9a7660c74c05260869b27b401477ed7d7358e07d75a489b` |
| 27 | `def` | [uctSummary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/uctsummary.md) | 194 | `declaration-track:a5a23bf11d0a9aa9ff2a04513977c05b86562279eda450497494aa4b0201d0fd` |
| 28 | `theorem` | [uctSummary_totalDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/uctsummary-totaldimension.md) | 200 | `result-track:5665b237c03174d2110897dba6d99c098002994e5ee1ac6a042780ec6fff9c10` |
| 29 | `theorem` | [previousGroup_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/previousgroup-forgetexponents.md) | 205 | `result-track:da07b84b99fdf650705ad0ee34972c5bac84dd872d8d7bcb039316280021851a` |
| 30 | `theorem` | [modPDimension_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/modpdimension-forgetexponents.md) | 212 | `result-track:291765cd9a90a8cede1f7e0e36a0983fd66714314019b4db4337c83c413f068a` |
| 31 | `structure` | [FieldCoefficientObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldcoefficientobservation.md) | 226 | `declaration-track:fb2cb4ae9a7e22cc26e620193667e4157d80809585509aa0f32dccb5f2962f70` |
| 32 | `theorem` | [extensional](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/extensional.md) | 232 | `result-track:949c832d0716823b437e800e4bc99a40d2a87fa254fd4a24db39228a61d0fae7` |
| 33 | `def` | [Equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/equivalent.md) | 246 | `declaration-track:1925799432c2358eeee8d22028d8d089c372460d9bfa87f126cee1f00cc9a662` |
| 34 | `def` | [fieldObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldobservation.md) | 252 | `declaration-track:f14df55681097804a678271f96269d22ae12afc30c355dcd87df56085cfcd8b6` |
| 35 | `theorem` | [fieldObservation_dim](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldobservation-dim.md) | 256 | `result-track:639692c40d3e8591e5cd3ef9df87512a5b0dc04433ec7b129dc3b540528a550d` |
| 36 | `theorem` | [fieldObservation_forgetExponents_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldobservation-forgetexponents-eq.md) | 261 | `result-track:3e9718509b4ee207b45e1eb7b2d53bd5ff1aba97ca81dfb007fa360b663abc81` |
| 37 | `structure` | [FiniteFieldSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/finitefieldschedule.md) | 269 | `declaration-track:50f5280926de759b81e88772758afb28f8afc80142fa4e0766eaa8405fdc9230` |
| 38 | `def` | [scheduledObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/scheduledobservation.md) | 274 | `declaration-track:dc798c0972b55c1c830c3b24983b612001d87c95d5c72f691c6084b5af03effb` |
| 39 | `theorem` | [scheduledObservation_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/scheduledobservation-forgetexponents.md) | 282 | `result-track:d658807b11c6e88714c23ae4a53e378960308c79540f3001551ecc9a8047e6fd` |
| 40 | `structure` | [MetricData](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/metricdata.md) | 291 | `declaration-track:63b43c7b119f62dc0e7d7d70e070ed382cb6a2f1a57b126bdb400efefcf152f6` |
| 41 | `structure` | [SimplicialComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/simplicialcomplex.md) | 296 | `declaration-track:c26bce3b4ee4f15a50e975b80dc6210cd853d23e58a4d7ca75c343819b68fc19` |
| 42 | `structure` | [DataHomologyPipeline](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/datahomologypipeline.md) | 301 | `declaration-track:36e8fb0c1726c6e747174c566f8c885c3020bdc90bd4f6e44f8240a871975d9f` |
| 43 | `theorem` | [DataHomologyPipeline.fieldProfile_forgetExponent_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/datahomologypipeline-fieldprofile-forgetexponent-equivalent.md) | 309 | `result-track:867682ac83069cd78c7fe73f8b38491f69c962eaca42859482f5167ae931bcc1` |
| 44 | `structure` | [MordellWeilTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/mordellweiltorsion.md) | 319 | `declaration-track:93d983f5c79b6c5aa273f1b597d51db05a51d97abf2f1b52192eb443906649d3` |
| 45 | `structure` | [EllipticArithmeticModel](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/ellipticarithmeticmodel.md) | 324 | `declaration-track:08ebc4d1e8da8eca1bc2ad3e9a7be84b634b1b9bfd2d8f43f5602f1a370a4cd1` |
| 46 | `def` | [fieldTDAObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldtdaobservation.md) | 331 | `declaration-track:976aa7cf7f86a9a1edf2865a00a5276be41e16e27df6ef764462e736dbfc5820` |
| 47 | `abbrev` | [FieldOnlyArithmeticAlgorithm](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/fieldonlyarithmeticalgorithm.md) | 338 | `declaration-track:709f018f8280e0466c21d6d4dc490af0d1e09897359ff187b478c10387079f27` |
| 48 | `def` | [CorrectArithmeticRecovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/correctarithmeticrecovery.md) | 342 | `declaration-track:ecdc1f1a4d95ef82ca0c9d457bea185a5685ad7c39d8e577fafea21c9e7ede5b` |
| 49 | `structure` | [ArithmeticCollision](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/arithmeticcollision.md) | 348 | `declaration-track:c91bdc8da788d5ee7c9fd5df1429c1366fce31830ddeac37b426036782b749e9` |
| 50 | `theorem` | [no_field_only_recovery_from_collision](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/no-field-only-recovery-from-collision.md) | 358 | `result-track:7721546df583d658e6cac6e2d2c3a7de7927f9bbbdfe2fce96c81cad5d3ea84b` |
| 51 | `def` | [ArithmeticTorsionNonIdentifiable](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/arithmetictorsionnonidentifiable.md) | 373 | `declaration-track:2119206a96141daed97016c843d40be7e874b09c4335e2c381f80bdc9075dd99` |
| 52 | `def` | [UniversalFieldOnlyRecovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/universalfieldonlyrecovery.md) | 377 | `declaration-track:f9d761860d9dc608eb0b09d4d38f8708b2d6a5c80307361911b00f59f69a3454` |
| 53 | `theorem` | [collision_refutes_universal_field_only_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/collision-refutes-universal-field-only-recovery.md) | 381 | `result-track:a6af191798c59b3408ca172ff470ddd8393be7c384d25265e62da21dcfd838d8` |
| 54 | `theorem` | [torsion_blindness_summary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomology.lean/declarations/torsion-blindness-summary.md) | 389 | `result-track:59614fba7c5c8d3b64f5a725482f479e987b9cdd5866156d8c6ad9a3c27002b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f17b6f73e3e20916e38aba30bf4f217c452e63065fc9991e217404f0a0c48074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
