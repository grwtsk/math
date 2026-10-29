# Verification target: Equivs Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65ea0d047b84f7c1ea409024bfbf24fdda4c019",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65ea0d047b84f7c1ea409024bfbf24fdda4c019`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuaternionBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Star` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ι_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/eq-zero.md) | 83 | `result-track:94b4c4fd08b54d71675da7d5dc596830287313bf84f729f91371cfe86a54b30e` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/instance.md) | 88 | `declaration-track:0a52a7662aca8a0fc61127de75eec0379b5481e8995dbe27139280d466e961f4` |
| 3 | `theorem` | [reverse_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/reverse-apply-source-edition-2.md) | 98 | `result-track:7977285c93752237c6f5cee1540471ee3b610ce57dad803c1bc716c1882b5410` |
| 4 | `theorem` | [reverse_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/reverse-eq-id.md) | 108 | `result-track:b0ce331db4965b0c52ca85115ac679c0bc95565c0d3da58c6109d8ee50b6fe67` |
| 5 | `theorem` | [involute_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/involute-eq-id.md) | 114 | `result-track:259addab708574d6c263a865a9049ac48a6b37130ab507606c0437aec25f5456` |
| 6 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv-source-edition-4.md) | 119 | `declaration-track:7111eae8f1af847e3eac2185e36662c3803eb7b7284add34657020e5863d8dec` |
| 7 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/q-source-edition-2.md) | 137 | `declaration-track:fbd17e7d0b2040d5fe14d043c792a222891a57c9f3645aac68aca81ca36d6770` |
| 8 | `theorem` | [Q_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/q-apply-source-edition-2.md) | 143 | `result-track:d05fa1fbb1fd3dac3467028d287eac075d0dfcdd0434e5760f7c86fc9b40af60` |
| 9 | `def` | [toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/tocomplex.md) | 150 | `declaration-track:27063ba27693e4e8d2fc73e22132730a9c3d381d3bb08f34e78bf68bfbd333d8` |
| 10 | `theorem` | [toComplex_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/tocomplex-source-edition-2.md) | 159 | `result-track:665c4743104cda54bde22203191687d7f0e298c2e8157ab3a839fabd7dd9d9e4` |
| 11 | `theorem` | [toComplex_involute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/tocomplex-involute.md) | 165 | `result-track:edc5c5787a0c90ef67fe44880d0fe52642acff65ab6427f169d534b2b20bc025` |
| 12 | `def` | [ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofcomplex.md) | 177 | `declaration-track:4499a8444d275f9c4771ea897e8a7189aabcc8f5c039892cd9825f7c32670e44` |
| 13 | `theorem` | [ofComplex_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofcomplex-i.md) | 184 | `result-track:738d726643c21f24fabc187ca3ae62d732ba1aac4abbc1fe5a9052b006529654` |
| 14 | `theorem` | [toComplex_comp_ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/tocomplex-comp-ofcomplex.md) | 190 | `result-track:775a43c13568546a90103616a2ed0cbcd653a2abdd3907ed27dcbdf1479228b9` |
| 15 | `theorem` | [toComplex_ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/tocomplex-ofcomplex.md) | 197 | `result-track:00d1007940081e17c0d4757c5b736b4e2602d4cadedf5577138bfb9ad788da7f` |
| 16 | `theorem` | [ofComplex_comp_toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofcomplex-comp-tocomplex.md) | 202 | `result-track:d3288cfc3423e9e3e656296a92b20f580d98cd5acad5a25d6e714b4353c0efe9` |
| 17 | `theorem` | [ofComplex_toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofcomplex-tocomplex.md) | 210 | `result-track:932453a929f1543e830e7bba1a66f0ad5fd036f8488a44cb671968bd203e7a36` |
| 18 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv.md) | 216 | `declaration-track:1a72861641fd291960ef3dfcaaf49beae570697df8d3dda4200f6dc548d7faae` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 223 | `declaration-track:e575ba33ed6ef3c28a3df24b7bb49d54d8a485abf777a94e135ee9a98473315b` |
| 20 | `theorem` | [reverse_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/reverse-apply.md) | 231 | `result-track:5d8014ad5cfef180bb28d8a5e736e4aac4853d8a296862b024bbd379c1ee66c3` |
| 21 | `theorem` | [reverse_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/reverse-eq-id-source-edition-2.md) | 240 | `result-track:b982ef5e1b3ce6aaa9ddabec4a307aa2d96e6b17a4621e00fea4fba43d4b8f75` |
| 22 | `theorem` | [ofComplex_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofcomplex-conj.md) | 246 | `result-track:0c0c9261910c3acc72163b94cdc67bc5c5107e2d9fbf4b3ace8f9aec368e90d9` |
| 23 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/q.md) | 269 | `declaration-track:b1077e0c20a89584de8bd2349e14a117eff2a92993dad78f086aa6435a8573fe` |
| 24 | `theorem` | [Q_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/q-apply.md) | 275 | `result-track:4bbea31a5fbca90fcbd46e3ff1f939ba1f7a3b709aaa76956ad1838b3825c244` |
| 25 | `def` | [quaternionBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/quaternionbasis.md) | 282 | `declaration-track:383e6083c4804ccfacccadcd879b684c219fa0e1e7054e782d6c9e291756c9fb` |
| 26 | `def` | [toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/toquaternion-source-edition-2.md) | 302 | `declaration-track:c341d3b7cd3dc6286e11c763f7b6995756529839e6799f55d20b159fec1c8d3f` |
| 27 | `theorem` | [toQuaternion_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/toquaternion.md) | 313 | `result-track:9a4dcbc891a2afa7c76d31fef6735dce2e2fea10d82ac12b22b9032eb5dda5af` |
| 28 | `theorem` | [toQuaternion_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/toquaternion-star.md) | 319 | `result-track:29fa1f7117e9364782819733c0b98e8b8bed47b72699f923afaff292fb724c06` |
| 29 | `def` | [ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofquaternion.md) | 334 | `declaration-track:1aa38678d9bd085213978e2a0838d820daac5662fe9e16c36d2c6e681848e79d` |
| 30 | `theorem` | [ofQuaternion_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofquaternion-mk.md) | 339 | `result-track:67aa7648730f06e4a90717fbfcaa7d39bf679af28695e34011f2476bd0a7bb28` |
| 31 | `theorem` | [ofQuaternion_comp_toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofquaternion-comp-toquaternion.md) | 347 | `result-track:d9342780ac26a0bcd8bcc4b53ca0aa8a051a43c031aaf8025bb3a0c2cffd439a` |
| 32 | `theorem` | [ofQuaternion_toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofquaternion-toquaternion.md) | 360 | `result-track:16761a3d2caefe9f176a60573cfbce11d4819c7e67e02dc1d4cd9608662402f9` |
| 33 | `theorem` | [toQuaternion_comp_ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/toquaternion-comp-ofquaternion.md) | 366 | `result-track:3b308b433746a41be63564e724521e165b210b859522acf848672cd1b452ce97` |
| 34 | `theorem` | [toQuaternion_ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/toquaternion-ofquaternion.md) | 373 | `result-track:83f4234442b45a4843ff8fcf7f71631b454f4b04393b2b9e09ec4ccbdb34f894` |
| 35 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv-source-edition-2.md) | 380 | `declaration-track:28a419fcda241d0bfd14f0976eb885684b34d3e6c44c52718eacf8d187b64e64` |
| 36 | `theorem` | [ofQuaternion_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/ofquaternion-star.md) | 387 | `result-track:62a8fa270863b57223bb4106dc7b6cfb92627dc11219070ccbb4647f912958c4` |
| 37 | `theorem` | [ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/mul.md) | 409 | `result-track:28c21e1c48db76918480c340b1d1349554dbff93a8adc9cde00396128b8aa503` |
| 38 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv-source-edition-3.md) | 417 | `declaration-track:45f754f95d4b9009ea89fc8d61a4fa5f62b7b5f9872f8bf86134ed918022bb2c` |
| 39 | `theorem` | [equiv_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv-source-edition-5.md) | 426 | `result-track:fa9bd4007336384c464e031caecec68f6c6887cca518b383ebed7656183fdcc2` |
| 40 | `theorem` | [equiv_symm_eps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespacedAligned.lean/declarations/equiv-symm-eps.md) | 431 | `result-track:1ad02f32ecf2f197cf115dd530388efcf0fb26f96b4478c55dad497c54609927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d1d275e4b74d882d098c9409e4eac4bfe3ca26dd08cd3ffbd09e79ec1fcae02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
