# Verification target: Limits Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40919977fb3ef5ed9a897970897d384d167e9471",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40919977fb3ef5ed9a897970897d384d167e9471`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finitelimitcone.md) | 35 | `declaration-track:cb92bb092bcc9f9a76bcdacffdcdcefe54c56a67bbed2f265191f97f561adb6a` |
| 2 | `def` | [finiteColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finitecolimitcocone.md) | 45 | `declaration-track:f27943a816a588efffd7aa91167fdb74891f137cf9e48bd693261187518859a5` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance-source-edition-5.md) | 52 | `declaration-track:b2a5dffe36e5940de24fb5f07f8895995a1026fe3c58a207f7c12bf3cdcb7ec7` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance.md) | 58 | `declaration-track:2c4ce77011bed55735cb4a3629b7312e525ea8ed4e5e1bb162ff16eb46f3598d` |
| 5 | `theorem` | [finite_limit_eq_finset_univ_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finite-limit-eq-finset-univ-inf.md) | 66 | `result-track:76347bc18f74b85cf8eeb4b3ad97b322434e8992c9fd457a43392e5d12272ed3` |
| 6 | `theorem` | [finite_colimit_eq_finset_univ_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finite-colimit-eq-finset-univ-sup.md) | 73 | `result-track:d68a6c12c9ffc3c17ee87251d8503fcf98ed36e207c7ac8231021e7347b967fd` |
| 7 | `theorem` | [finite_product_eq_finset_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finite-product-eq-finset-inf.md) | 80 | `result-track:3f9eec1f69ac7acb1760a412e080e1ecc61bd89dced31d0b1fa5286fad9e9d58` |
| 8 | `theorem` | [finite_coproduct_eq_finset_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/finite-coproduct-eq-finset-sup.md) | 93 | `result-track:4e814198f26c5c12e4efccbc47f61895655d289090b05ccf9deecfeaead5c0ec` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance-source-edition-6.md) | 104 | `declaration-track:b5c81323ee7b555b6a55e91212ffeccc6167d67ff77df0c65132721e217d49a4` |
| 10 | `theorem` | [prod_eq_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/prod-eq-inf.md) | 114 | `result-track:52c4854407910904cc2d730ce67a82dec19260480de219e571e7ca1705d48ff1` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:9239ff8a03b1916c97d8ea32b28511ddda7a6c34ce63c5b7e90ccfe498c919bc` |
| 12 | `theorem` | [coprod_eq_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/coprod-eq-sup.md) | 133 | `result-track:09be74c2caee570af4e623e7af223b6cdfd0fae2f9e479dbb9ccde0b9ef2cf46` |
| 13 | `theorem` | [pullback_eq_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/pullback-eq-inf.md) | 145 | `result-track:3a0e99c64a45c975df95dcef54715c95973cb347a1508e161271528078930a4f` |
| 14 | `theorem` | [pushout_eq_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/pushout-eq-sup.md) | 158 | `result-track:3775ed6f8c38aae465851e08dbeb72c13d1812dc94c6201d790056f5f5939c61` |
| 15 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/limitcone.md) | 174 | `declaration-track:13699b62cbe8a8410b74eeae5bed1b971b571baf223d1212587dc0371291e8ed` |
| 16 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/colimitcocone.md) | 185 | `declaration-track:4a6d9c01198734eed50ba03b7ec02ed0dd06eb4e3b211b68baebd0d15bbfcf68` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance-source-edition-2.md) | 194 | `declaration-track:5f525d040830fbc747a7cff126cb98ade337112d33e7b27d084d5f0f3a678556` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/instance-source-edition-3.md) | 198 | `declaration-track:802e057e04cf36d62f61faf1a97a7dbfb172b480df3b783e7bf04777915bf35e` |
| 19 | `theorem` | [limit_eq_iInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/limit-eq-iinf.md) | 203 | `result-track:8bb406fb69bb5783b40f29d1892c05c38b481a385fb0d637360fe267a34872e2` |
| 20 | `theorem` | [colimit_eq_iSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsLatticeNamespaced.lean/declarations/colimit-eq-isup.md) | 208 | `result-track:b82ba2f61a15812a670f80c5aa7125bc2b033e14b07f9d1d239fe79c79bc4345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec7d137ecaa2e4829872b38300ea93867b59ac308cd0618e1a015373fb107844 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
