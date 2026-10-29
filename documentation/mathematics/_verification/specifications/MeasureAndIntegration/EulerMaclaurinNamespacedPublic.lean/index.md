# Verification target: Euler Maclaurin Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b73ed79a4ec664f376ce8009b1354c4a4bb929e7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant05f1faefce8b436c586535e145a28346bd196413b1f7e37bbfd28187432a5a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b73ed79a4ec664f376ce8009b1354c4a4bb929e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant05f1faefce8b436c586535e145a28346bd196413b1f7e37bbfd28187432a5a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant05f1faefce8b436c586535e145a28346bd196413b1f7e37bbfd28187432a5a22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B1](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/b1.md) | 36 | `declaration-track:793a7021a95a6056f37784bb8b20cc4d25b0f130e53be2b7d680c3dc94b047e3` |
| 2 | `lemma` | [aestronglyMeasurable_B1](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/aestronglymeasurable-b1.md) | 39 | `result-track:f92b0bebc3a334115b676a25db57bedd5be8271a8cab3213e8a8c7723b22e50b` |
| 3 | `lemma` | [abs_B1_le_half](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/abs-b1-le-half.md) | 43 | `result-track:d15f7d30254edf12e729085abec6a2f692e32c6334db4e18b1908669ca3ef804` |
| 4 | `lemma` | [integral_deriv_mul_add_const](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/integral-deriv-mul-add-const.md) | 49 | `result-track:8651bf302e6b4b99090eb69496e6fed5b111f6240304cb7558358905f963f3ad` |
| 5 | `lemma` | [intervalIntegrable_deriv_mul_B1](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/intervalintegrable-deriv-mul-b1.md) | 62 | `result-track:2f2f036cc16644eb8ca8d5c64daa43e0cc2fd2b29e858bc21c4600258869b0f8` |
| 6 | `lemma` | [integral_deriv_mul_floor_add_one](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/integral-deriv-mul-floor-add-one.md) | 72 | `result-track:9d2f048404d0c897ae44400a23841ab3c05a84fbf4cb4240487479f07e0f1947` |
| 7 | `theorem` | [sum_eq_integral_add_integral_deriv](../../../../MeasureAndIntegration/EulerMaclaurinNamespacedPublic.lean/declarations/sum-eq-integral-add-integral-deriv.md) | 88 | `result-track:d743217071a9e38ff13521ec91f4827b6acc96e1105672f123d8c68105ea3f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d651ec45d8283615d27e4b9fe533f3c1db33864f9587441d78a059d93038a25d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant05f1faefce8b436c586535e145a28346bd196413b1f7e37bbfd28187432a5a22.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant05f1faefce8b436c586535e145a28346bd196413b1f7e37bbfd28187432a5a22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
