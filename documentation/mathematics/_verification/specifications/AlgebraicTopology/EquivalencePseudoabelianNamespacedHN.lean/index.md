# Verification target: Equivalence Pseudoabelian Namespaced HN

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55d690643dd18e55a0a7eb9681cd7c1fd6da61ef",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Varianta30712d5705ed30ca2ffc7d29faeb3d5d287e7c8e7a02893c58f741fd71a2d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/index.md) · [Full source](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55d690643dd18e55a0a7eb9681cd7c1fd6da61ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Varianta30712d5705ed30ca2ffc7d29faeb3d5d287e7c8e7a02893c58f741fd71a2d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Varianta30712d5705ed30ca2ffc7d29faeb3d5d287e7c8e7a02893c58f741fd71a2d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.EquivalenceAdditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.Compatibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.SimplicialObject` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [N](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/n.md) | 64 | `declaration-track:20dd736c26334760b397ce8f556d43387254345ec40c83c3256c620a835e6048` |
| 2 | `def` | [Γ](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/anonymous-source-edition-3.md) | 71 | `declaration-track:76ea9f0d084149518b9494385dc7ce6f6c3e26fabc82646fb23341bc26fbfc07` |
| 3 | `theorem` | [hN₁](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/hn.md) | 77 | `result-track:7d9867bb2bccb1d5e258a9c41a1a6288b7fc053b79a8278f99ffca935cfa4e34` |
| 4 | `theorem` | [hΓ₀](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/h.md) | 84 | `result-track:381eb740012e0e5bbaf5c953eafd8663a8a0ed4796c4e97f02c4fe03d9fcc250` |
| 5 | `def` | [equivalence](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/equivalence.md) | 93 | `declaration-track:3d398d32806f231396c3cc4b1b073935a757f0cec18fcd32fd52b6b3f15eed50` |
| 6 | `theorem` | [equivalence_functor](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/equivalence-functor.md) | 97 | `result-track:15b178fc909552316b709610ff97ab7e37fc7ae48f736d9efbf1f07e113d60c4` |
| 7 | `theorem` | [equivalence_inverse](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/equivalence-inverse.md) | 101 | `result-track:f3837bf1be0bf3dedf2d280c743cc74736060ab447bfe701ee6bbea60984a341` |
| 8 | `theorem` | [hη](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/h-source-edition-2.md) | 107 | `result-track:948fa35a05a8c6040fe162fd0d5c68832863ce7e1f5ef5c31cdd79c073567975` |
| 9 | `def` | [η](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/anonymous-source-edition-2.md) | 119 | `declaration-track:61ccfbc3d029fada6956bea37c0323770762b650f2869854f9f8203c72d8c6b0` |
| 10 | `theorem` | [equivalence_counitIso](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/equivalence-counitiso.md) | 124 | `result-track:0bf3ec7f3d77198265726abd1afdfbed0cb6d596d274b3e8adfeed864ebf56e1` |
| 11 | `theorem` | [hε](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/h-source-edition-3.md) | 129 | `result-track:9f2ab9f40cefc5e39609e5b90dd5be1fa6f0177ae7418872f97bb35db93e589b` |
| 12 | `def` | [ε](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/anonymous.md) | 145 | `declaration-track:5461ab015b98011897c9a882e476e72844480b9a5a4e444b93abe8fa77fd5911` |
| 13 | `theorem` | [equivalence_unitIso](../../../../AlgebraicTopology/EquivalencePseudoabelianNamespacedHN.lean/declarations/equivalence-unitiso.md) | 149 | `result-track:b0e92bded8d5024b070c988d1aa7423c3cc6999750169f0d9e8f4f6f5e0433dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53e3cbe5025367c6ae52f9d99bffb13133310a039b7576a46e14c6455ae2e9db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Varianta30712d5705ed30ca2ffc7d29faeb3d5d287e7c8e7a02893c58f741fd71a2d40.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Varianta30712d5705ed30ca2ffc7d29faeb3d5d287e7c8e7a02893c58f741fd71a2d40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
