# Verification target: Over Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5abe33e03bc42046e5deed80ab1ddd1357d07ba",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5abe33e03bc42046e5deed80ab1ddd1357d07ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OverClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/overclass.md) | 39 | `declaration-track:15f3eeac7aa8ba8bf34931702168a24db37e14d47335107b61288339d7399f0e` |
| 2 | `def` | [over](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/over.md) | 48 | `declaration-track:80bb76f3db33422e0f93c83c50035244c0dc2150802832aa7f7a4add0290ae8a` |
| 3 | `def` | [OverClass.Simps.over](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/overclass-simps-over.md) | 54 | `declaration-track:9617e8247647d4ecddfd7f18bd7aeae968e9c9878c8146afc763e978961c9a96` |
| 4 | `class` | [CanonicallyOverClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/canonicallyoverclass.md) | 63 | `declaration-track:2f92924081fe386ed2ea1c7d3e8a8556218a4362b4b24506bf3f925262b3df3d` |
| 5 | `def` | [CanonicallyOverClass.Simps.over](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/canonicallyoverclass-simps-over.md) | 66 | `declaration-track:2e5235488380817c7377e8066ba0ec6210ce613c37c93e8e3ac827f3484effa3` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:1ba29b55ea50c9c2e6629a45beefed994eb1834a6c130d7bb7dba3fef1966627` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-9.md) | 73 | `declaration-track:ce50fa3c597f0cc4cfc53915d20c680a54c6e85c9680aa60845a7c29e912d0cb` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:144a3af644ac38d3cced1475f25e98ccb30cd638ae2805cbd7de18dabff50709` |
| 9 | `class` | [HomIsOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/homisover.md) | 82 | `declaration-track:616bb9f767fa5d00742b3985b899e9d0a668661dce3a39cf4c9a6ba01c0c532a` |
| 10 | `lemma` | [comp_over](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/comp-over.md) | 86 | `result-track:f1c4704bca86067c8641f7369f2ef47f332a99ffd03ef8ea43c85013420426ac` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-7.md) | 90 | `declaration-track:8196f8ff7dc618450d5886193321d943712b8ab21c0630b9b74d819192e62cc9` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-2.md) | 92 | `declaration-track:064ef3fd4bc62d0eeacc637674024040f6b83a8ae68bb423b9ce67b3e45d0ad9` |
| 13 | `abbrev` | [IsOverTower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/isovertower.md) | 98 | `declaration-track:d2d43db62250f618781fe34e04d7fe9664b8a411a9341bbbe278720ae262f931` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-11.md) | 101 | `declaration-track:f1e6be4c17819077eb8d223c5f8fa11366a4f326ff91d541c0131807787d6da4` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance.md) | 102 | `declaration-track:05f630565a24545e5e1a0186021430237d26040b5e2ccbdb289bdcd594d2e869` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-10.md) | 104 | `declaration-track:e8429bfe5e2290c9e77ee543b349a81579a86fb38416fdf86b7ce08170340c1c` |
| 17 | `lemma` | [homIsOver_of_isOverTower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/homisover-of-isovertower.md) | 107 | `result-track:d1feb77d0ce0befef8ea0225da6fb9086ef39105a814489efab064af22cf75d4` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-4.md) | 113 | `declaration-track:174af2c8a0142ada45dd0f963ab94ccf0a359bbf525dc1fdaefe3344a4cb9cd4` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:6479e906664f188d9a03348fbafd1f9e9d722fd8b1e3083c707d49aec9a2ddd5` |
| 20 | `def` | [OverClass.asOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/overclass-asover.md) | 126 | `declaration-track:3ceb33f16629d6a19cd0ffa535e63a0baa402b9d71f39ad9705e27bdff816149` |
| 21 | `def` | [OverClass.asOverHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/overclass-asoverhom.md) | 130 | `declaration-track:fb232cc6d731fdc021349fe204278e79e2d950fea6dc1862905eef8988452280` |
| 22 | `instance` | [OverClass.fromOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/overclass-fromover.md) | 135 | `declaration-track:e8e69a73428cd711f601d58eb79b6c67d45e19b9f82be9a7923c83d6da26343f` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverClass.lean/declarations/instance-source-edition-8.md) | 138 | `declaration-track:8b0deeaea6b63169295e8999670f377d369161412e07874df1028e3abd1f10d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95ae74ad2fc28868fcddbf8e241c595a64fba4c070eb1fbf48160504720eebde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
