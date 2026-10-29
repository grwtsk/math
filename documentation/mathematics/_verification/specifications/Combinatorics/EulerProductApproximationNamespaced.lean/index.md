# Verification target: Euler Product Approximation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6d74456a53225b13821cb730adcfe8577a67e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianteaced3939684e0d3c1f46e096bc997c808282d12bb410aa8771de89d202af05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6d74456a53225b13821cb730adcfe8577a67e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianteaced3939684e0d3c1f46e096bc997c808282d12bb410aa8771de89d202af05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianteaced3939684e0d3c1f46e096bc997c808282d12bb410aa8771de89d202af05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZetaEulerFactorReal](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerfactorreal.md) | 29 | `declaration-track:c2803c9f75e4e1385f62ca4acdabfb00437d98cf4e1cfa99d1f18b96d88b97e9` |
| 2 | `def` | [finiteZetaEulerProductReal](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerproductreal.md) | 35 | `declaration-track:14fed57f56a5625453fa6ab20aaba5763de8ec36548ac3a2cd5de45b18099423` |
| 3 | `theorem` | [finiteZetaEulerFactorReal_pos](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerfactorreal-pos.md) | 41 | `result-track:2ef5c919e8f8958439b31da1e25bf21165a282265fd9e48d2a9d2480ca154d2b` |
| 4 | `theorem` | [finiteZetaEulerProductReal_pos](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerproductreal-pos.md) | 52 | `result-track:af0aae0f1a10d8a9d8e72ef8f5b27ba24f41ffaae6bcaa4fdf475875f8cf7972` |
| 5 | `theorem` | [finiteZetaEulerFactorReal_ge_one](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerfactorreal-ge-one.md) | 63 | `result-track:e3f40ce0a28caaf2b034c3bbf2e284044c255c5e973d98d2085ed76a70fbdf62` |
| 6 | `theorem` | [finiteZetaEulerProductReal_ge_one](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerproductreal-ge-one.md) | 79 | `result-track:7cb243509589c4f4557fd3b6fa7cf7081818b3454c8eee26a73d735e21cb1363` |
| 7 | `theorem` | [finiteZetaEulerFactor_geometric_identity](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/finitezetaeulerfactor-geometric-identity.md) | 91 | `result-track:338501ca850e67f108d709cc4775e9d1c485fc6592419eaae26d0ddc9a2e14e4` |
| 8 | `def` | [analyticEulerProductHalfPlaneAnchor](../../../../Combinatorics/EulerProductApproximationNamespaced.lean/declarations/analyticeulerproducthalfplaneanchor.md) | 115 | `declaration-track:57e35be32125ed304dd4f16cddf6eb968a391f7302b6f49cbd99966ded14e9ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=648dd65dcf2edfbaa0d8afa4fc0f667e11a94b3bdc8f85c99cc932b463edf093 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianteaced3939684e0d3c1f46e096bc997c808282d12bb410aa8771de89d202af05f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianteaced3939684e0d3c1f46e096bc997c808282d12bb410aa8771de89d202af05f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
