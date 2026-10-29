# Verification target: Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264b6ab29153a11c994032772b1df861d316b227",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264b6ab29153a11c994032772b1df861d316b227`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.HodgeGaugeBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicPart](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/harmonicpart.md) | 34 | `declaration-track:8bd8e444cdb8238ebda0d4158bdece252ba8bd653ace9062cb03e362587e2291` |
| 2 | `theorem` | [harmonicPart_adjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/harmonicpart-adjoint.md) | 37 | `result-track:744400cf283d6bff8f66985a2124939018411c992e49a5ae3582ee5a3ded6049` |
| 3 | `theorem` | [harmonicPart_closed](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/harmonicpart-closed.md) | 45 | `result-track:7bbe68f04d99708761a8ec53e46e9efbb5997933f34f5deb8d0dac8a3c3f95f1` |
| 4 | `theorem` | [harmonicPart_zero_iff](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/harmonicpart-zero-iff.md) | 58 | `result-track:8b46d6f8cce40d883cc2e16edd207ad43edb60e743b02c56e3f9f9780ddcc139` |
| 5 | `theorem` | [exists_gauge_decomposition](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/exists-gauge-decomposition.md) | 66 | `result-track:724728831767d4b0a0668726ab363199ed0a19b6e3db18db84549413d221e3c2` |
| 6 | `theorem` | [closed_hodge_decomposition](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/closed-hodge-decomposition.md) | 79 | `result-track:fb1788630747edec29f4ab50d99683cca3e68f4ad4e86e7995508196dfbde786` |
| 7 | `theorem` | [exact_gauge_bound](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Results.lean/declarations/exact-gauge-bound.md) | 88 | `result-track:78c9a30b5db5a3be98d0f4d6b3f1878e3d2095a5adae3488eb910837c6e38169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b618f6d85087122beeffb7842c9e795a76b5b1b99c3d3169751528b269696e9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
