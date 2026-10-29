# Verification target: Actual Finite Four Channel Source Orbit And Its Gram Geometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b34d3f537f22944a1d9b3f14e73a6e8851f46f99",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b34d3f537f22944a1d9b3f14e73a6e8851f46f99`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDualRotation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OrbitIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitindex.md) | 32 | `declaration-track:05138661e021e88ebae69bfe2ffcfed40f5602e6d2a64b614be82a51169c4791` |
| 2 | `def` | [signedLog](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/signedlog.md) | 35 | `declaration-track:0d0962d2b0bb4b9187ac8faf2e18d8c8c38757c03415228da675c7c3e1106abc` |
| 3 | `theorem` | [signedLog_not](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/signedlog-not.md) | 39 | `result-track:4be95cdc74e7f2e326a99625b4118da5d6933f0d890db3d82c1b34ffd436b28f` |
| 4 | `def` | [orbitAtom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom.md) | 43 | `declaration-track:2491aedc462c3fd3781f72901dc78f3d5a2f37c16bbc3c452026f3c8b55c275a` |
| 5 | `def` | [orbitGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitgenerator.md) | 48 | `declaration-track:5e553913ed4cd5d364aea0048882942be48e2b6db61921b1fc9d13fbe9065a4d` |
| 6 | `def` | [finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteorbit.md) | 52 | `declaration-track:bf9efa6776c99329e21108a7fa46fb295103f1611afe8b0fe0a28fa6d3b8632b` |
| 7 | `theorem` | [orbitGenerator_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitgenerator-mem.md) | 56 | `result-track:c8dcd08c8feed5340bdb487902c0b8f03b1a0869f7220507a5d4b88db0b7d2c9` |
| 8 | `theorem` | [orbitAtom_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-mem.md) | 61 | `result-track:05740faf65be2861002e6b9fa90bbef33f9f85d6268047b1f4ec0709befd6035` |
| 9 | `theorem` | [orbitAtom_duality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-duality.md) | 66 | `result-track:fcbcc0f805a6020583bfab21c0651f87ad9e210756c67e5c9ce618ef8c97b935` |
| 10 | `theorem` | [orbitAtom_reflection_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-reflection-original.md) | 71 | `result-track:90541d1796f8c55fb1b7fa0c38ba38fe6674ea86c17eeb3aee876bea94011482` |
| 11 | `theorem` | [orbitAtom_reflection_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-reflection-dual.md) | 78 | `result-track:a66f13a16db1746d1dc513bd8dfe1fe46d3744e7d6a7f6e235160f1d9ec8f25d` |
| 12 | `theorem` | [orbitAtom_quarterTurn_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-quarterturn-original.md) | 85 | `result-track:3e663e52f6595f8885e3069622cd30c09f54f544baa5abd5c66343fc2caa3f07` |
| 13 | `theorem` | [orbitAtom_quarterTurn_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-quarterturn-dual.md) | 92 | `result-track:bae77bff99c1783be31c375ed046b0181acddf22f8736323c689cdf5bdcf3437` |
| 14 | `theorem` | [duality_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/duality-mem-finiteorbit.md) | 99 | `result-track:42bebe749e5ecd20d5a8cb272a4d31f08bbd0c8729fa86cf1974faa6685f2033` |
| 15 | `theorem` | [reflection_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/reflection-mem-finiteorbit.md) | 111 | `result-track:7ee01345e4e62bd50d3865167eab0207f3945f39aa1a836c54eec72241078894` |
| 16 | `theorem` | [quarterTurn_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/quarterturn-mem-finiteorbit.md) | 127 | `result-track:30aebd224ce1cb8740481c3fb7884ce852c166290a4088a8e359d636a95bd12a` |
| 17 | `theorem` | [finiteOrbit_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteorbit-mono.md) | 134 | `result-track:10295ccbadb2377188d0184ebebf2b20fa71e79a7dc628231469ae6dbad6e638` |
| 18 | `theorem` | [orbitIndex_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitindex-card.md) | 141 | `result-track:2382aa0d156a44f92467bee36934f9109fd678bc6966b45727f8946a784d892e` |
| 19 | `instance` | [finiteOrbit_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteorbit-finitedimensional.md) | 146 | `declaration-track:37db6d115a3191957c4161ff88c32a97517ae8d5b837a75a3159a3fac9c39eeb` |
| 20 | `theorem` | [finiteOrbit_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteorbit-finrank-le.md) | 151 | `result-track:661d1ab698065a92819214ebbdbed8e7d932440f6793b115b7929bd2bde53d74` |
| 21 | `theorem` | [rotationMap_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/rotationmap-mem-finiteorbit.md) | 157 | `result-track:60ce7ef2bff8f08a1767da2b3b65bc346e2440404ecce8d752867942a469fa17` |
| 22 | `theorem` | [angleRotation_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/anglerotation-mem-finiteorbit.md) | 165 | `result-track:6e32e19eda8e67b3b84aded986875a94f45874479193cc768a7fa1f294ba9dbf` |
| 23 | `def` | [finiteProfile](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteprofile.md) | 171 | `declaration-track:dc305a4b27edc45128daebba4eb183c936f05f2388b31aceb05a9f125cb44857` |
| 24 | `theorem` | [finiteProfile_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/finiteprofile-mem.md) | 175 | `result-track:0449daf5acbfe6e6258afd249702a70dbe70815afc530e823756838a579d6d2f` |
| 25 | `def` | [synthesis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis.md) | 181 | `declaration-track:42d562b18ff0e804d414b9ef1b1644b410a1efd34fb1541f19a59bff642da7e2` |
| 26 | `theorem` | [synthesis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-apply.md) | 187 | `result-track:8b297c2f0d6c7c6f20d5bb637bbfb134648a30f7069bc6b18f513ee71d39c85b` |
| 27 | `theorem` | [synthesis_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-single.md) | 191 | `result-track:e60083ceb3e20e1f50ae6a4b79682ef9ef41cf56a427cc9cb3ef1a813504bde0` |
| 28 | `theorem` | [synthesis_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-mem.md) | 197 | `result-track:eaffc6487a802cacaf94663de10b67e3d4e602609d50a701bb25065b9f174ec8` |
| 29 | `theorem` | [synthesis_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-range.md) | 203 | `result-track:9388e4f2aa9b1a4a658114386014e9b15e1f2b1bc566d685acbc8d2f5b4db637` |
| 30 | `def` | [gramMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/grammatrix.md) | 213 | `declaration-track:95da58fa2dde9af59c4e60cbfadf2220decb2969a1fbbd27f46af27da939c5c5` |
| 31 | `theorem` | [gramMatrix_conj_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/grammatrix-conj-symm.md) | 217 | `result-track:ed6fbb258c8b64c919e58808da9b4ab990f279dedfeec8b7f93895739cc371be` |
| 32 | `theorem` | [synthesis_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-inner.md) | 222 | `result-track:1c539b8138b492bb505e5d6c7d1ef1f94f654b948d4637d5c49ad2d87f2d7174` |
| 33 | `theorem` | [synthesis_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-norm-sq.md) | 235 | `result-track:cbc80e6a7e99d3eef82661c0507778050f1cc9df7112fd96616f8a55da6bc3f4` |
| 34 | `theorem` | [gramMatrix_quadratic_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/grammatrix-quadratic-nonneg.md) | 244 | `result-track:8a7aeb0744643fc017ea1016d1c510dd4b8aba4b5c4a45e331a66ee6be23c3ae` |
| 35 | `theorem` | [gramMatrix_mulVec_eq_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/grammatrix-mulvec-eq-inner.md) | 251 | `result-track:fc1ce4aa0ace7c28add7476c17751541fe22b1451e149e20b2b441fdad4142f3` |
| 36 | `theorem` | [gramMatrix_mulVec_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/grammatrix-mulvec-eq-zero-iff.md) | 258 | `result-track:dd07efbd531881a5a654530cb2ebea275fecbb7394c927e6b2bb812ae32a97f2` |
| 37 | `def` | [synthesisQuotientEquivOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesisquotientequivorbit.md) | 278 | `declaration-track:5499b2e3fe437b1ed5cd8fc95c6d4a59c47fc086abb4ed0c0da5b9e118927eb2` |
| 38 | `theorem` | [synthesisQuotientEquivOrbit_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesisquotientequivorbit-apply-mk.md) | 284 | `result-track:79ff2ff2c4cb6a0a24ac6b275573c58597fb5a1973b4cabeca86581e336b1bea` |
| 39 | `def` | [mixedKernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/mixedkernel.md) | 290 | `declaration-track:33f78b0f84890cd50307a76befb0282a3aed131336a4d295eb5537a5b429c4f9` |
| 40 | `theorem` | [orbitAtom_inner_original_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-inner-original-original.md) | 294 | `result-track:859e14467d94c928c110ec0967935dcef6f34960778a7fb695873e7703fb402c` |
| 41 | `theorem` | [orbitAtom_inner_dual_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-inner-dual-dual.md) | 299 | `result-track:4a327a946986ba6e243e945c9321f46dc8aba2276e03dc05612dbeb1c7852a9f` |
| 42 | `theorem` | [orbitAtom_inner_original_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-inner-original-dual.md) | 305 | `result-track:1a3de8aa9e63ec43b8772dfb7bf2acb0e966c0bc3d45efdd524f18992b7e1faf` |
| 43 | `theorem` | [orbitAtom_inner_dual_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-inner-dual-original.md) | 310 | `result-track:54cc8592b4605bfa22293156e5be1109f1a2a510ec22b84fc6cd1cd1096d62c8` |
| 44 | `theorem` | [mixedKernel_self_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/mixedkernel-self-zero.md) | 319 | `result-track:b295b8a1390e9d49ed5a48fedab42b16c7e90fb11de84d93eed8b7f3961ed9f5` |
| 45 | `def` | [reflectedMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/reflectedmatrix.md) | 326 | `declaration-track:d75518b171d3e0b5778c1ca9ac1cd0d422d9c208a58018967cc1ca5c9be6d07f` |
| 46 | `theorem` | [synthesis_reflected_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/synthesis-reflected-inner.md) | 330 | `result-track:0d7e76421fb0994c2405d7793efb2701f67df482bc5bf078d7b53d62cc8174b5` |
| 47 | `theorem` | [orbitAtom_one_shift_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/orbitatom-one-shift-equal.md) | 345 | `result-track:d2927700a15742671736b70061edabcc1be33787e19380ae260c9e123cc690f2` |
| 48 | `def` | [dependentCoefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/dependentcoefficients.md) | 350 | `declaration-track:fc1bba16f6dbb34f167aa5725b9b86648e62c4f2379d81c5cd50448595a84662` |
| 49 | `theorem` | [dependentCoefficients_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/dependentcoefficients-ne-zero.md) | 354 | `result-track:2aa9e0ed3d879f086225781139e322f4514271f594a035faf60cd43546ef230a` |
| 50 | `theorem` | [dependentCoefficients_synthesis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/dependentcoefficients-synthesis-zero.md) | 361 | `result-track:02cbcff216e0612c534946a00776c9c8291d3702dc28bb7d54fa1dc6032da67e` |
| 51 | `theorem` | [dependentCoefficients_gram_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ActualFiniteFourChannelSourceOrbitAndItsGramGeometry.lean/declarations/dependentcoefficients-gram-zero.md) | 367 | `result-track:f4b8a825828c50899ffb2a5d6b5bfb31dbaa3eea7f9e70b1072951f5b11931a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da7b8369852c9848c791b128f17f9698482915ea0c67d2deb91f6ffd7c0799ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
