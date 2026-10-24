# Verification target: GRWTSK.Topology.GeneralTopology.ThickenedIndicator.Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4820d1b3b9a9c571b9a01efeb02aad32f60e0978`.

Source path: `GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ENNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux--5701b95a3abee97cdd77cfc6.md) | 54 | `declaration-track:5701b95a3abee97cdd77cfc69ed16d0cbdb0d6c08d85e3055bde98b812cf80cb` |
| 2 | `theorem` | [continuous_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/continuous-thickenedindicatoraux--d1d31c0b18b279b9001d353a.md) | 58 | `result-track:d1d31c0b18b279b9001d353ad9959edb594143a2b642a23c4ff853310f80ba0e` |
| 3 | `theorem` | [thickenedIndicatorAux_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-le-one--bd7f7341a0d2f2c49283672f.md) | 69 | `result-track:bd7f7341a0d2f2c49283672f77763625277799a1ac258ddad18d3ca86d4adc5a` |
| 4 | `theorem` | [thickenedIndicatorAux_lt_top](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-lt-top--71c6c91a0146151f1f98bb24.md) | 74 | `result-track:71c6c91a0146151f1f98bb247fc6751198a3c0c2d1332221aeee0dd80775cf4f` |
| 5 | `theorem` | [thickenedIndicatorAux_closure_eq](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-closure-eq--fe70147039a69e14f942b53d.md) | 79 | `result-track:fe70147039a69e14f942b53d804441f1b6b70af09473e96b18ae2b6aff0b83d6` |
| 6 | `theorem` | [thickenedIndicatorAux_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-one--1680bab1a34449223a8a00fe.md) | 84 | `result-track:1680bab1a34449223a8a00fe4ad62b92dee9af834bcd6271681c9d84d90d0dfb` |
| 7 | `theorem` | [thickenedIndicatorAux_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-one-of-mem-closure--b51885aad2beb2b349295ee0.md) | 89 | `result-track:b51885aad2beb2b349295ee087ad88ad23e214da0fa504ff0832de45707cdd70` |
| 8 | `theorem` | [thickenedIndicatorAux_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-zero--89a84621f7a70c24ba875c2d.md) | 94 | `result-track:89a84621f7a70c24ba875c2d4a9cdbb2bd0e73b1d4a590fb6833e8800638d5fd` |
| 9 | `theorem` | [thickenedIndicatorAux_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-mono--0e216c311ce358d7e4c7ea7e.md) | 105 | `result-track:0e216c311ce358d7e4c7ea7e36871c1a60ff317cd3aa62dd7e68db12214eda5f` |
| 10 | `theorem` | [indicator_le_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/indicator-le-thickenedindicatoraux--0d1e548cfdfa5c0d8f11904b.md) | 110 | `result-track:0d1e548cfdfa5c0d8f11904b629d80ad1294c919756c3955202ebb06272971ef` |
| 11 | `theorem` | [thickenedIndicatorAux_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-subset--e9b1a7532523ab2cb76d2f1c.md) | 118 | `result-track:e9b1a7532523ab2cb76d2f1cbf26555058f948273879bb63062edaf807305326` |
| 12 | `theorem` | [thickenedIndicatorAux_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicatoraux-tendsto-indicator-closure--30c641f07ff95726daa09f7c.md) | 130 | `result-track:30c641f07ff95726daa09f7c2938bef87cd3a998fd6655831a8532335c23c65d` |
| 13 | `def` | [thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator--f8e70cfd37c2e35386d31126.md) | 163 | `declaration-track:f8e70cfd37c2e35386d3112674d8325a53fb2cb0013c85f82a9a984b3c9fb5c5` |
| 14 | `theorem` | [thickenedIndicator.coeFn_eq_comp](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-coefn-eq-comp--b46e2c522534df60658d0985.md) | 182 | `result-track:b46e2c522534df60658d09859c9be322fc9f8071345ff178ca6557c1ad177c23` |
| 15 | `theorem` | [thickenedIndicator_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-le-one--c9b5b9401489ff69ffd2248f.md) | 187 | `result-track:c9b5b9401489ff69ffd2248fe01499fcc84d881c5378bef5d80f25fff21a55ea` |
| 16 | `theorem` | [thickenedIndicator_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-one-of-mem-closure--06221e90c3c1ad58eea8e257.md) | 194 | `result-track:06221e90c3c1ad58eea8e257507d9ec85eb528a580c11c96e52ff2b84e3a45c8` |
| 17 | `theorem` | [thickenedIndicator_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-one--c63cc0f912bdf5b0b2e8bea5.md) | 199 | `result-track:c63cc0f912bdf5b0b2e8bea5fa960f145fd6048bc445c72d4868376b182a7a2b` |
| 18 | `theorem` | [thickenedIndicator_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-zero--0fd234986cde2674e978c7b3.md) | 204 | `result-track:0fd234986cde2674e978c7b318c1f0df838c05b39e7eb8ec92f5408f0f94b8c2` |
| 19 | `theorem` | [indicator_le_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/indicator-le-thickenedindicator--053006ae4416b3b0f8986b0d.md) | 209 | `result-track:053006ae4416b3b0f8986b0d15ffdf5b882e2809b382d7499ce28a3d23781e55` |
| 20 | `theorem` | [thickenedIndicator_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-mono--005654d9316759d9d68ffff5.md) | 217 | `result-track:005654d9316759d9d68ffff55cd9ca9ad095ec0ab94789021c71cfffee0df6ce` |
| 21 | `theorem` | [thickenedIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-subset--a9c647948147ed2a710bc7b8.md) | 224 | `result-track:a9c647948147ed2a710bc7b81221f8c7d2351276c8868229e335379b8019c34a` |
| 22 | `theorem` | [thickenedIndicator_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/thickenedindicator-tendsto-indicator-closure--77a9cd4cb03c7ac38f492606.md) | 236 | `result-track:77a9cd4cb03c7ac38f4926069475eb6526040ee4919c2b221ec1edf65de9a992` |
| 23 | `lemma` | [mulIndicator_thickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/mulindicator-thickening-eventually-eq-mulindicator-closure--dc33955068901273f3e43335.md) | 260 | `result-track:dc33955068901273f3e433352db6d8b0367d2e92cc88f553efd169042629230c` |
| 24 | `lemma` | [mulIndicator_cthickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/mulindicator-cthickening-eventually-eq-mulindicator-closure--d505526643891faf37d80315.md) | 275 | `result-track:d505526643891faf37d80315afc83512b4eb49ab4f66e0715be0110edf8b2a89` |
| 25 | `lemma` | [tendsto_mulIndicator_thickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/tendsto-mulindicator-thickening-mulindicator-closure--873ad61d07dfb0875a385fae.md) | 291 | `result-track:873ad61d07dfb0875a385faee91d296dbe45ef49ac1d8f46b1531d5ac663ac48` |
| 26 | `lemma` | [tendsto_mulIndicator_cthickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/declarations/tendsto-mulindicator-cthickening-mulindicator-closure--58174e59cef7cf91a38a76ca.md) | 303 | `result-track:58174e59cef7cf91a38a76cac526d3964e240e5042decd67603c5e1ab3a88492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
