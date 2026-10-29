# Verification target: FDeriv Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivMeasurable.lean/index.md) · [Full source](../../../../RealFunctions/FDerivMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_apply₂](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-apply.md) | 89 | `result-track:57c252acd9ad610bfb2a58ea1389befff74407b7f70937a4a70a39360101b221` |
| 2 | `def` | [A](../../../../RealFunctions/FDerivMeasurable.lean/declarations/a-source-edition-2.md) | 112 | `declaration-track:e5ba3fd6c1236107b62e30364793c4d7d60c14f577efcb4f1b421612692cacd7` |
| 3 | `def` | [B](../../../../RealFunctions/FDerivMeasurable.lean/declarations/b.md) | 121 | `declaration-track:a9823c5fe06e68904102f6d26f11b36da1f41aa6018e545115ab36f60c825141` |
| 4 | `def` | [D](../../../../RealFunctions/FDerivMeasurable.lean/declarations/d-source-edition-2.md) | 128 | `declaration-track:d08c60c79e8aeeb6e1064cc84d50b946c9b7af8d99a3e7c8610282cd5b7b5f34` |
| 5 | `theorem` | [isOpen_a](../../../../RealFunctions/FDerivMeasurable.lean/declarations/isopen-a.md) | 132 | `result-track:74a40ce144dc6cda9db22698c045e5b5d0ea88a81126faabadcc7067c2b8a51d` |
| 6 | `theorem` | [isOpen_b](../../../../RealFunctions/FDerivMeasurable.lean/declarations/isopen-b.md) | 143 | `result-track:b79b6121259f8d39986fbde933739a33d993e1149ca11b8f05e25440e3baac4c` |
| 7 | `theorem` | [a_mono](../../../../RealFunctions/FDerivMeasurable.lean/declarations/a-mono.md) | 150 | `result-track:613e6a3432bc9937952b03d22d00dd11d645ea94df0810fa007a826285610d92` |
| 8 | `theorem` | [le_of_mem_a](../../../../RealFunctions/FDerivMeasurable.lean/declarations/le-of-mem-a-source-edition-2.md) | 156 | `result-track:7a9041c6eaa5c6e7ca059ee8ae9ed5ed36eb131225eee6e98c40f3366687c062` |
| 9 | `theorem` | [mem_a_of_differentiable](../../../../RealFunctions/FDerivMeasurable.lean/declarations/mem-a-of-differentiable-source-edition-2.md) | 163 | `result-track:9586c15fb1a4fe80113e438115c191e2e2f75e574d6efa61778146b063ac0be5` |
| 10 | `theorem` | [norm_sub_le_of_mem_a](../../../../RealFunctions/FDerivMeasurable.lean/declarations/norm-sub-le-of-mem-a.md) | 183 | `result-track:59f1e807c80d64cdcd1349f1f71065db317c354dc15270256c8c6df709b73b7b` |
| 11 | `theorem` | [differentiable_set_subset_d](../../../../RealFunctions/FDerivMeasurable.lean/declarations/differentiable-set-subset-d-source-edition-2.md) | 208 | `result-track:604a00b12c5d45f307ff1ff1693f96aafd7d6e9a077b0656e5af1081528e04c3` |
| 12 | `theorem` | [d_subset_differentiable_set](../../../../RealFunctions/FDerivMeasurable.lean/declarations/d-subset-differentiable-set.md) | 224 | `result-track:624775bacc4a98cea7e7556ad6f597316350eb7f883e64d1cdb288eef53dca61` |
| 13 | `theorem` | [differentiable_set_eq_d](../../../../RealFunctions/FDerivMeasurable.lean/declarations/differentiable-set-eq-d.md) | 366 | `result-track:06f6778961d6e15667c6bba21ed552295bdff83a1e2bcf485575dc46895099f3` |
| 14 | `theorem` | [measurableSet_of_differentiableAt_of_isComplete](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-of-differentiableat-of-iscomplete.md) | 381 | `result-track:39408efa7faf11ce22ffbbec831b81107a59bf960cf72a6608073bbb4d517bdb` |
| 15 | `theorem` | [measurableSet_of_differentiableAt](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-of-differentiableat.md) | 400 | `result-track:5927e71bbc00b3e8bde49c05c0272a1650e3f26306cbfaa2c182493bdbd725f2` |
| 16 | `theorem` | [measurable_fderiv](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-fderiv.md) | 407 | `result-track:b351488f734912b34e0deb27774d1b965d8fee2a5116a5d49cbe484a48b8b733` |
| 17 | `theorem` | [measurable_fderiv_apply_const](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-fderiv-apply-const.md) | 421 | `result-track:449bb0af951b3b5bf4bb5cfa54e7898e50e83c90656f21a908d93fbd38348d5a` |
| 18 | `theorem` | [measurable_deriv](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-deriv.md) | 429 | `result-track:c89b7ea27988f0cc70cf42302d6db46ad106a25cc0c22a9de7609c6ccb94623b` |
| 19 | `theorem` | [stronglyMeasurable_deriv](../../../../RealFunctions/FDerivMeasurable.lean/declarations/stronglymeasurable-deriv.md) | 434 | `result-track:44972ba61d50af4f8f6b32cd91367d6c89ea482e6a88a2f13328198f61e8b4f1` |
| 20 | `theorem` | [aemeasurable_deriv](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aemeasurable-deriv.md) | 440 | `result-track:bf397d4a062ba022b1e18eaf90bb20ab61ce3d9284ceeebfbdb909ef13d65df5` |
| 21 | `theorem` | [aestronglyMeasurable_deriv](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aestronglymeasurable-deriv.md) | 445 | `result-track:367d93178df8d88162cc5f1872e8a10ad1d16d53c2bc4cbe46b62d4448971226` |
| 22 | `def` | [A](../../../../RealFunctions/FDerivMeasurable.lean/declarations/a.md) | 463 | `declaration-track:c83a821f60026bc963bc0c30e904489d5f183c49166cdcdf1a041117231470ae` |
| 23 | `def` | [B](../../../../RealFunctions/FDerivMeasurable.lean/declarations/b-source-edition-2.md) | 473 | `declaration-track:c9dcc28605d5158d0eb027483012515521ed900b7474ea385956a416e2c7adec` |
| 24 | `def` | [D](../../../../RealFunctions/FDerivMeasurable.lean/declarations/d.md) | 480 | `declaration-track:14a964f52121c98586719109afa5d11c47ca7d2d8cc4a0df0e4075e2729247e1` |
| 25 | `theorem` | [a_mem_nhdsWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/a-mem-nhdswithin-ioi.md) | 484 | `result-track:b4451230803c3ad04530be21c278d41d88a4b502390abc19870392234caa88d7` |
| 26 | `theorem` | [b_mem_nhdsWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/b-mem-nhdswithin-ioi.md) | 497 | `result-track:76256a1105866f3e9269ef40dee1b6dc0b264fd35534a9771bc3ce4caeeae316` |
| 27 | `theorem` | [measurableSet_b](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-b.md) | 506 | `result-track:99c32633fca75b66b12a1e0c4296f217553feaaaffade8267f8ccd464b39e68f` |
| 28 | `theorem` | [a_mono](../../../../RealFunctions/FDerivMeasurable.lean/declarations/a-mono-source-edition-2.md) | 510 | `result-track:e815477733985f3a5c131466c85c2ac14df0dfd9a68e92901ebf36dae7aee22c` |
| 29 | `theorem` | [le_of_mem_a](../../../../RealFunctions/FDerivMeasurable.lean/declarations/le-of-mem-a.md) | 516 | `result-track:4e22cec49e768b716e2de75f28f1c09b0415954c5016456765a539afc33765a4` |
| 30 | `theorem` | [mem_a_of_differentiable](../../../../RealFunctions/FDerivMeasurable.lean/declarations/mem-a-of-differentiable.md) | 524 | `result-track:7e93a74830d6d1bfb4172d186f6f8bb5dde9bf44746b70a71028d03b4110bfdf` |
| 31 | `theorem` | [norm_sub_le_of_mem_a](../../../../RealFunctions/FDerivMeasurable.lean/declarations/norm-sub-le-of-mem-a-source-edition-2.md) | 552 | `result-track:65c22d29e8f6a278bb3490fd1cc4e6e7ae170c35e36763c9b66c3ef6de4fb670` |
| 32 | `theorem` | [differentiable_set_subset_d](../../../../RealFunctions/FDerivMeasurable.lean/declarations/differentiable-set-subset-d.md) | 573 | `result-track:18dabbec2d32e7b8d28ebe0ebd7d3129408e3b6e3cc2c3e7503a912a98c79d60` |
| 33 | `theorem` | [d_subset_differentiable_set](../../../../RealFunctions/FDerivMeasurable.lean/declarations/d-subset-differentiable-set-source-edition-2.md) | 589 | `result-track:81ca779171cc3ad10987044e0dd193ab8df91c6792ac832586ae0f0d11cc8cb0` |
| 34 | `theorem` | [differentiable_set_eq_d](../../../../RealFunctions/FDerivMeasurable.lean/declarations/differentiable-set-eq-d-source-edition-2.md) | 732 | `result-track:2da5bd300aa7b084ba388b081df7980456bae96363625a94c7de5aacb9da872d` |
| 35 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici_of_isComplete](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-of-differentiablewithinat-ici-of-iscomplete.md) | 745 | `result-track:9882e7268c0bd31466a4a91273a2938b699ccebdf07b920fba8d51b4d3ce50d2` |
| 36 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-of-differentiablewithinat-ici.md) | 763 | `result-track:cd1b9dc1136acc8c379b3ddfad96494a1461c9e8adf034fe9a57291e929eef18` |
| 37 | `theorem` | [measurable_derivWithin_Ici](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-derivwithin-ici.md) | 771 | `result-track:259bdfe0aa1a612c979e234ab9007fa31934c9d251e57b0971b8a088a632f893` |
| 38 | `theorem` | [stronglyMeasurable_derivWithin_Ici](../../../../RealFunctions/FDerivMeasurable.lean/declarations/stronglymeasurable-derivwithin-ici.md) | 785 | `result-track:b70d8eae8743d45a9cf81968d78ca2ec852d56b96e745d955f25faebe49e16a4` |
| 39 | `theorem` | [aemeasurable_derivWithin_Ici](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aemeasurable-derivwithin-ici.md) | 791 | `result-track:ce5989416288df3c1cdd9c0f9c64718335f8b6a84c68bdb0be8b95c3dc107943` |
| 40 | `theorem` | [aestronglyMeasurable_derivWithin_Ici](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aestronglymeasurable-derivwithin-ici.md) | 796 | `result-track:2b36365619e4b97d4bca48b1c7a3ce93d015e7758c2e0a5e1982fcd61d42a8e7` |
| 41 | `theorem` | [measurableSet_of_differentiableWithinAt_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurableset-of-differentiablewithinat-ioi.md) | 803 | `result-track:bbc0b9f6cb8086e4ca5d5387a1dfad1b61cff0ce892cd3be8fb69e15c2d84681` |
| 42 | `theorem` | [measurable_derivWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/measurable-derivwithin-ioi.md) | 809 | `result-track:1c90a331672d61334d27df0a068a334e22d952bf2b1db2bab748ccc6959fc4e0` |
| 43 | `theorem` | [stronglyMeasurable_derivWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/stronglymeasurable-derivwithin-ioi.md) | 814 | `result-track:2c148a055e595e7d1ff34683a797f3da8bf1641b5d2d83ffb55d1bd9d0bf068a` |
| 44 | `theorem` | [aemeasurable_derivWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aemeasurable-derivwithin-ioi.md) | 820 | `result-track:5ebc2aa3945fb6033fcede9b48f7825bc241f8db71ddd77e4793724f7dfd7866` |
| 45 | `theorem` | [aestronglyMeasurable_derivWithin_Ioi](../../../../RealFunctions/FDerivMeasurable.lean/declarations/aestronglymeasurable-derivwithin-ioi.md) | 825 | `result-track:ee39bbfdd8df26b7e564db35d272fc2e47fee737446cbfb252f25aa72be1d2e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7066914829f2cb1a1d4f9231a42088207df0d30e1a0c113c5a083ebbc86a496 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
