# Verification target: Whole Dependent Export Products And Root Restriction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2974ea118e6f6d5f9ff96f75d82eea3ad7ecae6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/FiniteGraphExportProducts/Variantc61c0758f4a8696c/WholeDependentExportProductsAndRootRestriction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2974ea118e6f6d5f9ff96f75d82eea3ad7ecae6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/FiniteGraphExportProducts/Variantc61c0758f4a8696c/WholeDependentExportProductsAndRootRestriction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/FiniteGraphExportProducts/Variantc61c0758f4a8696c/WholeDependentExportProductsAndRootRestriction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 21; external provider; requires a separately pinned dependency.
- [Finite Acyclic Graph Reachability And Closure](../../../../../Combinatorics/GraphTheory/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DependencyEnv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/declarations/dependencyenv.md) | 43 | `declaration-track:063d166c5b12e5806d99f49672bb4d8dc7834e0aaa958829541b370e9006b01b` |
| 2 | `structure` | [Tenant](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/declarations/tenant.md) | 50 | `declaration-track:dd387a5ed198187faaeb715c6f45287b82fe869309d1c0e00999c49115349ed6` |
| 3 | `def` | [Environment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/declarations/environment.md) | 56 | `declaration-track:b2c8ec16314dcb5cf4cd0c410766fb517ec2f08ce1d5a4db5775ab64571d4d6a` |
| 4 | `def` | [RootExports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/declarations/rootexports.md) | 63 | `declaration-track:12826ae1d1ae6e99bcb43d2f2a05fa6c3397a712a39f47c7674bf01db90c2801` |
| 5 | `def` | [Environment.toRootExports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentExportProductsAndRootRestriction.lean/declarations/environment-torootexports.md) | 70 | `declaration-track:84c3d24d6db4adc52f9cd49474b277b59cefac1b174450ec98e3792533e79c48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=061d44950d758e59305460f24c59aed4a5302d59bcca6eefa312e0e77fee1ae7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/FiniteGraphExportProducts/Variantc61c0758f4a8696c/WholeDependentExportProductsAndRootRestriction.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/FiniteGraphExportProducts/Variantc61c0758f4a8696c/WholeDependentExportProductsAndRootRestriction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
