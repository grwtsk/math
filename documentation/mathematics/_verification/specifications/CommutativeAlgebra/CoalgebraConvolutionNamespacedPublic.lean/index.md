# Verification target: Coalgebra Convolution Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean.json)

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
| 1 | `instance` | [convMul](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convmul.md) | 64 | `declaration-track:76393b901a95ba5343952300c2617d33e2d00e65985f803313fa6dd559691234` |
| 2 | `lemma` | [convMul_def](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convmul-def.md) | 67 | `result-track:971a28a29b04c2cc496cf7400f60955a6c0ff6311141dddc8615e545d57adf34` |
| 3 | `lemma` | [convMul_apply](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convmul-apply.md) | 71 | `result-track:9b1e44be2b4f96c946a7b60ce98bf9b199a90054353ed77676df70fa26dc95e3` |
| 4 | `lemma` | [Coalgebra Convolution Namespaced Public](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convmul-apply-source-line-74-occurrence-2.md) | 74 | `result-track:1b33f3c0cc14d45cb7c8c25f1ccccc57aea3212c2d51a78894ede3b96556cfaf` |
| 5 | `instance` | [convNonUnitalNonAssocSemiring](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convnonunitalnonassocsemiring.md) | 80 | `declaration-track:af2fb95ed22e379ff7419a1784540eb02bae7d65e39f07616bb4609c4361cded` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/instance.md) | 86 | `declaration-track:b0cfef6754df082acff41627d14d62b1366aa2c207342d786a3bd0a155192230` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:b39f7bd844a47716736cc41040910c98788a7083c9c1da2b29cafb34100e20c6` |
| 8 | `lemma` | [toSpanSingleton_convMul_toSpanSingleton](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/tospansingleton-convmul-tospansingleton.md) | 94 | `result-track:cca82031aaacd8a94c2f8bf6d39993cd3c76b927bc11b9e10f3361ed24c24aae` |
| 9 | `theorem` | [Coalgebra Convolution Namespaced Public](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/map-convmul-map.md) | 98 | `result-track:f9150bcf7083426a29d96f5d8b805c6d2091d4f9e2e01f0e02baa83c52da1be0` |
| 10 | `instance` | [convNonUnitalNonAssocRing](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convnonunitalnonassocring.md) | 117 | `declaration-track:b4e0dd4a013444299047cac0bf2d4d2c7a2187529a5352ca02aa8c8acae0dcab` |
| 11 | `lemma` | [nonUnitalAlgHom_comp_convMul_distrib](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/nonunitalalghom-comp-convmul-distrib.md) | 125 | `result-track:971a3158834aebd538013529378ef8d82090dcedbaba3ade47fc3fbcc0f565e0` |
| 12 | `lemma` | [convMul_comp_coalgHom_distrib](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convmul-comp-coalghom-distrib.md) | 132 | `result-track:cae7cb7b4b68bb86d6185f93be952ccc1874da793cd28962b3b2f1a8eddaf575` |
| 13 | `instance` | [convNonUnitalSemiring](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convnonunitalsemiring.md) | 140 | `declaration-track:68ae4881db14d7c2035d0043dc3afcfc29c8095e3ef23289cc51b332e49dc77d` |
| 14 | `instance` | [convNonUnitalRing](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convnonunitalring.md) | 162 | `declaration-track:02cda4529284713470037947f9302177aade26b3e740c34c5a78768d3749d785` |
| 15 | `lemma` | [algHom_comp_convMul_distrib](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/alghom-comp-convmul-distrib.md) | 172 | `result-track:2e91cc6a8ccb2c2020b8355e7acd7209f29e53058ac562e2f714617e9f0b7a39` |
| 16 | `instance` | [convOne](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convone.md) | 182 | `declaration-track:95e4aa173c0dfdd1e79ca058ba8b120cb35a78101596fbe1425f6361947ba46a` |
| 17 | `lemma` | [convOne_def](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convone-def.md) | 184 | `result-track:be508ead1a5d4150ea2e3b30a97eef312713b35503708e9555c7019718ae831b` |
| 18 | `lemma` | [convOne_apply](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convone-apply.md) | 186 | `result-track:6e7f0d640d91f16a4028a1062652a2a0ddad7381f7e8bca009ee246aa4c29739` |
| 19 | `instance` | [convSemiring](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convsemiring.md) | 190 | `declaration-track:45dcd0149b38ee84c371e911c31b439fb57e7d379522f56ee8eefa214fbc8118` |
| 20 | `instance` | [convAlgebra](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convalgebra.md) | 195 | `declaration-track:529c87f61d95d076d2fa019c7f578f9e89c07e416671c1cf4e388f4e75837063` |
| 21 | `lemma` | [convAlgebraMap_apply](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convalgebramap-apply.md) | 200 | `result-track:4f8c713b78142066af74d9ac890a12410902a74437449d5c2fefcda2383a6be7` |
| 22 | `instance` | [convCommSemiring](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convcommsemiring.md) | 211 | `declaration-track:ed18a243b06d70071ad3bb4cb93fad87bf8475b5f6438aa0985f79ffe4407837` |
| 23 | `instance` | [convRing](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convring.md) | 220 | `declaration-track:a59521c089a5b54dd4c98ed161c47795e43f79956f8e7ac4e15a97c01f62a41f` |
| 24 | `instance` | [convCommRing](../../../../CommutativeAlgebra/CoalgebraConvolutionNamespacedPublic.lean/declarations/convcommring.md) | 229 | `declaration-track:3f23813f07deecf147b8e64385b749a4f4c972f97d80f6ce7808ce074346f367` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1eba7f064e2dd22231e29a9e83ac2c6f726aa289fdd8106d580a3924cac0cf55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
