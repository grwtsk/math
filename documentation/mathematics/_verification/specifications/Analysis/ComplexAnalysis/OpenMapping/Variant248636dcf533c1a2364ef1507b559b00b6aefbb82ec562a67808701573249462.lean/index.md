# Verification target: GRWTSK.Analysis.ComplexAnalysis.OpenMapping.Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cae390e30c09d23fb8ac126ef16d9a3efb7ef998",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/index.md) · [Full source](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cae390e30c09d23fb8ac126ef16d9a3efb7ef998`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DiffContOnCl.ball_subset_image_closedBall](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/declarations/diffcontoncl-ball-subset-image-closedball--7155049fb51ae62c5fc950ad.md) | 44 | `result-track:7155049fb51ae62c5fc950ade8bdd04688cd3690f0c0d960fbe255da909547c3` |
| 2 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds-aux--57d118be9de4a897a7497e48.md) | 77 | `result-track:57d118be9de4a897a7497e488b4b7210ae2f326e3445491a87dae9a0d533eb8d` |
| 3 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds--d4531053d93f43bd58fd6d16.md) | 113 | `result-track:d4531053d93f43bd58fd6d164dbdaa0e660f748d95d9e67ec13e07df30be25ab` |
| 4 | `theorem` | [AnalyticOn.is_constant_or_isOpen](../../../../../../Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/declarations/analyticon-is-constant-or-isopen--1f2f8a3cc45f4f6f15753c54.md) | 163 | `result-track:1f2f8a3cc45f4f6f15753c54ba9f34450a0d11a30e6b4f984bb13e06e6fb4e27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb33f22b58e981877f42b0b7cba53099b6d0cf610e72e4ab604250487ddb4372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
