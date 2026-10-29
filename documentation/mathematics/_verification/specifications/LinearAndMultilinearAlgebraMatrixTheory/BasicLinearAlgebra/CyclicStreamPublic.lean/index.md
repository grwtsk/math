# Verification target: Cyclic Stream Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f5fb64e8a5ebdd14476d2ba8672fbbfecec4d21",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f5fb64e8a5ebdd14476d2ba8672fbbfecec4d21`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestepstream.md) | 42 | `declaration-track:389033a9d56c7d14020fa3d8c6c937f3465d0e1f016f747bd5b26cc115efb778` |
| 2 | `def` | [indexedStepStream](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/indexedstepstream.md) | 53 | `declaration-track:4c5e7c77f303cd3850c3704d05c0de31c21967f9a702bf892a7f8fe65923df85` |
| 3 | `def` | [braidedStream](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/braidedstream.md) | 67 | `declaration-track:8a699d2ac700495ba85b29b920cefea6283fd450c8502a012eb125a3a544e804` |
| 4 | `theorem` | [braidedStream_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/braidedstream-apply.md) | 73 | `result-track:5dbd44a14180e26a420a0560bbb06b6ee16ec8c14272563c75b88ef1e35cd5ad` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/braidedstream-mod-cycle-apply.md) | 83 | `result-track:538b9dbdbae3b8779c2bcdf3e27c1e30f7d3ec5b9162dea5ac3c40406ca52097` |
| 6 | `def` | [shiftPhaseStream](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftphasestream.md) | 93 | `declaration-track:ad8ef8b7b011940e480242b6852be8fd4674ef6408d954edf6fe4723095b40cf` |
| 7 | `def` | [shiftInput](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftinput.md) | 99 | `declaration-track:301aa9785228a005a23f354bd726dc7e86d5f3ef06b40ec70b6e4161ea7b99d1` |
| 8 | `def` | [phaseStreamTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport.md) | 108 | `declaration-track:19f0143bcd566938ca74cec2421e01b6abded330d80bdcc80a1c280c1d3d809e` |
| 9 | `def` | [streamTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport.md) | 122 | `declaration-track:65ed82a5155fbfcd511a2e6284ec8160f845a59decce06f62690d965cac3210f` |
| 10 | `theorem` | [phaseStreamTransport_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-zero.md) | 128 | `result-track:7df0c913e338b7b3e0269663ac537a0416c34f9803a68990c8300fc9109bb129` |
| 11 | `theorem` | [phaseStreamTransport_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-succ.md) | 134 | `result-track:d70c5c0ea467b1ff1e98b4836d8db4b4d47229ed2ecfb456e38c17e2a8453dda` |
| 12 | `theorem` | [streamTransport_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-zero.md) | 142 | `result-track:4fdfa223e84c0ec5222164ace430ae259e1c1781f96b5a10ca0044b623da159f` |
| 13 | `theorem` | [streamTransport_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-succ.md) | 148 | `result-track:1a213ea0cf9f1d25b5ffacb066e147e99d5ef7024064001cbdda826a427f1478` |
| 14 | `theorem` | [streamTransport_two_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-two-apply.md) | 160 | `result-track:4c4823d41d8a624da332179cdc54f8a676126b0922762519ad0470805c0eec73` |
| 15 | `def` | [reverseStreamTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/reversestreamtransport.md) | 175 | `declaration-track:2bc5c03d81c471b142afe67676b57680c9eb14644f9f2fe4bf209d47de1a9f88` |
| 16 | `theorem` | [reverseStreamTransport_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/reversestreamtransport-zero.md) | 184 | `result-track:b89d82b2beb4fc58281caa887e47837a9c16477b89591b7400c4d25976cb5d35` |
| 17 | `theorem` | [reverseStreamTransport_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/reversestreamtransport-succ.md) | 191 | `result-track:4a2a9a0185e3d4638220e26fc24c4bfb36280ec005638a710ccf2bb633e098f4` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/reversestreamtransport-two-apply.md) | 203 | `result-track:bec5ac29f0f019b8fb38ac3e51ef8f2577445b2c220dc6de0611ec1813f04ff5` |
| 19 | `theorem` | [shiftPhaseStream_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftphasestream-zero.md) | 211 | `result-track:433960edb3e85427bcf2ed67cbb8986d58071645c321baf3feddbd1cd59539cf` |
| 20 | `theorem` | [shiftPhaseStream_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftphasestream-add.md) | 217 | `result-track:5fcf6acd633a236928baf6d9fec524f8ab1c32634e4bced901319eb7f50c03cb` |
| 21 | `theorem` | [shiftInput_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftinput-zero.md) | 224 | `result-track:e9e5bed612642ce3f43c97c0bda27ac44d45b7f8d66e25a987a5d6f572a2f048` |
| 22 | `theorem` | [shiftInput_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/shiftinput-add.md) | 230 | `result-track:d64dddf4cbf81daf97c47d58d4dd05c33c7c1ce3560a0a57d4d9671860e36f33` |
| 23 | `theorem` | [phaseStreamTransport_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-add.md) | 237 | `result-track:5faaaf3e9b1ab14ef523cb868ca6c9d2bc1d27ede9774116d6a494fd6b4c77e3` |
| 24 | `theorem` | [streamTransport_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-add.md) | 255 | `result-track:b1b56b19f143b56f8303575de004b76cf92b20b306510c8d9f9f1c2622928aac` |
| 25 | `def` | [successorPhaseStream](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/successorphasestream.md) | 273 | `declaration-track:be2b71d3383280f6e2ce064596b601fb538e571a992cfb9510a9008ee89b117d` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-successor-eq-forwardproduct.md) | 283 | `result-track:e4fbe4abaa1b4eccbbbe0256faaf9a76d0bc9b38b770463b858a06e8914beb1b` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-successor-cycle-eq-monodromy.md) | 306 | `result-track:a8f389483e8014c3ff418316b90f13c57839f0a6ca03906215cad8c0a0d741a3` |
| 28 | `theorem` | [streamTransport_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-bijective.md) | 316 | `result-track:f76823375725bbd6fc2e11a9ba51233ebc2ec1dac0704dd3fb1bc90640672592` |
| 29 | `theorem` | [phaseStreamTransport_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/phasestreamtransport-bijective.md) | 323 | `result-track:6e38a7f2c766931bea5228782296b8d5d756d02ba77402a7cda4520b2dac077f` |
| 30 | `def` | [StreamInSubgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streaminsubgroup.md) | 330 | `declaration-track:9603b6a12422dbc1724c78dc988e4c65aabae0da5ecb083373432ccfc6187b7a` |
| 31 | `theorem` | [streamTransport_mem_subgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-mem-subgroup.md) | 337 | `result-track:4f3c469a60bffd53e730306f09cf27738524caeac6931144f6509ecfe817902b` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/declarations/streamtransport-mem-subgroup-of-phasewise.md) | 354 | `result-track:7a6c98166e91421ac38d82b210293bdee529ea7bed152c3dbd40701510d6b447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3582e79b14a3198ea8807a773176127309a3af3830871826ebb2c78034976ddf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
