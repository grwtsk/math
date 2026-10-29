# Verification target: Teichmuller Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adae0579eeb15de98aafb70fb72251c2b93122ab",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variant59dacd6f7a4439440117f51d9d64c632256f3fe92031774a3075a09fa433532e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adae0579eeb15de98aafb70fb72251c2b93122ab`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variant59dacd6f7a4439440117f51d9d64c632256f3fe92031774a3075a09fa433532e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Teichmuller/Variant59dacd6f7a4439440117f51d9d64c632256f3fe92031774a3075a09fa433532e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [teichmullerFun](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmullerfun.md) | 48 | `declaration-track:1ed298bf4c99ed5ceccd2259fbd8f3d388cb28f3b4f59a21a9ae305de5ac9c0f` |
| 2 | `theorem` | [ghostComponent_teichmullerFun](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/ghostcomponent-teichmullerfun.md) | 66 | `result-track:6f0227dd717779999490ae3f3848e3c904ecb1b3beae8fcb3c17ce04b3e5fbe2` |
| 3 | `theorem` | [map_teichmullerFun](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/map-teichmullerfun.md) | 75 | `result-track:201941ad60b7caba5326b3f1b9411d70b4a06eb9e222bd9bd91e15a575e64023` |
| 4 | `theorem` | [teichmuller_mul_aux₁](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller-mul-aux-source-edition-2.md) | 81 | `result-track:927ce2da253f2b9cf5cdbebe2abc5e5aee182d9766c3837e2f745cf10dcfd286` |
| 5 | `theorem` | [teichmuller_mul_aux₂](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller-mul-aux.md) | 88 | `result-track:8a811fead5a1bf960e34c6bec101abbf3794e6b1e9b070d5a78506ba3b75b6b7` |
| 6 | `def` | [teichmuller](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller.md) | 97 | `declaration-track:68ce9ab5a535212b591ffaaa71ef5fde140f058a0d21f0643fe639816cf160ce` |
| 7 | `theorem` | [teichmuller_coeff_zero](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller-coeff-zero.md) | 110 | `result-track:134cfa5f0a4ecb77628eabf94e123f8ccf600b4239ebdb32c3d65fc1ded59a22` |
| 8 | `theorem` | [teichmuller_coeff_pos](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller-coeff-pos.md) | 114 | `result-track:652b81234737ff061b84e6369cd03711eb2c0d36a3042349f5bdbe7855e1a431` |
| 9 | `theorem` | [teichmuller_zero](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/teichmuller-zero.md) | 118 | `result-track:29d6c9023dda97b389244fc0d0387a6f6ecfb6f95e28b1f54251ef838a43985d` |
| 10 | `theorem` | [map_teichmuller](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/map-teichmuller.md) | 123 | `result-track:eb79275ff195eb582503a71bd33607b01d695656d59c4643c77d3f44ad2f402f` |
| 11 | `theorem` | [ghostComponent_teichmuller](../../../../CommutativeAlgebra/TeichmullerNamespaced.lean/declarations/ghostcomponent-teichmuller.md) | 128 | `result-track:dab88eb8d54f74eeb436eb7705b897e196190fc1ff59010ea1b8174704c7a0ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4147a9e8167d6adb5a48fd22558628f832ac50ce8d0f91852db271992a25bdd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variant59dacd6f7a4439440117f51d9d64c632256f3fe92031774a3075a09fa433532e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Teichmuller/Variant59dacd6f7a4439440117f51d9d64c632256f3fe92031774a3075a09fa433532e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
