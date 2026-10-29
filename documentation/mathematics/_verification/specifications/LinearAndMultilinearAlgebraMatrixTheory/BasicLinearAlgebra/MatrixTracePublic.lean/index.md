# Verification target: Matrix Trace Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a56896c81302543b7c1e84cd6937ceb00ea54332",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a56896c81302543b7c1e84cd6937ceb00ea54332`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.lean.json)

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
| 1 | `def` | [trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace.md) | 45 | `declaration-track:e02396a0405992ace288bd0fbfc66822e2c8cad28d946d26a85b04c7cfbf2dfb` |
| 2 | `lemma` | [trace_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-diagonal.md) | 48 | `result-track:571834a2c711d2a514d043d62f556877f91d6740e9387e8d91e4d399c0cc9c4f` |
| 3 | `theorem` | [trace_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-zero.md) | 55 | `result-track:96580cb5573f47b28481e117640d38c0df4097a2a24b541c2495771d7de4e508` |
| 4 | `lemma` | [trace_eq_zero_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-eq-zero-of-isempty.md) | 61 | `result-track:57e837a818c34a86f28e6b5a8a9e5438d3b709f424ddd44823a6bf87f1c8cf1d` |
| 5 | `theorem` | [trace_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-add.md) | 64 | `result-track:da68c9e434973601687965650e556e7901fb3aa25d7178954eee7427cfcfab1d` |
| 6 | `theorem` | [trace_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-smul.md) | 68 | `result-track:a71f27a1a3a5e7db2aeada837d0e01e5ad42371438a3766bb62879ed6c8165ce` |
| 7 | `theorem` | [trace_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-transpose.md) | 73 | `result-track:3622db5189bab6fb63f335b6eb661155ecb6c1b3f81823f4d445691339ba3db8` |
| 8 | `theorem` | [trace_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-conjtranspose.md) | 77 | `result-track:998bab396cfc0ce65e9f32f098d4ab5aab456534cd9f83b4b1b6a02fd8b2e583` |
| 9 | `def` | [traceAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/traceaddmonoidhom.md) | 84 | `declaration-track:6ae283b855b8c81a95947fef5be3435aa359f50fe52e3fc083142fc7ddf157e6` |
| 10 | `def` | [traceLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/tracelinearmap.md) | 91 | `declaration-track:7a5de18c84ae9482883acc0212572d8a6fb4e21b907288e7fdedfa45cc07c51c` |
| 11 | `theorem` | [trace_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-list-sum.md) | 99 | `result-track:3aec350bb91579c39c81b1564093882081593124bbf4c7bbdfbd96c4183c4b32` |
| 12 | `theorem` | [trace_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-multiset-sum.md) | 103 | `result-track:cde5b70b9ace8d61c220b65946f3c711e90c4357f607f5f0d092d7e4eda193d0` |
| 13 | `theorem` | [trace_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-sum.md) | 107 | `result-track:3086fcb409aa9b6ad5b084a64dec1e9484a516dde661ab7a5d203d944cc10fc7` |
| 14 | `theorem` | [_root_.AddMonoidHom.map_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/root-addmonoidhom-map-trace.md) | 111 | `result-track:79cc8567413ad704532e87f5eacf7298815ab8a9d0005d0d2f087c068f489886` |
| 15 | `lemma` | [trace_blockDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-blockdiagonal.md) | 116 | `result-track:b08facc2032486d4fd0e89f02296f49d692a0fd760666b11a4b36827dcc1843e` |
| 16 | `lemma` | [trace_blockDiagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-blockdiagonal-source-edition-2.md) | 120 | `result-track:c0c56e3f5c4e16a643dbbc57c48ec5cf7ce3e64affd532057182db46732fa7ce` |
| 17 | `theorem` | [trace_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-sub.md) | 132 | `result-track:050c918cb3f024d0d920a6629957f053c51049ed998d9a828ff33c5eebf57dea` |
| 18 | `theorem` | [trace_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-neg.md) | 136 | `result-track:9181e4e0749a7ff01189c38f98265efcad6b43bf8b2f073d930e4a4cb2eb5f1d` |
| 19 | `theorem` | [trace_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-one.md) | 146 | `result-track:79357d27f7b52318d4d6613d2e5a58a7ec07397fa4bc3f7230418a2653222375` |
| 20 | `theorem` | [trace_transpose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-transpose-mul.md) | 154 | `result-track:47d57bb3d6e86ad2f29e54e9d8a5029d86465e7fd6042c0ef25461a3116a92cf` |
| 21 | `theorem` | [trace_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-mul-comm.md) | 158 | `result-track:f59b92a89c92ad0b4c313692f1138e3f4be0f345d6bb0ee72c0a51be7d1dec00` |
| 22 | `theorem` | [trace_mul_cycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-mul-cycle.md) | 161 | `result-track:1f1ac9b8ff37f02e394f0876342437c9f24d092704cb6cd6115ee66669d47641` |
| 23 | `theorem` | [trace_mul_cycle'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-mul-cycle-source-edition-2.md) | 165 | `result-track:9ca2f1069a64be094b0e9878d272040ceee2dc42fbbb1b8401e73fea244913a7` |
| 24 | `theorem` | [trace_replicateCol_mul_replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-replicatecol-mul-replicaterow.md) | 170 | `result-track:70fcbb4454b2938d28280a3604d6d5d8387d9ab00550ba2abb8136ca416ff927` |
| 25 | `theorem` | [trace_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-vecmulvec.md) | 176 | `result-track:5c5c21454ace99fc9bf12e5094cb85bcf121f6cc776e26fffff28f1126173d8d` |
| 26 | `lemma` | [trace_submatrix_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-submatrix-succ.md) | 182 | `result-track:f3ebfdec6dc6e1644fc7d4386fbce790e73de8005667740926a7e50f95127b56` |
| 27 | `theorem` | [trace_units_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-units-conj.md) | 194 | `result-track:222ede4e54b3b7304f6ecb9e5f76b7c4b3f09712946a1f9203ec921b55e0bd48` |
| 28 | `theorem` | [trace_units_conj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-units-conj-source-edition-2.md) | 200 | `result-track:a3b64959448712e6bb591b468ca98158f5db89a3024ce6c750b0439ec88119d8` |
| 29 | `theorem` | [trace_fin_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-zero.md) | 214 | `result-track:b8a792397cd08f27f482abd2e0aacff4ab06e74d4c5df3794687c65420ae20a8` |
| 30 | `theorem` | [trace_fin_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-one.md) | 217 | `result-track:de0e44d0c5d1a169d4dc6d99c0e2c751418cf0e07ed077e96006b2c710f72791` |
| 31 | `theorem` | [trace_fin_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-two.md) | 220 | `result-track:570fb4fdebd913adeeb63f4f17294209707840dd52593639aaabf278c7e2a723` |
| 32 | `theorem` | [trace_fin_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-three.md) | 223 | `result-track:15e2f41aa13771c755b0e19438bf2fdbc3f1d452cec35ffde7cd73f9c96d8d26` |
| 33 | `theorem` | [trace_fin_one_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-one-of.md) | 228 | `result-track:77ad2315e954b60f59a69344aabf6fb7240a1ea89d1582de90a34f3818839590` |
| 34 | `theorem` | [trace_fin_two_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-two-of.md) | 232 | `result-track:d8ca4caa30c5f58754f3ff7597faf03a1e88faa21b10a66e8c02896b601e5f9e` |
| 35 | `theorem` | [trace_fin_three_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-fin-three-of.md) | 236 | `result-track:998404b75d0231311d9fc38b7e8e9865d47a8fd90762c964dfc2a50e6ba1bbac` |
| 36 | `theorem` | [trace_single_eq_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-single-eq-of-ne.md) | 248 | `result-track:da58d2ff4a654a63283b77f338d82186a50b735ac6594030580b0e377ce31008` |
| 37 | `theorem` | [trace_single_eq_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-single-eq-same.md) | 252 | `result-track:ffe64495315289a2cbe3393af381323bf3cfd3054bb69f6e12e57fa2e537c333` |
| 38 | `theorem` | [trace_single_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-single-mul.md) | 255 | `result-track:848efdceee7fabc894e9782b57f2f7ada6944343c6896930a7fa1e912c51c189` |
| 39 | `theorem` | [trace_mul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-mul-single.md) | 260 | `result-track:068f44f4a76b7ae8f1632ca0209fa6f908576070f7a4c850b6ba818bc999fa38` |
| 40 | `theorem` | [trace_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/trace-surjective.md) | 267 | `result-track:f6d44fa57015b03d3b6efa67b4ee487318464374736edc165c5c141dc4e865b0` |
| 41 | `theorem` | [ext_iff_trace_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/ext-iff-trace-mul-left.md) | 274 | `result-track:39a2c9601d5b6e4f12a3e16633ca11ee496ce1f46b1bfd4db8e690765e5080a1` |
| 42 | `theorem` | [ext_iff_trace_mul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTracePublic.lean/declarations/ext-iff-trace-mul-right.md) | 282 | `result-track:c046e04ffe7c5484ce6100c458eb2ad928e3ff7424069337d5eb9fca8e51325b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f018abadfcac392887c994820d17a767eb55cf411ac1ece3094673f0bd444eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Trace/Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
