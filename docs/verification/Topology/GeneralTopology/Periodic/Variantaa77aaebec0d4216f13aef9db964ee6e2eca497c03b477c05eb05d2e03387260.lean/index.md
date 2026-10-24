# Verification target: GRWTSK.Topology.GeneralTopology.Periodic.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86a28f1af4a82abb07cf8640faf8d6b89a6c216",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86a28f1af4a82abb07cf8640faf8d6b89a6c216`.

Source path: `GRWTSK/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_gcd](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/periodic-gcd--8b74ba3493ea7584df204d5e.md) | 22 | `result-track:8b74ba3493ea7584df204d5e4a7eda365a7221b32a09412476ca1d6cd8738519` |
| 2 | `theorem` | [periodic_coprime](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/periodic-coprime--8257de8a7347c33fa839c1d6.md) | 25 | `result-track:8257de8a7347c33fa839c1d6595e0873a1c5a25a751b5bdc5511493ddc6ec323` |
| 3 | `theorem` | [periodic_mod](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/periodic-mod--b6961ba72edc912f7e21cd64.md) | 28 | `result-track:b6961ba72edc912f7e21cd6455001cf7c0b6d593b8bac1b4dcd8b74b5919147d` |
| 4 | `theorem` | [_root_.Function.Periodic.map_mod_nat](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/root-function-periodic-map-mod-nat--c574cf6790a56bdfbd9599dd.md) | 31 | `result-track:c574cf6790a56bdfbd9599dd1ef855aef6d134a20999c568ab848b44ba2c8792` |
| 5 | `theorem` | [filter_multiset_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/filter-multiset-ico-card-eq-of-periodic--185d4fa4b1cc03f5b46b7336.md) | 41 | `result-track:185d4fa4b1cc03f5b46b7336512c940000a23368fa85b60fa66931e00d4c96f1` |
| 6 | `theorem` | [filter_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.lean/declarations/filter-ico-card-eq-of-periodic--2137a11e1f47a889bb0eb8ac.md) | 57 | `result-track:2137a11e1f47a889bb0eb8ac4bf716d4b6604dbbd6270304e6627c0df00b73f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
