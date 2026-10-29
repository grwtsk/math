# Verification target: Pi Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "727eadb967fa717a1e37d61a881448fc42538e26",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58791be2c71acfd0879d8ea29b5551dacfa5fc5b3a846f88bb4f900f129e8720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `727eadb967fa717a1e37d61a881448fc42538e26`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58791be2c71acfd0879d8ea29b5551dacfa5fc5b3a846f88bb4f900f129e8720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58791be2c71acfd0879d8ea29b5551dacfa5fc5b3a846f88bb4f900f129e8720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-source-edition-3.md) | 37 | `declaration-track:5cf9353fb98bb988fb1b02de89f83516c6034b39457e8fb5c17c7eb670bf14d1` |
| 2 | `abbrev` | [pi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-source-edition-2.md) | 46 | `declaration-track:521ccdbd358f3eea25b0588f33c55ad2d7a8b6da7111a24357399b7198c26e32` |
| 3 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/id-apply.md) | 55 | `result-track:a6591c4427e567e939969c6aef0042b13a7ea3e650a85285bbc0ff45de57f678` |
| 4 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/comp-apply.md) | 60 | `result-track:8798d9bde3e6bc248d11518b40e7e551d364db91eeba1a7d4f14c966e6f4ed81` |
| 5 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/ext.md) | 67 | `result-track:c3131ee13c9dab752c31b97e9a2f5b08a46f2d2d43ec5a0eff4787a6e1dfacff` |
| 6 | `def` | [eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/eval.md) | 74 | `declaration-track:07c64f41711a4bb6aa3b95ff4ce7b74da7a6f681fe7b8ebf1d123e547185f22b` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/instance.md) | 86 | `declaration-track:e11d66ea9c522b09434c553212b7d5bd928ea1e4917d4945fc11d8c7a4e12ab5` |
| 8 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/comap.md) | 93 | `declaration-track:2500ad52bcff3e0fb961658942a38473b2e0c48f215439141a76ce5789eab840` |
| 9 | `def` | [comapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/comapid.md) | 104 | `declaration-track:22bd4faf5a14ae8d9834f3b44d57b249ea5873565bea1e4eaf1189dc26c9aa43` |
| 10 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/example.md) | 109 | `declaration-track:001091ecebc92f8fe0e5d8a4703102292c07733f5f07920edac379b6eaebe2cf` |
| 11 | `def` | [comapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/comapcomp.md) | 120 | `declaration-track:6c7d339aad17e5f0599530c79462bad58780d8ef5efd8a2448b884f2c0ccfc04` |
| 12 | `def` | [comapEvalIsoEval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/comapevalisoeval.md) | 131 | `declaration-track:d28d2ef0630f6af2498f7a950e50f575ab19698465cfaf86399b785ce0acd83a` |
| 13 | `instance` | [sumElimCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/sumelimcategory.md) | 142 | `declaration-track:7df00749e4999c8a8c32a630dab588c263517ba891dd36ba9bd3372cf5063a10` |
| 14 | `def` | [sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/sum.md) | 158 | `declaration-track:6a2e0b02c8a8b12368b1d7a7e006f41638480caf3cca12d23c69a81489bebd93` |
| 15 | `def` | [isoApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/isoapp.md) | 182 | `declaration-track:ef8eeb924c08d82514fbf6f84003ead295ddda8b986dd5567248b36b947ff52f` |
| 16 | `theorem` | [isoApp_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/isoapp-refl.md) | 188 | `result-track:5b6c6a92e961b025f5a777b671003a8a9a3e6f9bf337fb70c220b175f224666d` |
| 17 | `theorem` | [isoApp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/isoapp-symm.md) | 193 | `result-track:659d7e67fcbc3f83976c01ad60db1a7bb6aad4f0db1d570283518b9a19ab6346` |
| 18 | `theorem` | [isoApp_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/isoapp-trans.md) | 198 | `result-track:26c0895ce61acb609b51e748da1e9d6ebdbdc11edd63b7e3c252c9ee364a82e7` |
| 19 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-source-edition-5.md) | 214 | `declaration-track:e80dc596b3fa1c72229d451e093d1e8b1ebf00f18fc8552ead0fbc8dcbb20f78` |
| 20 | `def` | [pi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi.md) | 222 | `declaration-track:14aa32d4df7853424f8accdb1d45b0fd080ddc619eff5ad2e06e2a229bf4c593` |
| 21 | `theorem` | [eqToHom_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/eqtohom-proj.md) | 230 | `result-track:1e650c9bd906024b4f1f81a635806b1336765f91c4a501ab7ff5042ff30ba9e7` |
| 22 | `theorem` | [pi'_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-eval.md) | 241 | `result-track:75fccb95f4d31d861ef47c33c9aa1f6c6f5c38be3223e4b2c5f41bd117bc4d6a` |
| 23 | `theorem` | [pi_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-ext.md) | 250 | `result-track:42c7b6f209972006dbce515d77549aefd180d0f71dbae729537ac8c513bdfc8f` |
| 24 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicNamespaced.lean/declarations/pi-source-edition-4.md) | 279 | `declaration-track:6c6b44bf5ac7b64f584d99e7a897b8488df695b37a829b57e0350ccde298eac6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98b62001be1f81d4b3d0335e5f558649d0e67f52af99b5e45381b491c122899a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58791be2c71acfd0879d8ea29b5551dacfa5fc5b3a846f88bb4f900f129e8720.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58791be2c71acfd0879d8ea29b5551dacfa5fc5b3a846f88bb4f900f129e8720.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
