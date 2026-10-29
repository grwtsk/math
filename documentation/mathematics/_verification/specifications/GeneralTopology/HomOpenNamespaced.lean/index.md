# Verification target: Hom Open Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3864661a5032b62f50708987de253b259c4727d4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomOpenNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/HomOpenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3864661a5032b62f50708987de253b259c4727d4`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOpenMap](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/continuousopenmap.md) | 39 | `declaration-track:3576687d8ff1303240fc706bdf7138d89f2302f8689934af08d00be963d0d4be` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/continuousopenmapclass.md) | 50 | `declaration-track:754dac9f664940c548175694be1d2345d2f4c45c74195cc71d569fb1a3dcabb1` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:6baa8ee94c5598e9db260635197c715f9edab8d9b658256dba25793ccc590382` |
| 4 | `instance` | [instFunLike](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/instfunlike.md) | 70 | `declaration-track:986c7fd239d10e6fe498572a899c60fd1519b80e57094d5f76ffb8e4a6b1e6bf` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/instance.md) | 77 | `declaration-track:15e66dd1d695abd17561f39ad3763153da076f862895d8031b9fd0d7684d3797` |
| 6 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/tofun-eq-coe.md) | 81 | `result-track:7e9058ae6823e66a58555cbeff6712458114bf50701988d88c474c9d96a35bb1` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/coe-tocontinuousmap.md) | 86 | `result-track:78e240bc6166b14bcead5a5040a8747d477cb932f3e634838e29c736dff2ca8c` |
| 8 | `theorem` | [ext](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/ext.md) | 89 | `result-track:0dedd36cf9a7d4acaedb98f1702cb25210c510ab87e17f1a508f627a112f62ee` |
| 9 | `def` | [copy](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/copy.md) | 94 | `declaration-track:04410ba97ab333357f0e4f8524ecfbfbee898fb0e1f3aeb27a69bda107cca3ef` |
| 10 | `theorem` | [coe_copy](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/coe-copy.md) | 98 | `result-track:c8887b1798b24f959c98032f58fb6529acc967774f4b019d246868f7f4f94945` |
| 11 | `theorem` | [copy_eq](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/copy-eq.md) | 101 | `result-track:7d740dff1a9f7f615069f67e62b378bec212debaaa27dac0984b5c21a67751cb` |
| 12 | `def` | [id](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/id.md) | 107 | `declaration-track:d4c9e38f517a11533364f3e027b045cbcf7c45f580b3404e56bda1e870f4a5ff` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:73de090b91ad509e84ffbd55b309ff1332352d40be7c147a40c6ad95cd9692c4` |
| 14 | `theorem` | [coe_id](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/coe-id.md) | 114 | `result-track:8749b9ce02ff632ca5fbc2e206b0297dad107a39592ca6b2dbea6413ea03f0fc` |
| 15 | `theorem` | [id_apply](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/id-apply.md) | 120 | `result-track:e2c5e2e058ab11e05c7af773b6d0f184aba61fdc7fbe356ec2e64408310ad67e` |
| 16 | `def` | [comp](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/comp.md) | 124 | `declaration-track:552c3cd6465a87ac25404035cc3518570f33be0feab9e802813f9d3e69946615` |
| 17 | `theorem` | [coe_comp](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/coe-comp.md) | 128 | `result-track:f1cd5bc11db800ec3022aaf9251809d57afb5c46671c451f745aefc7a124da12` |
| 18 | `theorem` | [comp_apply](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/comp-apply.md) | 132 | `result-track:63bd5c29e91e9d6b13c83a55ef753fcdf66beb8312e75ecbf8ac1a512db3dee1` |
| 19 | `theorem` | [comp_assoc](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/comp-assoc.md) | 136 | `result-track:1c576871a6873f5260b2c928629cfe6ec8f643c7d6378acdb207a4c6fb3ac39d` |
| 20 | `theorem` | [comp_id](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/comp-id.md) | 141 | `result-track:feeac249cb2889bd8b8c434d3ae04646306887f7e4d237c9db922512be05b053` |
| 21 | `theorem` | [id_comp](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/id-comp.md) | 145 | `result-track:6fe1b30238ad7c12124abeb2db06bd949f9abd6c25fdafa16e7e7001f165e744` |
| 22 | `theorem` | [cancel_right](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/cancel-right.md) | 149 | `result-track:1428ac0b14d2567b811c183d58a8e1ee230c7f67eabfd25fe9d53c100895e518` |
| 23 | `theorem` | [cancel_left](../../../../GeneralTopology/HomOpenNamespaced.lean/declarations/cancel-left.md) | 154 | `result-track:cb9bada758102d11a7bdd2fab70e2f654346a171e577536470383e875579bb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5c320fc55eaf31090eee08590da73970d167b9228571b6035734c932c3b349f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
