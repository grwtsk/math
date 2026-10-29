# Verification target: Higher Power Tsum Core Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "156e08e0593496c0f67d017cf4a3ca42ea97eff2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `156e08e0593496c0f67d017cf4a3ca42ea97eff2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HigherPowerIndex](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/higherpowerindex.md) | 19 | `declaration-track:d2b69481aa597aa3f456deaf38fbd933ea7ef6047f7b77e84daacea65e7e2148` |
| 2 | `def` | [powerIndex](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/powerindex.md) | 22 | `declaration-track:21ade57623cb5713152fc9d1944a3dcb04bcbec4882bbbb9ba8262c57f0590b5` |
| 3 | `theorem` | [powerIndex_injective](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/powerindex-injective.md) | 25 | `result-track:639f6ec0b8006a82b51e46b783f16e788d614bc572a518f319c4833e794fa493` |
| 4 | `def` | [higherPairIndices](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/higherpairindices.md) | 35 | `declaration-track:418e06070a6a02de5d7c5c440efabd4ee49137ce0ac1f20b1c540896b62a98cd` |
| 5 | `def` | [higherSourceTerm](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/highersourceterm.md) | 39 | `declaration-track:bbea94d7370a4083859ae26f5ed26aec7666d9bba38e83ab3da83dbad9b35fb8` |
| 6 | `theorem` | [powerIndex_isHigher](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/powerindex-ishigher.md) | 44 | `result-track:501a53e75dad95cef28d281a5eff9e9f9e82edd315a7882696a0dd68a44771bb` |
| 7 | `theorem` | [powerIndex_two_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/powerindex-two-le.md) | 48 | `result-track:b2dd5f6f858134d9928cfc4c333b36fb907755dbaa4b8ffc378bf56318235b80` |
| 8 | `theorem` | [mem_higherPairIndices_iff](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/mem-higherpairindices-iff.md) | 52 | `result-track:4016da662cacc749bf5a785ff90cb8f269e5e4ae6194a5c81f6f086a62853586` |
| 9 | `theorem` | [higherPairIndices_image](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/higherpairindices-image.md) | 59 | `result-track:fd70bc211398f877c89e25dbf2712b6b2ff462632e3eb0c22dab6d4073264d8e` |
| 10 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/higherprimepowercontribution-eq-finite-sum.md) | 74 | `result-track:6ef9cb02c6bb6aa1304a3d1823d03cb7adc6307a50a5828e72b1f9db547287b2` |
| 11 | `theorem` | [higherSourceTerm_zero_outside](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/highersourceterm-zero-outside.md) | 84 | `result-track:f6af2d5e128b6767fb0ec463597bbcb1b39361719c7db688ca1f5bd7cb41e796` |
| 12 | `theorem` | [higherSourceTerm_finite_support](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/highersourceterm-finite-support.md) | 99 | `result-track:6ad5c98fa6c02323aba220ff90498cedd3a7647175d5cd0b707e892378e3f2e9` |
| 13 | `theorem` | [higherSourceTerm_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/highersourceterm-summable.md) | 105 | `result-track:42da6666839450c698648297c358dcdb265bd1031058dab59173657999b7007c` |
| 14 | `theorem` | [higherSourceTerm_norm_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/highersourceterm-norm-summable.md) | 110 | `result-track:905975c8f22f7fe283e66d3d0966b13efea5a1f13c15b27c5af0be54f4645624` |
| 15 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerTsumCoreNamespaced.lean/declarations/higherprimepowercontribution-eq-tsum.md) | 117 | `result-track:6aeb6a5d54b41544a7734affc83e11d3a115457f19dc478e4b4fc14180f8e281` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc116c1aed12e9aa834b67d878e27feb66e11417fd1bc97e20d33977a58b84de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
