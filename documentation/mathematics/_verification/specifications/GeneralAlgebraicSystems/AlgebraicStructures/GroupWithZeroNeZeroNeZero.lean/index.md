# Verification target: Group With Zero Ne Zero Ne Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5085cd89de4fe172cffe11d35b6bab48ffe205df",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant2067d888686ef1a97f6a23667aa38b71beebd8ca080b698cd69ff4ef285d3fe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5085cd89de4fe172cffe11d35b6bab48ffe205df`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant2067d888686ef1a97f6a23667aa38b71beebd8ca080b698cd69ff4ef285d3fe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NeZero/Variant2067d888686ef1a97f6a23667aa38b71beebd8ca080b698cd69ff4ef285d3fe3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NeZero.one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/declarations/nezero-one.md) | 23 | `declaration-track:204c0a6e30442e1194336439f071ca94ee9af5770223130ad7483c6ab80cfbf9` |
| 2 | `theorem` | [domain_nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/declarations/domain-nontrivial.md) | 34 | `result-track:7cb8e35b11a10ba836706795b23bf242079fce68901b67757946c19e28e4c04b` |
| 3 | `theorem` | [inv_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/declarations/inv-ne-zero.md) | 47 | `result-track:53050e5faf2a18f44b8a7f0dc620d5232dc4fb02fd023be4cbab8f8ff890a0c8` |
| 4 | `theorem` | [inv_mul_cancel₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNeZeroNeZero.lean/declarations/inv-mul-cancel.md) | 52 | `result-track:5fa98920df542862321724caac36051f29cf77dfd304e259f5675316fadef04c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe6402656c190b241a80df0efc11b6740c69463ac1aa1d524eb24c9190da9917 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant2067d888686ef1a97f6a23667aa38b71beebd8ca080b698cd69ff4ef285d3fe3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NeZero/Variant2067d888686ef1a97f6a23667aa38b71beebd8ca080b698cd69ff4ef285d3fe3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
