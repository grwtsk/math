# Verification target: GRWTSK.Topology.GeneralTopology.Sinc.Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0e652cea5885c37fc9540a8bc278dcf7162ca9d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0e652cea5885c37fc9540a8bc278dcf7162ca9d`.

Source path: `GRWTSK/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DSlope` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc--16a18a97598172aa75734fc8.md) | 42 | `declaration-track:16a18a97598172aa75734fc89a3b3908a2dc47297f70a284f0614c43b4454245` |
| 2 | `lemma` | [sinc_apply](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-apply--1fc994daaf36a0b8ee2a9255.md) | 44 | `result-track:1fc994daaf36a0b8ee2a9255bdf04ff3bbc67fb5c407c49bbb871820941df83d` |
| 3 | `lemma` | [sinc_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-zero--565ae3d2f2a4f5f2ca3ddb41.md) | 47 | `result-track:565ae3d2f2a4f5f2ca3ddb41ef987a146e8915f596965544ef6d608c17f922c4` |
| 4 | `lemma` | [sinc_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-of-ne-zero--aaff51bf1883443d324e62bf.md) | 49 | `result-track:aaff51bf1883443d324e62bf412878b1577b53f17a037708e5a2a47621837e29` |
| 5 | `lemma` | [sinc_eq_dslope](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-eq-dslope--c7561316ad0844b21d8e1758.md) | 51 | `result-track:c7561316ad0844b21d8e1758f96fae7a18916e383db51cd0a0dea514e87257ee` |
| 6 | `lemma` | [sinc_neg](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-neg--2fddb7ed81a078b43968dcc7.md) | 56 | `result-track:2fddb7ed81a078b43968dcc70a65ba408999d22eb211a76a6253f7c8199b8c86` |
| 7 | `lemma` | [abs_sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/abs-sinc-le-one--80f93e2f2ad78acac3b3130c.md) | 61 | `result-track:80f93e2f2ad78acac3b3130c41add3ff18952a9bc8c3f7d2a828b858d9fd78b0` |
| 8 | `lemma` | [sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-le-one--b1dbf5eef761e88dab513b06.md) | 69 | `result-track:b1dbf5eef761e88dab513b06c0c7cb052699acbe59171093a10aa086921cac55` |
| 9 | `lemma` | [neg_one_le_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/neg-one-le-sinc--261352420de6daf6599d1aa1.md) | 71 | `result-track:261352420de6daf6599d1aa1b6c6b93eedcbd584cbf3252e3be990368df38dec` |
| 10 | `lemma` | [sin_div_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sin-div-le-inv-abs--02c82eeef264ca262f706532.md) | 73 | `result-track:02c82eeef264ca262f7065324fc714ce423811e52349d447b5c5c4f132abbee5` |
| 11 | `lemma` | [sinc_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/sinc-le-inv-abs--cd8a91c0a1b914973990cbca.md) | 84 | `result-track:cd8a91c0a1b914973990cbcae692651226a113e158c6bf9119fb8f81105bbfae` |
| 12 | `lemma` | [continuous_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/declarations/continuous-sinc--ac5d76ec41f736a5ec9756af.md) | 90 | `result-track:ac5d76ec41f736a5ec9756afae83d87bcc7343c1f048ab111a074a3af2c22fde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
