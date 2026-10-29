# Verification target: CPolynomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a03fa3fa552f19b4f5996e4a253394a55da0543b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variantd85da09e9a0c8db2f15dcf55a8285560baf3f1748d3a11540dc6f5ba583f17ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CPolynomialNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/CPolynomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a03fa3fa552f19b4f5996e4a253394a55da0543b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variantd85da09e9a0c8db2f15dcf55a8285560baf3f1748d3a11540dc6f5ba583f17ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variantd85da09e9a0c8db2f15dcf55a8285560baf3f1748d3a11540dc6f5ba583f17ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CPolynomialOn.contDiffOn](../../../../RealFunctions/CPolynomialNamespaced.lean/declarations/cpolynomialon-contdiffon.md) | 40 | `result-track:9b2bbe4288895ef3257bb28fc809b744918bc061769dadd190fde5e948a2876f` |
| 2 | `theorem` | [CPolynomialAt.contDiffAt](../../../../RealFunctions/CPolynomialNamespaced.lean/declarations/cpolynomialat-contdiffat.md) | 50 | `result-track:8605ec26f0c056fe91a4aae8b433c5e978d726dc82bb6b1a031b5c5f322a616e` |
| 3 | `lemma` | [contDiffAt](../../../../RealFunctions/CPolynomialNamespaced.lean/declarations/contdiffat.md) | 64 | `result-track:7aaef777607293deee01fc466861ea4e4f1dff358a25f3b77f35d972b61daade` |
| 4 | `lemma` | [contDiff](../../../../RealFunctions/CPolynomialNamespaced.lean/declarations/contdiff.md) | 66 | `result-track:64417e99e624ac26fd72b6cadb93589262f17b41b6b2dfac7b37aa737a4e396d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8dc4ee1cdd067dfc9a8ea76143b5c0edb52a35289b5d057d0ab4acf48a4be6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variantd85da09e9a0c8db2f15dcf55a8285560baf3f1748d3a11540dc6f5ba583f17ea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variantd85da09e9a0c8db2f15dcf55a8285560baf3f1748d3a11540dc6f5ba583f17ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
