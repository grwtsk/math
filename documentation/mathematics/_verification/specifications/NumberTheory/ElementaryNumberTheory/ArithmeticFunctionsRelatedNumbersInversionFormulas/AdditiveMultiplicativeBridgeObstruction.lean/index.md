# Verification target: GRWTSK.NumberTheory.Moebius.AdditiveMultiplicativeBridgeObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e58dcdc996ba42a1598a3eb29860107dba9bcadf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e58dcdc996ba42a1598a3eb29860107dba9bcadf`.

Source path: `GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MobiusVonMangoldtCoefficientBridge`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CenteredAdditiveMobiusPair](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredadditivemobiuspair.md) | 17 | `declaration-track:8ddf248c594f0d114666bbdb92924e91cc0b5dc5841ddfb5caf735e620df8ba0` |
| 2 | `def` | [CenteredAdditiveMobiusPair.left](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredadditivemobiuspair-left.md) | 22 | `declaration-track:961d21406934a131771bddd4af5a6719bf707a9dbdd62502fc9393bdb2420cbc` |
| 3 | `def` | [CenteredAdditiveMobiusPair.right](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredadditivemobiuspair-right.md) | 25 | `declaration-track:4d4ccb5be13facead5882030375c4aa347f1c8ee6d2d189829cd1fed16651f95` |
| 4 | `def` | [CenteredAdditiveMobiusPair.center](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredadditivemobiuspair-center.md) | 28 | `declaration-track:49245ad21e16feb43a896195d8866ec921e42301fdae1bb2550f44d6d32f4c2f` |
| 5 | `def` | [CenteredAdditiveMobiusPair.coefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredadditivemobiuspair-coefficient.md) | 31 | `declaration-track:c645b5bdc14f3126bd45a55941e084f62fb1d0e3573784502ebdf5b4105adb62` |
| 6 | `structure` | [MobiusLogFactorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/mobiuslogfactorization.md) | 36 | `declaration-track:c878c7a8a07ada367576f5f9e8ee4afab374605007c75eb67bb979a4fce70ab4` |
| 7 | `def` | [MobiusLogFactorization.coefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/mobiuslogfactorization-coefficient.md) | 42 | `declaration-track:a150fcf2e006c662ac72156780a9ae81d50ad1d2676d4eb7c6b22a620885397d` |
| 8 | `inductive` | [ArithmeticCarrierGeometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/arithmeticcarriergeometry.md) | 47 | `declaration-track:0acf281ca194893499af29af1c5016ee273d48227d3b158b956775724d6a9ab9` |
| 9 | `def` | [centeredCarrierGeometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredcarriergeometry.md) | 52 | `declaration-track:c9a4c260c786216194b0a68a5244a86c7d63f6e66340dfe3c2c2a0d0b61054c5` |
| 10 | `def` | [vonMangoldtCarrierGeometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/vonmangoldtcarriergeometry.md) | 53 | `declaration-track:aa441d800a8c363c16e691628c35ac8dc47197ee6fcfc3b29387d48225713340` |
| 11 | `theorem` | [centeredCarrierGeometry_ne_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/centeredcarriergeometry-ne-vonmangoldt.md) | 55 | `result-track:6044cf8922196a280b38a68b6354b7a9ae30849a2c6db4db03942a6a8d15fd75` |
| 12 | `abbrev` | [AdditiveToMultiplicativeKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivetomultiplicativekernel.md) | 61 | `declaration-track:0b5f073dac7056f233b8fbfb3759c16e7639719e89e1dc7bba7f7f4b108925c4` |
| 13 | `def` | [additivePairKernelTransform](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivepairkerneltransform.md) | 65 | `declaration-track:23a34d513abdeda28cd27b7194b3d3b6ae1c05e96000c83a0a11bc7513f4ef43` |
| 14 | `def` | [AdditiveMultiplicativeCoefficientKernelExists](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivemultiplicativecoefficientkernelexists.md) | 74 | `declaration-track:12f67ed75aaa67048c10394092023d385266f7b34c2e0e1d90b5a29a2e674c03` |
| 15 | `def` | [AdditiveMultiplicativeNormControlledKernelExists](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivemultiplicativenormcontrolledkernelexists.md) | 82 | `declaration-track:e77bccc067da2bd965700953619f0f74f371258029bd673553779f41c7d02884` |
| 16 | `structure` | [AdditiveMultiplicativeBridgeObstructionSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivemultiplicativebridgeobstructionsourcedata.md) | 89 | `declaration-track:71c431bd935fc24128697521d55ce8e371c3cb1583d8a9539e178f656e6adf07` |
| 17 | `def` | [AdditiveMultiplicativeBridgeObstructionSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveMultiplicativeBridgeObstruction.lean/declarations/additivemultiplicativebridgeobstructionsource.md) | 100 | `declaration-track:239275b62019b5dbcd7c65533233d0277399da6d7ef39cf9d708114f1d06268c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f37b468c0c2a9a49b22725155a2aab391be987c8ccb64bd55efe9271f965a973 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
