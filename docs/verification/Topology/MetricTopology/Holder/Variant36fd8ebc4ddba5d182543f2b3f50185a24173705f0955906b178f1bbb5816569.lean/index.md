# Verification target: GRWTSK.Topology.MetricTopology.Holder.Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c185c26b8e8d9ab5a40110cda9a36909eed6ff",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c185c26b8e8d9ab5a40110cda9a36909eed6ff`.

Source path: `GRWTSK/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderwith--ccd61961d2a8c4e43e1550d7.md) | 58 | `declaration-track:ccd61961d2a8c4e43e1550d75a0ccc574a7989d511b57ff8964752dddf9c2cf5` |
| 2 | `def` | [HolderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderonwith--ce084e6e2a72b16a3eb7c532.md) | 65 | `declaration-track:ce084e6e2a72b16a3eb7c5329ec0bb1ee8e09086a47be080408c2162d3b59209` |
| 3 | `theorem` | [holderOnWith_empty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderonwith-empty--ee0efb6b2797b70196f336a2.md) | 70 | `result-track:ee0efb6b2797b70196f336a28ad204cf9103f51cb4568827a91d3a52b4740a5c` |
| 4 | `theorem` | [holderOnWith_singleton](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderonwith-singleton--61d5e922b65bf9742c32356a.md) | 74 | `result-track:61d5e922b65bf9742c32356afc42251803c98f8741269341f3baf3fab5ab5720` |
| 5 | `theorem` | [Set.Subsingleton.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/set-subsingleton-holderonwith--3124c94f38abd1aef0fa144e.md) | 80 | `result-track:3124c94f38abd1aef0fa144eaf8070815c462703d13e524c90cad55d9b052061` |
| 6 | `theorem` | [holderOnWith_univ](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderonwith-univ--09ce216862a13106be393a4e.md) | 85 | `result-track:09ce216862a13106be393a4ebf84f20db5aa654487ba4925ece928863cc2034c` |
| 7 | `theorem` | [holderOnWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderonwith-one--9a146a5cc820d916205e459a.md) | 90 | `result-track:9a146a5cc820d916205e459a6cbd22e02053395708b56bb8ef344ccd4b405ff8` |
| 8 | `theorem` | [holderWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderwith-one--af5edeb15d147ca943f453f9.md) | 99 | `result-track:af5edeb15d147ca943f453f9f9157813d3bbec6ddc0011ee2443dd671a41be64` |
| 9 | `theorem` | [holderWith_id](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderwith-id--ff54802dfadbc7508c54061e.md) | 106 | `result-track:ff54802dfadbc7508c54061ed660fdb4481ab60572e5c32fffd7d1e2846b9d6f` |
| 10 | `theorem` | [HolderWith.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/holderwith-holderonwith--0d23451681bf18f22b721dd6.md) | 110 | `result-track:0d23451681bf18f22b721dd68716550fbd94983f4978b63308c9ef183cced573` |
| 11 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/edist-le--9e7cadfade6cf53e27059796.md) | 118 | `result-track:9e7cadfade6cf53e270597968395007513289cf299addf8cd57d8cd9793fe2a7` |
| 12 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/edist-le-of-le--3831ab0d9f5783b5cc37b791.md) | 123 | `result-track:3831ab0d9f5783b5cc37b791cbeea0bb10c714043cbe19721f786e41c001c065` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/comp--99d19ade3fcea98605932e35.md) | 128 | `result-track:99d19ade3fcea98605932e35dbb3d37739ffde017fed1e4032342be2e51be761` |
| 14 | `theorem` | [comp_holderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/comp-holderwith--c3483df7085c18d337b21885.md) | 137 | `result-track:c3483df7085c18d337b2188501a3e41c881ca38ce6f0077e10086d96d5dcb0e1` |
| 15 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/uniformcontinuouson--194e53141e121865ea3529c3.md) | 144 | `result-track:194e53141e121865ea3529c36b389675a00f41d18dd900415d2397f1c7bf2039` |
| 16 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/continuouson--19ab7e425d378763ec382051.md) | 153 | `result-track:19ab7e425d378763ec3820510c772a4d60a67ccb9e01eddb559d133d31d2fc05` |
| 17 | `theorem` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/mono--2a7bbda8c100f32fab7bab07.md) | 157 | `result-track:2a7bbda8c100f32fab7bab070bbe284c184a20cfdeb6ad354ca00958f9a62528` |
| 18 | `theorem` | [ediam_image_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-le-of-le--14c34ab33dd389c1340d2ef0.md) | 161 | `result-track:14c34ab33dd389c1340d2ef0741ba8578014703dcd93a43efe7c7a62963b1813` |
| 19 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-le--046f1d2893c18ecac43b406f.md) | 167 | `result-track:046f1d2893c18ecac43b406fe5132fac4404f410d888acb20659b4530fa10500` |
| 20 | `theorem` | [ediam_image_le_of_subset](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-le-of-subset--f274850435aa10ba1e705322.md) | 172 | `result-track:f274850435aa10ba1e705322038d26652844c06733db1ac9f9cef8a547179ef4` |
| 21 | `theorem` | [ediam_image_le_of_subset_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-le-of-subset-of-le--9027568adb64f2870127f3bd.md) | 177 | `result-track:9027568adb64f2870127f3bd7b7b26751f27fc558add982a01866fe84fc7349d` |
| 22 | `theorem` | [ediam_image_inter_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-inter-le-of-le--a26ff8aa54d1d1c06d031cab.md) | 182 | `result-track:a26ff8aa54d1d1c06d031cabd06804e5968f009e9bf692c444f061dd6ac65f3c` |
| 23 | `theorem` | [ediam_image_inter_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-inter-le--8de78cb7aa39427bbba44afe.md) | 188 | `result-track:8de78cb7aa39427bbba44afe968a3964ac109c80cd79b7ae3ba571af5355c0e9` |
| 24 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/edist-le--58a7f26e0f7ff0896bf2bfe7.md) | 199 | `result-track:58a7f26e0f7ff0896bf2bfe7f265ec71571e28519f888eb24494e93f69a03a8b` |
| 25 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/edist-le-of-le--cacecd2cda8fe50fa106bc90.md) | 204 | `result-track:cacecd2cda8fe50fa106bc9045e719a7afd0a064bb222b515e3b83925fdbc62d` |
| 26 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/comp--d119e454d31556f091776bc5.md) | 209 | `result-track:d119e454d31556f091776bc5ff5bae19176419917ea43ef2983ef55fcd991e74` |
| 27 | `theorem` | [comp_holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/comp-holderonwith--4270a4338b96d21c2cc0f450.md) | 214 | `result-track:4270a4338b96d21c2cc0f45038d5e1db6865bc0f100948fd22903431c473d7de` |
| 28 | `theorem` | [uniformContinuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/uniformcontinuous--81b9cda7e656c0d4389d4b03.md) | 221 | `result-track:81b9cda7e656c0d4389d4b03a19845da7b0d8fdc4b0071a44c9d43f5a274a2a1` |
| 29 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/continuous--8c50a215b161661653f681d1.md) | 225 | `result-track:8c50a215b161661653f681d18c36bbb5c6d23c5e48b47c73d1804fd8335579e2` |
| 30 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/ediam-image-le--9692f8e7064d93b562f46035.md) | 229 | `result-track:9692f8e7064d93b562f46035ec25eefe5790a08f518ef93af486d81c1727140e` |
| 31 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/nndist-le-of-le--d9bcdf12f198d80b3dcb29d4.md) | 245 | `result-track:d9bcdf12f198d80b3dcb29d4ee491f1cd8cec7143a6ea41c3e4bddcd7eacdf6a` |
| 32 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/nndist-le--296c52c3c8f9b5bbebf9e773.md) | 254 | `result-track:296c52c3c8f9b5bbebf9e7735d645cbe793bc5799e5fc8d3980c5784cf8b4aa3` |
| 33 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/dist-le-of-le--e8d73c21942b36b623b7b4d7.md) | 259 | `result-track:e8d73c21942b36b623b7b4d751c0f73d258cf470c1ad5da248ce4128c3533b44` |
| 34 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/declarations/dist-le--a895c719006cbf18ecb976ed.md) | 267 | `result-track:a895c719006cbf18ecb976edfbb6f7248674144ba61e9c8392eecb3009739ae4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
