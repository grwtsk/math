# Verification target: GRWTSK.Topology.GeneralTopology.Quotient.Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26077b1460ca7f968b9c9f04ce33e420dfb5871d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26077b1460ca7f968b9c9f04ce33e420dfb5871d`.

Source path: `GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/insttopologicalspace--d9042a76f8690a21e7af1635.md) | 34 | `declaration-track:d9042a76f8690a21e7af16350f962c293e211908630b42095452c14ec8a89b5f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instance--437421ed73b8fc42f5a3e7c8.md) | 38 | `declaration-track:437421ed73b8fc42f5a3e7c8189b54e45ea650a0d6e90be8810e321f9bfdc347` |
| 3 | `theorem` | [isQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/isquotientmap-mk--b0d25dd5a80b0dabea30d961.md) | 42 | `result-track:b0d25dd5a80b0dabea30d961941074b1544ecb6742809bd7884b9b50c98c9aba` |
| 4 | `theorem` | [continuous_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/continuous-mk--e9b59b3b88514a47e4576a31.md) | 49 | `result-track:e9b59b3b88514a47e4576a3129bdaecceab9dbf9835354b094f7cdefb7c3d494` |
| 5 | `theorem` | [isOpenMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/isopenmap-coe--675b5fd4d2635675a8d75503.md) | 57 | `result-track:675b5fd4d2635675a8d75503f4445714fd9d45d2402194b7b539c4704f2afc62` |
| 6 | `theorem` | [isOpenQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/isopenquotientmap-mk--bd38471bb9158f87f17beaba.md) | 60 | `result-track:bd38471bb9158f87f17beabab4cab37632f84155773d329812285668172b56c3` |
| 7 | `theorem` | [dense_preimage_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/dense-preimage-mk--acdc19a926c0050011beb8c9.md) | 64 | `result-track:acdc19a926c0050011beb8c9912b4d7e5c63106a0b9e89d87467d8bab4a89b6a` |
| 8 | `theorem` | [dense_image_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/dense-image-mk--a4910f270f02a7a07d98311e.md) | 68 | `result-track:a4910f270f02a7a07d98311e083fca91fdceb0747802481d942df2596ebbfffc` |
| 9 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instcontinuoussmul--483b8caf7678e200e254fa64.md) | 73 | `declaration-track:483b8caf7678e200e254fa6475f16aaa274dba6bfec2e848fe2fec2ed8b6b8e0` |
| 10 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instcontinuousconstsmul--e4921ea785386cd2fc98c1cb.md) | 79 | `declaration-track:e4921ea785386cd2fc98c1cbf351798cdc9fc714a5826fb94dc6da74382f95d6` |
| 11 | `instance` | [instLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instlocallycompactspace--308963691e6099a2ca68cad1.md) | 83 | `declaration-track:308963691e6099a2ca68cad1af2a981a871776cf0f23a17883d81e124a52e976` |
| 12 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/nhds-eq--0d56eda04a8139d4ca87cd4a.md) | 92 | `result-track:0d56eda04a8139d4ca87cd4ab16f8254fb3941b1bce3dc8bed9ae125d764b664` |
| 13 | `instance` | [instFirstCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instfirstcountabletopology--f936b596b7d131622d9bfa65.md) | 96 | `declaration-track:f936b596b7d131622d9bfa65db688b67046f2f24af522f1f883afec83fc96296` |
| 14 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instsecondcountabletopology--6a6b753678364ce000821fd6.md) | 104 | `declaration-track:6a6b753678364ce000821fd69bd81fbe5cdc86e86147b6bdb2a27b4624575eec` |
| 15 | `instance` | [instIsTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instistopologicalgroup--bf99ace7eb8a2ae75aab8037.md) | 113 | `declaration-track:bf99ace7eb8a2ae75aab8037ee369090679dfa6a2661563c64b9d75e9e93b678` |
| 16 | `theorem` | [isClosedMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/isclosedmap-coe--ae699cec342ca00c9df77d04.md) | 120 | `result-track:ae699cec342ca00c9df77d0484d0094cb9bdbf2eb4349f0b90b3feb3e2413e6f` |
| 17 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/declarations/instt3space--f8f2e0a163ea4c1d10ddc36c.md) | 127 | `declaration-track:f8f2e0a163ea4c1d10ddc36c1dee87bc379b9c9f4ca722203e67d11834bdc486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
