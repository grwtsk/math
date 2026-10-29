# Verification target: Source Actual Riesz Centered Initial Laplace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3bd287b969126cbf166c17b1dc7c8c32b926e29",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3bd287b969126cbf166c17b1dc7c8c32b926e29`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszInitialLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszRealConstantCenter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_weight_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/time-weight-integrable.md) | 26 | `result-track:26d68b2eebf5544ba2b49c1ec9a478603035a2660bcac7ed76b1807408dc1905` |
| 2 | `theorem` | [time_weight_integral](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/time-weight-integral.md) | 33 | `result-track:312b0054028730ed7a57b68fcc31a6c3e9ee22284944825d5054f676c826225d` |
| 3 | `theorem` | [centered_weight_eq](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/centered-weight-eq.md) | 42 | `result-track:376d88daa2352e963141d6e1f4521caa7993aa05db154ebf6e595f97d43dcafd` |
| 4 | `theorem` | [centered_weight_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/centered-weight-integrable.md) | 51 | `result-track:d7cf3e634dcb30226eb58090e3ae0cda660fe0badc4dca5df22e1229cf644c9f` |
| 5 | `theorem` | [centered_weight_integral](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/centered-weight-integral.md) | 60 | `result-track:7a4d5b82bfc84d97618525484bd1e967f1605371afaf1ffbf01327b1969fb37c` |
| 6 | `theorem` | [numerator_initial](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/numerator-initial.md) | 80 | `result-track:f3229081e77774778515fea576cf87db5d0185ee99fcb9aa5cf3b55b7abfa1b1` |
| 7 | `theorem` | [centered_scalar_identity](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/centered-scalar-identity.md) | 86 | `result-track:204b6043dbf52cf0b27c4e47f2dd7c049a4f1c44ac5b6d2f00314e6729b3973e` |
| 8 | `def` | [actualFixedCenteredRieszLaplace](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfixedcenteredrieszlaplace.md) | 91 | `declaration-track:bf69595d6649c4ffe2b34e74da66088e0c8d90a931815c8f684bdc81c33fa9d2` |
| 9 | `def` | [actualFiniteCenteredRieszLaplace](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfinitecenteredrieszlaplace.md) | 97 | `declaration-track:9e6ced7e80e68c770e2cbd076c9da64418acc588f074d2d03746058726463948` |
| 10 | `theorem` | [actualFixedCenteredRieszLaplace_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfixedcenteredrieszlaplace-integrable.md) | 102 | `result-track:6e999a1190839065e527a46210e9350c6b10bc7e866ebc09a8c2808ce7702996` |
| 11 | `theorem` | [actualFixedCenteredRieszLaplace_eq_regularization](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfixedcenteredrieszlaplace-eq-regularization.md) | 109 | `result-track:b16bebe54e8ada31e8a43d079391e55fe9fb9b3eb3e2fcf589c5e70584853e45` |
| 12 | `theorem` | [actualFiniteCenteredRieszLaplace_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfinitecenteredrieszlaplace-integrable.md) | 118 | `result-track:dff914e4234b9811f9deef5dde9267523fe5f090771e9ab418f0673ffa34ec34` |
| 13 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfinitecenteredrieszlaplace-eq-fixed-add-payment.md) | 126 | `result-track:1f7f1aa8d4fd67eea71f02333d2deb8492ce20a8d8f2aa9d9830aed5d70e46f4` |
| 14 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_regularization_add_payment](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfinitecenteredrieszlaplace-eq-regularization-add-payment.md) | 137 | `result-track:af9d1290c272665743526879024c9b33261186deb88d94744ec989a5dceec8ac` |
| 15 | `theorem` | [actualFiniteCenteredRieszLaplace_difference_bound](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNamespaced.lean/declarations/actualfinitecenteredrieszlaplace-difference-bound.md) | 145 | `result-track:3efd0d1880ee2341b2afabb481ae2c7f378ec8b6274517a5e168fb7e3bc0ebd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db5c5b535bccb9ac90ae1bea93cfadbf1b31a04abfd26cce9417156be612aad3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
