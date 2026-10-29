# Verification target: Mv Power Series Derivative Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "952625ec5083cedb64ca6716ab5362765568f352",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `952625ec5083cedb64ca6716ab5362765568f352`.

Source path: `GRWTSK/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean.json)

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
| 1 | `def` | [pderivFun](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun.md) | 60 | `declaration-track:39460ef9716d8339c114a6c8f19abde9b88a284a648826408287c8ab22230a11` |
| 2 | `theorem` | [coeff_pderivFun](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/coeff-pderivfun.md) | 63 | `result-track:28a0c2433bed48f3a5d123fe4f4df3db182677ccfde50f061f61f1bc288dabe8` |
| 3 | `theorem` | [pderivFun_add](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-add.md) | 67 | `result-track:1dedaffad48f44eac473f0fc92cb74b6e785daf3aea7bd4338560b3e8b7fb87a` |
| 4 | `theorem` | [pderivFun_C](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-c.md) | 72 | `result-track:a965d3bc311575c285746ef17cf59ff440f95b7ced3c3b7b94ed3cdc09224be3` |
| 5 | `theorem` | [pderivFun_one](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-one.md) | 76 | `result-track:567357106c3fef9b4ee86423907e56a20ba2e85e7cedd61e915dd199d8dcdf44` |
| 6 | `theorem` | [pderivFun_coe](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-coe.md) | 85 | `result-track:0f8fba955d54535bac9ab83c0f8929dedee10205f108d5320bccd16c266c9c8f` |
| 7 | `theorem` | [trunc_pderivFun](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/trunc-pderivfun.md) | 90 | `result-track:55b4d8a6564a0e8a471c153ceefec004cfa58d7afd8db9b6eb08abb1d8f4aadf` |
| 8 | `theorem` | [pderivFun_coe_mul_coe](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-coe-mul-coe.md) | 99 | `result-track:9d96eb5a20ed5bb7f0afeefbaccc5c3be7f3a6327c2c6f414e8255237e9f66df` |
| 9 | `theorem` | [pderivFun_mul](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-mul.md) | 104 | `result-track:1a8bdcf21e0b00b407fc2fcd6d98a5119adf7b29467d3ef5f426f10455e8d027` |
| 10 | `theorem` | [pderivFun_smul](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderivfun-smul.md) | 118 | `result-track:b4f01e8d421de2d60db2a2834e75516407e7574c76d0235e4175e64c07406d7a` |
| 11 | `def` | [pderiv](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv.md) | 125 | `declaration-track:6d88c5b630fe745ddf5a4589260e649c09cdece609280595948f493ba61243a2` |
| 12 | `theorem` | [pderiv_C](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-c.md) | 132 | `result-track:070b50bb74a28be2c7542a272781938b7050b79119e1a50a5950624624c3c9d3` |
| 13 | `theorem` | [pderiv_one](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-one.md) | 134 | `result-track:2dd27c0a71202624f004615382fb69b34bc06b6ea78ec92f07d4f9383dcebdc1` |
| 14 | `theorem` | [coeff_pderiv](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/coeff-pderiv.md) | 136 | `result-track:1f0cea543e9de51ba2d430bfa0474c87699f29c6c547f84a017292d285f4a639` |
| 15 | `theorem` | [pderiv_coe](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-coe.md) | 140 | `result-track:928e5f46d39bafcbd97f539848e0a86ed1d349ea4c5bb1f26097e5df07722356` |
| 16 | `theorem` | [pderiv_X_self](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-x-self.md) | 144 | `result-track:397e2823b72c627292a39a56f36114b5a11046d43679495f51e56c695efc7644` |
| 17 | `theorem` | [pderiv_X_of_ne](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-x-of-ne.md) | 151 | `result-track:fa266daabad0ec2f9a0e99b5fafd2b7b17268d61e160ff39336d3318c01c2e6e` |
| 18 | `theorem` | [pderiv_X](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-x.md) | 157 | `result-track:2c991c8d9ca272c9e323ee725fb45ce73f7e0a8c997af07e72fe9bd66369b262` |
| 19 | `theorem` | [trunc_pderiv](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/trunc-pderiv.md) | 163 | `result-track:939727241cac46872a13382dd0e97543e259f7499b9af74a154c9a44dc12fd45` |
| 20 | `theorem` | [pderiv_pow](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-pow.md) | 168 | `result-track:a456ce07770ed346210dcf3c13604fde0c6a0224b1e401610959ab4aa7b91887` |
| 21 | `theorem` | [pderiv.ext](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-ext.md) | 178 | `result-track:a568c9e1ba0c417c048c06e6127c2e06e26993def2a6fe515415cfbb77329276` |
| 22 | `theorem` | [pderiv_inv](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-inv.md) | 192 | `result-track:916a6fa35ee8a48de94e69f9a892e99019f0f1825f44f635b3adf7276dbba01d` |
| 23 | `theorem` | [pderiv_invOf](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-invof.md) | 197 | `result-track:688eaf50190162a473645b7f61e700e7fc3ae92db68804d2ccf4f3497ea83ccb` |
| 24 | `theorem` | [pderiv_inv'](../../../../CommutativeAlgebra/MvPowerSeriesDerivativeNamespacedPublic.lean/declarations/pderiv-inv-source-edition-2.md) | 207 | `result-track:bf1b7f8899d63334dea2ab1dece94d51864d19d7998de5133e6b12d00efbb0b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51b1fa989a590559f27fc369e2ad9e8b5f4a64fd31c36a3125f0e0851ed1b4b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean","GRWTSK/_verification/specifications/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
