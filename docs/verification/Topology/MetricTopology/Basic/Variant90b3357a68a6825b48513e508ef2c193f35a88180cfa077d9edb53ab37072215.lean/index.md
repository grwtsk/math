# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e179c7d2e810521e98807bfea655acb23b367d5e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e179c7d2e810521e98807bfea655acb23b367d5e`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeloneSet](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/deloneset--89073d70f0efc5a5abec134d.md) | 74 | `declaration-track:89073d70f0efc5a5abec134d4b09fc2685aa91ac3f48de970cf94593bb9a0950` |
| 2 | `def` | [toSet](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/toset--ff69a6f37f61d0df9126a2cf.md) | 89 | `declaration-track:ff69a6f37f61d0df9126a2cf9677d10191b97ea69c7791fa1e5de8780e30fa2e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/instance--68afd1cdefb987d3bd5aed86.md) | 91 | `declaration-track:68afd1cdefb987d3bd5aed86eb77b11b2be129f48bace567a2af70ef761dc5eb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/instance--19404737afc07d35c776d2a3.md) | 94 | `declaration-track:19404737afc07d35c776d2a3a6ba4d05a5d3d255ba3432b8b290141d83cef6fd` |
| 5 | `lemma` | [mem_coe](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mem-coe--ac92427e3a914f06f5d8030a.md) | 98 | `result-track:ac92427e3a914f06f5d8030a8e3dc3149a2f0a68a1859fdda5fb8ba74cd94316` |
| 6 | `lemma` | [mem_carrier](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mem-carrier--2955c207c56dbfc0e33df927.md) | 100 | `result-track:2955c207c56dbfc0e33df92740104335b03d8fc473e4ebf06bb4f49a1d754fb6` |
| 7 | `lemma` | [nonempty](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/nonempty--5b61ae328af84d1816577081.md) | 103 | `result-track:5b61ae328af84d18165770810186e79d27db4ebc6eccd8e7f9a8580d86573d2b` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/copy--df1293a5b6681be5807cb2b6.md) | 108 | `declaration-track:df1293a5b6681be5807cb2b6b159fa7da270c0d57ee79ca95a07d770edc8c402` |
| 9 | `theorem` | [copy_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/copy-eq--4d54b5ebca50e23e165aea31.md) | 122 | `result-track:4d54b5ebca50e23e165aea3191276182bd48894fb0481a93edc8cb71567447a5` |
| 10 | `lemma` | [packingRadius_lt_dist_of_mem_ne](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/packingradius-lt-dist-of-mem-ne--19738edf70042f4e60d8f6ce.md) | 127 | `result-track:19738edf70042f4e60d8f6cebcc296b06b8e2167a98691a6edb822a7587147ae` |
| 11 | `lemma` | [exists_dist_le_coveringRadius](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/exists-dist-le-coveringradius--65b94c0f0dda01ad9158e349.md) | 134 | `result-track:65b94c0f0dda01ad9158e3497f244ba20f502310774acf61dd3d6f77474fa3dd` |
| 12 | `lemma` | [eq_of_mem_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/eq-of-mem-ball--7c485d9165cd204c49c2fd96.md) | 139 | `result-track:7c485d9165cd204c49c2fd96203a0e1d3f96d16733bd5d3242ee1208c724905d` |
| 13 | `lemma` | [subset_ball_singleton](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/subset-ball-singleton--def856183ca3c1bf4392040c.md) | 150 | `result-track:def856183ca3c1bf4392040ca7b2eea68ae5e032b6a9433a142929f84b5400f2` |
| 14 | `def` | [mapBilipschitz](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapbilipschitz--ac7d09c89db74e338326e5c2.md) | 156 | `declaration-track:ac7d09c89db74e338326e5c27b9f22c4d72b9b7bdcdda20a38aebce6f7bccc3f` |
| 15 | `lemma` | [mapBilipschitz_refl](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapbilipschitz-refl--e437e9c36ec667cd34957715.md) | 167 | `result-track:e437e9c36ec667cd3495771525936e9006b52db03bde30112868e0daa2a8e140` |
| 16 | `lemma` | [mapBilipschitz_trans](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapbilipschitz-trans--4f0816c2766edf0471b8df71.md) | 172 | `result-track:4f0816c2766edf0471b8df7126743a0f36239c58d117c9717ecc79d57319fbca` |
| 17 | `def` | [mapIsometry](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapisometry--ff4c40852f41884fe7b9eb29.md) | 194 | `declaration-track:ff4c40852f41884fe7b9eb293dd731d997ca7878b592d85252e3dee6c712ffe6` |
| 18 | `lemma` | [mapIsometry_refl](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapisometry-refl--37e701d4b8c24a248d32456c.md) | 205 | `result-track:37e701d4b8c24a248d32456ce480998221e3c493da74177d99a72277e7c04b7c` |
| 19 | `lemma` | [mapIsometry_symm](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapisometry-symm--249143d132716dd833356274.md) | 208 | `result-track:249143d132716dd8333562740705c4efd357651fdefbfddbdd7b16e33edd48d0` |
| 20 | `lemma` | [mapIsometry_trans](../../../../../mathematics/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/declarations/mapisometry-trans--34920da392a49d74b3a8cd7b.md) | 210 | `result-track:34920da392a49d74b3a8cd7b0269321cf03b01f0c1639577ba4fa3abdbbfb904` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
