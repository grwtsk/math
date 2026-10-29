# Verification target: Analytic Number Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4220fa7d10a6ca5f890b8ff8fccf2f1ea87f2c33",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4220fa7d10a6ca5f890b8ff8fccf2f1ea87f2c33`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.BoundaryCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Presentation.Spine` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defaultBoundaryKind](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/defaultboundarykind.md) | 32 | `declaration-track:142a757db88812d500871e558680f7f3793a99639a42fac05982e4f77417937a` |
| 2 | `def` | [analyticContext](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/analyticcontext.md) | 69 | `declaration-track:a456752b4e19b188fdec91a7d40c60b7db4f4ea9aebbb7170f67eaa199c4f576` |
| 3 | `def` | [analyticClaim](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/analyticclaim.md) | 77 | `declaration-track:7e5fda120dc3631b998752edacb9d9f9a340cd9eb7f61710f616556f308ea007` |
| 4 | `def` | [SpineRealizationCertificate.toAnalyticCertificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/spinerealizationcertificate-toanalyticcertificate.md) | 88 | `declaration-track:4a8ac5007b2d77b97a02000f5f0a94e1c7860eade91c7fd9a17236158ea4dcc5` |
| 5 | `def` | [SpineRealizationCertificate.toAnalyticAuthorityToken](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/spinerealizationcertificate-toanalyticauthoritytoken.md) | 100 | `declaration-track:2552fcb563f6033612fc39a37e0d8d1f7e8ca87a6c5c2c1f06c4ac82fdf84936` |
| 6 | `theorem` | [spine_realization_through_boundary_calculus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/spine-realization-through-boundary-calculus.md) | 116 | `result-track:c75b0909cbda35923de66cff16b33e4887ba8c9bf610af7c2ab372286bfde64f` |
| 7 | `theorem` | [raw_spine_presentation_not_analytic_authority](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AnalyticNumberAdapter.lean/declarations/raw-spine-presentation-not-analytic-authority.md) | 128 | `result-track:1419a3621ac932c0deb3005f1004dcfe36b73a33ec72c72587b8ce3f5f3b62c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed7967e86ef06c4ffbcfc9ac57124d5e26a2ce2170d34828242a14e3d56cb1c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
