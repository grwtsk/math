# Verification target: Forwarded Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3fb8023758426693aee5e00f3842bf7e3e95bb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ForwardedComparison/Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3fb8023758426693aee5e00f3842bf7e3e95bb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ForwardedComparison/Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ForwardedComparison/Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeilSource.Comparison` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.WeilInput` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.WeilArithmetic` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ZeroEquality` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [occurrence_sum_eq_weighted_points](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/occurrence-sum-eq-weighted-points.md) | 30 | `result-track:63280bf2a066ba2c7e10a72fcd761d0ab2549480711a09a8a3aae315885d91a8` |
| 2 | `theorem` | [weighted_zero_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/weighted-zero-identity.md) | 44 | `result-track:53c72e96deee72dec405c0cacae2f4885f31ad58ded353adb2d7c4956b311e4e` |
| 3 | `theorem` | [arithmetic_zero_equality](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/arithmetic-zero-equality.md) | 55 | `result-track:d37eb7a964d00086888fe42d886ebb4bbacbaf8d894639ff9e7fa944c483c1d2` |
| 4 | `theorem` | [arithmetic_zero_hasSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/arithmetic-zero-hassum.md) | 61 | `result-track:0f2f9f285b54e4a0e3114b051764fe47a15d7594fd1a715eac08b1a7cb94948a` |
| 5 | `theorem` | [zero_side_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/zero-side-identity.md) | 65 | `result-track:1538ec7bde271efbaa5e796ea8a346e9cce82eda32cbc35db5ce4c4094274fc9` |
| 6 | `theorem` | [source_hasSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/source-hassum.md) | 69 | `result-track:adc50263ce342bcbbe0a31da38e82a3aebb94a37490bdae3423ecd78888ebc56` |
| 7 | `theorem` | [source_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ForwardedComparison.lean/declarations/source-identity.md) | 77 | `result-track:161aa7887f7b5c28eba8b01c6db0cea3ab10c6027a3dd825f61a9346d579df43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=801f6fe89f3440f32333fcb76ea514968105603e5fa92b893625be9b59c4cb0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ForwardedComparison/Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ForwardedComparison/Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
