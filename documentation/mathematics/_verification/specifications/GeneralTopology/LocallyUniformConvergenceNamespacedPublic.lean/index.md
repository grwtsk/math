# Verification target: Locally Uniform Convergence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10609935c04dad50b1809882a3466c13694fec00",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10609935c04dad50b1809882a3466c13694fec00`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon.md) | 60 | `declaration-track:f81fda0c626d5af6bd24a4a9ed060e690aed51281cfb6b5e41fd1bd69e894abb` |
| 2 | `def` | [TendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly.md) | 66 | `declaration-track:6240e5dd418cd298109299de3a5e4ecb3934cf978bbf6501abbf54899e8061bd` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_univ](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-univ.md) | 69 | `result-track:03287f137ce821f9880e29cebba2c1e7fb09223a66d0d4923b8c7431f775684f` |
| 4 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff-forall-tendsto.md) | 73 | `result-track:5e2c8cd9b4e70df4faf5c8068d338cadddc1a8e3c51f63fb8d815b5cc1bfd12e` |
| 5 | `theorem` | [IsOpen.tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/isopen-tendstolocallyuniformlyon-iff-forall-tendsto.md) | 79 | `result-track:6c8a10babc2ee329808e172c7f3f182c11ab0f61d8969e09aa154158f124db51` |
| 6 | `theorem` | [tendstoLocallyUniformly_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-iff-forall-tendsto.md) | 85 | `result-track:b706264698f7bf5ec956118e2bebda00d3ee8f2f41a41233110f1cb5ae37012c` |
| 7 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff-tendstolocallyuniformly-comp-coe.md) | 90 | `result-track:6cf1144219dbe133982ffc321f77260453120898770e52ef6510be1bf1f90c45` |
| 8 | `theorem` | [TendstoUniformlyOn.tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstouniformlyon-tendstolocallyuniformlyon.md) | 96 | `result-track:5fd8541320ffbbaf7171b52a63ce6a7b06e2fea14fb0243f932f705d3533c6d8` |
| 9 | `theorem` | [TendstoUniformly.tendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstouniformly-tendstolocallyuniformly.md) | 100 | `result-track:648993e1ce87246cdfe1d2f012c700b96cdb653ef4798d41a74a391af9a88a82` |
| 10 | `theorem` | [TendstoLocallyUniformlyOn.mono](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-mono.md) | 103 | `result-track:69ccd34b16fe62ffb72eca9f0c1311dd57aee32aed3fcebb74ffd341dbf0358c` |
| 11 | `theorem` | [tendstoLocallyUniformlyOn_iUnion](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iunion.md) | 109 | `result-track:4ff9f5252994ceb0a37915d53ea94ac16cbc40ada75f16b9db331f5486be18b9` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_biUnion](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-biunion.md) | 116 | `result-track:af582a4107434ba92f67c7fc59d3cd8143dd18594e83747cafb2c4fa169d74cb` |
| 13 | `theorem` | [tendstoLocallyUniformlyOn_sUnion](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-sunion.md) | 122 | `result-track:62b61bf4c4f70c63f7f3f3d52196c87e8b01f36f88bc2825d25084b918d82483` |
| 14 | `theorem` | [TendstoLocallyUniformlyOn.union](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-union.md) | 127 | `result-track:3c5a8b8543051348140992ee45c7df616f23ff1f74b7a2b316e853ad3daade14` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-tendstolocallyuniformlyon.md) | 133 | `result-track:a2264c7d2b430e8dac5c45e211077b834868c4f5f02a4945623ee10be4990443` |
| 16 | `theorem` | [tendstoLocallyUniformly_iff_tendstoUniformly_of_compactSpace](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-iff-tendstouniformly-of-compactspace.md) | 138 | `result-track:823de5c23b324c4dc9520016a918580e84487ead6d14e51907ecc2e2febc6189` |
| 17 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff-tendstouniformlyon-of-compact.md) | 152 | `result-track:0eefc096d44f5e10c5e04d552dbeeffa98b82ac8b8fe4df2c16af9a21e3d4e36` |
| 18 | `theorem` | [TendstoLocallyUniformlyOn.comp](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-comp.md) | 166 | `result-track:faf4a756f7a4f643dcd35a2742ab6f5d5ebcbdb89ed0c79d3a0fc3ffbe38943b` |
| 19 | `theorem` | [TendstoLocallyUniformly.comp](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-comp.md) | 175 | `result-track:20e4dc380122d3c0b4f353979a6a40f9128ebd6932b1afcefda77c847da70025` |
| 20 | `theorem` | [UniformContinuousOn.comp_tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/uniformcontinuouson-comp-tendstolocallyuniformlyon.md) | 183 | `result-track:158bec559865cec67a2ded4cf112c568e92d7611ff1afdfe5cec0cc158b1d534` |
| 21 | `theorem` | [UniformContinuousOn.comp_tendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/uniformcontinuouson-comp-tendstolocallyuniformly.md) | 191 | `result-track:bc8e8ea8778ab9ed61eb48ec4b8e9b7949faed6a045726768063b12c32c8ffd9` |
| 22 | `theorem` | [UniformContinuous.comp_tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/uniformcontinuous-comp-tendstolocallyuniformlyon.md) | 198 | `result-track:0c7d674f3a6c44c1a76dd2c3d68ffc1c40a52a6cacc0b5272743085ec13ab9a4` |
| 23 | `theorem` | [UniformContinuous.comp_tendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/uniformcontinuous-comp-tendstolocallyuniformly.md) | 204 | `result-track:be39f2056f7b6b8621a6f513d43b9d2600aa2f58369216f8742681971d85d086` |
| 24 | `theorem` | [TendstoLocallyUniformlyOn.prodMk](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-prodmk.md) | 211 | `result-track:b38fa6a6db828d3215779022b7643ec98a2fe60725b6048312131880f1ccb6ea` |
| 25 | `theorem` | [TendstoLocallyUniformlyOn.piProd](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-piprod.md) | 219 | `result-track:5e3a5c18522e3653604eada829076905df2b7b178b4497610e5a8d20e41fcd55` |
| 26 | `theorem` | [TendstoLocallyUniformly.prodMk](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-prodmk.md) | 224 | `result-track:40e8cd355be1929e0270745ecf3764035c74db235096c1e870c1236bed831ed5` |
| 27 | `theorem` | [TendstoLocallyUniformly.piProd](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-piprod.md) | 230 | `result-track:985e66cba1484f1ab9585c3e88e41eac9e636aefb6e9790a99c416e6805beaa0` |
| 28 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_exists_nhds](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-of-forall-exists-nhds.md) | 241 | `result-track:f28a18f501d991a96f7cbe6bf91b92b24a9637112572497eddb111774519edf4` |
| 29 | `lemma` | [tendstoLocallyUniformly_of_forall_exists_nhds](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-of-forall-exists-nhds.md) | 252 | `result-track:61de9d87c6db9728073158231c2ec308a256fb70643d0cac864949dc2ea2e419` |
| 30 | `theorem` | [tendstoLocallyUniformlyOn_TFAE](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-tfae.md) | 258 | `result-track:2463b80399096ff68769c6fdbc9a95d86f23fcaaf7a5f84a6e78191725705161` |
| 31 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_isCompact](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff-forall-iscompact.md) | 277 | `result-track:66a3881d1d527c79701a8b6afdc8d16c3977d5b7d68bf7f5ec796618886d8d8e` |
| 32 | `lemma` | [tendstoLocallyUniformly_iff_forall_isCompact](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-iff-forall-iscompact.md) | 281 | `result-track:34ed9379b5d7eb3f994729aacd93fb4aeb098cc91eed5d0552eb514e759494d6` |
| 33 | `theorem` | [tendstoLocallyUniformlyOn_iff_filter](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff-filter.md) | 286 | `result-track:e9c75251ca54ccdd2f307e0420cb12133f6eaa6319dc7b5e23fee92a3e2b5340` |
| 34 | `theorem` | [tendstoLocallyUniformly_iff_filter](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-iff-filter.md) | 297 | `result-track:b268b48b80cdfbaaa223cd34fe6c2b767b59ae59f4ef8ab29ee1139170acba94` |
| 35 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_at](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-tendsto-at.md) | 302 | `result-track:995947cbd33dc06e2451ef6489b94ac5aa13344a166530f3f180da11da97c809` |
| 36 | `theorem` | [TendstoLocallyUniformlyOn.unique](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-unique.md) | 307 | `result-track:1d9848ee7613cf55d8475c616c0c1651f0cf7572e074619a1d4e11e51298038c` |
| 37 | `theorem` | [TendstoLocallyUniformlyOn.congr_inseparable](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-congr-inseparable.md) | 311 | `result-track:67f2d0e3f20c6987dce85ab40addc11d2797a310de6fb3c8c200378459fa2fd9` |
| 38 | `theorem` | [TendstoLocallyUniformlyOn.congr](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-congr.md) | 322 | `result-track:4d91a8ed4d90ff1f71e2c1c4f2734caaa8770d8737ae446a8d08bf2cf4032265` |
| 39 | `theorem` | [TendstoLocallyUniformlyOn.congr_inseparable_right](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-congr-inseparable-right.md) | 326 | `result-track:828b59cdcb5d989040e4821d89d774bb64954edb0053b03bd72a910b4bb41d45` |
| 40 | `theorem` | [TendstoLocallyUniformlyOn.congr_right](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-congr-right.md) | 338 | `result-track:f2408b92719b434e45a60a3659a76b2d80cd0ff80750ebdb037730339cb1abbd` |
| 41 | `theorem` | [TendstoLocallyUniformly.congr_inseparable](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-congr-inseparable.md) | 342 | `result-track:8407424574e012eee6867faaa292aa0da5d38e3e1a905be02b05b264e5fb19bc` |
| 42 | `theorem` | [TendstoLocallyUniformly.congr](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-congr.md) | 348 | `result-track:d73f067c4966a48a898dc291976835174ad727e5b1c35dd840b9c7c701cd3920` |
| 43 | `theorem` | [TendstoLocallyUniformly.congr_inseparable_right](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-congr-inseparable-right.md) | 352 | `result-track:32dcc294f15d68f886ca5b731006df6c4e8d884c852eb4f10a28e9caece455db` |
| 44 | `theorem` | [TendstoLocallyUniformly.congr_right](../../../../GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/declarations/tendstolocallyuniformly-congr-right.md) | 358 | `result-track:10601c85f86176fb8bc5f9f6317858ca658c11855031cb276c6a100088edd386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c7ad3d3e1005c40b9a229d02fb3abe1bde218cf41071d6add97e93c3397581c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
