# Verification target: Of Norm Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81dee46209158c06302fb5a0bed39c56ecfe35dc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81dee46209158c06302fb5a0bed39c56ecfe35dc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean.json)

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
| 1 | `class` | [InnerProductSpaceable](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/innerproductspaceable.md) | 78 | `declaration-track:ba372f30fa56787d9fd38e65b1e48a820c40ed786ba6cf7343044f38583488fc` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/innerproductspace-toinnerproductspaceable.md) | 84 | `result-track:b3abc12a900bb1b0d8cef7b7e701b164307e659c02ef070f7d2f2d159245c198` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/instance.md) | 89 | `declaration-track:0426a3ea2fa27a8a36922311143d48526c657778219a1805440100b24ae0b236` |
| 4 | `def` | [inner_](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/inner.md) | 99 | `declaration-track:540e5fe2939f136cfc37e00e2a7806b18e7f263520c6d9223068379b7db70d20` |
| 5 | `def` | [innerProp'](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/innerprop-source-edition-2.md) | 111 | `declaration-track:afab5eab3860d2b61df8a45384ca359915e3d07367e0b7b7b0f43dbc300ac5aa` |
| 6 | `theorem` | [Of Norm Namespaced Public](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/inner-source-line-118-occurrence-2.md) | 118 | `result-track:c2bf2901cfdd60074edb7ed0cee491e7e992d1fbdee252330da359ae2b42c0a4` |
| 7 | `theorem` | [inner_.norm_sq](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/inner-norm-sq.md) | 125 | `result-track:7f63dfde17619cdf45b907f4e775e987891d09ed5136fae8a56c4cd95f084eaf` |
| 8 | `theorem` | [inner_.conj_symm](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/inner-conj-symm.md) | 135 | `result-track:d8a7d860d7baa6c9f6591407f177009216264579c558ada65357d34a91554f22` |
| 9 | `theorem` | [add_left](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/add-left.md) | 155 | `result-track:cf197de23eb4a1f1af6476e96edfeb9be2194e2b3cb8744dbe7416296453f631` |
| 10 | `theorem` | [rat_prop](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/rat-prop.md) | 170 | `result-track:d00650ec2f2e37aaa73ccb365248052e1a936a1392e5f40216347ae41a39c222` |
| 11 | `theorem` | [real_prop](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/real-prop.md) | 177 | `result-track:d2478e9340fd1ec88f945e93fcd87165d9b8ba63ef4cb54021ccec087728dd17` |
| 12 | `theorem` | [I_prop](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/i-prop.md) | 186 | `result-track:6ac79e7224f23f10b96c997ac8c45d1124e25717d5abaadfe3aa70ca88b1733d` |
| 13 | `theorem` | [innerProp](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/innerprop.md) | 200 | `result-track:36c98ae413f959bb86f7be949701ab098ece133ad6381b7ca61eb4d7e21c13c8` |
| 14 | `def` | [InnerProductSpace.ofNorm](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/innerproductspace-ofnorm.md) | 215 | `declaration-track:7d8aa9ecc69152c5e163491f9d8f47d589f4c700cc1dd52f8cbc9c3ca07992f0` |
| 15 | `theorem` | [nonempty_innerProductSpace](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/nonempty-innerproductspace.md) | 232 | `result-track:24b1d275f1641c027649b71dcce14eb04665b033bbca0f1c4afc563b4d5c198d` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/OfNormNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:97129bf98c9a701c35411f8b099373799376ecac4a2d96ad5ef2cb6015adddf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fe01cf08b0efb0c2412eb3906f2c3ba5447b86cf2c95373f422abe9c0f29e1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
