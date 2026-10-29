# Verification target: Density Substitution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DensitySubstitution.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DensitySubstitution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLayerCake` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/envelope.md) | 12 | `declaration-track:87c85e59f8b34710e077fbdeec7506ee2496006474a0087b3dced95ff7c7a123` |
| 2 | `def` | [mixedExponent](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/mixedexponent.md) | 15 | `declaration-track:bd893f89b4ced6197586d446d8ac6cd4ac90b7ace9360b9a0290268a64f10e8d` |
| 3 | `theorem` | [envelope_exp](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/envelope-exp.md) | 18 | `result-track:ac6cb427f2d15dacc48508ec0d950dba0cad962d796cec0b1ba02485b73eb27f` |
| 4 | `theorem` | [envelope_continuous](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/envelope-continuous.md) | 25 | `result-track:c3bd861c64cdd677288d3ab6a2393b662507a81b083c26491363db24b8dfc8db` |
| 5 | `theorem` | [weighted_envelope_integrable](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/weighted-envelope-integrable.md) | 34 | `result-track:998363c5b2e9429227bff60d5f29c0ab0849f3cd7521988fbaf90ea1985d15f2` |
| 6 | `theorem` | [product_exponent](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/product-exponent.md) | 39 | `result-track:479d39b8f66dc117542ab8de9b52c7939428e4da78b8811781cb10647d1ef77e` |
| 7 | `theorem` | [actual_density_substitution](../../../../MeasureAndIntegration/DensitySubstitution.lean/declarations/actual-density-substitution.md) | 50 | `result-track:2298e67e3b3530bb94a8243223040ef414ff9eeeeb582d20dfa6c3a934ebb370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaffea088cd186f7bc0121f3ec52f06e70742f25b848881bc15a0869d14a3761 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
