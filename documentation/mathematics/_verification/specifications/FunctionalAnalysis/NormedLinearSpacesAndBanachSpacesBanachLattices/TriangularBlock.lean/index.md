# Verification target: GRWTSK.Analysis.Inequalities.TriangularBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98d1ea63e5c7f4dfae99c8fe386b7f6bd77296c3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/TriangularBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98d1ea63e5c7f4dfae99c8fe386b7f6bd77296c3`.

Source path: `GRWTSK/Analysis/Inequalities/TriangularBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/TriangularBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gain](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/gain.md) | 14 | `declaration-track:9ab1a3d0775ec038d7cb3cf4cf155bc61de9eb053f7fa4b7af752f40bf39d69f` |
| 2 | `lemma` | [gain_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/gain-nonnegative.md) | 16 | `result-track:c41b592e4b59b99145cc59c92c84037c6f769e66b885cda40571cc65788dfc3d` |
| 3 | `lemma` | [gain_equation](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/gain-equation.md) | 20 | `result-track:3646449c0a7a5310b69023b6159658e50b1d4f44911c2257bf650c8fdb7343fb` |
| 4 | `theorem` | [scalar_square_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/scalar-square-bound.md) | 26 | `result-track:63fd5a06b7b4883ee1cf09e08b4525be9a293cdcb8b47ffba926d0903100e565` |
| 5 | `theorem` | [gain_square_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/gain-square-bound.md) | 40 | `result-track:1a56a5ce253f5077012f379df9b981807c363187d832ee52920f6684ef902ad9` |
| 6 | `theorem` | [component_square_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/component-square-bound.md) | 53 | `result-track:a7519246223eb04627861f0a3ee03c767f108cf632ebbe7b165e1e72794d839c` |
| 7 | `theorem` | [operator_square_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean/declarations/operator-square-bound.md) | 64 | `result-track:94230fb017f37016b49ead40691d4ddbb2453ba7d03936c904898061b07783e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db5c77bfbb0a22b84b0348736ab329ee16e86b6454223d8874e49c44220951e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/TriangularBlock.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/TriangularBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
