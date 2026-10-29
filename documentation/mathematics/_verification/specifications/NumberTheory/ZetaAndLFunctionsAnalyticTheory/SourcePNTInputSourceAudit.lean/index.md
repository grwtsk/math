# Verification target: Source PNTInput Source Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df5b718d908d9810ad3971de0595a1eed5a6b69e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df5b718d908d9810ad3971de0595a1eed5a6b69e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.MediumPNT` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevPrimePower_eq_psi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/chebyshevprimepower-eq-psi.md) | 15 | `result-track:bd99379bc2cde525323001de722dd29c7f09f4fc2552a3f35f4bdb15406a8cd4` |
| 2 | `theorem` | [chebyshevError_eq_psi_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/chebysheverror-eq-psi-sub.md) | 28 | `result-track:a55720edae2bf6738b420f5ba35714ef422bf671794e1843cc5e3a13cd08c199` |
| 3 | `theorem` | [chebyshevError_eq_fun](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/chebysheverror-eq-fun.md) | 32 | `result-track:c81b5949b0c36fd8781e4e002b6b6c0fec12e5a72cada88137ce19e549660623` |
| 4 | `theorem` | [chebyshevError_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/chebysheverror-abs-le.md) | 37 | `result-track:1edf8f175d5ca0ae5df3574eb7af5dd2f264d03c97dd25d51854eb52b795f688` |
| 5 | `theorem` | [errorProfile_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/errorprofile-abs-le.md) | 49 | `result-track:2205928d6e6010397336706bb1cb90d0b99a8da9844e76767d8783698c126d5e` |
| 6 | `theorem` | [errorProfile_eventual_of_pnt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/errorprofile-eventual-of-pnt.md) | 53 | `result-track:3d08decb49a7baf532c65b8a4ceb9bcbf4cdfa1e3b521bde5e9cef29ed7b6382` |
| 7 | `theorem` | [errorProfile_tail_of_pnt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/errorprofile-tail-of-pnt.md) | 68 | `result-track:c4307c59e2b64c4f02513cc15a9e61c62609088251bdfc6d523773175c5db713` |
| 8 | `theorem` | [source_quantitative_pnt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/source-quantitative-pnt.md) | 84 | `result-track:0e176f0a1aaeb0f250368d2097487deac981be1df2b06351db41ed934d668ed3` |
| 9 | `theorem` | [errorProfile_quantitative_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePNTInputSourceAudit.lean/declarations/errorprofile-quantitative-tail.md) | 91 | `result-track:737a058df3ba183e0c6807e6adba1435cced3bdf509be798d79bb3d5532d5a8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19bcade3c19f61813926676e76fec1e8da0dc32b10aad629e394ee16f88df922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
