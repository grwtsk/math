# Verification target: Fractional Ideal Norm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd2035349400e1bb55bf7b0f7062703a382a87ac",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd2035349400e1bb55bf7b0f7062703a382a87ac`.

Source path: `GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/instance.md) | 43 | `declaration-track:99475d26ea82ea04ace10a3e5b8d1334ee8c4624922d54ee43f6a39e4b77329f` |
| 2 | `theorem` | [absNorm_div_norm_eq_absNorm_div_norm](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-div-norm-eq-absnorm-div-norm.md) | 45 | `result-track:459c9b2b634d40c4c534a805e0da5f32089e206ed1c3deb4054c28f947d20762` |
| 3 | `def` | [absNorm](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm.md) | 63 | `declaration-track:ac5c6eb7bca751fc55e3e8631b0b03f0de0085fcede599e781aace3ed7d4254b` |
| 4 | `theorem` | [absNorm_eq](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-eq.md) | 81 | `result-track:2d24663e4a45f1bde1e945ed9920b215e40e2ae8f120f10eb41ceab04bc81cfe` |
| 5 | `theorem` | [absNorm_eq'](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-eq-source-edition-2.md) | 84 | `result-track:ff526a087bedfcad0c441beb42053d6f37e608f6469bc1f7bfd24cb8cbc5a1fb` |
| 6 | `theorem` | [absNorm_nonneg](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-nonneg.md) | 90 | `result-track:e36c12834c997c0f230f078d2795e5ab26ce2b1920b6ca04af40c533a3c853f0` |
| 7 | `theorem` | [absNorm_bot](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-bot.md) | 92 | `result-track:409524e1718fb30897a520d88d3b5ffab796dc38336a2901aadbf80340a9302f` |
| 8 | `theorem` | [absNorm_one](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-one.md) | 94 | `result-track:5762dd3fcae11aaa6b5bd1107893b7a2cf957013d5da2a522b8bebf98751fbe2` |
| 9 | `theorem` | [absNorm_eq_zero_iff](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-eq-zero-iff.md) | 96 | `result-track:aad30d40242e57490c3dfc5a7e23a99c8debfb6bc4fe8f3fedff86922b67c094` |
| 10 | `theorem` | [coeIdeal_absNorm](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/coeideal-absnorm.md) | 103 | `result-track:0aa945d4d961e1f1e7a9312405a4cce80feb02cad63484882602cc494d56926c` |
| 11 | `theorem` | [abs_det_basis_change](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/abs-det-basis-change.md) | 112 | `result-track:605783fa1fbebf65ed93748e27dd9fef870b47dc958145d6cff11f237725b894` |
| 12 | `theorem` | [absNorm_span_singleton](../../../../CommutativeAlgebra/FractionalIdealNormPublic.lean/declarations/absnorm-span-singleton.md) | 139 | `result-track:f778c4127cb5d3c35ae1012c4354e1abaa84d9b9c303fb9dfeb84df5d824abb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cc07ff7504b90a024600f46e0c6633109d8404ab72316828665440a9cb9cb6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean","GRWTSK/_verification/specifications/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
