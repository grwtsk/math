# Verification target: Exp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba15a0e041ddd1b8ebf23f8004f3b23b81012972",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Exp.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Exp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba15a0e041ddd1b8ebf23f8004f3b23b81012972`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exp](../../../../CommutativeAlgebra/Exp.lean/declarations/exp.md) | 51 | `declaration-track:80c5b0b6a5419f8ca1e9b9bcdcf126013b1c13ed6a95b655c8f7e92a7992b585` |
| 2 | `theorem` | [exp_eq_sum](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-eq-sum.md) | 54 | `result-track:a4cee315e3e775f3e403323bf558a51bb97d9420363e8a81e9a0272eadfca7ed` |
| 3 | `theorem` | [exp_smul_eq_sum](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-smul-eq-sum.md) | 66 | `result-track:704c2201f90858df71848f040af5df7d4e43f581309039bd1597995ed408ff6f` |
| 4 | `theorem` | [exp_add_of_commute](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-add-of-commute.md) | 77 | `result-track:11b5178a7e9cb87a923b746ece1796cc6e07d499433918138c7450760a14a560` |
| 5 | `theorem` | [exp_zero](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-zero.md) | 169 | `result-track:b1491cba0c24627b1782df75900138ad212c37be440d22ca5631104c463507e2` |
| 6 | `theorem` | [exp_mul_exp_neg_self](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-mul-exp-neg-self.md) | 173 | `result-track:dc8f1c861c60baa88ebfdf72a8adf233d7fe6ec650d3cd8db23af1a2717e71e3` |
| 7 | `theorem` | [exp_neg_mul_exp_self](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-neg-mul-exp-self.md) | 177 | `result-track:6f96dfbab37c21012a48ff37d067745d285a739fa5c9248c880a1d1abd3a3a2b` |
| 8 | `theorem` | [isUnit_exp](../../../../CommutativeAlgebra/Exp.lean/declarations/isunit-exp.md) | 181 | `result-track:bdd30119dc103ef8157f26be69092a28c22342918213d4af94f494ba8cf0a941` |
| 9 | `theorem` | [map_exp](../../../../CommutativeAlgebra/Exp.lean/declarations/map-exp.md) | 189 | `result-track:6b6b3f9c89d764890f38168f704e87bd4aff391b918f8d9a1feec86a5cfde73d` |
| 10 | `theorem` | [exp_smul](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-smul.md) | 196 | `result-track:4fb8e38c942dc9713171269e6cefe1f45cf69d85fad14a5265739a5716260a50` |
| 11 | `theorem` | [commute_exp_left_of_commute](../../../../CommutativeAlgebra/Exp.lean/declarations/commute-exp-left-of-commute.md) | 210 | `result-track:19dfb6d221f5eebd8274d4eaf7d24b3ebe7f767522c3de3ed9f6325c1eac8391` |
| 12 | `theorem` | [exp_mul_of_derivation](../../../../CommutativeAlgebra/Exp.lean/declarations/exp-mul-of-derivation.md) | 226 | `result-track:e1aabe1c939d078f63e3089f0021c533573c96fe1798a9275b83d3b35dabb719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=920b431a97aa531b414ea43e8ff9a209b4c4d429dfd33f35d135354a27c8aca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
