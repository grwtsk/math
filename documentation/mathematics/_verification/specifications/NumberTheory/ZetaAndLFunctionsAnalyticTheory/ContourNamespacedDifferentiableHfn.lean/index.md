# Verification target: Contour Namespaced Differentiable Hfn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLineAssembly` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_Hfn](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/declarations/differentiable-hfn.md) | 34 | `result-track:eebfc595373ce07b9069ec29beef942535178d9510171dd3e98f1191bc3e42e8` |
| 2 | `theorem` | [mem_rectangle_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/declarations/mem-rectangle-iff.md) | 41 | `result-track:f929720f7589fc76c90a0b36ddb0750730b9d905026514e1ae662a723119a1e4` |
| 3 | `theorem` | [rectangle_identity_of](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/declarations/rectangle-identity-of.md) | 51 | `result-track:f7de8f89c266bc6625daa80751379183a645bb21fd8d590228d16570096b301e` |
| 4 | `theorem` | [rectangle_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ContourNamespacedDifferentiableHfn.lean/declarations/rectangle-identity.md) | 122 | `result-track:232f088e453ab3906c9f160c00e017552e9d885760e750e1f6fb159a11c8ac90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e59de3f6ff823520a7abcb7c435070de8fad0793df4810f04b23a7a9b696fbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
