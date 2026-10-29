# Verification target: Implicit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9041a0b914f7af8fb9453c954100493318e6a573",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Implicit.lean/index.md) · [Full source](../../../../RealFunctions/Implicit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9041a0b914f7af8fb9453c954100493318e6a573`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Complemented` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImplicitFunctionData](../../../../RealFunctions/Implicit.lean/declarations/implicitfunctiondata.md) | 97 | `declaration-track:e83a19097259a7b783a9932257ddf9a500b0737fd23c83fb3bdaef019f0f3c25` |
| 2 | `def` | [prodFun](../../../../RealFunctions/Implicit.lean/declarations/prodfun.md) | 125 | `declaration-track:af88eb4cd42c84bdd6bc01f3fd3d50e897bc71ac211d0e06501750f156341d73` |
| 3 | `theorem` | [prodFun_apply](../../../../RealFunctions/Implicit.lean/declarations/prodfun-apply.md) | 129 | `result-track:4feaf9601d9a76979b17568bace9d90104497d513450edee067d0ed280cae578` |
| 4 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/Implicit.lean/declarations/hasstrictfderivat.md) | 132 | `result-track:3a1a635b88f26a756bace12dffcd6761865496eea453f6de585cd514d4cda98b` |
| 5 | `def` | [toPartialHomeomorph](../../../../RealFunctions/Implicit.lean/declarations/topartialhomeomorph.md) | 144 | `declaration-track:f5a9a589b48f67430218d910d507e221d4adf3a54ae9dd923919d7f511b9ba42` |
| 6 | `def` | [implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/implicitfunction.md) | 151 | `declaration-track:10bb782edf00e973f7e935bc10c76ad23071a9166d063a9395d4f3c032800879` |
| 7 | `theorem` | [toPartialHomeomorph_coe](../../../../RealFunctions/Implicit.lean/declarations/topartialhomeomorph-coe.md) | 155 | `result-track:1a265d904f1865ad7489684da76e7adc793f476c374b999d483eb9a3ec6b0eec` |
| 8 | `theorem` | [toPartialHomeomorph_apply](../../../../RealFunctions/Implicit.lean/declarations/topartialhomeomorph-apply.md) | 158 | `result-track:d4a46039f92181abeba587817da174f817625b0f5030c9566d0a21ea549b2024` |
| 9 | `theorem` | [pt_mem_toPartialHomeomorph_source](../../../../RealFunctions/Implicit.lean/declarations/pt-mem-topartialhomeomorph-source.md) | 161 | `result-track:7df55ffca6752ca9209e934b6c0739ef3bb5ebd9eb93352a282272e595786658` |
| 10 | `theorem` | [map_pt_mem_toPartialHomeomorph_target](../../../../RealFunctions/Implicit.lean/declarations/map-pt-mem-topartialhomeomorph-target.md) | 164 | `result-track:2cc57082283f974e014702a089126a747b8a95f4779ea4b79e6ba69da17fa7f4` |
| 11 | `theorem` | [prod_map_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/prod-map-implicitfunction.md) | 168 | `result-track:2c9fef17151af2ddd4e646136a29bf09f460fccdd841b143fda7d83d7f9e6ce4` |
| 12 | `theorem` | [left_map_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/left-map-implicitfunction.md) | 172 | `result-track:752d95db586dbed2b10bdcaf4f6c6ea0c8679b3cb1b96c986b510c6e70d846ed` |
| 13 | `theorem` | [right_map_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/right-map-implicitfunction.md) | 176 | `result-track:84167085e01d67e7e98899448d71d3ec5411566a280133376eee087d130100e0` |
| 14 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/Implicit.lean/declarations/implicitfunction-apply-image-source-edition-2.md) | 180 | `result-track:e6532af31628629b2d6179fc51e95ae64e19103fe548f4d51d198e185d650165` |
| 15 | `theorem` | [map_nhds_eq](../../../../RealFunctions/Implicit.lean/declarations/map-nhds-eq.md) | 184 | `result-track:9b1d5d25da16ba513e88c6c5028ff81376de80eb1391d2ab507e16822cd61495` |
| 16 | `theorem` | [implicitFunction_hasStrictFDerivAt](../../../../RealFunctions/Implicit.lean/declarations/implicitfunction-hasstrictfderivat.md) | 188 | `result-track:ff7d8190d9fe1e41786deb2fd0d4b05101df5dd4bdd816a50f0f74b226c13797` |
| 17 | `def` | [implicitFunctionDataOfComplemented](../../../../RealFunctions/Implicit.lean/declarations/implicitfunctiondataofcomplemented.md) | 230 | `declaration-track:9a3aa3b157cf22d4284752f4e0d8242e864bf96f7f000f0d760bebb30a7c6a0b` |
| 18 | `def` | [implicitToPartialHomeomorphOfComplemented](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorphofcomplemented.md) | 246 | `declaration-track:971fea093218d6e6acfef60573024c053d68a4f06576084b32aa057cf53f811d` |
| 19 | `def` | [implicitFunctionOfComplemented](../../../../RealFunctions/Implicit.lean/declarations/implicitfunctionofcomplemented.md) | 251 | `declaration-track:dbcabfe705d4e6ec3ca49d20608e1d66947f68e7d56854332fdbe5ec1e3e4d67` |
| 20 | `theorem` | [implicitToPartialHomeomorphOfComplemented_fst](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorphofcomplemented-fst.md) | 258 | `result-track:c5779acdbff67b508fc5947affa9d224bd538681d00a61087125cda913f86961` |
| 21 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorphofcomplemented-apply.md) | 263 | `result-track:8ee95f2ce8bc288a5f021868f1620306d9438701d91f2cc77210ff02c8017265` |
| 22 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply_ker](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorphofcomplemented-apply-ker.md) | 270 | `result-track:ae6633bc04a0eabdcfb2c46a91c369a817e43d6dc2a91cfccd0ab8342eee1106` |
| 23 | `theorem` | [implicitToPartialHomeomorphOfComplemented_self](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorphofcomplemented-self.md) | 277 | `result-track:ccaa363b8b8a8ca90f0a1ec043f1b3cae80e9ae8651d7fab39385145314e0835` |
| 24 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_source](../../../../RealFunctions/Implicit.lean/declarations/mem-implicittopartialhomeomorphofcomplemented-source.md) | 282 | `result-track:b4e79cbf9cfc93ca2f0450bcc141006c3e7159209244be2513dd1d21f49f7c8f` |
| 25 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_target](../../../../RealFunctions/Implicit.lean/declarations/mem-implicittopartialhomeomorphofcomplemented-target.md) | 287 | `result-track:46db3f597d62809faba6aa029614c14e4759e8b11b9dcbd59038f88a22a65ccf` |
| 26 | `theorem` | [map_implicitFunctionOfComplemented_eq](../../../../RealFunctions/Implicit.lean/declarations/map-implicitfunctionofcomplemented-eq.md) | 295 | `result-track:fb49fcfca4de274dc09b6e8a1bd2d35811ef6c4085d2353f6960f10d838c13b8` |
| 27 | `theorem` | [eq_implicitFunctionOfComplemented](../../../../RealFunctions/Implicit.lean/declarations/eq-implicitfunctionofcomplemented.md) | 305 | `result-track:44050f94ddc7989b4e40aac213bb5854603f1be443af514b8732e9700ea1a8bd` |
| 28 | `theorem` | [implicitFunctionOfComplemented_apply_image](../../../../RealFunctions/Implicit.lean/declarations/implicitfunctionofcomplemented-apply-image.md) | 312 | `result-track:c31ebe1be7b2d7ca45c4cb9aec750305bbfb8c238e758452f57a01e3fde41361` |
| 29 | `theorem` | [to_implicitFunctionOfComplemented](../../../../RealFunctions/Implicit.lean/declarations/to-implicitfunctionofcomplemented.md) | 319 | `result-track:4b60817b8404b7c776f36de75265c937c3dd320caa93003064bd3c4c843e5361` |
| 30 | `def` | [implicitToPartialHomeomorph](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorph.md) | 363 | `declaration-track:58673f13382a885cb04149e59f8555dda6adf21f4b671057b52c7d435c7712c3` |
| 31 | `def` | [implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/implicitfunction-source-edition-2.md) | 370 | `declaration-track:a53da35acadb87e8d888414a904a1ed6bf729b3dc1185bb12b19643e667052e3` |
| 32 | `theorem` | [implicitToPartialHomeomorph_fst](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorph-fst.md) | 376 | `result-track:53ae2f87e22c983bcf1d023ac6b98d584940eb46343222e5975dab4b813cd5ae` |
| 33 | `theorem` | [implicitToPartialHomeomorph_apply_ker](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorph-apply-ker.md) | 381 | `result-track:874ad82f59dd0ce5e00f2a93ef139a6605c76c7ff9e2579324743593e1efec25` |
| 34 | `theorem` | [implicitToPartialHomeomorph_self](../../../../RealFunctions/Implicit.lean/declarations/implicittopartialhomeomorph-self.md) | 388 | `result-track:7f54bd2275c9d3349e3359d80f5d47f019d1d6e8ba04fd8a94ca0ee3434b46c0` |
| 35 | `theorem` | [mem_implicitToPartialHomeomorph_source](../../../../RealFunctions/Implicit.lean/declarations/mem-implicittopartialhomeomorph-source.md) | 393 | `result-track:4eae111d4cc4875ddd45cba130a21f8741649fca90c9ceca86e6958ded0f40c6` |
| 36 | `theorem` | [mem_implicitToPartialHomeomorph_target](../../../../RealFunctions/Implicit.lean/declarations/mem-implicittopartialhomeomorph-target.md) | 398 | `result-track:9a0f61fa1bbf66ab50829e0e038582e4ce934129c747655053ddd45e55782bee` |
| 37 | `theorem` | [tendsto_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/tendsto-implicitfunction.md) | 403 | `result-track:5368c049d98616d17ca38d2f488d0a46c4c4b3d9755ae5cba15f5ab61dc80846` |
| 38 | `theorem` | [map_implicitFunction_eq](../../../../RealFunctions/Implicit.lean/declarations/map-implicitfunction-eq.md) | 415 | `result-track:3b290dfb1f27c1f5c83ec63f8b7a66a8365d5b88e291d4adc327b896796100a5` |
| 39 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/Implicit.lean/declarations/implicitfunction-apply-image.md) | 421 | `result-track:4ce30c3e3d46bafe0eeda295113bd47c108c0e715f75e95f138da0eea06ae540` |
| 40 | `theorem` | [eq_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/eq-implicitfunction.md) | 428 | `result-track:ab6a0824f9bf8103de8154f7905da03be3a680f2e0b5963e6ae0b7ac751b5488` |
| 41 | `theorem` | [to_implicitFunction](../../../../RealFunctions/Implicit.lean/declarations/to-implicitfunction.md) | 434 | `result-track:24dfffd3a0a09eeb88aede31e5affd0843bf260706cc0df581be36e016b461a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5944027ec88a0327f716c9146575b9c0dd371ca2a590c097bcb5d679db3045b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
