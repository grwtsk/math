# Verification target: Units Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78265850dda59344ec99790868b54bca5cd45dfa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78265850dda59344ec99790868b54bca5cd45dfa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.unitsEquivNeZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/root-unitsequivnezero.md) | 23 | `declaration-track:13c7d3e207b437cd5d2600d0bbbcc4f5072c4324aa402bcb8fd623fdd88785a6` |
| 2 | `def` | [mulLeft₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/mulleft.md) | 32 | `declaration-track:4016fcd4ff90e2ef2a8298f1ee62676a1e2cdc5e7a71d94f7034ad9460b46abe` |
| 3 | `theorem` | [_root_.mulLeft_bijective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/root-mulleft-bijective.md) | 35 | `result-track:43f2ee89f5fad6a6f89400d99cab22d113249d0dcbe39d045e8f4ff28275befd` |
| 4 | `def` | [mulRight₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/mulright.md) | 41 | `declaration-track:d90120d6c7aaf475611cc55532e08216370f5744409041f5eac8cb31c8029b0b` |
| 5 | `theorem` | [_root_.mulRight_bijective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/root-mulright-bijective.md) | 44 | `result-track:bc0db364f266bd79d5b59b986803f842e37344ba9353a7a004fa184443bf399f` |
| 6 | `def` | [divRight₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/divright.md) | 50 | `declaration-track:f92c1d6c6ace784838e267bddccd44b4aab1f414f95e8557d0648bfa6e7f1e34` |
| 7 | `def` | [divLeft₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/UnitsEquiv.lean/declarations/divleft.md) | 64 | `declaration-track:8585176fa6c337c795f5b6b03ea7c1b71b103428ffef02d559ac350cdd11b213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29bbce69e72e860cac961b9320c013fecfd65f60fc522a8f0f45686d77d9c5ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
