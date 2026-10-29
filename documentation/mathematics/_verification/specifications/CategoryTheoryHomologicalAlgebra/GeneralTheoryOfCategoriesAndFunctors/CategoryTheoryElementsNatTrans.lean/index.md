# Verification target: Category Theory Elements Nat Trans

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.Elements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/functor-elements.md) | 43 | `declaration-track:01640f40719db0811ab171474e92c47d49a19f67c2b8eef1f638eee8c63e6866` |
| 2 | `abbrev` | [Functor.elementsMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/functor-elementsmk.md) | 47 | `declaration-track:86b71ce69520579ee2ae0456f9359a0874b65c8ff25da400227db0eb8574df76` |
| 3 | `lemma` | [Functor.Elements.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/functor-elements-ext.md) | 49 | `result-track:da42cb2f2bb1fc84f23f9241923ff336c61402440b47142fd69c22dfa0c4167a` |
| 4 | `instance` | [categoryOfElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/categoryofelements.md) | 60 | `declaration-track:0bcb6c3c8b9c51904d36fe922581409ad08cdcae0864fd852d89e421c8c40620` |
| 5 | `def` | [NatTrans.mapElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/nattrans-mapelements.md) | 67 | `declaration-track:8b504713c38a946156a7e50e929b144916c07ee5faad0ddccd021c36191b7f7a` |
| 6 | `def` | [Functor.elementsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/functor-elementsfunctor.md) | 73 | `declaration-track:366a94f8ac465e35cea34678c4b26169f7da5f6a80a04b76cfae7edfe45b3bf5` |
| 7 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/hommk.md) | 81 | `declaration-track:1eabcc75a2888712e09bfa9a573232c84bc9cffc2e1f4a53f8ed5bce64e78e76` |
| 8 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/ext.md) | 86 | `result-track:ede59ac52c5d45ad7d588bbd662f4f90c7dce3270829b4d02a0b7342b095c2e3` |
| 9 | `theorem` | [comp_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/comp-val.md) | 90 | `result-track:c3fc41216cfe3f0b15560ced2205be86bdf63e2ccacc3b2efa3e8ee6123e91ae` |
| 10 | `theorem` | [id_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/id-val.md) | 95 | `result-track:dacb61303a1f2695cf1fa5811ab2c0ae47ad211b52ee523def31f1f690482a25` |
| 11 | `theorem` | [map_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/map-snd.md) | 99 | `result-track:4a32f01010c6f230fbade0d13796fd44368f83feab03e31b499541ae3b1bf247` |
| 12 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/isomk.md) | 104 | `declaration-track:190f84fddbcc7d85e2fabcdc41b50bf2863f03c9a5a09027622ca4ab0452f2f2` |
| 13 | `instance` | [groupoidOfElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/groupoidofelements.md) | 111 | `declaration-track:25968de4aca3aca32040a1d12c762217d92273f2cb226693f6788e53fccc7a3d` |
| 14 | `def` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/anonymous.md) | 135 | `declaration-track:7e1412f46e1e86284f083100c025fc15fc527da4a64a9bd464b9ca5f860b3161` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/instance.md) | 139 | `declaration-track:292cc807b5bbadff09e0d23895400509ae564370ca3699c94232f8c29eea898f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:9389f8c89686149e854188a7eb1a6b2e7650a83cd843a5c6c355a186815f572e` |
| 17 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/map.md) | 148 | `declaration-track:0f5f1f388f7444274be2dadb4ecacf15e683b9a51a45beac34d3ef2ecda65aa8` |
| 18 | `theorem` | [map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/map-source-edition-2.md) | 153 | `result-track:48f7bdee267a8fc1756f1f4c567af31c7e9d3d1a147fc4643d4556aa946e00aa` |
| 19 | `def` | [toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/tostructuredarrow.md) | 157 | `declaration-track:4d6d174a57ca30224dddd38d8161619c1813f453f8ff50c647c692f1ad57dd86` |
| 20 | `theorem` | [toStructuredArrow_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/tostructuredarrow-obj.md) | 162 | `result-track:410932355dac8cbdeb25a47f4aa84c9a1a80b391896692a81186db2609a0991b` |
| 21 | `theorem` | [to_comma_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/to-comma-map-right.md) | 170 | `result-track:6d3c04376c6296f90c73035ac9acef3cb900db2bafa001a5a676df055dbd9f1a` |
| 22 | `def` | [fromStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/fromstructuredarrow.md) | 174 | `declaration-track:8ced4919800646f265b0ff350631b03b0e747e595d8d8ccb32dcd6d864ae6c81` |
| 23 | `theorem` | [fromStructuredArrow_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/fromstructuredarrow-obj.md) | 179 | `result-track:1f6b0790e738e51ea8dd59117a850ea89851e85264254e19a9a4ea7ba0f27eb2` |
| 24 | `theorem` | [fromStructuredArrow_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/fromstructuredarrow-map.md) | 183 | `result-track:7942f40808abe35248623cea32ca1d7f6dda3b582fe504438b15cc62660d23db` |
| 25 | `def` | [structuredArrowEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/structuredarrowequivalence.md) | 190 | `declaration-track:ed1d9c9b523285022d97b27056fc01cbd58b321fbc8742d09e25bf5c6937ddfd` |
| 26 | `def` | [toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/tocostructuredarrow.md) | 202 | `declaration-track:47e657e41075a2135e66aefbcdff1f5608d39e3ca8a76fb19a87a213dd14983c` |
| 27 | `def` | [fromCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/fromcostructuredarrow.md) | 214 | `declaration-track:29bc03f7b30e90e1b50fdd0e4c8bb42d681506838dba81a0a9256e4bc640bad1` |
| 28 | `theorem` | [fromCostructuredArrow_obj_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/fromcostructuredarrow-obj-mk.md) | 228 | `result-track:d4cf473033ec9eb6c1ee20b42a2bf4787211d00683c46b84e1fb54692155afc5` |
| 29 | `def` | [costructuredArrowYonedaEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/costructuredarrowyonedaequivalence.md) | 234 | `declaration-track:df964a9745ba4f06c805310cefa5057905f1c2abacf17ea23381d432456b65b5` |
| 30 | `theorem` | [costructuredArrow_yoneda_equivalence_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/costructuredarrow-yoneda-equivalence-naturality.md) | 247 | `result-track:d9234229843b74406a0449a475fd2c5aabb9a919e740e345a1d5da483de14f69` |
| 31 | `def` | [costructuredArrowYonedaEquivalenceFunctorProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/costructuredarrowyonedaequivalencefunctorproj.md) | 260 | `declaration-track:c8ea58fde04cf509d627fa41a90d8e54a44c95ff9f3420ddacdd95dc70d281d5` |
| 32 | `def` | [costructuredArrowYonedaEquivalenceInverseπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/costructuredarrowyonedaequivalenceinverse.md) | 266 | `declaration-track:d41df54ad8973584d202eb88d1f919c44caf69dd91a7d19af13d4d7851557bb2` |
| 33 | `def` | [Elements.initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/elements-initial.md) | 278 | `declaration-track:5920dbe564fdb744357b2fd394ee378e792b517574488fbdff46e431ccfac6c5` |
| 34 | `def` | [Elements.isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryElementsNatTrans.lean/declarations/elements-isinitial.md) | 283 | `declaration-track:d340a9b42a8495b2e1aca353e512cc05b0f5d6d10bb2c63f1538f5d3a4f8069b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e24ea34feddc580a402eb58a19950b774357f78a63477f5f009f50bee946a99a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
