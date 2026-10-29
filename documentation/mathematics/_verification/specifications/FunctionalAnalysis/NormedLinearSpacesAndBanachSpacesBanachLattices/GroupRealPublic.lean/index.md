# Verification target: Group Real Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846349e4b2bc8a60dbec1837a691e03f264b6ae2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846349e4b2bc8a60dbec1837a691e03f264b6ae2`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/instance-source-edition-2.md) | 30 | `declaration-track:3b62abe51f6123a644c4aaf3d2d2a87b7409a13b8dfa581e4dbdc96bb6472377` |
| 2 | `lemma` | [nnnorm_eq_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-eq-self.md) | 33 | `result-track:6a507fdef3628ccd0d1705197c45dbf48199077ce7f6a9a8f63f2a9a06176d5e` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:d9d05c956eb4db1dc563b5e9d2b24ac490a1c9cc859eae0ef4bafd8fdf072dec` |
| 4 | `lemma` | [enorm_eq_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-eq-self.md) | 40 | `result-track:6a0dac4fb1726b4ddccb0b4fbd2071ca5931e185fe2f360dac13717a8875fd8e` |
| 5 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/instance.md) | 42 | `declaration-track:124e0efeb76f56c2f2f021b0a919caf42c6364c0c9c801515a9fdf8424084536` |
| 6 | `instance` | [norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm.md) | 52 | `declaration-track:81a6507203f70dd97897d676fb06c1888a51376319302d86d144d5617974b124` |
| 7 | `theorem` | [norm_eq_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-eq-abs.md) | 56 | `result-track:6dd7ebf15b74b805264dedee67745d383344d759c045bd3a50ce30ead5207826` |
| 8 | `instance` | [normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/normedaddcommgroup.md) | 59 | `declaration-track:cd61df7ea0bb249e5744574716f4d5c28d343340abd8b2705e637121b647e189` |
| 9 | `theorem` | [norm_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-of-nonneg.md) | 62 | `result-track:e6ddfc5dcda24b5b1be07fb284cc5ae842b18929d834789677741e4d99f8b76d` |
| 10 | `theorem` | [norm_of_nonpos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-of-nonpos.md) | 65 | `result-track:b5f6c3dc1a378426421a96d2943dce54971f0b5ee5ee9c146280932133254b3c` |
| 11 | `theorem` | [le_norm_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/le-norm-self.md) | 68 | `result-track:42639e76733e9a12ea3cc1c1bd44c5638a31de005138bf88cff04a11facd2866` |
| 12 | `lemma` | [norm_natCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-natcast.md) | 71 | `result-track:fd012ebf1d27f34c394621c923b211fd1151f5c711bbe09e369c4142b53751b3` |
| 13 | `lemma` | [nnnorm_natCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-natcast.md) | 72 | `result-track:a95a7ee640556c8c2018d932b44ca5b42cecba6f16050b56b7371ad0450d7db2` |
| 14 | `lemma` | [enorm_natCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-natcast.md) | 73 | `result-track:23d7d45f69bd06d149dff6d76be46996557c1b568604d8468449bd2fbe4c8bf3` |
| 15 | `lemma` | [norm_ofNat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-ofnat.md) | 75 | `result-track:12199d2d0c99277732d99ecf274a28941331ec7978c2ce99721843a82de98b11` |
| 16 | `lemma` | [nnnorm_ofNat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-ofnat.md) | 78 | `result-track:6df2ef5393523b64176b90748ffa5addfdb9c5b47956089463a5921a2e6923cd` |
| 17 | `lemma` | [norm_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-two.md) | 81 | `result-track:fdf633eded3f10ca4714bf2383894e4540083a7829b137632c1ebafcd57f2973` |
| 18 | `lemma` | [nnnorm_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-two.md) | 82 | `result-track:4bbf62a66fa544ef594257be6362470ef36305fd381224d9d27bdeecb5e579dd` |
| 19 | `lemma` | [norm_nnratCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-nnratcast.md) | 85 | `result-track:104c27c6fef1ddf481cbefe17962dc4f739f8d7b1249e3876559c0435288bcd3` |
| 20 | `lemma` | [nnnorm_nnratCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-nnratcast.md) | 88 | `result-track:53ee64352112e42b1fe8d0e9259d9b874a6e2cee170b4e66534a3ec6aac68131` |
| 21 | `theorem` | [nnnorm_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-of-nonneg.md) | 92 | `result-track:d32edbcff41b42eec54a0554ea296f2ef0cf214f5b4fab9edd553fb002c54a47` |
| 22 | `lemma` | [enorm_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-of-nonneg.md) | 95 | `result-track:c7d7a4db1242f485db7ca20af1dc380b8bed09b088ac0300818b6c419811d542` |
| 23 | `lemma` | [enorm_ofReal_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-ofreal-of-nonneg.md) | 98 | `result-track:da4ef479491f1d938bc1bcf51bdd32e9a642c1f5fd4efe90f2ff5f0af8d246ea` |
| 24 | `lemma` | [nnnorm_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-abs.md) | 101 | `result-track:0ce8d57b1f4459a54db4db8cd01129f9ad9578b3d0f93385df6c62a59d8e1d68` |
| 25 | `lemma` | [enorm_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-abs.md) | 102 | `result-track:527d216f39ebf3c767765e3f37b6ff68e85c21dbdfeeef003a16726e5b9e4970` |
| 26 | `theorem` | [enorm_eq_ofReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-eq-ofreal.md) | 104 | `result-track:0bc431ca8c30b23f704571fe0a2001cfdb36dc87362167705faecd0e9c05faf4` |
| 27 | `lemma` | [enorm_toReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-toreal.md) | 107 | `result-track:e6b49523c97b4f87494339ce7076c2aea13b2a12a4913ca3b0ddb39bc08c3cfd` |
| 28 | `theorem` | [enorm_eq_ofReal_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-eq-ofreal-abs.md) | 110 | `result-track:f92ff36dcade885c79cebf3e69a77ebd82b3660609d6576432f52f78b5ef62d2` |
| 29 | `theorem` | [toNNReal_eq_nnnorm_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/tonnreal-eq-nnnorm-of-nonneg.md) | 113 | `result-track:9287283d56cee1196638e068761e2f56bf6d8cc35548127d3eb72ffcde5ba645` |
| 30 | `theorem` | [ofReal_le_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/ofreal-le-enorm.md) | 118 | `result-track:5c26532d082daa00538e3890c1323e97d44b5274d8537d229fb62069bf794f14` |
| 31 | `lemma` | [norm_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/norm-norm.md) | 129 | `result-track:1fd561ec5212c80548bd7b5880295564dbc4ce2fe734e2f786c6187acd0ceeac` |
| 32 | `lemma` | [nnnorm_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/nnnorm-norm.md) | 132 | `result-track:9bb2e23c603113f7792c9bf0cbc909eae3040379f2695ee2194e15c09161e83b` |
| 33 | `lemma` | [enorm_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-norm.md) | 135 | `result-track:01461fa5049862355314f522978cb4813efb0b47283db97ddfbbad9d3789b968` |
| 34 | `lemma` | [enorm_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/enorm-enorm.md) | 137 | `result-track:7868b404cd951697dfed589b97f026300c00d9c547b9a45d925279067a5ffb64` |
| 35 | `lemma` | [tendsto_norm_atTop_atTop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupRealPublic.lean/declarations/tendsto-norm-attop-attop.md) | 141 | `result-track:d6eec3a2e8769fa3316f51def4c29106d18e9f69e0137fa04a5b7b6e93c1fc63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e62885b66ba451a3e3400fef5ba8308b86e0c4c47f7524081296bd0845c4667d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
