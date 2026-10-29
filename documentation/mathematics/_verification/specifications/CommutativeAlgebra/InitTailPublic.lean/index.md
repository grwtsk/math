# Verification target: Init Tail Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68edc419d59aabc4356a43b7423ed0d140dee1d3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variant0c9fa75b4164fc67ceecb91d925a811cdf46556674fa2b3c1d4e4d996d6385e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InitTailPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InitTailPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68edc419d59aabc4356a43b7423ed0d140dee1d3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InitTail/Variant0c9fa75b4164fc67ceecb91d925a811cdf46556674fa2b3c1d4e4d996d6385e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InitTail/Variant0c9fa75b4164fc67ceecb91d925a811cdf46556674fa2b3c1d4e4d996d6385e4.lean.json)

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
| 1 | `def` | [select](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/select.md) | 59 | `declaration-track:078b95492436829f68e840ef4ebcc2b1b242a5211b037498e5944acdd4ea3a3a` |
| 2 | `def` | [selectPoly](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/selectpoly.md) | 69 | `declaration-track:063026dbfcbc67b50da1e92db2811ff65fde926166c9dd53d6b4a7fb5d853760` |
| 3 | `theorem` | [coeff_select](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/coeff-select.md) | 72 | `result-track:1d1dd64884855a77a23f0ebdded84602cda910350949926e01234f69c20f9b1d` |
| 4 | `instance` | [select_isPoly](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/select-ispoly.md) | 77 | `declaration-track:7ccd5968dc1ce66134eaa7f242b97cdb202d2d2aeb481a5b2daaaeefab71e916` |
| 5 | `theorem` | [select_add_select_not](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/select-add-select-not.md) | 85 | `result-track:9f78bef5721ad21948f9b55667e1fb2e48cce8cb80ae9db00b51fb37a1b84887` |
| 6 | `theorem` | [coeff_add_of_disjoint](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/coeff-add-of-disjoint.md) | 108 | `result-track:459af215819db44c336a416fcff138bc0393f41588dc604538e23b10e20cf13d` |
| 7 | `def` | [init](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init.md) | 139 | `declaration-track:eafb7c96f9e3328229207932176f3c153a4f8202a4384ff65dab272b91cec55a` |
| 8 | `def` | [tail](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/tail.md) | 145 | `declaration-track:329f691fd24a2b219d651f338657b17509af65634e7f5c476e60048cdcf39a8a` |
| 9 | `theorem` | [init_add_tail](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-add-tail.md) | 149 | `result-track:942c482181ec9af43ddb6f2b8d0565c480ca5e63eb9b9e8c125fd48a6142d86d` |
| 10 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/syntax.md) | 157 | `declaration-track:0ea7dd4ac205954003aff2370c35071374f4dc164f54410c2f04e3e19ed7915e` |
| 11 | `elab_rules` | [(anonymous)](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/elab-rules.md) | 162 | `declaration-track:1d75ab3282797fa13ca65ac578224b0d8e69e18388b2f25aab2ffe6afd2dcffe` |
| 12 | `theorem` | [init_init](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-init.md) | 186 | `result-track:8a69e7bf142581090b6ad9890ca6d2b1771bfa19c5aaca8494d42e8f89fb4297` |
| 13 | `theorem` | [init_add](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-add.md) | 192 | `result-track:7dd028604a6a35908732d87bd8808751a43bfc79fc7687eef77284fac6640ad5` |
| 14 | `theorem` | [init_mul](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-mul.md) | 195 | `result-track:b524ec79569030008f639f635bb436a8834375ad0846b480873d2fc15472b890` |
| 15 | `theorem` | [init_neg](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-neg.md) | 198 | `result-track:4c2c9b66a3c9d1ca3c3d12b2c44dde9e90593fc56c2d6f1e89927d33ae43de08` |
| 16 | `theorem` | [init_sub](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-sub.md) | 201 | `result-track:925c2b39734b530bf3a2e1012d67cd5a627bc7519092ab2e5678bbd69404d9c7` |
| 17 | `theorem` | [init_nsmul](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-nsmul.md) | 204 | `result-track:0759b8f37f47a4687fb70fdee47ca9fa78e8b4f4aec71825a5f49cf96e94ce77` |
| 18 | `theorem` | [init_zsmul](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-zsmul.md) | 207 | `result-track:37d9e300236ba31171449f0a53f04d1273e4b501c8ee7738a3c76fde707c45cc` |
| 19 | `theorem` | [init_pow](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-pow.md) | 210 | `result-track:c679b08600779596211f37982214c186a422f0a937e7a5d9cd9f900040690067` |
| 20 | `theorem` | [init_isPoly](../../../../CommutativeAlgebra/InitTailPublic.lean/declarations/init-ispoly.md) | 219 | `result-track:2ac90ee17628b33ec6c32ded6cd35190df63635090955f661a74a0fdc8b40f5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac9f63ac7fbb6b64b433799997c9a20d4e0f9cda527beeffcd6a3d8d3fa67c1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/InitTail/Variant0c9fa75b4164fc67ceecb91d925a811cdf46556674fa2b3c1d4e4d996d6385e4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/InitTail/Variant0c9fa75b4164fc67ceecb91d925a811cdf46556674fa2b3c1d4e4d996d6385e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
