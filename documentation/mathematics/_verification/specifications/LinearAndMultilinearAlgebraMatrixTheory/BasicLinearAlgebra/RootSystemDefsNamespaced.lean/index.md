# Verification target: Root System Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c736cd86579a3d83678a08870d5b0547996ee5",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c736cd86579a3d83678a08870d5b0547996ee5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PerfectPairing.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Reflection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/rootpairing.md) | 85 | `declaration-track:2c05e6e67cb8cb07f2ab16b74a38a72a1a6d62f8d015d9d7341ba3fa9bdadd0c` |
| 2 | `abbrev` | [RootDatum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/rootdatum.md) | 109 | `declaration-track:a8ec51ecd963beb9ef6b16079c2de30e7c34562f3114917fbff840ae1310f4e3` |
| 3 | `structure` | [RootSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/rootsystem.md) | 115 | `declaration-track:ee7f36fb7aea308f111fa897aa5001b7519cdba2de9f75de0ce95fbed4b07e3a` |
| 4 | `lemma` | [toLinearMap_eq_toPerfectPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/tolinearmap-eq-toperfectpairing.md) | 128 | `result-track:bac02bba41da92224a181db87992b4762ee75a0eb711076ab4cb9bb96f2ef22c` |
| 5 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flip.md) | 135 | `declaration-track:c4ceb24be314dd0d5e93622e9a2af06017d83f892625e26c160bb560f11931f5` |
| 6 | `lemma` | [flip_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flip-flip.md) | 145 | `result-track:59de76fef23d6d546bd0ffd75f4f291edd13872ed40251e0dae4f77d2251995f` |
| 7 | `def` | [flipEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flipequiv.md) | 150 | `declaration-track:e57ce248c6d1944a844fb599e896dd88344b1b2bfb7855cbc24311c4087dc166` |
| 8 | `def` | [Root System Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flip-source-line-157-occurrence-2.md) | 157 | `declaration-track:8748d3232374d5e1e0392057521ecb54c1b62e82c9071106a57741076f426bc3` |
| 9 | `lemma` | [Root System Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flip-flip-source-line-163-occurrence-2.md) | 163 | `result-track:5382a3d4b33ce7b862d0ddf81f988d4d070891e62ad4f4105abfb1f7af56105e` |
| 10 | `def` | [Root System Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/flipequiv-source-line-169-occurrence-2.md) | 169 | `declaration-track:880094e1c5876aac0666f5a10336c13bb2c8b30dffdd9eb21b403a9a513e79b4` |
| 11 | `lemma` | [ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/ne-zero-source-edition-2.md) | 175 | `result-track:9d2ef31c77de4bc3a84a55f2cad627b005c8189557fabaf282073c7052e7ac4a` |
| 12 | `lemma` | [ne_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/ne-zero.md) | 178 | `result-track:563819d1dd30ba8ff4e9cf2ca50366a20832b599fa1a33dac26d514e97e8f92c` |
| 13 | `lemma` | [zero_notMem_range_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/zero-notmem-range-root.md) | 181 | `result-track:d3a4c67d7b7e72e12b5fd3e08e285dd341a97d1760afc66697e7d4f4e8f3babf` |
| 14 | `lemma` | [zero_notMem_range_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/zero-notmem-range-coroot.md) | 186 | `result-track:aa063ff30b957e5b07b9f6049072d08e9bda1f0ecf7ee32a5fd5f88d2c0b1758` |
| 15 | `lemma` | [exists_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/exists-ne-zero-source-edition-2.md) | 191 | `result-track:3840e9a5eee2810164b8c44aecf876da51ce21867be72dd83da859930844d4e9` |
| 16 | `lemma` | [exists_ne_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/exists-ne-zero.md) | 195 | `result-track:1a3fb566cd11880b1bfa40385a8b2ed334a53f220cc4d8a7ceb727d1b403291f` |
| 17 | `lemma` | [nontrivial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/nontrivial-source-edition-2.md) | 199 | `result-track:f41181d8209d9f6042b47960ab31157946adb38645d95c1b9330f2b3cc44cb2e` |
| 18 | `lemma` | [nontrivial'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/nontrivial.md) | 204 | `result-track:a3e5c000ffd7690f1a812b2ea633e02d8260c4c44d1935e2062df5df71bcd878` |
| 19 | `abbrev` | [root'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root.md) | 208 | `declaration-track:bf16598422866ba13df49325ba2e84d765ab70db39a68bc1d9063ceb074b05ed` |
| 20 | `abbrev` | [coroot'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot.md) | 211 | `declaration-track:afc8ba549a89849fa5563b3bb44afeb37beffb94c5341d90f1e6b811a092ea71` |
| 21 | `def` | [pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing.md) | 214 | `declaration-track:efd5fc439671e70f98a7691f88dbd5550a687170349f8889658e5feb51f894b7` |
| 22 | `lemma` | [root_coroot_eq_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root-coroot-eq-pairing-source-edition-3.md) | 217 | `result-track:a35da33dd7216df10091c1389f6ba31b1ca3fee2b6b844dda3ebbfa408c845ef` |
| 23 | `lemma` | [root'_coroot_eq_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root-coroot-eq-pairing-source-edition-2.md) | 221 | `result-track:823711edee4be8aa2910a413f41e097336b1072ecb88359097e6085181520a14` |
| 24 | `lemma` | [root_coroot'_eq_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root-coroot-eq-pairing.md) | 225 | `result-track:13136051a90ec8dd89accc723d31b5d9449e5e0d9b01a79b9bc158e739ba61e4` |
| 25 | `lemma` | [coroot_root_eq_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-root-eq-pairing.md) | 228 | `result-track:182a140ceaef7548131e07490d08f8a28ef8eff079efd7deecdc2d16fda394f5` |
| 26 | `lemma` | [pairing_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-same.md) | 232 | `result-track:b560d84f7d370a7c8c92af37a7eb76701df3c4f37f9fcf0b99ebc712da85971f` |
| 27 | `lemma` | [coroot_root_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-root-two.md) | 234 | `result-track:54bdd75cf607d56e88cc506e1f1c4ae853a56394892731fbd4e7ed325954684a` |
| 28 | `def` | [reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection.md) | 239 | `declaration-track:9520ca3af6e9f2d3a5c147d54f52e1edb1f56aa4c98a3354ef6a51b28ac34be0` |
| 29 | `lemma` | [root_reflection_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root-reflection-perm.md) | 243 | `result-track:233d9351a0e8fb6588eb869fd29ca4fabbc4d8c4d976b5e7f92d0de7970c331b` |
| 30 | `theorem` | [mapsTo_reflection_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/mapsto-reflection-root.md) | 247 | `result-track:1c40e5e02f459c289722f0b9b9e0370b2465745f4301c9dfec501cbeddbe66a3` |
| 31 | `lemma` | [reflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-apply.md) | 252 | `result-track:8074e590cb24dc11c5a995cbf222f01b77100e5d126556a7aa3519ecbb76cfb5` |
| 32 | `lemma` | [reflection_apply_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-apply-root.md) | 256 | `result-track:6d1c917e13d0a86f9f65bbd1cb27911134525704164d5bd4f1e7a7c752a3d801` |
| 33 | `lemma` | [reflection_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-apply-self.md) | 261 | `result-track:8e1e0bf025702e0fafa4cd19a583f8e47a2aff340e06b4bc2840cada47e10ce6` |
| 34 | `lemma` | [reflection_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-same.md) | 266 | `result-track:a0b7ea1504efa64764ce1f95994701108502a62b3e2b863c9c51076d5fefa61e` |
| 35 | `lemma` | [reflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-inv.md) | 271 | `result-track:e60a19abc1a6e80613e06decc7c52881dc13b23e05e38acbcd188ad876518cb0` |
| 36 | `lemma` | [reflection_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-sq.md) | 276 | `result-track:c65cfcc72d4c9d6a3653d9508b3c5133f02a042b3415128dfb88ceecadb31022` |
| 37 | `lemma` | [reflection_perm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-sq.md) | 281 | `result-track:b3516dd55a04227c55707ce784ef50255b4f95ac9882099b291ba4109ba983e6` |
| 38 | `lemma` | [reflection_perm_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-inv.md) | 288 | `result-track:570f9f6c5e23da927c7238565258d9ebc87538f4bb8f9576e25eefa2fc81850e` |
| 39 | `lemma` | [reflection_perm_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-self.md) | 293 | `result-track:67673c3ad7b5addb78153fa2e08ce80e7fbed046e523aa553116e829f5ac9127` |
| 40 | `lemma` | [reflection_perm_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-involutive.md) | 297 | `result-track:c1c8c3023c2d7835b997d0576b3ba407d6820c3a20e340dde9251701ae353e01` |
| 41 | `lemma` | [reflection_perm_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-symm.md) | 301 | `result-track:5b2bbdc21ab75766ed165ecc0b12ef7010b9c655e2f7ae7f3041879cf3656d99` |
| 42 | `lemma` | [bijOn_reflection_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/bijon-reflection-root.md) | 304 | `result-track:7d85c67649d0d0f17b9579fa528e6ea63cbbdb4a16dd3b588728fb6cee56ff5e` |
| 43 | `lemma` | [reflection_image_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-image-eq.md) | 309 | `result-track:373ea0142320a75e8196d0a0645d085ebe074cd9abb65246d45ce0159c4b8d72` |
| 44 | `def` | [coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection.md) | 314 | `declaration-track:353ebe02079b3f0870bbd96eb159152f6dcae0111caa4fbe630189c756e8a48c` |
| 45 | `lemma` | [coroot_reflection_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-reflection-perm-source-edition-2.md) | 318 | `result-track:6d0b82fd23c86376518a59afb51155b69790261fae53cbd7482b333fe7ad5193` |
| 46 | `theorem` | [mapsTo_coreflection_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/mapsto-coreflection-coroot.md) | 322 | `result-track:8606f180c5add8305e2ac5410ab01bc99a3764926f4c530a2da1a43b85eac106` |
| 47 | `lemma` | [coreflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-apply.md) | 327 | `result-track:1169669ed728bba78ace631869722856871cc62d470e7f69f6aff6249b4717f2` |
| 48 | `lemma` | [coreflection_apply_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-apply-coroot.md) | 331 | `result-track:846790e0a7ecff70192ea7cfd2521b9bef9129a697baddde1e17102e972b0784` |
| 49 | `lemma` | [coreflection_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-apply-self.md) | 336 | `result-track:ba62c754d912f3d69ead77637332ca8eb04d1fc1b0b68cd598213628687e1661` |
| 50 | `lemma` | [coreflection_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-same.md) | 341 | `result-track:c9e63a9bab1a0c15ecb1bcb62e10182c574d8c8eeca76c65710503cd1bb40024` |
| 51 | `lemma` | [coreflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-inv.md) | 346 | `result-track:fe95ca7fa500a7593932fdfa0293f01b029c20b53131abbba9ceb4011ee3793a` |
| 52 | `lemma` | [coreflection_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-sq.md) | 351 | `result-track:63e1e93b7f7b05923e15c3fa897dc82c7e5f44476929cb96dc62a5c48896df3c` |
| 53 | `lemma` | [bijOn_coreflection_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/bijon-coreflection-coroot.md) | 355 | `result-track:43139ce2a6d5957c93a2f8bd73190c101781c09e58d53016fccae121597c911b` |
| 54 | `lemma` | [coreflection_image_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-image-eq.md) | 359 | `result-track:ff8cb836c3110a1f5ad3009b13a5a78a70f06c3a6b9abeeb7ed42495a48a542b` |
| 55 | `lemma` | [coreflection_eq_flip_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coreflection-eq-flip-reflection.md) | 363 | `result-track:16114a284a74cb03084a2bff5b6bf9b65cf5787d672066bbf29fce20955e67e0` |
| 56 | `lemma` | [reflection_dualMap_eq_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-dualmap-eq-coreflection.md) | 367 | `result-track:8b1d3af8be37571e0ddf76bb2fe7e6fbe0d693c807bc6c91a42f4c5384506a18` |
| 57 | `lemma` | [coroot_eq_coreflection_of_root_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-eq-coreflection-of-root-eq.md) | 372 | `result-track:2755bf40e96e71051ade91d9481b75f4182f19a345e681d517b79fadd5fbb5bd` |
| 58 | `lemma` | [coroot'_reflection_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-reflection-perm.md) | 378 | `result-track:1e887088022d786236969ec57992134e859b668d0a6c9de314f1f68836de7186` |
| 59 | `lemma` | [coroot'_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-reflection.md) | 383 | `result-track:1662c892a4bc89c7be013a5f148b48a01c428ce130f0d1fc72903a9cf4ee5ff2` |
| 60 | `lemma` | [pairing_reflection_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-reflection-perm.md) | 387 | `result-track:f0bade6f74752fa287545779a5f7a4f0a886fd406b3ed7370179a68d2d6cb3b8` |
| 61 | `lemma` | [toDualLeft_conj_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/todualleft-conj-reflection.md) | 397 | `result-track:c567eecf50ed3e442fa9c330341f7ff90a4de1fbff5a60014a47a3a927c3a47a` |
| 62 | `lemma` | [toDualRight_conj_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/todualright-conj-coreflection.md) | 403 | `result-track:969ccffd6fbc3c651f2d20dfee396e6edf0538e07d02f1002c9d8110e66b550f` |
| 63 | `lemma` | [pairing_reflection_perm_self_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-reflection-perm-self-left.md) | 408 | `result-track:8078cf798b4d545aaf570340317a05e623b7030219ae654dc67092d8a0909cea` |
| 64 | `lemma` | [pairing_reflection_perm_self_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-reflection-perm-self-right.md) | 415 | `result-track:b5ffab4aae10a7e558addfc0ed59a0e0c2880a6de5272b2bfe4e178d14837f13` |
| 65 | `def` | [indexNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/indexneg.md) | 423 | `declaration-track:3d3e73f2caab73caace046b017b459d351fa2c3746947b2c62ba970b1f64c4fa` |
| 66 | `lemma` | [root_eq_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/root-eq-neg-iff.md) | 435 | `result-track:578af4d92859206446f0e01c2c62fe129192d9f505d85278d054dff39fc0d14b` |
| 67 | `lemma` | [coroot_eq_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-eq-neg-iff.md) | 442 | `result-track:46b73715fadf94624cfcad160824bde0add281da14901e543879342872fe753b` |
| 68 | `lemma` | [neg_mem_range_root_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/neg-mem-range-root-iff.md) | 446 | `result-track:09e8f98b29b7e5db7eff5eaddd0509acf84d9e3a85ef608811ffa7140da3b36b` |
| 69 | `lemma` | [neg_mem_range_coroot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/neg-mem-range-coroot-iff.md) | 455 | `result-track:546000afe85ed3ae92ab1e8c6280b1c39233798e0639af1e68403e655e797b2e` |
| 70 | `lemma` | [neg_root_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/neg-root-mem.md) | 459 | `result-track:a91066e32667c2a81c0e5f08eed87566724d96a28f7b4140cae3c07b1afe3204` |
| 71 | `lemma` | [neg_coroot_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/neg-coroot-mem.md) | 463 | `result-track:49a893b1c2ddbb0fcb6aac720781827a80de8a35529ae4af423d5901225a108b` |
| 72 | `lemma` | [smul_coroot_eq_of_root_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/smul-coroot-eq-of-root-eq-smul.md) | 468 | `result-track:2d6b1fc2e9290c04ec3a511c9ba255b9a792f7580388269a814ed57406313a89` |
| 73 | `lemma` | [coroot_eq_smul_coroot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coroot-eq-smul-coroot-iff.md) | 481 | `result-track:3915ced8265d41c56262a47da74e3dcbf618182e06139787c6938f6923ee6836` |
| 74 | `lemma` | [mem_range_root_of_mem_range_reflection_of_mem_range_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/mem-range-root-of-mem-range-reflection-of-mem-range-root.md) | 487 | `result-track:22a4a7b9c1d4f747e0fc79843ff784392b08b0948cef73320b3e31a0e0653cb7` |
| 75 | `lemma` | [mem_range_coroot_of_mem_range_coreflection_of_mem_range_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/mem-range-coroot-of-mem-range-coreflection-of-mem-range-coroot.md) | 494 | `result-track:b1011d3fd4efc2cb0f6a202ff240e627987110f78ac0ee04a8e31fdcb57bae6e` |
| 76 | `lemma` | [pairing_smul_root_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-smul-root-eq.md) | 501 | `result-track:68068e4a3dab1a8b1c5696ffcf5a5294816f4c25e986bb323cf4fb5420d6d7d3` |
| 77 | `lemma` | [pairing_smul_coroot_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-smul-coroot-eq.md) | 507 | `result-track:58837525c2aabe58a7d794536438f54614f9eb2425174b0ea356fcc7925fb295` |
| 78 | `lemma` | [two_nsmul_reflection_eq_of_perm_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/two-nsmul-reflection-eq-of-perm-eq.md) | 513 | `result-track:009c31f44002fbac85405445a2404500f2f3450c44b10eba931063c79e111952` |
| 79 | `lemma` | [reflection_perm_eq_reflection_perm_iff_of_isSMulRegular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-reflection-perm-iff-of-issmulregular.md) | 531 | `result-track:7fa387479258344b4b2cd5835bec6e6cb1d9d2834f59ca4938e5ac58a8f1dc6f` |
| 80 | `lemma` | [reflection_perm_eq_reflection_perm_iff_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-reflection-perm-iff-of-span.md) | 538 | `result-track:9ac6bfe53abbabd5cd3d808304699ab76839c4d7b273422a41a11d2bf6e31491` |
| 81 | `lemma` | [Root System Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-reflection-perm-iff.md) | 553 | `result-track:83d0c3eafa9b3c7b466c8905c471cdb6ef3c7a0cd5dbf1f3ad76d6cc496abf03` |
| 82 | `lemma` | [toDualLeft_comp_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/todualleft-comp-root.md) | 559 | `result-track:72b98d092d83f73fe1b6ab8afa5b80c7332e8d7f57159b13b1f20be4d701a7c5` |
| 83 | `lemma` | [toDualRight_comp_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/todualright-comp-root.md) | 561 | `result-track:cbf0e20fef4920c47d4a0521ed283bb5dde111431abe1132abc8c2f41bb6eb5b` |
| 84 | `def` | [coxeterWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coxeterweight.md) | 565 | `declaration-track:0237f9cc972a0fa25491bfb004e770184d4620f9c728ae0022af5e7d96787208` |
| 85 | `lemma` | [coxeterWeight_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coxeterweight-swap.md) | 567 | `result-track:032b89f6dfc783a678e566da58f612ad17908e05daf69cbd784d9d2cfc001f1a` |
| 86 | `def` | [IsOrthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal.md) | 571 | `declaration-track:d1343523a2d2d04d36b551e383793bf3e0ebebdabef9e2452fe197beb7c0afbe` |
| 87 | `lemma` | [isOrthogonal_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-symm.md) | 573 | `result-track:57c2cc4858b896a5331a84d13faaef866d0c9b6394e9df903d2bd3c2d0af2ea6` |
| 88 | `lemma` | [isOrthogonal_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-comm.md) | 576 | `result-track:570557593da3330eb9139be6a1ee7589b5d666f9b9ede13ca267c269a6a7ebfe` |
| 89 | `lemma` | [IsOrthogonal.flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-flip.md) | 587 | `result-track:8de86cfe461c14aa4de617a542fcd72630ebf55d13889a446a7af89da63cc7b5` |
| 90 | `lemma` | [IsOrthogonal.symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-symm-source-edition-2.md) | 589 | `result-track:bd448383fd4fc6683483a8eae12cd1ca8ef2f6c3756a0e5aa56ffe91a8d3d816` |
| 91 | `lemma` | [IsOrthogonal.reflection_apply_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-reflection-apply-left.md) | 591 | `result-track:701d0232f16d8243ed199675a2581de0eb4132f115409132acb7f44b3802b3b7` |
| 92 | `lemma` | [IsOrthogonal.reflection_apply_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-reflection-apply-right.md) | 595 | `result-track:106064a96e30a06109351bce2523f0e7c7055578adc5b5c886825ea25ed77430` |
| 93 | `lemma` | [IsOrthogonal.coreflection_apply_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-coreflection-apply-left.md) | 599 | `result-track:f01ede5270aeb16966438677c41ed038e0d07ed99f2382a1aae5c1c6de175bc2` |
| 94 | `lemma` | [IsOrthogonal.coreflection_apply_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-coreflection-apply-right.md) | 603 | `result-track:613c88659737f3beb2c895616f9a86ccd3cfb4eeee5df8b62083ad32029f15c8` |
| 95 | `lemma` | [isFixedPt_reflection_of_isOrthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isfixedpt-reflection-of-isorthogonal.md) | 607 | `result-track:ecf3241f357d5a6563bcf540bce5d76e678314ace502878261c8eabef30ebb01` |
| 96 | `lemma` | [reflection_perm_eq_of_pairing_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-of-pairing-eq-zero-source-edition-2.md) | 619 | `result-track:ae0976c1f2a8a69c232aed91b6dbd10be21d138beaede8ee98ef799a08447ed5` |
| 97 | `lemma` | [reflection_perm_eq_of_pairing_eq_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-of-pairing-eq-zero.md) | 623 | `result-track:420c7150eb06704bec80a42029191f7a705b334a77039dfb2a0d938e1cf8202b` |
| 98 | `lemma` | [reflection_perm_eq_iff_smul_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-iff-smul-root.md) | 627 | `result-track:d767775eb380778e907915129b9d43460ace399616531c6265bdea2b06d429f5` |
| 99 | `lemma` | [reflection_perm_eq_iff_smul_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/reflection-perm-eq-iff-smul-coroot.md) | 632 | `result-track:3a4ec36e24fd06f6b99de098d76220d89aace102cb8057acf690f5ac7b5d3489` |
| 100 | `lemma` | [pairing_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-eq-zero-iff-source-edition-2.md) | 636 | `result-track:d88c525cb19e0538749542e05e209ccecd7475173e8d2ad51ae52de1161510f1` |
| 101 | `lemma` | [pairing_eq_zero_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/pairing-eq-zero-iff.md) | 643 | `result-track:27000abae7f3e2f597ad5125c364872d53f4e1e3086fe964981d2c102abc5a46` |
| 102 | `lemma` | [coxeterWeight_zero_iff_isOrthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/coxeterweight-zero-iff-isorthogonal.md) | 648 | `result-track:02cf4416457b7fe878a1a636bd6434d9b82ed81d5183a5d3507b03e4f71d5300` |
| 103 | `lemma` | [isOrthogonal_iff_pairing_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isorthogonal-iff-pairing-eq-zero.md) | 653 | `result-track:195d278b7c44843159878d37c33dee7d9099c8b583a43f36a0c4786ffc2cb6eb` |
| 104 | `lemma` | [isFixedPt_reflection_perm_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespaced.lean/declarations/isfixedpt-reflection-perm-iff.md) | 657 | `result-track:3f41b9ed32fae52658224439655bc9f6d717426a5f2ea9aee6fcc498f81e6401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8440ab80afa74b97f76f2ce11883d9e6c4041405fa1861aef2fb9380e2681381 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
