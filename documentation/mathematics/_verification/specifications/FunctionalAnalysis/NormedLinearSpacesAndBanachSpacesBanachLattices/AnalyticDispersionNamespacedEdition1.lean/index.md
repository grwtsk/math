# Verification target: Analytic Dispersion Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19d79f7ca70c6e4359a7d854e872bc6586b0b11c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19d79f7ca70c6e4359a7d854e872bc6586b0b11c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FourPhaseConvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDispersionReconstruction](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/analyticdispersionreconstruction.md) | 49 | `declaration-track:c1bdde01272bcdae8fa910b02252719b2ce5b0247d8dd18babf3a24ea9afbe7a` |
| 2 | `theorem` | [fderiv_potential_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/fderiv-potential-eq.md) | 67 | `result-track:9115f923c5519f807c4c145913f3ca761e4e9cda2db6803d787fb2fd98b7984e` |
| 3 | `theorem` | [fderiv_gradient_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/fderiv-gradient-eq.md) | 72 | `result-track:4fd841f6ef0f85fdfcad65ec5de023726fb4ec34a69d6835a1498e5055fc8b60` |
| 4 | `theorem` | [hessian_apply_eq_dispersion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/hessian-apply-eq-dispersion.md) | 77 | `result-track:a5a7777cb0aa281eda0b096f918e58618fcd45f57b790209975e004277613b4c` |
| 5 | `theorem` | [hessian_symmetric](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/hessian-symmetric.md) | 84 | `result-track:01d34ad1148bbb037cd729ee5fe629fa7a1f91635434e4f9d2d67eb650660423` |
| 6 | `theorem` | [hessian_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/hessian-nonnegative.md) | 91 | `result-track:6739706738477b7b389d5d3b73ea4820d89c4e7b4069c8b557771ca1be04c1f3` |
| 7 | `def` | [geometryAt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/geometryat.md) | 98 | `declaration-track:5075a2936ca6b8e19a3a02e688783a83ff24ab6f2f41bedd03ea5cad8b6fa008` |
| 8 | `theorem` | [geometryAt_form](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/geometryat-form.md) | 102 | `result-track:4531c1243538bb85f850ffd113fa5fadf3c309a1512c8abda15ae7079f80ff16` |
| 9 | `theorem` | [visible_iff_hessian_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/visible-iff-hessian-pos.md) | 109 | `result-track:4e6168e666e5b14fc432cdfe9b7fc38660e576b2e596cf2e6da6392bd894798a` |
| 10 | `theorem` | [isNull_iff_hessian_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/isnull-iff-hessian-eq-zero.md) | 117 | `result-track:5007e76fa0abdeaefd80c43d204430ab16ba9f305e1f5957f903ab6c8127d0e9` |
| 11 | `theorem` | [analytic_potential](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/analytic-potential.md) | 124 | `result-track:8d144eabd1973e7bc98530a4bd2fc7a409973e5b1c66e45115e1b0a415dc4c44` |
| 12 | `theorem` | [analytic_gradient](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/analytic-gradient.md) | 129 | `result-track:21da70da05626d4b014e5b72d09ab98131da0e4b7be8e2611fdf35e9dee95486` |
| 13 | `def` | [ofAnalyticDispersionAt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/ofanalyticdispersionat.md) | 145 | `declaration-track:0bffc72522410d7c8a97f478cc8448b8dc7cd35a5f6cd392ed5fdf15e366f3b1` |
| 14 | `theorem` | [ofAnalyticDispersionAt_phaseI](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/ofanalyticdispersionat-phasei.md) | 158 | `result-track:081390e993a1af06dabca4737976382b1ea9d5c21b54b8f65e5ff2e231b19b3f` |
| 15 | `theorem` | [ofAnalyticDispersionAt_phaseIEnergy](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionNamespacedEdition1.lean/declarations/ofanalyticdispersionat-phaseienergy.md) | 170 | `result-track:4d25bfed48bee9cd82271fb132437e43b07e0431d90a3c160526814ec418df6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91268aa8bfff6635339ef6ba5de2acf6b61028e142acac55fbc3fc826fb5eff4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
