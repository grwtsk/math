# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a63d7418cb2e445b084e44d95c32f5748ab07b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/index.md) · [Full source](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a63d7418cb2e445b084e44d95c32f5748ab07b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.DivergenceTheorem` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Prod.Integral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₁](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--5f58eb70f731df3268ff2b8b.md) | 117 | `result-track:5f58eb70f731df3268ff2b8b87a5ed856bba6a65dae8586148c55283e39eb3bc` |
| 2 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--0c4cabd1daf83dc07ea0bc8a.md) | 149 | `result-track:0c4cabd1daf83dc07ea0bc8a2621692be75ce251612122d82dab40960ab5a30c` |
| 3 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable--5224723e354de467c21e5639.md) | 276 | `result-track:5224723e354de467c21e56392aee244680d4fb230fc815298fac5d4240cbe17d` |
| 4 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable'](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable--b246741f2e1b2d0966c2479d.md) | 309 | `result-track:b246741f2e1b2d0966c2479df923182dd8835d194f387e9fae78db11741b787b` |
| 5 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-of-equiv--166e601cd6bdd1482954ee36.md) | 327 | `result-track:166e601cd6bdd1482954ee3698229770de6c688d58937566f19e003fa74a92e3` |
| 6 | `theorem` | [integral_eq_of_hasDerivWithinAt_off_countable_of_le](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-eq-of-hasderivwithinat-off-countable-of-le--4bd027c6eab62cf70e322224.md) | 389 | `result-track:4bd027c6eab62cf70e3222241f8ee07c1078dcc02cdb5508e9c3685c4df2d997` |
| 7 | `theorem` | [integral_eq_of_has_deriv_within_at_off_countable](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-eq-of-has-deriv-within-at-off-countable--cc380888981fb11eebb75611.md) | 426 | `result-track:cc380888981fb11eebb756111040b4e3d9e4158787e3710839be671e0e2db10e` |
| 8 | `theorem` | [integral_divergence_prod_Icc_of_hasFDerivWithinAt_off_countable_of_le](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral-divergence-prod-icc-of-hasfderivwithinat-off-countable-of-le--f6586431e5e98176e8414c90.md) | 448 | `result-track:f6586431e5e98176e8414c90cc48d7c25f6854630db55a6ad8bbade8f0cc2bc1` |
| 9 | `theorem` | [integral2_divergence_prod_of_hasFDerivWithinAt_off_countable](../../../../../../../Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/declarations/integral2-divergence-prod-of-hasfderivwithinat-off-countable--6b270605eff2cfc7acf52535.md) | 499 | `result-track:6b270605eff2cfc7acf5253581a10788072532bf6e27e06fd0b4be841c1b2c87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86d7c48e3ed825a497ab2e1ec1d4afdb74e3b27875299b1c0012bcf2801090b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
