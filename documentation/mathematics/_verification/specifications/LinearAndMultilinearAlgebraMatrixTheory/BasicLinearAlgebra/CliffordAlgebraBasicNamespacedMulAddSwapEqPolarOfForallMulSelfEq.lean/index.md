# Verification target: Clifford Algebra Basic Namespaced Mul Add Swap Eq Polar Of Forall Mul Self Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "822498aedc6b40dc464ef5e50d9d0d5818ee149a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant85328dd3ace459f23a52dc8ad352ae62fe4d6aae071c2969aeea7303a4006011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `822498aedc6b40dc464ef5e50d9d0d5818ee149a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant85328dd3ace459f23a52dc8ad352ae62fe4d6aae071c2969aeea7303a4006011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant85328dd3ace459f23a52dc8ad352ae62fe4d6aae071c2969aeea7303a4006011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.RingQuot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Isometry` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/rel.md) | 66 | `declaration-track:fb023d7694f73571c0cf2f3d51de6340106df1d389c663dfefef38af16b16d11` |
| 2 | `def` | [CliffordAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/cliffordalgebra.md) | 73 | `declaration-track:c80dbc8a9f922547a6e7486a79587931a0e87aecdfe276a015b9888b3893c027` |
| 3 | `instance` | [instInhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instinhabited.md) | 81 | `declaration-track:42a16c8747d59c7af20e62d80bef66b6588d66a241e0cae3bc8399a71e62ca34` |
| 4 | `instance` | [instRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instring.md) | 82 | `declaration-track:69831c2df3203b3e886859d921b9c76486c7563e676b367d866e124702c75bde` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:abed1f8597d215071831c6c55066cdd07adf49237c79eedd06e41b7cc9afd302` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/example-source-edition-2.md) | 92 | `declaration-track:dd9a965988c1c12f4c943a97517dff8f1eb406e710b76c191c3b00796e22f2d7` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/example.md) | 94 | `declaration-track:9fc60bac72f757ce8589c5322a35217a35a4d9554074af5f1b519460605d243a` |
| 8 | `instance` | [instAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instalgebra.md) | 97 | `declaration-track:cad303a5999121c0c1c905e3526231ab1e85ead6a44be09758bc8e6a745e8dc6` |
| 9 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:987e3f705bd71391882d3db7c0eee9d6c949faca08a5cee7fc946199940eb1c6` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/instance.md) | 105 | `declaration-track:1cc9b40a5ffe3a91052dea848107d1b259d6c4502acbe77ce50236c49d825e1e` |
| 11 | `def` | [ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/anonymous.md) | 113 | `declaration-track:40703dffe5162ea8b4c293606db3a2b32cda458dca039b15903a123410eefcd2` |
| 12 | `theorem` | [ι_sq_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/sq-scalar.md) | 118 | `result-track:95073d6d12b06e3d442aad8201a5aaf7afa0aad46cb31346128f3dde4e445195` |
| 13 | `theorem` | [comp_ι_sq_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/comp-sq-scalar.md) | 128 | `result-track:c278672881cef9e8b6e6eea25a789ea6438c21fc2d27de4b3ddf1c4785ccb771` |
| 14 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/lift.md) | 138 | `declaration-track:e7bfad350fd27ee32bae5f6970c6d5939d8048ab944f893a878f5e0d61d96cf1` |
| 15 | `theorem` | [ι_comp_lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/comp-lift.md) | 158 | `result-track:7efeafce9da2c2a0f9fdbb87f259bcea8ac7621147b3225d087810e26e70966f` |
| 16 | `theorem` | [lift_ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/lift-apply.md) | 163 | `result-track:9267b1ee39095f27c870549bdf6ec4dcd1fc95928ea35e6254a8804eff7e0bf9` |
| 17 | `theorem` | [lift_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/lift-unique.md) | 168 | `result-track:935111f8fa5d8deb23bcc19ab08f1c6b9125f6b24d71ee61784cc04ca89d6cf3` |
| 18 | `theorem` | [lift_comp_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/lift-comp.md) | 174 | `result-track:ba5e282f1dbd67d226886308a2ba64bd4bbe3cae648f4339b0d3eade3fc23bb5` |
| 19 | `theorem` | [hom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/hom-ext.md) | 180 | `result-track:deec41f4297f7d30576f268f550b9a66bbd1e73bdc2a901802f98a634a476a3e` |
| 20 | `theorem` | [induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/induction.md) | 194 | `result-track:95b5dc534f319798f90e4cbedc2b79ad39f0147f3d5080d4c3b71dfa5b4004fd` |
| 21 | `theorem` | [mul_add_swap_eq_polar_of_forall_mul_self_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-add-swap-eq-polar-of-forall-mul-self-eq.md) | 218 | `result-track:2a0ebf444cb9894597c850214d234d8adb67ca5d78ffaae59702f0941e3a0347` |
| 22 | `theorem` | [forall_mul_self_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/forall-mul-self-eq-iff.md) | 233 | `result-track:a5e010ad1ae79d6657513352c30376cb4c74eec21ae1d563bd5aba7cfa86863e` |
| 23 | `theorem` | [ι_mul_ι_add_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-add-swap.md) | 245 | `result-track:81f6cb53d1e9b2ceb35895496360120fd64a8bf1ad7c56854f25452779df46c2` |
| 24 | `theorem` | [ι_mul_ι_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-comm.md) | 249 | `result-track:091d8751ad819ba96151fd45c96c24c8d9ead259000a459bafaf2f0588aff34d` |
| 25 | `theorem` | [ι_mul_ι_add_swap_of_isOrtho](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-add-swap-of-isortho.md) | 255 | `result-track:802a23ad475973f1b6c57fb6a14fbceb06e4e78be1e8c29401e8500d541ff95c` |
| 26 | `theorem` | [ι_mul_ι_comm_of_isOrtho](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-comm-of-isortho.md) | 260 | `result-track:50fc17e0b163d23f929b88e48b54db33926d6890043f0efc07233f197293821d` |
| 27 | `theorem` | [mul_ι_mul_ι_of_isOrtho](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-mul-of-isortho-source-edition-2.md) | 264 | `result-track:4ced9cda2c2f6769557beada7138799c5f73bf1f999746de50633dd078da8d81` |
| 28 | `theorem` | [ι_mul_ι_mul_of_isOrtho](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-mul-of-isortho.md) | 268 | `result-track:3ae40e3aeeb21423fcfd275e104af6dc97ca8a8ee1abf2ef9b0aa912bd1914b1` |
| 29 | `theorem` | [ι_mul_ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/mul-mul.md) | 275 | `result-track:76eb6cc0203512aa82973bc20da31b67ad8b8ca7cc14388cacee2098e9356eb8` |
| 30 | `theorem` | [ι_range_map_lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/range-map-lift.md) | 281 | `result-track:58935339219b768b42d5bd54a83cfa013c791c9b0ace819b7558e686184ad6f6` |
| 31 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map.md) | 295 | `declaration-track:c480d97e9a59a0fae7048bc31fcc0c70f47f0d4a3415158ffa02c018cecbc86d` |
| 32 | `theorem` | [map_comp_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map-comp.md) | 301 | `result-track:b64eb0208fde697378c3122a78199a4620f819b0ade46b6ed1f76392936a998e` |
| 33 | `theorem` | [map_apply_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map-apply.md) | 306 | `result-track:e51ac359e20d79f84c2269eacb1ad018a40e578cda34bcc150b87e205ad9b462` |
| 34 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map-id.md) | 311 | `result-track:4cabd3d1aea4f2006b247b561668de7bc4536e546464eebef57872ddf289db12` |
| 35 | `theorem` | [map_comp_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map-comp-map.md) | 315 | `result-track:3c6e1b01177d55a7d9abfdc010c7809a9a4566afa379b8c71508f2aa01efb39c` |
| 36 | `theorem` | [ι_range_map_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/range-map-map.md) | 322 | `result-track:f20c1ffd59f24b4ba0d5b1f91e659e4711a798f2f81db65f9105056b5892cc1d` |
| 37 | `lemma` | [leftInverse_map_of_leftInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/leftinverse-map-of-leftinverse.md) | 330 | `result-track:027fe0453f36f814d42779222c8d1ac4feedbeb710fe1dc678ad917f87c0ef48` |
| 38 | `lemma` | [map_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/map-surjective.md) | 338 | `result-track:6b8e2c4a20dc7ff23f83851ac562b2e6666c085b9b9ea214967e89d08bbae6ea` |
| 39 | `def` | [equivOfIsometry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/equivofisometry.md) | 349 | `declaration-track:731f5f12b7a1c481156770e29d63bc94b8cc3af6bc1b9f0974b09b7ee1945e0a` |
| 40 | `theorem` | [equivOfIsometry_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/equivofisometry-symm.md) | 361 | `result-track:c1e529d4ab26501318e43440e33e5195fe7944dee66f30a48dd65049e70a34dd` |
| 41 | `theorem` | [equivOfIsometry_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/equivofisometry-trans.md) | 366 | `result-track:7b492726f83841c54615a9b17aeb3675d4c15ad8eea1a3aafad268727c0d19c6` |
| 42 | `theorem` | [equivOfIsometry_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/equivofisometry-refl.md) | 372 | `result-track:4c7b35bab5da52ad6e9f985edb1f420bcffbe6e2ec2a685a50a19f69c1b25f0f` |
| 43 | `def` | [toClifford](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/toclifford-source-edition-2.md) | 387 | `declaration-track:5458171ab0e5ee9e9c6f2bba099073dd5d98bb5bb223ca7f6e151deb7a42745d` |
| 44 | `theorem` | [toClifford_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraBasicNamespacedMulAddSwapEqPolarOfForallMulSelfEq.lean/declarations/toclifford.md) | 391 | `result-track:48a57baf9608b41488a4e38c80bbe868e398fc9687687185abd1cde97372db8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59430bd6d2381b5eb2f9fc2f0c2ab9ed4e32d62ef3239864c23537582db0747d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant85328dd3ace459f23a52dc8ad352ae62fe4d6aae071c2969aeea7303a4006011.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant85328dd3ace459f23a52dc8ad352ae62fe4d6aae071c2969aeea7303a4006011.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
