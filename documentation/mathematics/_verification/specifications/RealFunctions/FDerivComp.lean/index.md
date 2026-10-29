# Verification target: FDeriv Comp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ffffe426a04b61bf26aa856e0373b6d8e40913",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantfbaa460304222bf1a8fd70a4bba1bffb0ce0012cbdc16dedf65d9b34ae6382db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivComp.lean/index.md) · [Full source](../../../../RealFunctions/FDerivComp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ffffe426a04b61bf26aa856e0373b6d8e40913`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantfbaa460304222bf1a8fd70a4bba1bffb0ce0012cbdc16dedf65d9b34ae6382db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantfbaa460304222bf1a8fd70a4bba1bffb0ce0012cbdc16dedf65d9b34ae6382db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivAtFilter.comp](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivatfilter-comp.md) | 43 | `result-track:5cd97ffb6f39cbebee4075d8276aebc47f89f594341380974480768c571e755b` |
| 2 | `example` | [(anonymous)](../../../../RealFunctions/FDerivComp.lean/declarations/example.md) | 52 | `declaration-track:5c612e5f425dcd83aae496fb6c8f5fd17267d5d14854f073910e29c5d728cc64` |
| 3 | `theorem` | [HasFDerivWithinAt.comp](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivwithinat-comp.md) | 67 | `result-track:8ba61bc811d05347dacf3e163c879bd8e55e846b009a1dae485f6393fb8868ba` |
| 4 | `theorem` | [HasFDerivAt.comp_hasFDerivWithinAt](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivat-comp-hasfderivwithinat.md) | 73 | `result-track:1ea9508b0ded13eaf20446e0aba0e13e4c74f6e0611eab7525a1f31f28c67b18` |
| 5 | `theorem` | [HasFDerivWithinAt.comp_of_tendsto](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivwithinat-comp-of-tendsto.md) | 79 | `result-track:084caafc08568ed751d6f41528799808d2f222149050ca9cd5ef6a0fbced65f1` |
| 6 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivwithinat-comp-hasfderivat.md) | 84 | `result-track:97d199353914bc72face5015cf772bc6d901f5d4aa72640e33bdfb0c52cf4331` |
| 7 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt_of_eq](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivwithinat-comp-hasfderivat-of-eq.md) | 89 | `result-track:c1f6c326e5defd9c3b631704ccbc595a90ab8130a26919a7c2553a6fc9f9011e` |
| 8 | `theorem` | [HasFDerivAt.comp](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivat-comp.md) | 96 | `result-track:968a5b8b4b093b5575fce4cc94a38113b13c70b89372b7771222825043bddcc9` |
| 9 | `theorem` | [DifferentiableWithinAt.comp](../../../../RealFunctions/FDerivComp.lean/declarations/differentiablewithinat-comp-source-edition-2.md) | 101 | `result-track:e3fc907fd07cbef9dabd3588c10596fcff56f19970b5fcf13527178d7b640bec` |
| 10 | `theorem` | [DifferentiableWithinAt.comp'](../../../../RealFunctions/FDerivComp.lean/declarations/differentiablewithinat-comp.md) | 107 | `result-track:339aeeb9b3071258564fa75c323d2439c5f62bbd0ae43d1137f54d696839b16f` |
| 11 | `theorem` | [DifferentiableAt.comp](../../../../RealFunctions/FDerivComp.lean/declarations/differentiableat-comp.md) | 113 | `result-track:398ee2c191fb64c57b4ef6c0eafde96bdad1cdc5af5953a4462257cf2a843b26` |
| 12 | `theorem` | [DifferentiableAt.comp_differentiableWithinAt](../../../../RealFunctions/FDerivComp.lean/declarations/differentiableat-comp-differentiablewithinat.md) | 118 | `result-track:7b487706123dba0bfa40634c25723ec08e06424f0ee67213f2d63cca56b287bf` |
| 13 | `theorem` | [fderivWithin_comp](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-comp-source-edition-3.md) | 122 | `result-track:4e9cc88f20b5ed3b5477aa453c5d528f1a1dba035a58bfaa07e7ab3b2a67e2ec` |
| 14 | `theorem` | [fderivWithin_comp_of_eq](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-comp-of-eq-source-edition-2.md) | 129 | `result-track:fa500fcae7b81963a0e4eb4b7d0d86eee635fa19cc0fc64612d9adfa13e16371` |
| 15 | `theorem` | [fderivWithin_comp'](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-comp-source-edition-2.md) | 136 | `result-track:47035ced145bcffa3c3e7e41b4772981d929ad83bd57d07bcc674d15a2e5e711` |
| 16 | `theorem` | [fderivWithin_comp_of_eq'](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-comp-of-eq.md) | 143 | `result-track:3c6e8c3f3b71eca393564e729799ed4ca9418d796764715933f9a33923a78d72` |
| 17 | `theorem` | [fderivWithin_fderivWithin](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-fderivwithin.md) | 152 | `result-track:d553dd62766a6f6322ea8ac872b8e769dfcbbef579302ca310ff21cac1c8485c` |
| 18 | `theorem` | [fderivWithin_comp₃](../../../../RealFunctions/FDerivComp.lean/declarations/fderivwithin-comp.md) | 161 | `result-track:1d1b872bed73b72d5b8e8d1299f3ea4ebac85802e90cf4021eec03a0511ac499` |
| 19 | `theorem` | [fderiv_comp](../../../../RealFunctions/FDerivComp.lean/declarations/fderiv-comp-source-edition-2.md) | 173 | `result-track:9dd4fb7b60fe50d4b20b6b08ad3de74bf512274379d36b853ae6cd6a2096885b` |
| 20 | `theorem` | [fderiv_comp'](../../../../RealFunctions/FDerivComp.lean/declarations/fderiv-comp.md) | 180 | `result-track:2e58fc94abb55f0ec80184322d29aa3f17605bb5c8f78ce0e58c924d4a577a72` |
| 21 | `theorem` | [fderiv_comp_fderivWithin](../../../../RealFunctions/FDerivComp.lean/declarations/fderiv-comp-fderivwithin.md) | 184 | `result-track:b9ca6a936dd4eb465e9be3362bda4e2b75528b742e3db8c22e15f5c9fdffe7c6` |
| 22 | `theorem` | [DifferentiableOn.comp](../../../../RealFunctions/FDerivComp.lean/declarations/differentiableon-comp.md) | 192 | `result-track:3cd82a33bacb551293019e0cd12f5deefc97606dad65a8d864d6c3e4852ff9d3` |
| 23 | `theorem` | [Differentiable.comp](../../../../RealFunctions/FDerivComp.lean/declarations/differentiable-comp.md) | 197 | `result-track:4c2745ee2010afba5ee190248e9e88e515d040334253aa4a18e9903c80d65814` |
| 24 | `theorem` | [Differentiable.comp_differentiableOn](../../../../RealFunctions/FDerivComp.lean/declarations/differentiable-comp-differentiableon.md) | 202 | `result-track:c321ce94a565a08a58b931db7b74693ce37b23247a5e352e0be7a2dd88d3a503` |
| 25 | `theorem` | [HasStrictFDerivAt.comp](../../../../RealFunctions/FDerivComp.lean/declarations/hasstrictfderivat-comp.md) | 208 | `result-track:975ca6c68d2c68f2bcd795c9292b88d7ee581b06790ae0dfe7395328ae0692be` |
| 26 | `theorem` | [Differentiable.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/differentiable-iterate.md) | 217 | `result-track:3dc79fb03ba3ee32e4de16d3c09dc6152b6684f9695acb6732030a3e0d716eac` |
| 27 | `theorem` | [DifferentiableOn.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/differentiableon-iterate.md) | 222 | `result-track:d843a46f4b7d7376b9b6166723f023a7cd34ac7da350e3618ab658556b06eead` |
| 28 | `theorem` | [HasFDerivAtFilter.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivatfilter-iterate.md) | 228 | `result-track:957110e7ec4214f5caff21e54d3a5a6ac2178e221a4bfc35e3ec8195c37a656e` |
| 29 | `theorem` | [HasFDerivAt.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivat-iterate.md) | 239 | `result-track:904bdc464ec5e350e92fa8198f51f20a63b426ade167cad27b10c7dc3dce6bcc` |
| 30 | `theorem` | [HasFDerivWithinAt.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/hasfderivwithinat-iterate.md) | 246 | `result-track:07a2d0988fb37c590697cc784496ae1153a3f59b8bccc622dddb0871fbf9956a` |
| 31 | `theorem` | [HasStrictFDerivAt.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/hasstrictfderivat-iterate.md) | 255 | `result-track:710324c1f6c8cbd5c010b8afd03ac328aedd1dae82a3ab1979fb194f16ad8aa9` |
| 32 | `theorem` | [DifferentiableAt.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/differentiableat-iterate.md) | 266 | `result-track:094b500e3776ad494e3988e7e5d38a23baf1b9165c18f6e088d7a99686eee1a5` |
| 33 | `theorem` | [DifferentiableWithinAt.iterate](../../../../RealFunctions/FDerivComp.lean/declarations/differentiablewithinat-iterate.md) | 271 | `result-track:2444d9f6e5ec2d4957ac19fa598dd8ab78cb9c78a2b7f5c7117be33a2dac38c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b683598cbe2213e77516cc9a73897dcf6b3499dacdf1b65cf7653bd41f79f24b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantfbaa460304222bf1a8fd70a4bba1bffb0ce0012cbdc16dedf65d9b34ae6382db.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantfbaa460304222bf1a8fd70a4bba1bffb0ce0012cbdc16dedf65d9b34ae6382db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
