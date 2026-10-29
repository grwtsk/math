# Verification target: Divisibility Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "513ba04cb57f0765314a9fb0ade0af968340c1c1",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant70a378d62d6dbb70d9322d95a937c67d6d63c9be8de1f23d14c2947bd8e62308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `513ba04cb57f0765314a9fb0ade0af968340c1c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant70a378d62d6dbb70d9322d95a937c67d6d63c9be8de1f23d14c2947bd8e62308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant70a378d62d6dbb70d9322d95a937c67d6d63c9be8de1f23d14c2947bd8e62308.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/instance-source-edition-5.md) | 46 | `declaration-track:f22b2ceab376c398f3dc24e1494423cb199732d67fabda41b19f4a3a78e6e9d6` |
| 2 | `theorem` | [Dvd.intro](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-intro.md) | 51 | `result-track:b7389021c8f97a7b2c8344aa8d1770ca02cb14c5ac7eb53f7ad2b6621d8afe43` |
| 3 | `theorem` | [exists_eq_mul_right_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/exists-eq-mul-right-of-dvd.md) | 56 | `result-track:85971d3b4f0c731dedfb943b156c0083f061fa9cbb51d1bc86e61c710c3441cb` |
| 4 | `theorem` | [dvd_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-def.md) | 59 | `result-track:a902540f9038685e3e786fc7640bd8227e22f1571921564a3294afef4ed77f36` |
| 5 | `theorem` | [Dvd.elim](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-elim.md) | 64 | `result-track:e0d1c8a0f14d730a477c9b445d9cf0764b26b3ad259bbcdacd5b3560d230e321` |
| 6 | `theorem` | [dvd_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-trans.md) | 70 | `result-track:12073e0602caa309ed11d0160d052c36dc0d494b4a00241c667dd7fa8468e9c4` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:dc9c8c2bdc8fc2e87bfbe733af35d716329ef9a31996b82c6074e532efed83cd` |
| 8 | `theorem` | [dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-mul-right.md) | 80 | `result-track:8ac35ffb63bf5b8f8085efbe5662cc16b36633e9bb93bd27c7b0816842f2a700` |
| 9 | `theorem` | [dvd_mul_of_dvd_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-mul-of-dvd-left.md) | 83 | `result-track:12f5f5379183cbfa57604208af281bcc86aaf2942be14f2ab52bf6934667467f` |
| 10 | `theorem` | [dvd_of_mul_right_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-of-mul-right-dvd.md) | 88 | `result-track:e0dbe9c9e9dbf2dfb0f431d5c7dd408c00cb1a7362f069bd3db1b5d2f44e744b` |
| 11 | `def` | [IsPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/isprimal.md) | 93 | `declaration-track:fddfd12781e2fbd2cc9b6b78833f462026285c72bea59edd8456ee9a0180d3d2` |
| 12 | `class` | [DecompositionMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/decompositionmonoid.md) | 99 | `declaration-track:b8eef60e2bf71fd32c54db9b45f8751ada969e03aac068a7e607e74dfa38a3c0` |
| 13 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/exists-dvd-and-dvd-of-dvd-mul.md) | 102 | `result-track:b86df7c96e644b6fe299850f7dd83d57df54b6f8b6265d9e9284e2df4340e03b` |
| 14 | `theorem` | [mul_dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/mul-dvd-mul-left.md) | 106 | `result-track:b7483e88d0e1d17d21f5e9f2a404032cf12915de6e6024dd9b0d85bc2cae2a26` |
| 15 | `theorem` | [IsLeftRegular.dvd_cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/isleftregular-dvd-cancel-left.md) | 111 | `result-track:3737ba0f8be9a9fbd193c5ff144c8629d1ed8405d65988b9260010bb03aab620` |
| 16 | `def` | [RightDvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd.md) | 116 | `declaration-track:330b64ce63c8a2c80c0970a95fa30feeb482f672fc2b11a2c5af8f8e405ce90a` |
| 17 | `theorem` | [RightDvd.trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-trans.md) | 122 | `result-track:0e9a83b30851c10c58df394c1ad7c1a4591b2abbd09a4293c9e964907351e36b` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/instance.md) | 126 | `declaration-track:3824d04adbf0846da0dde33573b67911334ebb69f08d5bbb0465bd91bfad7aa1` |
| 19 | `theorem` | [RightDvd.mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-mul-self.md) | 130 | `result-track:8c6911e0e8fde92e74bb9352d84b99fd128989c0c17a547d0c51dc8bda293f60` |
| 20 | `theorem` | [RightDvd.mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-mul-left.md) | 133 | `result-track:92a354ee4039a3af4f0cab4cb9ac6765ed5122f649d0e4b0e8a755fa5c6430cb` |
| 21 | `theorem` | [RightDvd.of_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-of-mul-left.md) | 136 | `result-track:a4d9054e18fbe3c16a08ccd0f3deb509e829600e665d4da639a8f9a49272abad` |
| 22 | `theorem` | [RightDvd.mul_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-mul-const.md) | 140 | `result-track:9c90424d73463ce714913c7e12fb7060de15029606836eac430f46180f8af05f` |
| 23 | `theorem` | [IsRightRegular.rightDvd_cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/isrightregular-rightdvd-cancel-right.md) | 145 | `result-track:b27cf856d929e5020f9c7cd0a998a66e62a6ab7a4cde8a06447acac3978d3158` |
| 24 | `theorem` | [rightDvd_iff_op_dvd_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-iff-op-dvd-op.md) | 150 | `result-track:ff45c2dce55e105ab132a7a8451051cd9d3b6f2570fd55f393c41752b3f04eab` |
| 25 | `theorem` | [mul_rightDvd_mul_iff_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/mul-rightdvd-mul-iff-left.md) | 161 | `result-track:389bf8bca98a3093a6064c6729e2347be8771b3dfaa41303e868ca4e9ad8ff1f` |
| 26 | `theorem` | [dvd_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-refl.md) | 170 | `result-track:6327befcf5b99c8649e3fd7110f02ee02d7113504155365f440426ea9f47caa1` |
| 27 | `theorem` | [dvd_rfl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-rfl.md) | 173 | `result-track:df3408e6b73ab0e53b407220163092c08678266df9c6b2e87338360e45b0e377` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/instance-source-edition-3.md) | 175 | `declaration-track:db6a48999d3e05556404ad1321dfd794b0d6811966ba6638d8eb3c1345d51ebc` |
| 29 | `theorem` | [one_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/one-dvd.md) | 178 | `result-track:cb535aac1fa46a6499f8c7c62a7503d028d1ee375f2148669f35247375da4ec3` |
| 30 | `theorem` | [dvd_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-of-eq.md) | 181 | `result-track:2c0b248aa29546a43e803bb3c79fa8bdc5143c3cafe8ca1d2d8a20a3a09614f7` |
| 31 | `lemma` | [pow_dvd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/pow-dvd-pow.md) | 186 | `result-track:3413c1e156e8b1305ef40a7344dae031829c7920ff92a06b013de59594769db7` |
| 32 | `lemma` | [dvd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-pow.md) | 189 | `result-track:066ce285d3bd3ed15782a59aeeb60fd6def466e381edbdca7d4fe341a9fee953` |
| 33 | `lemma` | [dvd_pow_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-pow-self.md) | 195 | `result-track:60b50fdb31b9679cc52eceb07610037bfc66a40e0edff24d74500c9c73cfe9c7` |
| 34 | `theorem` | [RightDvd.refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-refl.md) | 198 | `result-track:5a550af2418df8e88f232f4330a636dc10ff3ecedb12d1125001656189d22194` |
| 35 | `theorem` | [RightDvd.rfl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-rfl.md) | 201 | `result-track:e0de7f1f0ea666f60e7b4d00c0d181a340fe3a0a0a57db47996daaa5baf9f4bc` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/instance-source-edition-2.md) | 203 | `declaration-track:8b71fb6817ade982afda0eb925aff514f22b2c3536fd24afb31642d6143bd5eb` |
| 37 | `theorem` | [RightDvd.of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-of-eq.md) | 206 | `result-track:ce7f3e3d37093b1d382434b53ba860570a6b1e42292d7f718513ae7871d3cc29` |
| 38 | `theorem` | [Dvd.intro_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-intro-left.md) | 216 | `result-track:8eeba4f45a724e65f6458153636e7f2ffea4b19f8f7f7076a406522c785dc1a1` |
| 39 | `theorem` | [exists_eq_mul_left_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/exists-eq-mul-left-of-dvd.md) | 221 | `result-track:cfaaa39ef84f9d12e61b5c66c1b21db5d8919ec863708c2a2a5f6e1d108e0508` |
| 40 | `theorem` | [dvd_iff_exists_eq_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-iff-exists-eq-mul-left.md) | 224 | `result-track:62b4f28aa722b77516446acbc4ee70ae923358b8e9cbf479c4f6062aa7bfcc77` |
| 41 | `theorem` | [Dvd.elim_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-elim-left.md) | 229 | `result-track:b7dd436af1e429ec3d95356b9ab68b3713ca4eda2a90571b73e13e9e77d7832b` |
| 42 | `theorem` | [dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-mul-left.md) | 233 | `result-track:a7697d8c4454db45c26bbf0fb7d2bfe847491dc871559545d74c006b54c3d0b7` |
| 43 | `theorem` | [dvd_mul_of_dvd_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-mul-of-dvd-right.md) | 236 | `result-track:9d76b8bd60afab6cc3fdec21b4a6b6712a7ac00eed442da21c68e566069caa3b` |
| 44 | `theorem` | [mul_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/mul-dvd-mul.md) | 244 | `result-track:0a394d1ec5503340216f4defe66d0b9a1ad99e80f8c8acac61a4a95945651750` |
| 45 | `theorem` | [dvd_of_mul_left_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-of-mul-left-dvd.md) | 247 | `result-track:27e4c9f44ef7c85f830a0cbec224c7e746ec42fb0dcf48e849bc845ab24efe85` |
| 46 | `theorem` | [dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/dvd-mul.md) | 250 | `result-track:fb940fefb907d4760438554f1280e715666eefeea3858220bf22731341fb4bd9` |
| 47 | `theorem` | [rightDvd_iff_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/rightdvd-iff-dvd.md) | 257 | `result-track:8da7f7491a94a85305bc8a90caedbff8d287a2e4de43bcc753a7ade4a2812a51` |
| 48 | `theorem` | [mul_dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/mul-dvd-mul-right.md) | 266 | `result-track:1dc2e220ecbbc4569c6949b652d1cb9f85e449b0936a3ae27f8234d70e68e5b3` |
| 49 | `theorem` | [pow_dvd_pow_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/pow-dvd-pow-of-dvd.md) | 269 | `result-track:0a497846afa17de8e846b6ec02f8e94f6d05d67fc81f4a607a00de1bd4107f0a` |
| 50 | `lemma` | [pow_dvd_pow_of_dvd_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityBasicPublic.lean/declarations/pow-dvd-pow-of-dvd-of-le.md) | 277 | `result-track:2762e96ae7c05afad3c87aac5558a794fec60118e9d2bc09c43e6c758677b1ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11b0219e7abc0f617ef7d3fd7814164e62e1495316ad4ccfd5f0ac92422f6f03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant70a378d62d6dbb70d9322d95a937c67d6d63c9be8de1f23d14c2947bd8e62308.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant70a378d62d6dbb70d9322d95a937c67d6d63c9be8de1f23d14c2947bd8e62308.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
