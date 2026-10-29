# Verification target: Maximal Ideal Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d2c66a046287b84380312c6ec7687b5f65ee24",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d2c66a046287b84380312c6ec7687b5f65ee24`.

Source path: `GRWTSK/Algebra/Basic/Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7.lean.json)

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
| 1 | `theorem` | [mem_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/mem-maximalideal.md) | 31 | `result-track:2d864fc4472b5648072950b1aa8631a0ba3bb2517162d33d1f396383121a865f` |
| 2 | `instance` | [maximalIdeal.isMaximal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/maximalideal-ismaximal.md) | 36 | `declaration-track:b1e99f615e51b3b64e211fd32e5f9ea9dae405d4a65a886deee9585d2151de40` |
| 3 | `theorem` | [isMaximal_iff](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/ismaximal-iff.md) | 47 | `result-track:c9f48b51525f997adb0c0889625669d68d2cb3e0b19204ab02997400d104256d` |
| 4 | `theorem` | [maximal_ideal_unique](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/maximal-ideal-unique.md) | 51 | `result-track:dbf80b5bd887daf6b35b0bbd0ab375e4e62c55beb0574272b5d8341e607b4a60` |
| 5 | `theorem` | [eq_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/eq-maximalideal.md) | 56 | `result-track:1fd3ffa453b0e9843a3ada1c3907c4d53034dd130eadba590c93836b5b4a68e1` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/instance.md) | 60 | `declaration-track:97f88408322b34a81c9eb879ae32e46f218386ade355b6d748c77977309a6968` |
| 7 | `theorem` | [of_singleton_maximalSpectrum](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/of-singleton-maximalspectrum.md) | 66 | `result-track:157d5f27a9ce4bec45620936c71ae124655b3f98ffe85080a6e7479c3a3cb011` |
| 8 | `theorem` | [le_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/le-maximalideal.md) | 72 | `result-track:21ffb461f7c701f6f6f16afb54e94e54243cd442fb215b48774da9d3e68af416` |
| 9 | `theorem` | [le_maximalIdeal_of_isPrime](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/le-maximalideal-of-isprime.md) | 76 | `result-track:6081a24bff0226722dcb576546f83b1d69337e57e191c48ac746625d77ed5f8a` |
| 10 | `theorem` | [notMem_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/notmem-maximalideal.md) | 83 | `result-track:0395d4543db1a6de407e2e7a529fd261bdab77ca5723fb7b010817fd26bd73db` |
| 11 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/isfield-iff-maximalideal-eq.md) | 86 | `result-track:f4e10ceb68868f18e30a8d14cd75e99cd2aba0e6b3998df3f9787226945d4972` |
| 12 | `theorem` | [maximalIdeal_le_jacobson](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/maximalideal-le-jacobson.md) | 97 | `result-track:27efa9850964b9b56b5298dfd7b845881979faced2697c2abbda63cc77b88d9e` |
| 13 | `theorem` | [jacobson_eq_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/jacobson-eq-maximalideal.md) | 101 | `result-track:813e00fc461a4f1c1cb16279e9b22bee4aa65390e242bb6a6b447bd14d722ad1` |
| 14 | `theorem` | [ringJacobson_eq_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/ringjacobson-eq-maximalideal.md) | 107 | `result-track:fa843190d94cec41ddf01fa6039c63890f133500ee63b6f15176637c99a7b841` |
| 15 | `theorem` | [ker_eq_maximalIdeal](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/ker-eq-maximalideal.md) | 116 | `result-track:61c199ddd5ee12de8e33a8fe945a7bbeecb7ac7773c433845e6d3f732da2f55c` |
| 16 | `theorem` | [maximalIdeal_eq_bot](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/maximalideal-eq-bot.md) | 122 | `result-track:dc9fa0b29e0b0ac3ec4f62f82e410c4c4ab699145fa62069f4927f7dfd93fbc0` |
| 17 | `lemma` | [Subsemiring.isLocalRing_of_unit](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/subsemiring-islocalring-of-unit.md) | 127 | `result-track:d39b5a5630fbedbf9c2109373170a04343fa221aa363c9ded4075d80a76c1b01` |
| 18 | `lemma` | [Subring.isLocalRing_of_unit](../../../../CommutativeAlgebra/MaximalIdealBasicPublic.lean/declarations/subring-islocalring-of-unit.md) | 134 | `result-track:a5ef3c58d40f32eb095f30351a7c3989d682ff6d9d5413536b419c195e655cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2b9975330a0f60b3b7e225a4e84d400f7507b252e35964a656ec11725e15260 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
