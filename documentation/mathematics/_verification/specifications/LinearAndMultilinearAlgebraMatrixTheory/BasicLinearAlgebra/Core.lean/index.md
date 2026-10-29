# Verification target: Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea8ef863b41de8fd3aebad677198fbc43bc89524",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea8ef863b41de8fd3aebad677198fbc43bc89524`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Coefficients` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.PerfectComplex.Comparison` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Theory](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/theory-source-edition-2.md) | 32 | `declaration-track:297c5ac42e034973d79fc16e9bc3a027647318d68b020ca538ef563ab7c04acc` |
| 2 | `theorem` | [lineEquiv_refl_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/lineequiv-refl-apply.md) | 69 | `result-track:4a8c1155dc13bc7e4328490d2348a67c23a1de62bf63d2483f8a43edf3f0e41e` |
| 3 | `theorem` | [quasiIsoEquiv_id_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/quasiisoequiv-id-apply.md) | 77 | `result-track:cfa4ea729e28b5fbfafd4db29a928a756ac5337fda786b5f38427dddb096061c` |
| 4 | `def` | [model](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/model.md) | 96 | `declaration-track:d4c8d96f951e07c39a925ea14e8fb6d9d87e0bbee5ef1dae001b405c7ec1012c` |
| 5 | `def` | [theory](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/theory.md) | 141 | `declaration-track:0165f8d78fcab2b9099156ca345d2528ccee3cb42bff04fa89caced40d80005a` |
| 6 | `def` | [negQuasiIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/negquasiiso.md) | 160 | `declaration-track:3d7eebca25b55f5d5637cc877cd6385d0da5bf1dacd2c5459feb972b2458addf` |
| 7 | `theorem` | [negQuasiIso_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Core.lean/declarations/negquasiiso-apply.md) | 166 | `result-track:1f2c1f6bccd3d47b68bcb9645d8ed28422408187c52a3f0013571b616a263797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaba1804b0fd49cde796e77fb7c927905101ffad3ca308bc0657ee935073273a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
