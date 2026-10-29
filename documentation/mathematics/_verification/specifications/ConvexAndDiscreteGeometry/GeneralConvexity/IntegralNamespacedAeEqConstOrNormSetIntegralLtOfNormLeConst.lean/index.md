# Verification target: Integral Namespaced Ae Eq Const Or Norm Set Integral Lt Of Norm Le Const

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de15c908b578721ddf0bfe14d10627b393b68ba5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantc6e33d403265e996a2356b1e0eb77bf64ef5658b5a263e3d696c3c82ec5f0c87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de15c908b578721ddf0bfe14d10627b393b68ba5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantc6e33d403265e996a2356b1e0eb77bf64ef5658b5a263e3d696c3c82ec5f0c87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variantc6e33d403265e996a2356b1e0eb77bf64ef5658b5a263e3d696c3c82ec5f0c87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.integral_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convex-integral-mem.md) | 61 | `result-track:7f436e6ab0ddfbb883c280f36ea240e528181ca1218c44d3c78d5e51b26624f5` |
| 2 | `theorem` | [Convex.average_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convex-average-mem.md) | 92 | `result-track:4880f1dd7e2ddea140942d9d6f02d28ad3c557a16707adef41e6c7146efc4a59` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convex-set-average-mem.md) | 99 | `result-track:d6e44a8e0a75e763c363dd78c4f16519c3036f46d1a1dcae9b1b4a512cad6ab2` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convex-set-average-mem-closure.md) | 108 | `result-track:0d4f2a54127c6221e421789e3f22a5116c82cfd996a5e0b7654385267ed7de5f` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convexon-average-mem-epigraph.md) | 113 | `result-track:7af951ae66d128a7652545e7d8f25413479671fec43897552a40afab2464e9d5` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/concaveon-average-mem-hypograph.md) | 122 | `result-track:53f6e381750d3d4bc85335a1794c3e5ea7880d7c06813d0dfb293df6bf8b894c` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convexon-map-average-le.md) | 134 | `result-track:0b19d08bf5f239e69e62bdb5d231312e46bf86ec8c70ddb795b9ccfe57e5330c` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/concaveon-le-map-average.md) | 145 | `result-track:e788b9604b2557aaccb2c7f7058d25ceecc03d550fe01535ec7402702627ef08` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convexon-set-average-mem-epigraph.md) | 156 | `result-track:96fae0c24b00efe62bb622769233f157388e26e431446581a4416a0cb591edac` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/concaveon-set-average-mem-hypograph.md) | 169 | `result-track:3cc3c6d52caeab1068e5ab2b2ceffe7fe4e475dfb376a2478f55b58d932d258e` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convexon-map-set-average-le.md) | 181 | `result-track:c912af9919283348df8b185e8732a278eff7ec99e91a99be58bcca8d540be723` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/concaveon-le-map-set-average.md) | 192 | `result-track:0a3ec6974ae2f863c82128ff71a4ac6283cc5144f7b8e50ce2f28b6f87e80d00` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convexon-map-integral-le.md) | 203 | `result-track:c264621f8551400e84dd25f36aa990fc797fade183c21acd2737ce1682657750` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/concaveon-le-map-integral.md) | 212 | `result-track:b07147bec1f9ef4e5731ff7ec279cf5738dfe17e17127e548e4e817c207138e2` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/ae-eq-const-or-exists-average-ne-compl.md) | 225 | `result-track:3425624a1482319366ecf0dde241904ef27900d5fe42847732bec418484600bd` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/convex-average-mem-interior-of-set.md) | 244 | `result-track:94d2be1837c46063b994ba3d4891b7a634125ea2c9c2887d7ae61dceb3fa893a` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior.md) | 261 | `result-track:d65f8987c7acbd434ccf417bf95b5b4ce4f10b74025b5bc17ae3e7bfbb53bafc` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt.md) | 275 | `result-track:eee8c1f6db8dfb62949a4f23529c9542981ed10dcb3c10cde47dd19b499a9b4b` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average.md) | 303 | `result-track:75a3c9ef53646f0973479620347de7d804e15f42cf840f2a743c0a7647813096` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const.md) | 313 | `result-track:e98aa324c70a6470d6619b36c1cc65e4e025eaa30d24af7ee1934122f9061ed9` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const.md) | 332 | `result-track:2a910873d37dc54965ad83285881fe3db9a1a793eb1e5f04d75bddb43824b035` |
| 22 | `theorem` | [ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntegralNamespacedAeEqConstOrNormSetIntegralLtOfNormLeConst.lean/declarations/ae-eq-const-or-norm-setintegral-lt-of-norm-le-const.md) | 345 | `result-track:15dcee27d23104d87aaea54eeb45be7f43ed12f0f62473cb5861800c9dabec4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1c3e725bc2dc4405ee580432cbd3670ab51313a8b25e7f3421095d819e10a3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantc6e33d403265e996a2356b1e0eb77bf64ef5658b5a263e3d696c3c82ec5f0c87.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Integral/Variantc6e33d403265e996a2356b1e0eb77bf64ef5658b5a263e3d696c3c82ec5f0c87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
