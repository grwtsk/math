# Verification target: Flow Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef6d8547578ee2a478a388612ce974b4d0f83cf5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variantf1aefa89718e972928572e20146414dc21a533dc9460ba8b4f806e3e9a907be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef6d8547578ee2a478a388612ce974b4d0f83cf5`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variantf1aefa89718e972928572e20146414dc21a533dc9460ba8b4f806e3e9a907be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variantf1aefa89718e972928572e20146414dc21a533dc9460ba8b4f806e3e9a907be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isinvariant.md) | 45 | `declaration-track:bdff24da93a77bc962e57ede4004348ed7664d523d03e1a90add33812262a485` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isinvariant-iff-image.md) | 51 | `result-track:104245ce78762d8cd00ef5874a3e091295f6cee62bbe3f3bb269afe27885c1cd` |
| 3 | `def` | [IsFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isfwinvariant.md) | 57 | `declaration-track:d87a657062d44ab12b29f97e9fb860ddb774a70c7986c3e6423a3bf8b9af251d` |
| 4 | `theorem` | [IsInvariant.isFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isfwinvariant-source-line-61-occurrence-2.md) | 61 | `result-track:fe09787cabe6076455bdd2c005a1d4de06ecef3994354501f4cd63b61b947ce5` |
| 5 | `theorem` | [IsFwInvariant.isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isinvariant-source-line-67-occurrence-2.md) | 67 | `result-track:72ab628061e7a4a6e920fe32fe127b7620bd95c8306e838ad4759a5b6a1333c0` |
| 6 | `theorem` | [isFwInvariant_iff_isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isfwinvariant-iff-isinvariant.md) | 73 | `result-track:062ff3b81ccebe8734f7a16148d625d0624294c4825e63eecb2d14b5b316811c` |
| 7 | `structure` | [Flow](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/flow.md) | 87 | `declaration-track:e9ebdc703928da146d68934af323e1905b3d034bb243af1f4ee678a5757d62f8` |
| 8 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/instance.md) | 100 | `declaration-track:0fa45d790b100f262ac22fdf1db04f8c5e6d2dcb35ddda78fe823fccc868a613` |
| 9 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/instance-source-edition-2.md) | 106 | `declaration-track:f93a923b1899bbbec6fd300fba11aa5e2a45eed6ffe8b4d6014a2e0cba89f4eb` |
| 10 | `theorem` | [ext](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/ext.md) | 109 | `result-track:59e4dc40dda4e717d45125192aa4512b505d3f7f73b0db739c80c507302e4ead` |
| 11 | `theorem` | [continuous](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/continuous.md) | 117 | `result-track:523a4cfc8998c9eeec7724f701c83c85190b55e4cb76a682b0c78f9bfe3da130` |
| 12 | `theorem` | [map_add](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/map-add.md) | 125 | `result-track:c712e5a9f5ec270f8ec4b9f636bf46002483baff569450e692370691441da3e2` |
| 13 | `theorem` | [map_zero](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/map-zero.md) | 129 | `result-track:f24cd25b4ae02513cd8d280f815c75ec7c71f5eaff2226149a9d8d24b9818423` |
| 14 | `theorem` | [map_zero_apply](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/map-zero-apply.md) | 132 | `result-track:78ceecd96a9d6316319ba8be66a7f30832e25743c8854d5dae4e4f06cc278c53` |
| 15 | `def` | [fromIter](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/fromiter.md) | 137 | `declaration-track:9d1f1a6b71e433a1c671ddae4e59f872367cdb098a25e11fd3bf188f27928004` |
| 16 | `def` | [restrict](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/restrict.md) | 145 | `declaration-track:6f5b26d5fe6627344d91d739e8500c033be4c8b6def24d7feaca92be51999367` |
| 17 | `theorem` | [isInvariant_iff_image_eq](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/isinvariant-iff-image-eq.md) | 159 | `result-track:3201106b0f3bf319562c6d9743e49fe1f1a279d1c2aa9a28605bd87293b072ba` |
| 18 | `def` | [reverse](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/reverse.md) | 168 | `declaration-track:3dbb33abe3e48272f86640847f86c5901fa34bf566acb0fe375e418a414faa5a` |
| 19 | `theorem` | [continuous_toFun](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/continuous-tofun.md) | 179 | `result-track:cba8f09a1fd31fd11712a7694b6720d616d9f743fba61ad77b63ea57325b65b4` |
| 20 | `def` | [toHomeomorph](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/tohomeomorph.md) | 185 | `declaration-track:2f9bc65820a12c51c76ce6869c11d9b685a9349911454970702969ca5c41d4b1` |
| 21 | `theorem` | [image_eq_preimage](../../../../DynamicalSystemsAndErgodicTheory/FlowAligned.lean/declarations/image-eq-preimage.md) | 192 | `result-track:ce9cd26f83c7c8e193e80ff14f538e28ce352c8fb96cf93328e2d04272426a91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9472a9780883d2344bd878a9613fab68d64862526e8706046b095a1ef1a8dcdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Flow/Variantf1aefa89718e972928572e20146414dc21a533dc9460ba8b4f806e3e9a907be2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Flow/Variantf1aefa89718e972928572e20146414dc21a533dc9460ba8b4f806e3e9a907be2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
