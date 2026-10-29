# Verification target: Internal Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1824d7ff811221b6f22692dbc86f5b031ecca2be",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1824d7ff811221b6f22692dbc86f5b031ecca2be`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Ring_of_Mon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/ring-of-mon.md) | 43 | `declaration-track:df6e70945935545ddf038131fde6d5f5561209393799cd09db58006d13039faa` |
| 2 | `instance` | [Algebra_of_Mon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/algebra-of-mon.md) | 68 | `declaration-track:62ce956f630ed69abe322eb8fe7e8d1a9874e19474a95ed16b47d9b53f440e64` |
| 3 | `theorem` | [algebraMap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/algebramap.md) | 85 | `result-track:64f28f72df0f353dba472a1b7679398ba185d102f408b2044254191a28844269` |
| 4 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/functor.md) | 91 | `declaration-track:1eb4d4c257974de810335be02c5bd951eaa539d7b33d8339d48ccf1cdf511743` |
| 5 | `def` | [inverseObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/inverseobj.md) | 103 | `declaration-track:f4d6f7eff669c22cbaf71fafaf12ed8c23d3ff6821d743270d92b9f1f973eae6` |
| 6 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/inverse.md) | 151 | `declaration-track:1863cd81f17570a3ba12fd477622287238b6cd17807bf4ca643d63c615aed5e3` |
| 7 | `def` | [monModuleEquivalenceAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/monmoduleequivalencealgebra.md) | 165 | `declaration-track:3fabc359cffbae8c79cece9a0ecf3cf57f1ed896ebf8f656bacb911110f55220` |
| 8 | `def` | [monModuleEquivalenceAlgebraForget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalModule.lean/declarations/monmoduleequivalencealgebraforget.md) | 214 | `declaration-track:68114af1c1ed259e656131c092a8ed54156fcd257c7dd142d5f8912d6cc348ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=135471ad4f5e1f1db3bf8519170f8d4fdecbe55e377f0bf452ce047b814db046 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
