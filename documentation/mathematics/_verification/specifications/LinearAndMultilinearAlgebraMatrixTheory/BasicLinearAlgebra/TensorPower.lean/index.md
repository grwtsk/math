# Verification target: Tensor Power

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3dca84d41e278c23e9d98c479641a18752775ad",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3dca84d41e278c23e9d98c479641a18752775ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TensorPower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/tensorpower.md) | 38 | `declaration-track:dc253b8876961b6cae72728a8b36448af3b3c06576b52030b09d5557cea7a94e` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gradedmonoid-eq-of-reindex-cast.md) | 52 | `result-track:497f92d8ba2b371e1ecfa4eaa0933ef288e0a01c31469a30edac9e23bbe964e1` |
| 3 | `instance` | [gOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gone.md) | 69 | `declaration-track:81fc224673588e47403bf724afd971a914f59d74a3b76c386cc2962c4b7ad83c` |
| 4 | `theorem` | [gOne_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gone-def.md) | 74 | `result-track:5b57cca991ed63fef65fac35cf5224a6cea1290772531d150b5173572a494572` |
| 5 | `def` | [mulEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/mulequiv.md) | 79 | `declaration-track:264cd03479b5e94611b2d1c8688a0f4f66cb0d48d146f3eb3b742065c81ad139` |
| 6 | `instance` | [gMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gmul.md) | 84 | `declaration-track:dd4cb1fdb5e4029ab78673d92b8cc3b8d906ce3a2a0830c7de0189ae4d869b91` |
| 7 | `theorem` | [gMul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gmul-def.md) | 91 | `result-track:932679af24d71d376c5726dc6f9800ff58a8c7d6030640259fb449cebb845485` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gmul-eq-coe-linearmap.md) | 96 | `result-track:4de83e419b6d8eac54a6cc48d7879525e7ed3bd07f30ee52688c087f10c23156` |
| 9 | `def` | [cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast.md) | 105 | `declaration-track:36ec23f8d1ca62c2d2f526a1cc64ce3e6e1fdba261e5a89ba55a9c5a7d28576d` |
| 10 | `theorem` | [cast_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-tprod.md) | 109 | `result-track:f4a4fdb898014475645c53059cd7487ecc1409b5a066f80061c1e5bd21e7a68d` |
| 11 | `theorem` | [cast_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-refl.md) | 115 | `result-track:487cf1d2b72f3d5257cff8586b2a9b87efd0a1b9a45b09edc6f94a476cb53c55` |
| 12 | `theorem` | [cast_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-symm.md) | 120 | `result-track:d8d149483d73d49c58bd1825ee916edb03202f7b0f53b444e58232b2e8801fe0` |
| 13 | `theorem` | [cast_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-trans.md) | 125 | `result-track:cec8cb13e638e8acdd73e83d0a311b41774a3753fae2c299168885cf19c2e20a` |
| 14 | `theorem` | [cast_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-cast.md) | 133 | `result-track:84edb12f9ca6ade54af3394ea62d1434ccfe3b127a867da39f7ff3db2a59c741` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gradedmonoid-eq-of-cast.md) | 139 | `result-track:8a1b8193efe223769aee6437b916553ce3e6bcdae27d40fb35b747ad4e654918` |
| 16 | `theorem` | [cast_eq_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/cast-eq-cast.md) | 147 | `result-track:6f2a7e9b0d90880666b877a28a1edde650e09a26e1ba60e14ed1c5095111bfc1` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/tprod-mul-tprod.md) | 156 | `result-track:96ae3b49edae4276e0148edf48a63312cf5a18539f93741fab8225c9edcde1ae` |
| 18 | `theorem` | [one_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/one-mul.md) | 169 | `result-track:f456dd214983ae29a14bf1b8e47c4d58969660e84c681ea2dd935a8019d45e3f` |
| 19 | `theorem` | [mul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/mul-one.md) | 181 | `result-track:6fd4ee8743a0d43d5c11aeda7e635c76efe3067715028a6359d524ba265d40b5` |
| 20 | `theorem` | [mul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/mul-assoc.md) | 193 | `result-track:77ece998d9b86c82c93f32b2f940fde8bcd14c94f1fd69b15c899193ec110d23` |
| 21 | `instance` | [gmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gmonoid.md) | 218 | `declaration-track:4d3a1d1a553c6f02c0a6b821e0c33e45eeccd5d657720599fed0edbe912ad398` |
| 22 | `def` | [algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/algebramap.md) | 227 | `declaration-track:a1bb6762e130858a4daac45dc0dacb0a7574e8638586139b2ad83031cb8982e7` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/algebramap-eq-smul-one.md) | 231 | `result-track:e0e88ad1f389b82305032c4f704ffd8ef0720d353fdb2b3d440872f0cb9c5c82` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/algebramap-one.md) | 235 | `result-track:48e0e737255231efbbb8dd71fa0a79bab4c1a60ec5717e0f7e73bec29641922f` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/algebramap-mul.md) | 239 | `result-track:f5cb99ac3e98b28037e389258d7d8f457a8f6e8d0e55af6ad0c592002af548f3` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/mul-algebramap.md) | 245 | `result-track:9bbdbbfaa50f91c7a4a36ffb662759eac6355a2f7bfb858aaec2a2941018b6a5` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/algebramap-mul-algebramap.md) | 251 | `result-track:bf5c98c425dbc1d992a8771ab1597223c01c676b89433dda83d04c25516b4512` |
| 28 | `instance` | [gsemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/gsemiring.md) | 258 | `declaration-track:a194dd6f686800ffbb3e1dfb4c78c240772280b24814fa9de75b5c67a4095977` |
| 29 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/example-source-edition-2.md) | 269 | `declaration-track:60ea162984b31d7c97b56610b2abc6ee89b77577b047ab37ff8596c9acd467b9` |
| 30 | `instance` | [galgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/galgebra.md) | 274 | `declaration-track:8fa352daf6611d69789cad4bb9ab325f1818a16e3d1e685a792a82e4b786cc21` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/galgebra-tofun-def.md) | 291 | `result-track:f90f6c1ca2dfba4ee8648ecb18c09e1e7bf6643f30abc862ac74a7506403fa04` |
| 32 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/declarations/example.md) | 296 | `declaration-track:49eff2bee80faa374b15e329fd7c1182b2835b2f541e1e13380a4e429c19aa74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fce5fc1326dfcbb907516ebabcdebeb4e04d905a2ee00ff5c8e62f87ff6bba01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
