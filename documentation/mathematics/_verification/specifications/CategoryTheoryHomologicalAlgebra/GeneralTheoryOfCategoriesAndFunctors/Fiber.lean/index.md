# Verification target: Fiber

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64fc16cf64dea29e95fd8694472f438cde0c9aca",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64fc16cf64dea29e95fd8694472f438cde0c9aca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiber.md) | 34 | `declaration-track:eb212e9ce035f4c339e1a5e5059ea049b1b5519ddf1a53014847d196040dd0f5` |
| 2 | `instance` | [fiberCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fibercategory.md) | 41 | `declaration-track:9cca2c5c8a610051ea425f88ae2db2e70dddf6e660b2e93d75b41f68cc692b08` |
| 3 | `def` | [fiberInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiberinclusion.md) | 47 | `declaration-track:72f64f51408034f628e3d10d6ef6481296900e293684081d3045712e142581f0` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:a77b8079a9cd6739f77f1a840e469bb42a67916945b81cefafdf0bb3b33c04ff` |
| 5 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/hom-ext.md) | 54 | `result-track:0315e65fc767abe2254440ab9195cd974be2d42198ace61ccbcc2b53cd7d2513` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/instance.md) | 58 | `declaration-track:313f81a964661f573325a9746438b74580a8268b72c9fc4afc9517d957f090ee` |
| 7 | `def` | [fiberInclusionCompIsoConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiberinclusioncompisoconst.md) | 63 | `declaration-track:77111a3da0ca2dbd542f25b1870bcbbc905a2a247f97a51a8821a645c6b479fd` |
| 8 | `lemma` | [fiberInclusion_comp_eq_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiberinclusion-comp-eq-const.md) | 67 | `result-track:027367a973e80996625fe7995458acba5b48a07329eb09040944bf8e2ff91c2b` |
| 9 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/mk.md) | 71 | `declaration-track:95cfd4449929c526bca594adc8cbd128a80ee8c19cfa2eb2d3ff7ba2de9f5219` |
| 10 | `lemma` | [fiberInclusion_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiberinclusion-mk.md) | 74 | `result-track:389b265967c0778f9f55f34d997c77d6fae03ef1a7870c57d5f7bfc5fe6421af` |
| 11 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/hommk.md) | 79 | `declaration-track:bd3090caa1decae09cae402fa0f5467d97b7c3fefdaed1abdd63c30d1586f665` |
| 12 | `lemma` | [fiberInclusion_homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/fiberinclusion-hommk.md) | 84 | `result-track:0e793b98ac3d08f35d3ea49bee1c0e80cb728533319a50a60216c7062a86a65d` |
| 13 | `lemma` | [homMk_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/hommk-id.md) | 89 | `result-track:695549fc40bffc914b4088e4f8d920827b34e247a4d596ac681cf335a54d3ac7` |
| 14 | `lemma` | [homMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/hommk-comp.md) | 94 | `result-track:ebcd2fa12b3ee2532472c907f391157e60e300ff6f8172d931722029a73c8235` |
| 15 | `def` | [inducedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/inducedfunctor.md) | 105 | `declaration-track:d4f1514033b9bd036ed91c7bae695ad4feb944321cc0f6f7ded0a817b3f59fc3` |
| 16 | `lemma` | [inducedFunctor_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/inducedfunctor-map.md) | 111 | `result-track:c65e8505186e9391912014e8082e53354a6f80f4729a6142ebec16ae2bb34b4c` |
| 17 | `def` | [inducedFunctorCompIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/inducedfunctorcompisoself.md) | 117 | `declaration-track:473a5ec4669b7c0fbdbd2cd4cc9e59f23d3360564038190b8e17043e59a1c301` |
| 18 | `lemma` | [inducedFunctor_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fiber.lean/declarations/inducedfunctor-comp.md) | 119 | `result-track:a43025a176bbdc076a94d3094441f006ae8088989f6b26e70d6ad854e35fc5be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cadc4d8bd614c566d7eda1c6786423a59e4ea104acd48b9eacec3ff1d9e3a818 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
