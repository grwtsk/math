# Verification target: Lie Tensor Product Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6ed5bdc6a78b3252689224b55f893476cddff0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant9e4c58adb21ea46b2e49befae69b5d1053f10756014f40edeae1ed0fab418ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6ed5bdc6a78b3252689224b55f893476cddff0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant9e4c58adb21ea46b2e49befae69b5d1053f10756014f40edeae1ed0fab418ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant9e4c58adb21ea46b2e49befae69b5d1053f10756014f40edeae1ed0fab418ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasBracketAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/hasbracketaux.md) | 55 | `declaration-track:b19300f3269c2ec5045633152e2ede61d10aab9995fcde4a7c4a1ea88cd4634a` |
| 2 | `instance` | [lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/lieringmodule.md) | 59 | `declaration-track:72a76e2985792c8168c0056b9217c7ac0677e6e890f6da21b2dd4e763457b037` |
| 3 | `instance` | [lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/liemodule.md) | 78 | `declaration-track:abebae71895892c9fb6063bced527f7e604404267673cd724ec62142e72d2413` |
| 4 | `theorem` | [lie_tmul_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/lie-tmul-right.md) | 86 | `result-track:0d153cda80e3f5265d4d28d7af3b3ade26779fcfc80058a4822c43638e28fca1` |
| 5 | `def` | [lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/lift.md) | 95 | `declaration-track:9b4c20ccac618f5ac35cfc2094cbe93e4ed1425d7479e2b988c6c03d8a82f9df` |
| 6 | `theorem` | [lift_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/lift-apply.md) | 105 | `result-track:e17aa2f424129a2f5cac77330e57af40901c14d7d931fdc48a0f64eb98699dda` |
| 7 | `def` | [liftLie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/liftlie.md) | 112 | `declaration-track:d56781d8045f21d73d493731ec39e022347d60b8c6ecb64ed9f654d70c539cda` |
| 8 | `theorem` | [coe_liftLie_eq_lift_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/coe-liftlie-eq-lift-coe.md) | 117 | `result-track:ec27255881c800c7ae1fdfe1548d451d0f18ec14dce910f80be15e4918b2bbdb` |
| 9 | `theorem` | [liftLie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/liftlie-apply.md) | 121 | `result-track:2fbd5656455a57be4992b5ae6dc1200926e80dc103c3531c9626c0545c274dd2` |
| 10 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/map.md) | 129 | `declaration-track:7f6194601b2b8effa7ecd10b7e79669342a1bae18d88eb10c9e1d35de2a22ec9` |
| 11 | `theorem` | [toLinearMap_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/tolinearmap-map.md) | 140 | `result-track:4f9c24f83feb934873cd5714dd6fb682eb8075c8dc9b1038b8c26d450365b35e` |
| 12 | `theorem` | [map_tmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/map-tmul.md) | 145 | `result-track:b2ade6a7ee1158bfe1392cff64876a6abd5800182cf272ac50d8b1ccbaee3c39` |
| 13 | `def` | [mapIncl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/mapincl.md) | 150 | `declaration-track:88823b11add19c1bde1ac8c8af833ed82494862ce7e63ac3fe651ff73285053a` |
| 14 | `theorem` | [mapIncl_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/mapincl-def.md) | 154 | `result-track:0b681351b1a57fb34a9f174c279363b5bb3002f0ff1a9412c89456ba452eac4e` |
| 15 | `def` | [toModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/tomodulehom.md) | 171 | `declaration-track:5555a5cdbc03ca0dfdc7335f4461dcafd8cf246878f564513160f98247d5d67f` |
| 16 | `theorem` | [toModuleHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/tomodulehom-apply.md) | 177 | `result-track:aaa3cdade1c8c29ab73c83efd3a423179411d609ebc0e4d4b69ce981ab58aee7` |
| 17 | `theorem` | [lieIdeal_oper_eq_tensor_map_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductNamespacedPublic.lean/declarations/lieideal-oper-eq-tensor-map-range.md) | 202 | `result-track:03b137865a3568760a2bc35be66165bb68b77891f6258ee705c2227895746cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a29d93b0bcc71586e81c8bb5d023a31d1e252d006edbe45018070543ddcff34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant9e4c58adb21ea46b2e49befae69b5d1053f10756014f40edeae1ed0fab418ed6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant9e4c58adb21ea46b2e49befae69b5d1053f10756014f40edeae1ed0fab418ed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
