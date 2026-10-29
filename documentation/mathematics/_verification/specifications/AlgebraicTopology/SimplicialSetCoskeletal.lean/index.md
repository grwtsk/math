# Verification target: Simplicial Set Coskeletal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80280570a1e8cf7f530f6e6ebe4dbab16e4503a1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80280570a1e8cf7f530f6e6ebe4dbab16e4503a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Coskeletal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StrictSegal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightExtensionInclusion](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/rightextensioninclusion.md) | 38 | `declaration-track:d9bc78fcf45bc62ea8f0748102fc11f2e492c52b3c9f37e195f1a1382df9d2e6` |
| 2 | `abbrev` | [strArrowMk₂](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/strarrowmk.md) | 55 | `declaration-track:28e42937b79a0a18f3a8bfc477300953b293ac04603370922368209135f36c59` |
| 3 | `def` | [lift](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/lift.md) | 63 | `declaration-track:d96ff3ab7b547098de4d67fb5dd012b56048936852d3c53d2cf7f3897dc39ed0` |
| 4 | `lemma` | [fac_aux₁](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/fac-aux-source-edition-3.md) | 83 | `result-track:de1046e9490c441dccdfa2abd2a7d28daec4fe89b465446c88c08fc2a66f466f` |
| 5 | `lemma` | [fac_aux₂](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/fac-aux.md) | 92 | `result-track:557d291f288c229725b43a8437e910e16752b1d04fabfc207cf8d520e8121d7f` |
| 6 | `lemma` | [fac_aux₃](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/fac-aux-source-edition-2.md) | 161 | `result-track:58c33894a4c3f4470bd28d388dd5b4be8cedabc3f728a745055c06b36640d538` |
| 7 | `def` | [isPointwiseRightKanExtensionAt](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/ispointwiserightkanextensionat.md) | 176 | `declaration-track:bd977278a091d2a8638b34db83bf16cb2f1dee48bd675e40a943f16be46fe97f` |
| 8 | `def` | [isPointwiseRightKanExtension](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/ispointwiserightkanextension.md) | 209 | `declaration-track:008d666e615fe941f8f87ebd2539b690745d414eb41cdaf79adaa2361ddcf6ee` |
| 9 | `theorem` | [isRightKanExtension](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/isrightkanextension.md) | 213 | `result-track:23f2cde333ead0f8b347eba41254e084042ea8a9ea48bf31b87620e2cec3818a` |
| 10 | `theorem` | [isCoskeletal](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/iscoskeletal.md) | 219 | `result-track:91833c29f832dc0a99c9568c2476a6c5935be350b989a7b5fee405eb7fae852e` |
| 11 | `instance` | [isCoskeletal'](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/iscoskeletal-source-edition-2.md) | 224 | `declaration-track:993c847f8c20d69fc9fe7f62fb441fc3b5a0a2a2adce26d88417661b1feeebd4` |
| 12 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/instance.md) | 239 | `declaration-track:a1a192a935c90b3d37c8f9c249f14febd87f5cb991e001191fcd9ad5ae2fc4e6` |
| 13 | `def` | [nerveFunctor₂](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/nervefunctor.md) | 244 | `declaration-track:381b3cb92343eac0ffe63e2a962ae7dd3275d520347747b8a240c8d92528830a` |
| 14 | `def` | [cosk₂Iso](../../../../AlgebraicTopology/SimplicialSetCoskeletal.lean/declarations/cosk-iso.md) | 249 | `declaration-track:b1531ae1a2075edc94303db3049cf5ce20a5004f85a50dc46f07dcc5aabb9978` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5761d558549951d3b03d1784a9a7915d15405b9d09dd8bbff454eb4be1f3145d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
