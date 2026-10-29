# Verification target: Inner Fibration Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1c1f9382d74e9fc3d43a706c05683569b38f7e9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1c1f9382d74e9fc3d43a706c05683569b38f7e9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean.json)

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
| 1 | `inductive` | [innerHornInclusions](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerhorninclusions.md) | 41 | `declaration-track:84d78901bd2fba57401bfd6698fbd99ddb6fbf1ea596a366ccbb06813eafcdec` |
| 2 | `lemma` | [horn_ι_mem_innerHornInclusions](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/horn-mem-innerhorninclusions.md) | 45 | `result-track:ab7d7ebc0380b2da1370874103b720293f666a5cbbdcc36bb39193138c9ef724` |
| 3 | `lemma` | [innerHornInclusions_eq_iSup](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerhorninclusions-eq-isup.md) | 52 | `result-track:6ac79af62d1ed3882b644cb525dc85639244f93b894cfcc1d133544b4f656fba` |
| 4 | `lemma` | [innerHornInclusions_le_J](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerhorninclusions-le-j.md) | 64 | `result-track:a3dec253188470f142d695b47fc935eec00263362529e097564904e28cb78979` |
| 5 | `lemma` | [innerHornInclusions_le_monomorphisms](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerhorninclusions-le-monomorphisms.md) | 67 | `result-track:45b4a58bded2c27e3b43d16f380a2d9f75fdebd002a433d9c6be277071a1c435` |
| 6 | `def` | [innerFibrations](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerfibrations.md) | 74 | `declaration-track:41f7644547544b5198684732dd6d49d16ab72f52ec63b7eda3e83518b57c4490` |
| 7 | `class` | [InnerFibration](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/innerfibration.md) | 80 | `declaration-track:571df7c5a2c5bfc57c8f4d5b3e69f84fe4074f9535e8d907d0faec6e4997e1b6` |
| 8 | `lemma` | [mem_innerFibrations](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/mem-innerfibrations.md) | 83 | `result-track:9cbc284153e2690f9b2ec7e630e4080e35537e502e62c90a88f9e961cae99eb0` |
| 9 | `lemma` | [quasicategory_iff_innerFibration](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/quasicategory-iff-innerfibration.md) | 86 | `result-track:b1ba0bda60b17364efa9c89deab08cf76ad74bb7624acc75bfd035d1347f81ed` |
| 10 | `lemma` | [quasicategory_iff_of_isTerminal](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/quasicategory-iff-of-isterminal.md) | 93 | `result-track:8adae064d1e9c6c0f5bac8fb902f6a614a7ed3e1dd487b204030ee6117417d1a` |
| 11 | `lemma` | [quasicategory_of_innerFibration](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/quasicategory-of-innerfibration.md) | 102 | `result-track:2e0b93ed5c62129fd01c43730c60f593b07d5c02d7bf8d8c4e825a3c36021236` |
| 12 | `instance` | [(anonymous)](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/instance.md) | 109 | `declaration-track:781b34a8fba3e5c98f10a75755f22ad9566ff904c99135bbb4deb068c1ac7bd2` |
| 13 | `lemma` | [quasicategory_of_from_innerFibrations](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/quasicategory-of-from-innerfibrations.md) | 113 | `result-track:37be93af2c1d6660cc1aa81e5882977757b00729474e2285ba495c6f5f95f3cb` |
| 14 | `lemma` | [Quasicategory.from_innerFibrations](../../../../AlgebraicTopology/InnerFibrationNamespacedPublic.lean/declarations/quasicategory-from-innerfibrations.md) | 118 | `result-track:ab2e714d7fccc20fe23245adb86b7b8f59b84ec6c7097017fae82dc03ecb2047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9265343bc3214511682a13df4fa5d4160206cc6a5eed55559c547389076d1819 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
