# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565f49c1b0338a5c1df38b661620be8beb0c861d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565f49c1b0338a5c1df38b661620be8beb0c861d`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/instance--a951aa76f04e9533ae54fb38.md) | 58 | `declaration-track:a951aa76f04e9533ae54fb389f30356792d22ddecb67ed7e10a2cc1a86caad4a` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/nhds-eq-update--7a3a84ace02e503cb29f1d2a.md) | 61 | `result-track:7a3a84ace02e503cb29f1d2af8bf1aa69e0d2166e67ac5904e8cf6b79aeb2879` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/nhds-zero--a957b53e484ac2e93bb52620.md) | 69 | `result-track:a957b53e484ac2e93bb526203e677158e1c75d520751cbc80fcf24e032b7e4a2` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/hasbasis-nhds-zero--44887d2e28b64099366e48b8.md) | 74 | `result-track:44887d2e28b64099366e48b89ac93d36b081b1db11d589b2700d62590ebbf366` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/iio-mem-nhds-zero--748dae74b6ef45fb57708beb.md) | 79 | `result-track:748dae74b6ef45fb57708bebcd30b188e86eef7a46377b5b7a94e93315ebba97` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/nhds-zero-of-units--5b3e8bee1c9c7cede7130557.md) | 84 | `result-track:5b3e8bee1c9c7cede7130557fd05ea4dfdd0c2e44bc7cb2853a6a1137edf58cd` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/tendsto-zero--9fce9178d753061ae78b7441.md) | 87 | `result-track:9fce9178d753061ae78b7441db4c44ead40aaef80a718a9da98e88b2c66f7562` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/nhds-of-ne-zero--290d2187dd41f61fcfe3897b.md) | 97 | `result-track:290d2187dd41f61fcfe3897bd7cd75529e6aacfb8b0f28dd8205c9ab2bd307da` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/nhds-coe-units--1aad00e4deeba21889a0c896.md) | 102 | `result-track:1aad00e4deeba21889a0c896236ecc7991334fbe945e351c70b8204804ddbc5a` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/singleton-mem-nhds-of-units--6adea44e23c651deea691e32.md) | 107 | `result-track:6adea44e23c651deea691e326a9261cf842fcff94f684cbf19d04ac67059c3cd` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/singleton-mem-nhds-of-ne-zero--ee7d23d7646f78aa0edfa8ea.md) | 111 | `result-track:ee7d23d7646f78aa0edfa8eafadf6627fc0c2fa5df9eadd9c1b13e187f5125c5` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/hasbasis-nhds-of-ne-zero--71b729d172451c75d57daa71.md) | 113 | `result-track:71b729d172451c75d57daa713a0bc00f2083dcd373e842876c76fe88e5ada336` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/hasbasis-nhds-units--1ae8d3a9bb3e6306d53cfcc9.md) | 118 | `result-track:1ae8d3a9bb3e6306d53cfcc985c03e1fb0e7f32b166d36c373475c5e342545d5` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/tendsto-of-ne-zero--58feb9f0143abaaf030625c4.md) | 122 | `result-track:58feb9f0143abaaf030625c4c0ce8ecf7872f5d72ab166c8afe65377bb04bcfa` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/tendsto-units--ed0c178b40cf0e8df77a60e2.md) | 125 | `result-track:ed0c178b40cf0e8df77a60e2900d9a2d3965ac85d17fda4488e49306f04e6156` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/iio-mem-nhds--54d1f16ff4dac24c49cc60ad.md) | 128 | `result-track:54d1f16ff4dac24c49cc60ad182faa2b3da54b6712bc092cc406adc012cd0d0c` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/isopen-iff--1671bb4839761b1a5255ee74.md) | 135 | `result-track:1671bb4839761b1a5255ee74794e5cc7dfcbb0045fa4515e21c891ebca3b0c63` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/isclosed-iff--fb9cfea4c92ffd518760bfa1.md) | 140 | `result-track:fb9cfea4c92ffd518760bfa1a567e47c0a1f04015f5b35395fef41e5874a0c1c` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/isopen-iio--660bbbd7003982bd93703b0a.md) | 144 | `result-track:660bbbd7003982bd93703b0a08db4b2b4bb5b74ddb971dacf34e15508a1bef81` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/instance--6b9c7f4462634f6e4e0733a8.md) | 153 | `declaration-track:6b9c7f4462634f6e4e0733a83f1ce543f50833afff9fbabb3fc95498d719ef6a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/instance--c29cff90063f9ea12f9fcb64.md) | 161 | `declaration-track:c29cff90063f9ea12f9fcb64c4c52c9f297f3d9fa0574ee31e806f7fe3af41b8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/instance--7ec39f715e9d1e0149a83d45.md) | 170 | `declaration-track:7ec39f715e9d1e0149a83d453444ea41eefd06c4d85a3a8eb3400df40c505275` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant08d7e290a03d34b60c6ea03c1b4d324a08640e518213d92dd3fe62858112207a.lean/declarations/instance--038357fd5a953b48a50fe3a9.md) | 192 | `declaration-track:038357fd5a953b48a50fe3a9be295d67a4c628171d1c49f47350ec047bec888f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
