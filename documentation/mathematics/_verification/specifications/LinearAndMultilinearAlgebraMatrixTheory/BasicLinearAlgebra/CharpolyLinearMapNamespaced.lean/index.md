# Verification target: Charpoly Linear Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18344bb3ddd4d735d9ac3c4543516bde4203ea62",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant3cec85110754f3b4f228d632e84649aa72c78791a4579c6a87d1b3e4731e7fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18344bb3ddd4d735d9ac3c4543516bde4203ea62`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant3cec85110754f3b4f228d632e84649aa72c78791a4579c6a87d1b3e4731e7fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant3cec85110754f3b4f228d632e84649aa72c78791a4579c6a87d1b3e4731e7fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PiToModule.fromMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-frommatrix.md) | 40 | `declaration-track:ba2f1e7b84cc506bf6e0125bfae8e5315ae6acaa3c9c54f895b50f8ed4c5a4fa` |
| 2 | `theorem` | [PiToModule.fromMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-frommatrix-apply.md) | 43 | `result-track:d9b16ba90a3903be960190e3877d9132343c6c56d1aef9f89615fc88e8101cce` |
| 3 | `theorem` | [PiToModule.fromMatrix_apply_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-frommatrix-apply-single-one.md) | 47 | `result-track:21f4e58644538a00139b389bdf5af1662f19d251f72bd6bb229278699d486467` |
| 4 | `def` | [PiToModule.fromEnd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-fromend.md) | 54 | `declaration-track:05c79cace33550e1198b199df6463ed19a9062af51206c5e8a33d19e22c43fb3` |
| 5 | `theorem` | [PiToModule.fromEnd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-fromend-apply.md) | 57 | `result-track:b61dac6328ac20f26516d0cfb95a4d5949032fc605c4e639de4a5b636ca5bf3b` |
| 6 | `theorem` | [PiToModule.fromEnd_apply_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-fromend-apply-single-one.md) | 61 | `result-track:3b42aa79455aa0f025b745bdd6fc15e00b4df0e6c8f5911627b317cce3e820c4` |
| 7 | `theorem` | [PiToModule.fromEnd_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/pitomodule-fromend-injective.md) | 65 | `result-track:997a97d138543cbf279c15582b9cf55ecd4b7380b632ec8ee6fa79b8f1f4c900` |
| 8 | `def` | [Matrix.Represents](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents.md) | 80 | `declaration-track:62138784d0cc69d6a4bf95559b105200119d7c42e3ca28c765389f5467c0f2ae` |
| 9 | `theorem` | [Matrix.Represents.congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-congr-fun.md) | 85 | `result-track:75e43d8c7f848d5369c90963dce857a61c08d7dbc43d78f467742d799ce82111` |
| 10 | `theorem` | [Matrix.represents_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-iff.md) | 89 | `result-track:1e8b67b7518cfa274813a1acb71f3cfc5cc00c9f15150a3776518f801cd1dac0` |
| 11 | `theorem` | [Matrix.represents_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-iff-source-edition-2.md) | 94 | `result-track:b655efc54677818fab6ccecdfdca4105746da1331709f457ce281b07d73600a3` |
| 12 | `theorem` | [Matrix.Represents.mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-mul.md) | 106 | `result-track:89c800cf8d10422473fe1ba4e5ef97798a339bc936f173b743af6af428c099ab` |
| 13 | `theorem` | [Matrix.Represents.one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-one.md) | 115 | `result-track:f66cd27835fd6908f9165f51a9bb43a36fa2b175d1f46cb11c7c5c534a0b0774` |
| 14 | `theorem` | [Matrix.Represents.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-add.md) | 121 | `result-track:7f689edf16afc0bdda9eec16da80a32ac3871ee5e41fc1be9e99351c17e53e89` |
| 15 | `theorem` | [Matrix.Represents.zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-zero.md) | 125 | `result-track:e8230cb8acdfa3e38c2e684528fe94888b6a6f2581bea88c5ed03ca1229ffb68` |
| 16 | `theorem` | [Matrix.Represents.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-smul.md) | 129 | `result-track:a26ec4b6bdd41949e6ed335ef4f463ad096430533fe157d3aef3808d21c04ba1` |
| 17 | `theorem` | [Matrix.Represents.algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-algebramap.md) | 134 | `result-track:fd3f9b5999098f308507bc1c7e36f58084c33bdf9678fe20270d23f1659a47b3` |
| 18 | `theorem` | [Matrix.Represents.eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-represents-eq.md) | 138 | `result-track:18081df9fc2a96783f6469b7388768809ad94883ac290234658a66a626990ef5` |
| 19 | `def` | [Matrix.isRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation.md) | 147 | `declaration-track:88481697f7273327538019159225302808448a8f88a12bdb5b5d67308fafdc04` |
| 20 | `def` | [Matrix.isRepresentation.toEnd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation-toend.md) | 159 | `declaration-track:94b668ea85b143b79b4bd8dd670095a2a5c4211694ed542022e7bfa92d4c43f7` |
| 21 | `theorem` | [Matrix.isRepresentation.toEnd_represents](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation-toend-represents.md) | 169 | `result-track:356746d0ef78671aac8935e854da886f494e120033098b00b4acd159c50f9dcf` |
| 22 | `theorem` | [Matrix.isRepresentation.eq_toEnd_of_represents](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation-eq-toend-of-represents.md) | 173 | `result-track:1409ebf4f2315926fb9cf0d4a4ddb2f94a371ba836ad3c8be0be2db7933a2c4c` |
| 23 | `theorem` | [Matrix.isRepresentation.toEnd_exists_mem_ideal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation-toend-exists-mem-ideal.md) | 178 | `result-track:4e672935f268b9200d4fc0efff7220a716517b64d219ad91782e18517ab29d7b` |
| 24 | `theorem` | [Matrix.isRepresentation.toEnd_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/matrix-isrepresentation-toend-surjective.md) | 196 | `result-track:4db690f390028d113c9d11050f60194e0b5fd83651c9197567e44b2743d5aedd` |
| 25 | `theorem` | [LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s.md) | 211 | `result-track:579b3e44c2ea187bc595591e5bfe1c5bab1684cfcdedafd410a3b9f643aeb8ff` |
| 26 | `theorem` | [LinearMap.exists_monic_and_aeval_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMapNamespaced.lean/declarations/linearmap-exists-monic-and-aeval-eq-zero.md) | 231 | `result-track:3887eedd72ddeac9d1a9e8f1f704cb8ba4df36c78a63a2ca5b0979432109a980` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=117924e8b7b6ccca06c689a7cc9ef571cec041afd0dbe9a364869ec514410587 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant3cec85110754f3b4f228d632e84649aa72c78791a4579c6a87d1b3e4731e7fac.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearMap/Variant3cec85110754f3b4f228d632e84649aa72c78791a4579c6a87d1b3e4731e7fac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
