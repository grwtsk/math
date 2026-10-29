# Verification target: Source Actual Sharp Zero Tail Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1097e0ea8183e5937874c7161cede798d52dbf19",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/index.md) · [Full source](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1097e0ea8183e5937874c7161cede798d52dbf19`.

Source path: `GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_norm_joint_strip_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/pole-norm-joint-strip-le.md) | 19 | `result-track:fa27e47b4216308428e912db78dd17037bc5f7829b4d888e8335db80b8d92902` |
| 2 | `theorem` | [endpoint_minus_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpoint-minus-norm-le.md) | 41 | `result-track:c02bd9aec7e54fd1e37d4dc705c696fb8b9213c63587fe27814879794e042a08` |
| 3 | `theorem` | [endpoint_plus_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpoint-plus-norm-le.md) | 52 | `result-track:86f52931ca69c2872ebe73bd2087a04417bdf877ab624cdf89f8952a8b12c3a4` |
| 4 | `theorem` | [actual_bump_complete_endpoint_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/actual-bump-complete-endpoint-norm-le.md) | 64 | `result-track:d2a3026260f30203954e4e780e288a8155eedef1218f213910504730b61a9c18` |
| 5 | `def` | [endpointScale](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpointscale.md) | 89 | `declaration-track:0fb238729a5fa002714dce891b48b216cc4d500b944ac6169c15525fe49f6ddb` |
| 6 | `theorem` | [endpointScale_pos](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpointscale-pos.md) | 92 | `result-track:e94e5b6f3127df6c6377e698da10892b31c6062b3d4a4f2debd3ae87e5bcd12a` |
| 7 | `theorem` | [endpointScale_antitone](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpointscale-antitone.md) | 96 | `result-track:5a41c13d1a1089eaa01406c6783c60f1a8eae207de61999ffafef30e4042012d` |
| 8 | `theorem` | [actual_bump_endpoint_scale_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/actual-bump-endpoint-scale-norm-le.md) | 109 | `result-track:335e9e62bcb50a6c35a3e19ecb7cdeb1e38c467c251cc3cfe3ae4cc95edd6d6f` |
| 9 | `theorem` | [exp_pair_le_of_abs_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/exp-pair-le-of-abs-le.md) | 127 | `result-track:eaeb6819e00d16525d54aa64a0a424bfa3ed9bb73ab57f86d1ec53a33fbc68df` |
| 10 | `theorem` | [endpointScale_three_sixty_four_lt](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/endpointscale-three-sixty-four-lt.md) | 134 | `result-track:6933cbf5625559c8939ca4d86d85e5695061521ce150cff083fd7282b1aa2316` |
| 11 | `theorem` | [actual_bump_strip_high_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/actual-bump-strip-high-norm-le.md) | 138 | `result-track:d07439fd211e28c9d09e95f31a97712f25d474c610c175e9eeefa629fe236a2b` |
| 12 | `theorem` | [exp_neg_large_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/exp-neg-large-le.md) | 167 | `result-track:2926c9edfee002592faee406d438f7ad748b576df90429ab7a827de8657e4f25` |
| 13 | `theorem` | [actualInitialPrimeMellin_sharp_strip_norm_le](../../../../RealFunctions/SourceActualSharpZeroTailEdition4.lean/declarations/actualinitialprimemellin-sharp-strip-norm-le.md) | 187 | `result-track:dfef2d8e5e30e778220a6d45df9b9dc8c8dc428a10564df9a4d524a46a03c797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f34f1a7c0525165d7e51139b5e1a18a317359a08b9eb250d3e788fd11aa4660b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
