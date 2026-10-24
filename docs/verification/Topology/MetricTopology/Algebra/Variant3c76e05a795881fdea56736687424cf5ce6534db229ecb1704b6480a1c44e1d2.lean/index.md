# Verification target: GRWTSK.Topology.MetricTopology.Algebra.Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abad6dff06e2e2d8e46bb6fee57099e14f1dfca4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abad6dff06e2e2d8e46bb6fee57099e14f1dfca4`.

Source path: `GRWTSK/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.MulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitzadd--3f93ca1b8f10df1c35e93438.md) | 46 | `declaration-track:3f93ca1b8f10df1c35e93438d1a848e9336268563d45ee133fa65194a8ffe81c` |
| 2 | `class` | [LipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitzmul--cfcf608ed02bf5416c52f936.md) | 52 | `declaration-track:cfcf608ed02bf5416c52f9363e24b1672d0c0dc2343264b7507e29b76aed9818` |
| 3 | `def` | [LipschitzAdd.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitzadd-c--e1f3c3a40cfa59d434518433.md) | 56 | `declaration-track:e1f3c3a40cfa59d4345184335c56b44c2b3afba01bcef846c1c26d36646cff4f` |
| 4 | `def` | [LipschitzMul.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitzmul-c--467136f875c7d0874bfe7783.md) | 62 | `declaration-track:467136f875c7d0874bfe77835e069119d2c5f93b7204dcbe28512cea13783ae5` |
| 5 | `theorem` | [lipschitzWith_lipschitz_const_mul_edist](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitzwith-lipschitz-const-mul-edist--e1bff6f9990a7e14c6b88ed2.md) | 67 | `result-track:e1bff6f9990a7e14c6b88ed2e72b7f676f2c810e28e324a3164c0320d26cb1b4` |
| 6 | `theorem` | [lipschitz_with_lipschitz_const_mul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/lipschitz-with-lipschitz-const-mul--cb454eac4c4a04f557d096f4.md) | 74 | `result-track:cb454eac4c4a04f557d096f41df07b672fc30f88ddd5b8dd3968cb9e7abf8461` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--3d39c54e933f1406789f9bee.md) | 81 | `declaration-track:3d39c54e933f1406789f9bee290d2a20f6e2f1bd47bfeb9248970426f8ab9f58` |
| 8 | `instance` | [Submonoid.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/submonoid-lipschitzmul--2808df16df0a64c1508b9fce.md) | 85 | `declaration-track:2808df16df0a64c1508b9fce26e0bdef255687112c8541b23465dfc5e7546393` |
| 9 | `instance` | [MulOpposite.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/mulopposite-lipschitzmul--a9529e1155c0592dde0e1eb6.md) | 91 | `declaration-track:a9529e1155c0592dde0e1eb6c98b15bfcc7e6845c69774f188a9568360757552` |
| 10 | `instance` | [Real.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/real-haslipschitzadd--c41f08534728d6714aac64f6.md) | 98 | `declaration-track:c41f08534728d6714aac64f62deb2228f3c4745925caaaadf6b3995cd3ba87e3` |
| 11 | `instance` | [NNReal.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/nnreal-haslipschitzadd--13ff4f3207ce5486d87a31a7.md) | 107 | `declaration-track:13ff4f3207ce5486d87a31a7b72fc8de8b422aec45d143fac9921fc3a835051a` |
| 12 | `class` | [IsBoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/isboundedsmul--b87e7019ffd0abbfed3db43a.md) | 126 | `declaration-track:b87e7019ffd0abbfed3db43ae3109d83edb891df158c74dbd1655c3e732400f1` |
| 13 | `theorem` | [dist_smul_pair](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/dist-smul-pair--c319dc0dbbcc02a27fc13b0f.md) | 135 | `result-track:c319dc0dbbcc02a27fc13b0f4476482bd84cca0d9861c5394dd68ce3dd5bbd7e` |
| 14 | `theorem` | [dist_pair_smul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/dist-pair-smul--b6b8af14f911c162270c5799.md) | 138 | `result-track:b6b8af14f911c162270c5799391307097639334cf26b8ab1cac072e3232f0a4c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--0dc134e535141a4ea0bcbc72.md) | 144 | `declaration-track:0dc134e535141a4ea0bcbc72a1f8cbc90e47c52ff8f9a9c4ec50d83df5f032db` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--0e519d997c4f61a5037b6892.md) | 163 | `declaration-track:0e519d997c4f61a5037b6892a871b5360b5855eaaa9f61061dee1b84b7462b23` |
| 17 | `instance` | [Real.isBoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/real-isboundedsmul--1cb92c58f1803c0d8edbcede.md) | 170 | `declaration-track:1cb92c58f1803c0d8edbcedec7d8b9a323653ade682f0468a5cd8dc6b5cc7a59` |
| 18 | `instance` | [NNReal.isBoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/nnreal-isboundedsmul--78d65bfb7bbaa2f18b176adf.md) | 174 | `declaration-track:78d65bfb7bbaa2f18b176adfa2c2b25ddd6cf6ed6fd4764b293726a5c41939d7` |
| 19 | `instance` | [IsBoundedSMul.op](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/isboundedsmul-op--b1256737d7025477fec56cf7.md) | 179 | `declaration-track:b1256737d7025477fec56cf77512ac1eaea0fe4b83380600fc8999639733c30b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--22113f6240e6aada1bf46632.md) | 188 | `declaration-track:22113f6240e6aada1bf466326763d61357e11837b5f59ba80c4455ec049e685d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--faeed4d550b5ebb13d7caf80.md) | 191 | `declaration-track:faeed4d550b5ebb13d7caf80801ed9b8c716e4c85837383902e8a6d78517be6f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--844882c3c517ed10f0cc8580.md) | 195 | `declaration-track:844882c3c517ed10f0cc8580b00202e68aa78a1c21d35a4833150332dd27d875` |
| 23 | `instance` | [Pi.instIsBoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/pi-instisboundedsmul--ec29de5dbfc5a48e05e21be8.md) | 200 | `declaration-track:ec29de5dbfc5a48e05e21be85e2ef3d61a50abe5b8b2373ca0ea7f612303293e` |
| 24 | `instance` | [Pi.instIsBoundedSMul'](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/pi-instisboundedsmul--0e09f4076c4855e22695895d.md) | 210 | `declaration-track:0e09f4076c4855e22695895da793836adfb8e385b678df232634d1a0fb8df70f` |
| 25 | `instance` | [Prod.instIsBoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/prod-instisboundedsmul--b17cbf92e15e09b79c41cb74.md) | 222 | `declaration-track:b17cbf92e15e09b79c41cb74a868dd83c3aa50feee330f3c1209fb754f4d1c3b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/declarations/instance--107685b9d2c787d580d793b8.md) | 232 | `declaration-track:107685b9d2c787d580d793b8064eaf057e4a22b72a7bbfe1b399aa57e1461e71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
