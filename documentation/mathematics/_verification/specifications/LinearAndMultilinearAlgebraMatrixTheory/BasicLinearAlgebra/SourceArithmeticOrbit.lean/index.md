# Verification target: Source Arithmetic Orbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36d250bcb707fa262f039219650a783757427cc",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36d250bcb707fa262f039219650a783757427cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDualRotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OrbitIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitindex.md) | 40 | `declaration-track:1b3109d57c8204074fbd3406929a1374f45cc51ea04626f59e620bbdbd85baab` |
| 2 | `def` | [signedLog](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/signedlog.md) | 43 | `declaration-track:42ca64f60898da7df98794524816dcced54775edcdcd2de3dbf80be3cb81cf81` |
| 3 | `theorem` | [signedLog_not](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/signedlog-not.md) | 47 | `result-track:45bab21348bb59e8ddbacc26ce25233179287adeae1e950c2ba757beec67c8ef` |
| 4 | `def` | [orbitAtom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom.md) | 51 | `declaration-track:7a476dbb67840ba6e03c98cfeceacad02d4330cbec32edf38bc904038e4bb8e7` |
| 5 | `def` | [orbitGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitgenerator.md) | 56 | `declaration-track:177fc85f67a16ab2d2ae1b67fc06f8422a3156edba4feb8847c02906f435af17` |
| 6 | `def` | [finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteorbit.md) | 60 | `declaration-track:ca0e9f6697474ae941c9f3db5ddde003a1f07d174e6a880a3805cf2f2ed0d41c` |
| 7 | `theorem` | [orbitGenerator_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitgenerator-mem.md) | 64 | `result-track:57f45642f34b7c7c32723a03e613dd666827bca69dd31e80cf8865d1508f535d` |
| 8 | `theorem` | [orbitAtom_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-mem.md) | 69 | `result-track:d5e2ef2f9f1cc72aea2db55b5e520f1d5d3e763348da934dc9fb518276add49f` |
| 9 | `theorem` | [orbitAtom_duality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-duality.md) | 74 | `result-track:19aef84f25806be24aa2139b4cbdfb600405e3ba8ab5d3de8e6bedfdd7a7a050` |
| 10 | `theorem` | [orbitAtom_reflection_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-reflection-original.md) | 79 | `result-track:420b8227e2428387e52c4f04071297f81c26baf90eff220da37b4fb1b969edc6` |
| 11 | `theorem` | [orbitAtom_reflection_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-reflection-dual.md) | 86 | `result-track:0a88357638ef36a7e3842b179eb8e4366efd6340a6f5b275824a4c3ef9dddc87` |
| 12 | `theorem` | [orbitAtom_quarterTurn_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-quarterturn-original.md) | 93 | `result-track:c720f58aab9d137a6ea4e54ce7e4c23ebda8ac23b8ddc12ebb5ce0d06475df51` |
| 13 | `theorem` | [orbitAtom_quarterTurn_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-quarterturn-dual.md) | 100 | `result-track:1b3791d840b4ee144d1fa4e5040c4d91be506698c62bca38fee2f1fceccff3fe` |
| 14 | `theorem` | [duality_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/duality-mem-finiteorbit.md) | 107 | `result-track:bf185557250bb7b6c757549956b4d88e94ff4ea5a7b7aba79a3ac9d85b1d9e3d` |
| 15 | `theorem` | [reflection_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/reflection-mem-finiteorbit.md) | 119 | `result-track:d781f49332ddb6c3426895950295dccf991886b544d832bd66d7e223be51fedd` |
| 16 | `theorem` | [quarterTurn_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/quarterturn-mem-finiteorbit.md) | 135 | `result-track:1dffb1cf243bdb2786d05d73fe751c1136b020a0dbe8426013f4dc3fc4ad2c8a` |
| 17 | `theorem` | [finiteOrbit_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteorbit-mono.md) | 142 | `result-track:9a379b709f949fc0986a521ebe7a010b3787063796e91224e9651d082b3071de` |
| 18 | `theorem` | [orbitIndex_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitindex-card.md) | 149 | `result-track:61c6cbfb091736ecd5789b6da847f2b71dd4c18174f8f978230abee3aa3d4686` |
| 19 | `instance` | [finiteOrbit_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteorbit-finitedimensional.md) | 154 | `declaration-track:157646674cabcf95ce7cb875fc73f46812f0fb2077df278c3d7effa1e898823b` |
| 20 | `theorem` | [finiteOrbit_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteorbit-finrank-le.md) | 159 | `result-track:e3fbaae84e5250e53656e643b93fcac9d16218080308dca018a35db603245d6a` |
| 21 | `theorem` | [rotationMap_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/rotationmap-mem-finiteorbit.md) | 165 | `result-track:45873a481d2cd60c773fd22b6c7b765299c78ccde551671db2c20fbf145ecae6` |
| 22 | `theorem` | [angleRotation_mem_finiteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/anglerotation-mem-finiteorbit.md) | 173 | `result-track:370795e162f0a3afae9facef993c3f9365ba9b2279066afeb03c4b9e95f6eda7` |
| 23 | `def` | [finiteProfile](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteprofile.md) | 179 | `declaration-track:6465d5c54015d78349688655557a14392e8830d5fc2654ec58c0b6c8456eb6b1` |
| 24 | `theorem` | [finiteProfile_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/finiteprofile-mem.md) | 183 | `result-track:f4180c7a95e49c027551ea72970bf120c6e65ebc031988576f775323773c462e` |
| 25 | `def` | [synthesis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis.md) | 189 | `declaration-track:18f8cabe59bf7598afc1e447c0ab3dc3066a56623fc145c24c34d8184067af99` |
| 26 | `theorem` | [synthesis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-apply.md) | 195 | `result-track:e6cc747ec56d677ac2dfd6a12e78cb80edb7c57464259c54780c463945a90ea6` |
| 27 | `theorem` | [synthesis_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-single.md) | 199 | `result-track:28808a0f22d79930079d4f647f07c4c0c61b468f2e69c9304baaada86b3744b5` |
| 28 | `theorem` | [synthesis_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-mem.md) | 205 | `result-track:190c47e559724f2622b1cec921d0bb9982dc7b1aade69fcd526003888d1e71fb` |
| 29 | `theorem` | [synthesis_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-range.md) | 211 | `result-track:a19816c9f0a630160e468f80eda4f07e704bcfc1c6c397c2c7b41d359762f7a6` |
| 30 | `def` | [gramMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/grammatrix.md) | 221 | `declaration-track:17aaa3d689b6a762ee179c58e780bbc4c7497e1253d495b1206a848eeceaa624` |
| 31 | `theorem` | [gramMatrix_conj_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/grammatrix-conj-symm.md) | 225 | `result-track:e525c3f075d67e0466bb2b70d5a957c575b2f791fb892e6e70518cfbd3e0d80d` |
| 32 | `theorem` | [synthesis_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-inner.md) | 230 | `result-track:bc5e0bac7d39957b1e5a043ec976e09773271a124480035bdb8a6a969dbbdc6f` |
| 33 | `theorem` | [synthesis_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-norm-sq.md) | 243 | `result-track:64c1a532c951ff08d99e1d344e914950854e62e1b100d27bd24e4c4c93faeb8f` |
| 34 | `theorem` | [gramMatrix_quadratic_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/grammatrix-quadratic-nonneg.md) | 252 | `result-track:ca91b28015cec8702fc1fc311badd2bbe0cf1452de366ec8040182cd2addcdd5` |
| 35 | `theorem` | [gramMatrix_mulVec_eq_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/grammatrix-mulvec-eq-inner.md) | 259 | `result-track:5b037d62388adbef8dd5ce612f600e34df853fb9f8aab5c8dbd913b025d54458` |
| 36 | `theorem` | [gramMatrix_mulVec_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/grammatrix-mulvec-eq-zero-iff.md) | 266 | `result-track:34fbb532ff8f422ab7f092f475303fce50a5c1319eef075fd7cb9e3051a1e5be` |
| 37 | `def` | [synthesisQuotientEquivOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesisquotientequivorbit.md) | 286 | `declaration-track:cc3750dca7bb24ecd7575bcd5f8971d130964740a270111a711a8d34d69f6448` |
| 38 | `theorem` | [synthesisQuotientEquivOrbit_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesisquotientequivorbit-apply-mk.md) | 292 | `result-track:eddff6d3bd232ba5d63f4c91ffe86dbf1c64922d11814046b4638740d95e5b7c` |
| 39 | `def` | [mixedKernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/mixedkernel.md) | 298 | `declaration-track:aa8af6fed2dba5cc2cbe48b551e11e237e89cc2a655ea3c14e56b091c7668912` |
| 40 | `theorem` | [orbitAtom_inner_original_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-inner-original-original.md) | 302 | `result-track:e4b1eb8e48bf01c1d6b055e0874465046b0ca70d0bd044d09d9a8eea65c60204` |
| 41 | `theorem` | [orbitAtom_inner_dual_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-inner-dual-dual.md) | 307 | `result-track:f7e5d223b2c39ac8d3f45abf2116c90d8fa8d535a590ff34f09b44ea84a1d760` |
| 42 | `theorem` | [orbitAtom_inner_original_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-inner-original-dual.md) | 313 | `result-track:a33d3b63fdbefac45c1a2e7e71514060caef54bebbee5e5e2c1dcc480e58c029` |
| 43 | `theorem` | [orbitAtom_inner_dual_original](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-inner-dual-original.md) | 318 | `result-track:8da107988523d9436f9f442f742dcbc65ec34f4ceee040f3175ebb4f0015eb5c` |
| 44 | `theorem` | [mixedKernel_self_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/mixedkernel-self-zero.md) | 327 | `result-track:44783236dce4825539d17db7f1a144985fd0c4f143b8c531edbbb1374195887e` |
| 45 | `def` | [reflectedMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/reflectedmatrix.md) | 334 | `declaration-track:f17e57f4cb4256dca836ec94f8a095e41a27f89f309228d06716d65e557cbff7` |
| 46 | `theorem` | [synthesis_reflected_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/synthesis-reflected-inner.md) | 338 | `result-track:2da087124178bf82a8bc1cbdc7e7d9b76cf9fddca8c82b7a36ebe5b80ccdf374` |
| 47 | `theorem` | [orbitAtom_one_shift_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/orbitatom-one-shift-equal.md) | 353 | `result-track:d7dcf271a520011b370f42efca356f91be816480fb1008bd0f1f6673c2dd46f2` |
| 48 | `def` | [dependentCoefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/dependentcoefficients.md) | 358 | `declaration-track:9cfcf75e6e1ec10806fc1ba52b91f81d617eb002553c2ff002a5204beee9cf39` |
| 49 | `theorem` | [dependentCoefficients_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/dependentcoefficients-ne-zero.md) | 362 | `result-track:36050ab7791ac5a91a9af593ca4184631648482fd832b7998d5d462ea0986226` |
| 50 | `theorem` | [dependentCoefficients_synthesis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/dependentcoefficients-synthesis-zero.md) | 369 | `result-track:41c8605e42b46af3f8bafb39f0bbb1b6003a03dd2e0916b49411f948641fea5c` |
| 51 | `theorem` | [dependentCoefficients_gram_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceArithmeticOrbit.lean/declarations/dependentcoefficients-gram-zero.md) | 375 | `result-track:f268f8a826b2a008e40a7ba4ccc28ceff7e87b142a596179bf5b15d54f60258b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f3f96bdba0e011750725f18fa16937375904732e01dc5339519f8494bc6dda5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
