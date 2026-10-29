# Verification target: Atlas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c0cf7439cedd3ef86a6a263cf614421fc394f63",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/AtlasNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/AtlasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c0cf7439cedd3ef86a6a263cf614421fc394f63`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/hasmfderivat.md) | 58 | `result-track:4292e857a4e0467ffe28129eff0e8328055644ba24ffaaf4d99c7a089b4930cc` |
| 2 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/hasmfderivwithinat.md) | 61 | `result-track:4164c9f00bb89554f154819366bc0bd71252a902f79a1716af4a2ea2365e561e` |
| 3 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiablewithinat.md) | 65 | `result-track:71cf21cec5d554d275c2fc728847e7b6db7a46685296c7a273c61206771f7c4a` |
| 4 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat-source-edition-2.md) | 68 | `result-track:95006f6e53eb6fcfb39ea7853c1191cf442a417788b5bae72fbd55cf6a82ba3e` |
| 5 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon.md) | 71 | `result-track:bef00ac246d8bd40eb7813d79e4494cc2c6c278d3cd24d81d4f05baaef926d27` |
| 6 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiable.md) | 74 | `result-track:c3db0b4b3fff8d6b299944763f322e2a4c665893431b8b3621a366ffb288ba96` |
| 7 | `theorem` | [hasMFDerivWithinAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/hasmfderivwithinat-symm.md) | 76 | `result-track:f41df04bf4b2bc5bb75d0be8b53cae68a79277547563f9c663f2221d928bcc58` |
| 8 | `theorem` | [mdifferentiableOn_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon-symm.md) | 81 | `result-track:aef9c10b89c508af3e524c9a9af3d1f27d3bddc3180a98f14d13e63388edd705` |
| 9 | `theorem` | [mdifferentiableWithinAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiablewithinat-symm.md) | 84 | `result-track:6a4041907fbf8db15111e0631fe3f4493244fde8a350e96403f6413c9de27fb3` |
| 10 | `theorem` | [mdifferentiableAt_atlas](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat-atlas.md) | 97 | `result-track:14d5cd2961713dd225609c79f1c320f1457fc84acc5373d8e6aa7e2b20a2a478` |
| 11 | `theorem` | [mdifferentiableOn_atlas](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon-atlas.md) | 116 | `result-track:0ff1adb6a9b487e64a7b78a0b8cf0b66d99712371b7ae311cc0dfb182a3e40e6` |
| 12 | `theorem` | [mdifferentiableAt_atlas_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat-atlas-symm.md) | 119 | `result-track:dce094caa801590b3052f5bd56a4a4c2b53d3adc05b52749623da6b803dd47c4` |
| 13 | `theorem` | [mdifferentiableOn_atlas_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon-atlas-symm.md) | 137 | `result-track:c9abd9060489decc17e86ee514cb436e1939e92c1102e15e785e0a9baf3ba143` |
| 14 | `theorem` | [mdifferentiable_of_mem_atlas](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiable-of-mem-atlas.md) | 140 | `result-track:86a93d25c964bde75789af89e34f05e2ff5e9d9174bcd6b605d5f90492374939` |
| 15 | `theorem` | [mdifferentiable_chart](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiable-chart.md) | 143 | `result-track:0e84d2cdfa25439f1d275d79d3be032d7b7614a2109ee36fe5bdb483dbc2d176` |
| 16 | `theorem` | [symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/symm.md) | 154 | `result-track:813c0d1c93cfca755a4b356df1596a81f5fd3768a29c39acad86883c000c3c93` |
| 17 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat.md) | 156 | `result-track:5017f9cc6171abaff8dd395f4a2baade8b7b0ba677d841b2f231938a876cf2fc` |
| 18 | `theorem` | [mdifferentiableAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat-symm.md) | 159 | `result-track:d1b63bf40b599f9b545ae9def4638ba4a45e9e9c890d34aedfabf086b3ee503d` |
| 19 | `theorem` | [symm_comp_deriv](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/symm-comp-deriv.md) | 162 | `result-track:30e7d5b3514608e3b2a2258c5ef78771aba3ad6abd7425457b1bee5d859d0c2f` |
| 20 | `theorem` | [comp_symm_deriv](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/comp-symm-deriv.md) | 174 | `result-track:9752e530b6259b993138399eb684429d1712da07d4c910dcae005bc35a5a66c0` |
| 21 | `def` | [mfderiv](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv.md) | 181 | `declaration-track:0a4295d8ebefa081139014071f0dd9f1c1b2abe37f6783ff289b3c470b5df352` |
| 22 | `theorem` | [mfderiv_bijective](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv-bijective.md) | 199 | `result-track:2200e22052653a02d52f5b3dd6a1add288d0f4171864c5cf2f8404ba283209f5` |
| 23 | `theorem` | [mfderiv_injective](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv-injective.md) | 202 | `result-track:2c3ba4fab7f2a59cea42b28bace9be604c876f7333588c3c2b50639cc612fce4` |
| 24 | `theorem` | [mfderiv_surjective](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv-surjective.md) | 205 | `result-track:ff8bb68af4018e35cfc9b74b751f1181fbd215785eb5213fccffc0b687b5cdce` |
| 25 | `theorem` | [ker_mfderiv_eq_bot](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/ker-mfderiv-eq-bot.md) | 208 | `result-track:0d03b81abf9b73aa5ea0fccaa195eeefcca824bc4b137de8616934665fb267d1` |
| 26 | `theorem` | [range_mfderiv_eq_top](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/range-mfderiv-eq-top.md) | 211 | `result-track:b74732dbeaa331a9a419dbe2fbe20616e0939ac2d79868deb612d07de682388c` |
| 27 | `theorem` | [range_mfderiv_eq_univ](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/range-mfderiv-eq-univ.md) | 214 | `result-track:7dfd261d8cdd835bb169ffc95090efb25d970ee1d6408a2d7ce3afae57a8ec93` |
| 28 | `theorem` | [trans](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/trans.md) | 217 | `result-track:9fc3b659f3f3ef0bf78cd7dcf4deedc2a722b8b0d60fad5cf0aeb7b6c3ba9e3b` |
| 29 | `theorem` | [hasMFDerivAt_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/hasmfderivat-extchartat.md) | 237 | `result-track:f8993f6cb6354e38ad4ec3707823a98f8b8ddbdac1170ce06da295cc8f1793bb` |
| 30 | `theorem` | [hasMFDerivWithinAt_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/hasmfderivwithinat-extchartat.md) | 241 | `result-track:190526c8a77ed19c43fff0385d33023a41301f2ffd157a64d38bfd82cf898dac` |
| 31 | `theorem` | [mdifferentiableAt_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableat-extchartat.md) | 245 | `result-track:8cdcc38d01a61e0cb9e3acc9dce41d0c9457464f64530d448a2490c244cd2efe` |
| 32 | `theorem` | [mdifferentiableOn_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon-extchartat.md) | 249 | `result-track:df654494b33a2e3d05cc8564fde03eaf3dc23871c8c3dbdfdfa6d7b71fe039c6` |
| 33 | `theorem` | [mdifferentiableWithinAt_extChartAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiablewithinat-extchartat-symm.md) | 253 | `result-track:233cd88e6edaaac2b4959ac6e2f5b7c3d5739d7bfb6327bf5d60493da72253d1` |
| 34 | `theorem` | [mdifferentiableOn_extChartAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mdifferentiableon-extchartat-symm.md) | 263 | `result-track:5c102b315072ff525ca4a7d214595d62a98f821d49a673dff9704909496133af` |
| 35 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm.md) | 271 | `result-track:17726a9ec69c9bcab06bb16a0c422ab263de413e9441a72f06dcd98d774865b1` |
| 36 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm'](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm-source-edition-2.md) | 294 | `result-track:786a5a81e53fff5eb6b80908a41fa37d3e84e34f658a2deddaae5b38aee88829` |
| 37 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat-source-edition-2.md) | 305 | `result-track:ae50f57fe3b7a8d4bc487e302c4d660543238a726868f031809b5ba3266fcd2d` |
| 38 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt'](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat.md) | 337 | `result-track:9d1732aa3bcaef6b41b6ece4653e659d8bbd5b65d2a30329221f4d5db812267c` |
| 39 | `lemma` | [isInvertible_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/isinvertible-mfderivwithin-extchartat-symm.md) | 345 | `result-track:c64610a3c57f3b3b87231fe7716cccd5696c9e1c3fcc244ffdfdc7428ca78ca0` |
| 40 | `lemma` | [isInvertible_mfderiv_extChartAt](../../../../DifferentialGeometry/AtlasNamespaced.lean/declarations/isinvertible-mfderiv-extchartat.md) | 351 | `result-track:80d7904c7198631d6f802d9e5325bf1cf91dab239ae87743fd1b684dd19c86d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63f57d6b67f21066aa4461d3b0c7d944aa2315f0b3ec9b059227a26d4c3e88b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
