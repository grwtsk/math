# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7782b615a3fef054c02742181b218ce519e1d9a2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7782b615a3fef054c02742181b218ce519e1d9a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Connected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Connected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Equalizers` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/declarations/instance--45d226e0b4afcdac80e5dcde.md) | 39 | `declaration-track:45d226e0b4afcdac80e5dcde87793df6ad656c2e30105f6aa4bfbdfaf135cd17` |
| 2 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/declarations/instance--ead9309481a4a8f5c87467bd.md) | 46 | `declaration-track:ead9309481a4a8f5c87467bd92943b939c4e15556896478efa47e17258328506` |
| 3 | `instance` | [hasFiniteLimits](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/declarations/hasfinitelimits--9c7dd868d4c9fd0aa49fd9f5.md) | 52 | `declaration-track:9c7dd868d4c9fd0aa49fd9f545acecc24656d69bf6bb29e5362927ce81224d14` |
| 4 | `instance` | [hasLimits](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/declarations/haslimits--2c33a944b1e1b04aadf30f5d.md) | 59 | `declaration-track:2c33a944b1e1b04aadf30f5d2f1edf0f96386f8aa0842079743f49f78f257af0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19eb7fbf556be569588b5bd266746c66c4ec19dbd1af0f4673eb6fb75df70d10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
