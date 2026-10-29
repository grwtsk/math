# Verification target: Intervention Defect Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81048ef07bd78d3939a23b71a2bf913d39912841",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81048ef07bd78d3939a23b71a2bf913d39912841`.

Source path: `GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveFourSector` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_self](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/zero-self.md) | 40 | `result-track:000054a90158450bfcf2d6b33c10b3b1ab4255124715594aac15571d940e8315` |
| 2 | `theorem` | [visible_ne_zero](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/visible-ne-zero.md) | 46 | `result-track:44285d92c53d0f17102f9be72529797b5859744728bc7a67a173d6426c1ae189` |
| 3 | `structure` | [LinearIntervention](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/linearintervention.md) | 57 | `declaration-track:df465dfe7e8c530db7e4bb1671e650b42ee59205f399de3e0b746413a350198c` |
| 4 | `def` | [differential](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/differential.md) | 66 | `declaration-track:60be80ceb956a1c5f033aa5a05b8f696f21541b532f7c31fbd5fbe6192122874` |
| 5 | `theorem` | [differential_apply](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/differential-apply.md) | 70 | `result-track:b11d33f68df52656dd79d52375b7273158ab10f2c855ae26f64e20bb59717657` |
| 6 | `def` | [projectedDifferential](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/projecteddifferential.md) | 82 | `declaration-track:ec5dfb040733edf9491ea42476fc1468cd2f7060271e660854971c11c993e907` |
| 7 | `theorem` | [projectedDifferential_apply](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/projecteddifferential-apply.md) | 87 | `result-track:596c72b7a9fb2404ed53f8b82c93cb15523d712980ce90c57cc861341fd14f71` |
| 8 | `def` | [interventionDefectGeometry](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectgeometry.md) | 94 | `declaration-track:b6555cf3988db2580220cb2aa2108e248e1e623b350fac22ad3195338a677144` |
| 9 | `def` | [interventionDefectEnergy](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy.md) | 99 | `declaration-track:fcae1fd136559257e039643f15b9eed8a50707e7760ddea40e14cf889d843282` |
| 10 | `theorem` | [interventionDefectEnergy_eq](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-eq.md) | 104 | `result-track:49235dbbc02e323d07e42543d64187dd87c3cfaa8b9f9d53e336c42fcca298ce` |
| 11 | `theorem` | [interventionDefectEnergy_eq_interventionEnergy](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-eq-interventionenergy.md) | 113 | `result-track:401701c27e1080dfd5749e7ff3aa295674bb8ff29cd79ebf868644bd3ff8ed7d` |
| 12 | `theorem` | [interventionDefectEnergy_nonnegative](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-nonnegative.md) | 120 | `result-track:e83f435aed6e0c6a25e15b1323332fac4d7a5a2ffc47206efd8ee04727b80c8e` |
| 13 | `theorem` | [interventionDefectEnergy_le_differentialEnergy](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-le-differentialenergy.md) | 127 | `result-track:94e1050891d038d820c9e1ca7d365d2ab5fb8a1d925c96f7058dce40c2272a04` |
| 14 | `theorem` | [interventionDefectEnergy_pos_iff_visible](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-pos-iff-visible.md) | 136 | `result-track:65ab736bcfdd514c5149751b989445c07c8e6885cd979076b708aacce8592583` |
| 15 | `theorem` | [interventionDefectEnergy_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/interventiondefectenergy-eq-zero-iff.md) | 143 | `result-track:08b0cb1b803fa4b8f1cc46b457e434819891d046695a69f96483c06237dbe22c` |
| 16 | `theorem` | [projectedDifferential_ne_zero_of_visible](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/projecteddifferential-ne-zero-of-visible.md) | 150 | `result-track:20d95ce5cb342481394b0194d2c467564838b93962cca59bb9bfa4ae82f5bba8` |
| 17 | `theorem` | [visible_projectedDifferential_gives_positive_defect](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/visible-projecteddifferential-gives-positive-defect.md) | 158 | `result-track:3bf2f350f1d3180274ee01c6cc8a5fe4d7985a00705a53d840ff4145180666c1` |
| 18 | `theorem` | [positive_defect_gives_visible_projectedDifferential](../../../../GroupTheoryAndGeneralizations/InterventionDefectNamespaced.lean/declarations/positive-defect-gives-visible-projecteddifferential.md) | 168 | `result-track:ccc56f846b515c7636dffeaf53747100c4a33c534bb39a82b6e79b5cd18a5eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b77b7775e7c466f93dd0486dc7fb3a24c2de215f7c9452d9db9f2deed7881ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
