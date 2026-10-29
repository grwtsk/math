# Verification target: Core Namespaced Binary Logic Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49e7e4255b33d799e278708d38ec24cfcbfb81de",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49e7e4255b33d799e278708d38ec24cfcbfb81de`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean.json)

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
| 1 | `abbrev` | [Matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/matrix.md) | 11 | `declaration-track:a3529bdb2c4128d3b9890425b97846e6fe181270f20fb8f4db3f336ebe8a4222` |
| 2 | `structure` | [BinaryLogicMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/binarylogicmatrix.md) | 13 | `declaration-track:e935c0f868bfed57c6f35477cb39f2209512e9c794e582cddf201a3b936300a7` |
| 3 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/ext.md) | 19 | `result-track:46891634e7186d0d66e3dde7cdc4416f5ba04e345a6dfe1d2c522486fc0205e4` |
| 4 | `theorem` | [blm_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/blm-ext.md) | 30 | `result-track:871adb25af8e9996a7eeb1d5c5b067d08f16b8b56e6233e0d3968c897cc6f07b` |
| 5 | `def` | [get](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/get.md) | 36 | `declaration-track:8a15a3ad8e0bc54bab4815b94f54f2509ea7016b734d0632f4ea278af2ec6e56` |
| 6 | `def` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/zero.md) | 39 | `declaration-track:f8d1b34b0242661f883642fadd49b3e32016e9b5774b155c87bdf95944d630ca` |
| 7 | `def` | [identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/identity.md) | 42 | `declaration-track:cc4dcf591ce535c960df01b2dfe22f7b2376712658a1c7bbf52617bd0b9ff2cc` |
| 8 | `def` | [set](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/set.md) | 45 | `declaration-track:2b306017d0aa47ae42e11c0c6dc0b30ab9d30310d0fc368aa4bcfcbaf8ab5cb5` |
| 9 | `def` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/transpose.md) | 53 | `declaration-track:295fe1f89e277a97b375c2be683c5dd521300d875e15721a603f1b6671d3af87` |
| 10 | `def` | [xorAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/xoradd.md) | 56 | `declaration-track:59f74f704354eeac88b7dcf4bfd8cad0ade42c28f81f649494d2dc62647d0cdd` |
| 11 | `def` | [boolAnd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/booland.md) | 59 | `declaration-track:ce412a6884cf51b346fc3c4a82075be66b9955d5f995136fb8fe75fdc01d75f3` |
| 12 | `def` | [boolOr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/boolor.md) | 62 | `declaration-track:65889b0992ed6740ef37e30347e7e28b540408ff554fcafa80184f9cd2dbc032` |
| 13 | `def` | [boolNot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/boolnot.md) | 65 | `declaration-track:1dacb3c65fce09bc5215026e02c388267cb6c06c0ad94c3b8f3b16a12c69bdb6` |
| 14 | `def` | [pointwiseEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/pointwiseeq.md) | 68 | `declaration-track:9a5542d7f4746953fc33a45578119f5cc9c78f0937cf220e63379388fd6b727b` |
| 15 | `def` | [pointwiseComparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/pointwisecomparison.md) | 71 | `declaration-track:f6df9ef1ffb854e2aa6bb3bd4a81d836684fd95b5e8fd115740d8d5e4c8f4933` |
| 16 | `def` | [rowMajorBits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/rowmajorbits.md) | 74 | `declaration-track:18fa48f9de61d7af57d51fa2e0bb58816ef75f42ca1973d5bc39f3e2762a3875` |
| 17 | `def` | [finiteSupport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/finitesupport.md) | 78 | `declaration-track:deccb96688c202cef4c562488e80a7c73bee738574d913c96fabddc44f0fa003` |
| 18 | `def` | [countTrue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/counttrue.md) | 83 | `declaration-track:4f360dcc003400a6039b9692b4fde74153137b7fa357ab22d548d476d57c360d` |
| 19 | `def` | [fromBoolList](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/fromboollist.md) | 86 | `declaration-track:2b68179dd8eea5ff6c0499a66c6333564a9628dd6edd3c1513c78a0e835fd8fc` |
| 20 | `def` | [relComp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/relcomp.md) | 89 | `declaration-track:fe7f78fce908b41d923c87e973c06a2e34d14ef003ce7ecac1a8c278f105fa77` |
| 21 | `def` | [gf2Mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/gf2mul.md) | 94 | `declaration-track:452347417b3509c31d861e0a575f3c26eefaf1ca5bc780c5697bb307e2e8bed2` |
| 22 | `theorem` | [get_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/get-zero.md) | 99 | `result-track:5729e07f56b8a28048280ca0fa9f6b6ad7509dc0388ba3c4e85ab1e68488e48d` |
| 23 | `theorem` | [get_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/get-transpose.md) | 104 | `result-track:a0674e2aa82b320960b50a4b84fed129f90bc6c46638ae6896254dc536740fa9` |
| 24 | `theorem` | [get_set_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/get-set-same.md) | 109 | `result-track:34ea2a1389175c26376168d11efe72db23d9f174f54bc6c1a58e7583053eff81` |
| 25 | `theorem` | [countTrue_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/counttrue-nonneg.md) | 114 | `result-track:5b0d7950c957600236d09258f4825c108a2a0865be77d6861caf6f95ee77f9b3` |
| 26 | `theorem` | [countTrue_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/counttrue-zero.md) | 118 | `result-track:10a5f79a071a8cdeac02d121e02421db490b26d82e80d6bd7c3b8d3a9501b7a8` |
| 27 | `theorem` | [transpose_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/transpose-transpose.md) | 122 | `result-track:535749367eb2672442546f855be2d18f8a26ab3cd4a50d34ea59e6d60de6fa19` |
| 28 | `theorem` | [boolOr_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/boolor-comm.md) | 128 | `result-track:ccaedcf457aa7d6d7a2f59a3285b94aa5218b9d05ca101f3c6ab7d079371a6fe` |
| 29 | `theorem` | [boolAnd_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/booland-comm.md) | 135 | `result-track:0533a1fe36ccdc6ac5309d753813e5a563808d5b1a5bcde56145dcc01d958e99` |
| 30 | `theorem` | [xorAdd_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/xoradd-comm.md) | 142 | `result-track:0784332f8960b62fcea7f5015c76431a3112c492d556230f0183ae703aa23846` |
| 31 | `theorem` | [rowMajor_length](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CoreNamespacedBinaryLogicMatrix.lean/declarations/rowmajor-length.md) | 149 | `result-track:b24f132b192597a07a6ad40ee76a3fa3f900b83d575f71dac80f260be5a32562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3efe7c004f89b77f706f93581244555b82e6cc35959f2ce7b5f4faa4b1045f21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
