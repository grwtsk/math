# Verification target: Extended

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3b9bc6f62288929c95aa60477b6668829175aa9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extended/Variant8f5a0501f7d86573a79138ec2f4f10ce60905b9364df60fb43069ec7434d4aa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Extended.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Extended.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3b9bc6f62288929c95aa60477b6668829175aa9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extended/Variant8f5a0501f7d86573a79138ec2f4f10ce60905b9364df60fb43069ec7434d4aa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extended/Variant8f5a0501f7d86573a79138ec2f4f10ce60905b9364df60fb43069ec7434d4aa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FractionalIdeal.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extended](../../../../CommutativeAlgebra/Extended.lean/declarations/extended.md) | 43 | `declaration-track:24d4cd6f4c9f4d5b085d2f75f59ede8f8421e3d578ad06491e3a8e21354655d1` |
| 2 | `lemma` | [mem_extended_iff](../../../../CommutativeAlgebra/Extended.lean/declarations/mem-extended-iff.md) | 58 | `result-track:b4f0284ece9f6a362974a78689ad6cca0ba7e383ad553c31900ceafe4680e851` |
| 3 | `lemma` | [coe_extended_eq_span](../../../../CommutativeAlgebra/Extended.lean/declarations/coe-extended-eq-span.md) | 62 | `result-track:33a369d8ebd954eba82e5ee440e4962113d2c1d28a364e474342d03952c0c689` |
| 4 | `theorem` | [extended_zero](../../../../CommutativeAlgebra/Extended.lean/declarations/extended-zero.md) | 66 | `result-track:60e41989a18f221a5a2abfe9af0b2109848ee18b8d61084e79ddd9391e903bb1` |
| 5 | `theorem` | [extended_one](../../../../CommutativeAlgebra/Extended.lean/declarations/extended-one.md) | 71 | `result-track:e81b2a1981c9c48ebf5136483c1f27641110c5f877c57058595bf7df90307c3a` |
| 6 | `theorem` | [extended_add](../../../../CommutativeAlgebra/Extended.lean/declarations/extended-add.md) | 80 | `result-track:2ae8115a63549432ca0f54ca56d4c3e01a692fa81f9db3ec238719352d64bb3d` |
| 7 | `theorem` | [extended_mul](../../../../CommutativeAlgebra/Extended.lean/declarations/extended-mul.md) | 94 | `result-track:8c2bfc0f4522714524e6aa3141b3141efb567adc0ce78db3f2080568fce311ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe144cb5705fb9f274f9423c67a8f861ec516d26a1449142054f6c674c2b0dcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Extended/Variant8f5a0501f7d86573a79138ec2f4f10ce60905b9364df60fb43069ec7434d4aa5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Extended/Variant8f5a0501f7d86573a79138ec2f4f10ce60905b9364df60fb43069ec7434d4aa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
