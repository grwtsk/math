# Verification target: GRWTSK.Topology.GeneralTopology.ThickenedIndicator.Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "862d2a0c38665e44fc7b75076dcdcb011eea10ce",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `862d2a0c38665e44fc7b75076dcdcb011eea10ce`.

Source path: `GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean.json)

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
| 1 | `def` | [thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux--c27be33eaeb1316f97e0eb56.md) | 62 | `declaration-track:c27be33eaeb1316f97e0eb56d944eed1a68e5971ebdc58866785d6c9d209ef53` |
| 2 | `theorem` | [continuous_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/continuous-thickenedindicatoraux--79ae1e0b66a469d922a8230c.md) | 65 | `result-track:79ae1e0b66a469d922a8230c4ecabcb5294b7759b277740cdbb71648581e88bc` |
| 3 | `theorem` | [thickenedIndicatorAux_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-le-one--3581d96602929ca3f64b8965.md) | 75 | `result-track:3581d96602929ca3f64b8965396345d842b9a17e6c1bb7525879840e9761ecd9` |
| 4 | `theorem` | [thickenedIndicatorAux_lt_top](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-lt-top--28f2082631ca6558a1ee505d.md) | 80 | `result-track:28f2082631ca6558a1ee505d6aee7d48c97bbee85162bdd0167d95ed96aecc39` |
| 5 | `theorem` | [thickenedIndicatorAux_closure_eq](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-closure-eq--51fe49ea9599435d22ac2cb7.md) | 84 | `result-track:51fe49ea9599435d22ac2cb7b1658f9efbf63ae08956b3c62ead336422834154` |
| 6 | `theorem` | [thickenedIndicatorAux_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-one--802f5fc107380703b6a2ad4d.md) | 88 | `result-track:802f5fc107380703b6a2ad4d3c01e1337c4d39205eabc86559395f70e476ccf8` |
| 7 | `theorem` | [thickenedIndicatorAux_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-one-of-mem-closure--c1be497c0f08705950156fa1.md) | 92 | `result-track:c1be497c0f08705950156fa1e82a543f6148aebd545234598e2d361ecdba22b5` |
| 8 | `theorem` | [thickenedIndicatorAux_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-zero--f4ad2bdec0fc6b72160d5161.md) | 96 | `result-track:f4ad2bdec0fc6b72160d5161f76c4117db2224e0cb05893300421760d56520fe` |
| 9 | `theorem` | [thickenedIndicatorAux_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-mono--f95fde5a4035889d7324f301.md) | 106 | `result-track:f95fde5a4035889d7324f301e157547884335d74cf077ee7aa4bedc5b2445f14` |
| 10 | `theorem` | [indicator_le_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/indicator-le-thickenedindicatoraux--81611b9430802fd0d0fa77cc.md) | 110 | `result-track:81611b9430802fd0d0fa77ccc83d8dc53bd7a4f57850f4d9cf2767c80032d467` |
| 11 | `theorem` | [thickenedIndicatorAux_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-subset--750ac0da078e049ac8fbd938.md) | 117 | `result-track:750ac0da078e049ac8fbd9386a02256296dabf3e9ec833a9fe4fcf0b39b0beef` |
| 12 | `lemma` | [thickenedIndicatorAux_mono_infEDist](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-mono-infedist--2f9a1b3babc63b7667dc8742.md) | 121 | `result-track:2f9a1b3babc63b7667dc87425ba3f030b76d8f4f9c1ceb8903819d4e17d7ee72` |
| 13 | `theorem` | [thickenedIndicatorAux_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicatoraux-tendsto-indicator-closure--ebc67dfa3405e51e94571a0f.md) | 138 | `result-track:ebc67dfa3405e51e94571a0f16ace108f6d2c31f02ae8f6c017317557cc5c649` |
| 14 | `def` | [thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator--4235c41415587f9d70f748d3.md) | 170 | `declaration-track:4235c41415587f9d70f748d3c5508f007adc676f0869531a9ac0fd8e365b6647` |
| 15 | `theorem` | [thickenedIndicator.coeFn_eq_comp](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-coefn-eq-comp--9dafa62497c43cd55dfede93.md) | 188 | `result-track:9dafa62497c43cd55dfede93c50ab8466c847941176d85b726b56073bfc4a709` |
| 16 | `theorem` | [thickenedIndicator_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-le-one--13ed939efe4da4f31a62521f.md) | 192 | `result-track:13ed939efe4da4f31a62521fe5acb1a0d6c4efaf91b8a8c7451213b607a34e07` |
| 17 | `theorem` | [thickenedIndicator_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-one-of-mem-closure--64c2023c1155141e1957ca4a.md) | 198 | `result-track:64c2023c1155141e1957ca4a24e6566e6048fe33fc9abb45012442b67a15d2c3` |
| 18 | `lemma` | [one_le_thickenedIndicator_apply'](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/one-le-thickenedindicator-apply--1c72b57bde038d1108393b5f.md) | 202 | `result-track:1c72b57bde038d1108393b5f74dca40a5bec95c08e23c6fd472ac477c2f4ac33` |
| 19 | `lemma` | [one_le_thickenedIndicator_apply](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/one-le-thickenedindicator-apply--2761aebfe8e8f6ec00834339.md) | 207 | `result-track:2761aebfe8e8f6ec00834339de73a888cf5a9d2a8e1c01572123f90097d8d785` |
| 20 | `theorem` | [thickenedIndicator_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-one--080de4a478642ba86fd271c9.md) | 212 | `result-track:080de4a478642ba86fd271c9297483b57ff2f8eac4e393c6856ca137e6244f49` |
| 21 | `theorem` | [thickenedIndicator_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-zero--7538fe0142893b39dff621fd.md) | 216 | `result-track:7538fe0142893b39dff621fd05abe478d36873036294c68d190537b29807aa63` |
| 22 | `theorem` | [indicator_le_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/indicator-le-thickenedindicator--be1633aa60e4af41c67561b1.md) | 220 | `result-track:be1633aa60e4af41c67561b11299761e47c6e30ceac2d681ed6382d4a900efad` |
| 23 | `theorem` | [thickenedIndicator_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-mono--b9fd8aeaccd8dee2e1126d78.md) | 227 | `result-track:b9fd8aeaccd8dee2e1126d789c68a1ad6f9ee0717e69dda5185701a545bbd5a7` |
| 24 | `theorem` | [thickenedIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-subset--1d9ad644ca8ef9ad1c19ab92.md) | 233 | `result-track:1d9ad644ca8ef9ad1c19ab928d02d5d446cb19be35f79229a12ebd0bc66d7af8` |
| 25 | `lemma` | [thickenedIndicator_mono_infEDist](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-mono-infedist--17833a299b91c1a16a2ed5b7.md) | 239 | `result-track:17833a299b91c1a16a2ed5b709c4057741cd9376c48c63fb3ed47ca3eaaeb114` |
| 26 | `theorem` | [thickenedIndicator_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/thickenedindicator-tendsto-indicator-closure--1e9a181a8392b584a9317c84.md) | 253 | `result-track:1e9a181a8392b584a9317c845f8f8c0e06e69f3cde23d8bf2357648b584bc890` |
| 27 | `lemma` | [lipschitzWith_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/lipschitzwith-thickenedindicator--07cfa57f43311cb5f0f2149b.md) | 266 | `result-track:07cfa57f43311cb5f0f2149b60d31addf289b3d89f91601a6330a23ee08e0560` |
| 28 | `lemma` | [mulIndicator_thickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/mulindicator-thickening-eventually-eq-mulindicator-closure--9965353d50a3080aa6689dfd.md) | 305 | `result-track:9965353d50a3080aa6689dfd35c07d5d0598e2706d345d7c2f621f5a3faaefc9` |
| 29 | `lemma` | [mulIndicator_cthickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/mulindicator-cthickening-eventually-eq-mulindicator-closure--5b264fd4d7e5b64248ee7d02.md) | 320 | `result-track:5b264fd4d7e5b64248ee7d024ebf8d564671e0179a410fb9cda241a8877f07ad` |
| 30 | `lemma` | [tendsto_mulIndicator_thickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/tendsto-mulindicator-thickening-mulindicator-closure--9a740cced29a4015ca71f6a4.md) | 336 | `result-track:9a740cced29a4015ca71f6a4348455a9dd4b9471d17805d7488b13958ff8ca2e` |
| 31 | `lemma` | [tendsto_mulIndicator_cthickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/declarations/tendsto-mulindicator-cthickening-mulindicator-closure--5b6743591a53f3b3e7e2bef5.md) | 348 | `result-track:5b6743591a53f3b3e7e2bef5750927198e0d640d5396abcd9d43ffd59641ddf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
