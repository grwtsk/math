# Verification target: Reflected Positive Primitive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ad901de31d3f0c2ee317b4fa856704142f79688",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ad901de31d3f0c2ee317b4fa856704142f79688`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePositivePrimitive` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [physicalScale](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/physicalscale.md) | 26 | `declaration-track:afcbc0fcc92877f819b84b3d9d9eaf4dad57a5d24443af75b2dde616f437c06b` |
| 2 | `def` | [reflectedPrimitive](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive.md) | 29 | `declaration-track:88b1690fe590a06330db12ee52d1e4c7756024cd1f05f410e9bebe340fc219ba` |
| 3 | `def` | [reflectedPrimitiveFirst](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitivefirst.md) | 31 | `declaration-track:4bf699315430e63b1765ab33b23c6fa83b4601afdd4c206b6633bda7cdc07aa7` |
| 4 | `theorem` | [unitBumpOverlap_integrand_integrable](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/unitbumpoverlap-integrand-integrable.md) | 35 | `result-track:4836cb6a4c0b5f2cd7fee9cd717972d70661c69ee463f94a3450cd23a82699d2` |
| 5 | `theorem` | [primitiveCorrelationZero_integrand_integrable](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/primitivecorrelationzero-integrand-integrable.md) | 40 | `result-track:29e433bf56a573c6510d10f91e4660ed27847afc66a4ae5fa739e818ec8139a2` |
| 6 | `theorem` | [reflectedPrimitive_hasDerivAt](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive-hasderivat.md) | 47 | `result-track:d21395472273f0abcbea9bb60394b6048a68c910d6657bb9d8d40702206696ad` |
| 7 | `theorem` | [reflectedPrimitiveFirst_hasDerivAt](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitivefirst-hasderivat.md) | 55 | `result-track:2e621f452e4ae79be882427fefd7bcdae778f88368e169279156624f549fdc67` |
| 8 | `theorem` | [reflectedPrimitive_second_actual](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive-second-actual.md) | 64 | `result-track:7c698a70fb41e44e2757d715d417ea8137b8d399068f25c12fc6a4bdac3a508e` |
| 9 | `theorem` | [reflectedPrimitive_nonneg](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive-nonneg.md) | 84 | `result-track:c56d630750283aadd1a76f2deec2870028fef78a2479884e34f0b4f3b485d01d` |
| 10 | `theorem` | [reflectedPrimitive_lower_traces](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive-lower-traces.md) | 91 | `result-track:a90ea4166cccfc39467d5a2d77c870e3e97cb787514fd9b88fb0c1d222017e84` |
| 11 | `theorem` | [positivePrimitive_center_rational](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/positiveprimitive-center-rational.md) | 98 | `result-track:e239975e8d3dfd30c32754668be18761dbb567592509116a1b9e5e2fadf1ac30` |
| 12 | `theorem` | [positivePrimitiveFirst_center_rational](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/positiveprimitivefirst-center-rational.md) | 109 | `result-track:7af2796109eb3bfd45da986c7bd8728c3e406cb618464175eaebaac726dcafd5` |
| 13 | `theorem` | [reflectedPrimitive_upper_traces](../../../../MeasureAndIntegration/ReflectedPositivePrimitiveNamespaced.lean/declarations/reflectedprimitive-upper-traces.md) | 121 | `result-track:e6e64ae382e1f9011c2746424f70988f5a6a3c78931191e9140d26c911de8802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea92672f47270b626458b27ff5a6262d82d534733e6738fa56f50416624dcbc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
