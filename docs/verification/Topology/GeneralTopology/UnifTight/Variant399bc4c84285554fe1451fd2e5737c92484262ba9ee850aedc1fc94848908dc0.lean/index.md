# Verification target: GRWTSK.Topology.GeneralTopology.UnifTight.Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e891a5aed639042759ae1e0754704392cd00f26`.

Source path: `GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifTight](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight--5e9705d10553a1a0315b8606.md) | 55 | `declaration-track:5e9705d10553a1a0315b8606e2efc5b1a0376422ea9e3538bbc860e1e5c6d6c1` |
| 2 | `theorem` | [unifTight_iff_ennreal](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-iff-ennreal--b665a3f56ebcc13770d1d134.md) | 58 | `result-track:b665a3f56ebcc13770d1d1344ca3f3c6b3dc162b945b8a1a206f069473b76b36` |
| 3 | `theorem` | [unifTight_iff_real](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-iff-real--91d06212719c00af8cd649b8.md) | 66 | `result-track:91d06212719c00af8cd649b8ca895b200cfe95497af34a55cac3479dba68bcbf` |
| 4 | `theorem` | [eventually_cofinite_indicator](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/eventually-cofinite-indicator--e8d98d05e5a89a3e381bfb75.md) | 76 | `result-track:e8d98d05e5a89a3e381bfb75f917ce4c32379ffa38e18be22749de1a60e6e700` |
| 5 | `theorem` | [exists_measurableSet_indicator](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/exists-measurableset-indicator--ac218bbd79845c966ab45a23.md) | 86 | `result-track:ac218bbd79845c966ab45a23887ca02305c8c5c0b22b7a4198feda0ddbbef7b5` |
| 6 | `theorem` | [add](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/add--494805da8f3efcb4b8a1c03c.md) | 91 | `result-track:494805da8f3efcb4b8a1c03c225ac200c3fa38c5a65be229a620e1833e552096` |
| 7 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/neg--0b34eb702687e4c26dd84f4c.md) | 115 | `result-track:0b34eb702687e4c26dd84f4c7ba7e8e8cba02656d005ffd8a2fbbf8081f895cd` |
| 8 | `theorem` | [sub](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/sub--8c2e20176331012813200a73.md) | 119 | `result-track:8c2e20176331012813200a730301a9b7c5860f3e7c767e3f8dd704f0185ec4fa` |
| 9 | `theorem` | [aeeq](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/aeeq--00a1e5f8cdbc8cd4c4b6ffd2.md) | 125 | `result-track:00a1e5f8cdbc8cd4c4b6ffd2ee456addab39d863d9a1cf9228868bdac0637d72` |
| 10 | `theorem` | [unifTight_congr_ae](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-congr-ae--9e171af9696b0ec564134799.md) | 136 | `result-track:9e171af9696b0ec564134799e7a3f9b7b5adc34ae0dcc9fd2b3c040131d9a933` |
| 11 | `theorem` | [unifTight_const](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-const--30249dcace705c3ae57fbf48.md) | 141 | `result-track:30249dcace705c3ae57fbf482755fa0d30e1bc00b938cc27b4cdeee2b30602f2` |
| 12 | `theorem` | [unifTight_of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-of-subsingleton--811e06de0bf0531d0322fbe7.md) | 150 | `result-track:811e06de0bf0531d0322fbe7fde8807aa210d9e936dd522b01857276c8c4db40` |
| 13 | `theorem` | [unifTight_fin](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-fin--bbb2fe1deeb8517b67a70875.md) | 163 | `result-track:bbb2fe1deeb8517b67a708751976cd45be7f5bfb1511906bcbbdaca590f7425e` |
| 14 | `theorem` | [unifTight_finite](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-finite--42757c40daa5046f144b2097.md) | 193 | `result-track:42757c40daa5046f144b209720f5325ae20a17f439ed1fe6855f81f312c0eb78` |
| 15 | `theorem` | [unifTight_of_tendsto_Lp_zero](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-of-tendsto-lp-zero--1dafa93eb00443950f5d1008.md) | 216 | `result-track:1dafa93eb00443950f5d100863c24f6d9947baba3bb1c60c073f4b2c0c3f51de` |
| 16 | `theorem` | [unifTight_of_tendsto_Lp](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/uniftight-of-tendsto-lp--93b507c8bdc54b5419633fed.md) | 230 | `result-track:93b507c8bdc54b5419633fed19aa0941f394115928afda94413a746006aa456c` |
| 17 | `theorem` | [tendsto_Lp_of_tendsto_ae_of_meas](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/tendsto-lp-of-tendsto-ae-of-meas--32010274dcd89fc9d28a0ad6.md) | 245 | `result-track:32010274dcd89fc9d28a0ad6a4d6ed3c87487cd09cc893304a2376d173069a5c` |
| 18 | `theorem` | [ae_tendsto_ae_congr](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/ae-tendsto-ae-congr--044093266d1dc6a29e9b3f10.md) | 319 | `result-track:044093266d1dc6a29e9b3f10d7aa35798ea665e7abb79e2395409f2cd80d0f6d` |
| 19 | `theorem` | [tendsto_Lp_of_tendsto_ae](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/tendsto-lp-of-tendsto-ae--4e28088e8061f3d9fc8db67c.md) | 330 | `result-track:4e28088e8061f3d9fc8db67c8c1ac6671a6366d51e4763fd8d27fd8b9ba5d3f5` |
| 20 | `theorem` | [tendsto_Lp_of_tendstoInMeasure](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/tendsto-lp-of-tendstoinmeasure--3640e6affa0f1c3c98db6d2a.md) | 354 | `result-track:3640e6affa0f1c3c98db6d2ac364e6efa14b8060858b7e5f4a2ff76125184bf4` |
| 21 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/declarations/tendstoinmeasure-iff-tendsto-lp--67ab17c7d93750219befcbf2.md) | 374 | `result-track:67ab17c7d93750219befcbf2b7bcf8c290b82f6156087f921f4b2cbba2eecf30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
