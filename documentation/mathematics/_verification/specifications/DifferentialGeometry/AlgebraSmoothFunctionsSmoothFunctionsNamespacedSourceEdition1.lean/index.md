# Verification target: Algebra Smooth Functions Smooth Functions Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30abc1a101585ed9c4a237ecb9ebd6572d38f632",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30abc1a101585ed9c4a237ecb9ebd6572d38f632`.

Source path: `GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/instmul.md) | 41 | `declaration-track:f6666570646bca8e1a1abfdd4a248a3251a96049f008065b1e9b9084092f7343` |
| 2 | `theorem` | [coe_mul](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-mul.md) | 48 | `result-track:8e93a1e1cad8189ff6763671381cdaa3c8e7986f787d672af0782b4ede4ce1c5` |
| 3 | `theorem` | [mul_comp](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/mul-comp.md) | 55 | `result-track:498dbdd80d280769d93565e4340203628cbe2e533498b7b9ca5e2f0eed3a1f88` |
| 4 | `instance` | [instOne](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/instone.md) | 62 | `declaration-track:dd91c8f56f276d43be12f09dbe9d213d1d0853bfe624672aeb361b8e7a848c2c` |
| 5 | `theorem` | [coe_one](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-one.md) | 69 | `result-track:eea3ff5ad556c70718df108e68bf45872e0e54fc6be5ca194fec513f2fc4c881` |
| 6 | `instance` | [instNSMul](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/instnsmul.md) | 75 | `declaration-track:caba9cb345a6e7b01ceabc5107a155b19c58123101f771a47e74e35274a2bc04` |
| 7 | `instance` | [instPow](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/instpow.md) | 80 | `declaration-track:c3acdd38fefd6372aabb744ef9b2669d83fce0ace00ea6886e34157ad9a8a9fa` |
| 8 | `theorem` | [coe_pow](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-pow.md) | 85 | `result-track:4ed6ffb7306711bcb5ea65ab38403bf06411ee161dd3661473be4767d1b843db` |
| 9 | `instance` | [semigroup](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/semigroup.md) | 100 | `declaration-track:3c6e469f87719c7f2c4c71fd571c5c2cb1d6e2bfdc94aeae9cebf88377cce8b8` |
| 10 | `instance` | [monoid](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/monoid.md) | 107 | `declaration-track:ed95366d8e11dc7465685650011e8ed99275733a7ca9c884c60499f2738badc2` |
| 11 | `def` | [coeFnMonoidHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coefnmonoidhom.md) | 116 | `declaration-track:d73a4978b6ab1276ab48fa3d565a7bcd117f966cdf6bbd5fc5d52b60a2c0a7cd` |
| 12 | `def` | [compLeftMonoidHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/compleftmonoidhom.md) | 131 | `declaration-track:f9717d6b236e9c7f3d4dd842959660ff7cbc0ec832ddbe934befed4f04770b94` |
| 13 | `def` | [restrictMonoidHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/restrictmonoidhom.md) | 148 | `declaration-track:2a896daf8f94c52f9799bff88dab45a2b7d0a07be75baea4f9292c97549a34f4` |
| 14 | `instance` | [commMonoid](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/commmonoid.md) | 159 | `declaration-track:eed4e372db99c09a4b2bc85d3e626748bd4332328ad9ef182776fbf7f73ea1c6` |
| 15 | `instance` | [group](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/group.md) | 166 | `declaration-track:62d2dceff9f842b21b66498dcfa63b7e9f9c252ec0967c6e206585cdc3498997` |
| 16 | `theorem` | [coe_inv](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-inv.md) | 177 | `result-track:bab7c674c2502bdbc4413f41fed6ba5b87794ace613f369057569cf9647dc176` |
| 17 | `theorem` | [coe_div](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-div.md) | 184 | `result-track:2c0e7d4b87ea6c3ae107db5ade468f245898f83d5fd828bfb17da5dfecef7ab4` |
| 18 | `instance` | [commGroup](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/commgroup.md) | 191 | `declaration-track:7ab323a3e0332b25729ee09cb51a85d41fc137317ff80687193b09cc2e49e3ec` |
| 19 | `instance` | [semiring](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/semiring.md) | 209 | `declaration-track:60a198136c9b7195f6428fe6b964747c52703407a01a3799c7f2006492a8bb79` |
| 20 | `instance` | [ring](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/ring.md) | 219 | `declaration-track:0dae57725a548dbbbf9c254c5bbfe89b04fa71513b0816e82525bea3d8b64bf3` |
| 21 | `instance` | [commRing](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/commring.md) | 224 | `declaration-track:b9d4dbfb7b0d8de30ec073024f7dcea69244784c811ad383a6abddee56ffc680` |
| 22 | `def` | [compLeftRingHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/compleftringhom.md) | 233 | `declaration-track:06f0b1661cd9bec0d35448e9b0d034ae3683cd54db1bc3f99b368ac0f11fa35e` |
| 23 | `def` | [restrictRingHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/restrictringhom.md) | 246 | `declaration-track:d9b28097d9a87b17094d4a498fab1ed5e10e1877c7c907365edc8ac6cdfb3748` |
| 24 | `def` | [coeFnRingHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coefnringhom.md) | 256 | `declaration-track:75da393e2335328857c31d48fcb147d64c7a818d5b22ae21fc1830cfdaf13c92` |
| 25 | `def` | [evalRingHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/evalringhom.md) | 263 | `declaration-track:30b0bcf0e7ae6962001f43fd51f1043836d22b52f57176d1a8abd6ec961990cb` |
| 26 | `instance` | [hasSmul](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/hassmul.md) | 280 | `declaration-track:519d97d63eff23dd1398fa1d2359dc298385c8aaacc8a2b3596920ea72569a87` |
| 27 | `theorem` | [coe_smul](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coe-smul.md) | 286 | `result-track:7c1dded20ed6a3d65f7872c0ec92ea4e5717afa5ed1fc4f0b8fa5cad76a2591f` |
| 28 | `theorem` | [smul_comp](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/smul-comp-source-edition-2.md) | 292 | `result-track:da310a73849b26ab77349025f73ebf7220e8fe68b590834d17399251c6ff984e` |
| 29 | `instance` | [module](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/module.md) | 297 | `declaration-track:9b1d1b8a8b296753f37ca51f73a0c7f3afaf06bd6f20da7c87b44daf2ab612c3` |
| 30 | `def` | [coeFnLinearMap](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coefnlinearmap.md) | 304 | `declaration-track:3689ee1775f9c9882d1edb07d7c461b97b6747a071bcde6405c4407aeebfb0d1` |
| 31 | `def` | [C](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/c.md) | 326 | `declaration-track:a61d11a71266aff8dace6f2fd143fa2f0a05ba48905dab1c0ee95192bdc7937c` |
| 32 | `instance` | [algebra](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/algebra.md) | 335 | `declaration-track:84e7735b7a3c15fd3e465df1182e7ee367b245daeb1956819e380276f82a09a1` |
| 33 | `def` | [coeFnAlgHom](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/coefnalghom.md) | 345 | `declaration-track:37153670a770077839ba2f013bec1d00172ad0f778d3616bc59460c3b360a3be` |
| 34 | `instance` | [instSmul'](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/instsmul.md) | 366 | `declaration-track:8978333cab0a3bf9292e4b2fc72296ecb733255fbc9f134eb2989cb4e48ed09d` |
| 35 | `theorem` | [smul_comp'](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/smul-comp.md) | 372 | `result-track:b4486353cdba672b303ec1d2028af4fdc28a4c4753851ddee8155eddf99a0fc1` |
| 36 | `instance` | [module'](../../../../DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/declarations/module-source-edition-2.md) | 378 | `declaration-track:9c554ba0f55e450888d1f0dc76f2e70cae09f8486963f4dca819526c46703a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60e6ddfe98f99de0c1713278d35050769916ea951b31b4c1a905969b229d3f32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
