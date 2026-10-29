# Verification target: Prj Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a0ec60a0c68f3aa218c74fa11f138240e442cd2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a0ec60a0c68f3aa218c74fa11f138240e442cd2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj.md) | 32 | `declaration-track:d2fa0aff307f8e1c12df1fd1292ee0029a368690e817e0bc3df247f6c2e12c14` |
| 2 | `instance` | [Prj.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-inhabited.md) | 34 | `declaration-track:23a2368454b53432ebf8a8f5d3996cd0df7ec28d423f4725d9e3ad2745c79e44` |
| 3 | `def` | [Prj.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-map.md) | 38 | `declaration-track:f67229e8885dafff87be2fd4de4c5c2470dba3be8b009c1ecbf1a35bf61129ef` |
| 4 | `instance` | [Prj.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-mvfunctor.md) | 40 | `declaration-track:c5eb4d946c9845869463d5c47ec983a24af5ea86716f3f38e2cfcb073db29c00` |
| 5 | `def` | [Prj.P](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-p.md) | 43 | `declaration-track:df7ce2a22fa2bad29c8062abc7c8345d0275280952f5f02fb3e61b72b16f80b7` |
| 6 | `def` | [Prj.abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-abs.md) | 48 | `declaration-track:2f02a6b4d96280c5001cdef2a6581ad013a8a6bdc4fc21e7fc075cdfc0e1d7e5` |
| 7 | `def` | [Prj.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-repr.md) | 52 | `declaration-track:ed6eb5875b6d8fb7cc8c21565ac7522d4d25e1469bb3d0bf6e42b3c66dc72a46` |
| 8 | `instance` | [Prj.mvqpf](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespaced.lean/declarations/prj-mvqpf.md) | 55 | `declaration-track:ec365eb2db56ee10e90ee8792a8b3ee84138582434b66f29f2bd7073b254b8f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55c7aa56a708074352795e144f4a2764ac48704cda6dd6fba592380873ddf72a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
