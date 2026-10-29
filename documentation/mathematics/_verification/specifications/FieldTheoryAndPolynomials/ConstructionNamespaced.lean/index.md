# Verification target: Construction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e13a2a6a744203213d4050f1323e49d41773244c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant8f6e7bc4fd8387bf79c409fe04f94b225f678241aee719b50a9389059bbfd121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e13a2a6a744203213d4050f1323e49d41773244c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant8f6e7bc4fd8387bf79c409fe04f94b225f678241aee719b50a9389059bbfd121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variant8f6e7bc4fd8387bf79c409fe04f94b225f678241aee719b50a9389059bbfd121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/factor.md) | 58 | `declaration-track:c7b7609cbf4a3a39d9837494744ee831c584b9c2d89bf1335342a41f4c0dfbed` |
| 2 | `theorem` | [irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/irreducible-factor.md) | 62 | `result-track:5bb53e88c70d03b8fe91ebbde441c69981f357748a5ed8c4683af8ad024ce53b` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/fact-irreducible-factor.md) | 70 | `result-track:4bfbf127fae9e3765f4199cccbae957f339d46940c4837649c5da91246083428` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/factor-dvd-of-not-isunit.md) | 76 | `result-track:4013b2ed4df5d9a946e501f4636b29e119e36dd866e1242251be7670cd54fe5a` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/factor-dvd-of-degree-ne-zero.md) | 82 | `result-track:5d3e7ae65c3033b1109f528479ea4ddc340a967412cb3a276a39e9087c1506fd` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/factor-dvd-of-natdegree-ne-zero.md) | 86 | `result-track:84a4df30f5202dea8252fc9a01166120d9b3bd928d3027ea41c5342b6d5cf2b1` |
| 7 | `def` | [removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/removefactor.md) | 91 | `declaration-track:2f55d734cbcdd1c0bcf4fc5bcb9c0a7a0e389f5ac018e17b4aafbdf612f76d7c` |
| 8 | `theorem` | [X_sub_C_mul_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/x-sub-c-mul-removefactor.md) | 95 | `result-track:3dd0a9e3b52f5b01b3bcdcbefb685cfb9beeb8ba2b44bccb4ae6d298e5b9daab` |
| 9 | `theorem` | [natDegree_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/natdegree-removefactor.md) | 104 | `result-track:0a263bbef3b70ef1a17f46a68296790859376730ac500ccea97ba613a3fc6774` |
| 10 | `theorem` | [natDegree_removeFactor'](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/natdegree-removefactor-source-edition-2.md) | 110 | `result-track:b8ab4cf79a8d4289e50c5d752556d4fb4687a0cf99dcd3eb68fb0f45013c468f` |
| 11 | `def` | [SplittingFieldAuxAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfieldauxaux.md) | 121 | `declaration-track:9710c00b046d3519511a46abfbf79b1f504244d9cab0cc3fdc428da7eb353f74` |
| 12 | `def` | [SplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfieldaux.md) | 135 | `declaration-track:aeeb94e22ae84b4c9277cf1b4edbf61aecdc37f28451e4cb82c52ce64e0d3a8c` |
| 13 | `instance` | [SplittingFieldAux.field](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfieldaux-field.md) | 139 | `declaration-track:cf4d8aca90a4e128857f0e513f78b37fcdb18f3a1fe717cb95a36df50d5d34dc` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-7.md) | 144 | `declaration-track:f5f15fa02b0eaacf8bf73e8a703b2d39eaa88fb0c0771d46ab42652e59c38901` |
| 15 | `instance` | [SplittingFieldAux.algebra](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfieldaux-algebra.md) | 147 | `declaration-track:316bfe8bfc3c7546e6586c23404091f22214ffbde5825d89d64a86dfc84b4b14` |
| 16 | `theorem` | [succ](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/succ.md) | 154 | `result-track:251e5eaa757fefed9ae75b4aa446d028c393fd583edc03d55e1a9ebb07a3546a` |
| 17 | `instance` | [algebra'''](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebra-source-edition-5.md) | 159 | `declaration-track:dfceffe2c291528adbce805baea6f7d504adc87d7d62128d9501fe3b86b9d7ea` |
| 18 | `instance` | [algebra'](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebra-source-edition-4.md) | 164 | `declaration-track:9fb189ef679c1ecea524e41594e13123cf689ded68081596a02c6f288937dbae` |
| 19 | `instance` | [algebra''](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebra-source-edition-2.md) | 168 | `declaration-track:3e1380d7b4ac8e41c0f45a82d0269fffd84e8793ee8c7fc88733ca1986477563` |
| 20 | `instance` | [scalar_tower'](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/scalar-tower.md) | 172 | `declaration-track:5247e3c576dc6273d5304dfac85053bc4909f095d28250bc8a237f1afb0295bd` |
| 21 | `theorem` | [algebraMap_succ](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebramap-succ.md) | 177 | `result-track:148f1ecb9f2c33b04e86969327bcc205a5c61c552dda60f90984f1a3475caf42` |
| 22 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splits-source-edition-2.md) | 184 | `result-track:e4eb4e8bc599948aa8fed456b28039579d81f8fc01fe666a33ad08cdb1d3582f` |
| 23 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/adjoin-rootset-source-edition-2.md) | 198 | `result-track:f3a205d081310965fc11d6eb8068cf36b0c1e6099690d42ceb8e2deba0cc8dad` |
| 24 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-4.md) | 230 | `declaration-track:4d583b1c6154aabbe25036420bfc4c0642a786cb35a4340e8d4f625e0784d1a3` |
| 25 | `def` | [SplittingField](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfield.md) | 240 | `declaration-track:40ca1c7a8ba2437df4a0beda85f73a6635155c051ad13ad90abf19f56d55d282` |
| 26 | `instance` | [commRing](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/commring.md) | 249 | `declaration-track:3e62f08a231ba91981ec2c0e8ab486708b60fca987b7089fd6b2a17462363a77` |
| 27 | `instance` | [inhabited](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/inhabited.md) | 253 | `declaration-track:f2c94f9774184d6361440a61d1cfa853313d6e9a92364f258bc0eed065f45be8` |
| 28 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-6.md) | 257 | `declaration-track:d9ec030ebf5528f7f4ba6091eccb03429b576fdf14db6d360a23caf783042827` |
| 29 | `instance` | [algebra](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebra-source-edition-3.md) | 260 | `declaration-track:9947f4b0a5bc024533ff496cf5231a22694c6a70a720b309af13106a6dc807a8` |
| 30 | `instance` | [algebra'](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algebra.md) | 264 | `declaration-track:192ac3320a715dbc27c34d6a73114f1e606f770b32033027e5142f22ebe89db0` |
| 31 | `instance` | [isScalarTower](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/isscalartower.md) | 268 | `declaration-track:db763dd032f608c021022007730a6f961d0f725ec3fd949490bf5ee6831872ce` |
| 32 | `def` | [algEquivSplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algequivsplittingfieldaux.md) | 275 | `declaration-track:027705f79001a95ae5b01449cf8dbc6a3fc21bf6a8f26031856ebf4d81577686` |
| 33 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-5.md) | 279 | `declaration-track:5240478de18d283ef854fa347d748dd657351065076054b93aa07a829edbbf88` |
| 34 | `instance` | [instCharZero](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instcharzero.md) | 307 | `declaration-track:a424b16a557a6f2bd591331e224038d9c03851e7b9347a02769d36f8fab3945d` |
| 35 | `instance` | [instCharP](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instcharp.md) | 310 | `declaration-track:ff97d79164e6bf1116766b44cdc45bc76a2c3f9a7ee23cc792ad7c5ee089b6a9` |
| 36 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/example-source-edition-4.md) | 315 | `declaration-track:e7a8a35a8e5b863871ff4ae1ebe5c3d977bd620f7dd3b63fd347488f6dbc760a` |
| 37 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/example-source-edition-3.md) | 320 | `declaration-track:bdf2f3c038f3ca0ab09953a2235b283ceb467df84403e712b61eeced37696b50` |
| 38 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/example-source-edition-2.md) | 325 | `declaration-track:5aca6770d13293f4a0d532b1f75a06d3d91009f0cac7bfce3562cc91ce2c2dbc` |
| 39 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/example.md) | 328 | `declaration-track:5a2b8f7f0fa99ae59b6cdbc16de3a154f6ebeee60db2d8a7856a7eaff3f34124` |
| 40 | `instance` | [Construction Namespaced](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splittingfield-source-line-331-occurrence-2.md) | 331 | `declaration-track:f72e0a06febce7bb0b94a08dd4bed1bff6ea142e9402ac904fec008be87fb30a` |
| 41 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/splits.md) | 336 | `result-track:57c307dae0232fe137ba65200c4ef7fd485303788e9aee0d452cd2fe0f98396c` |
| 42 | `def` | [lift](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/lift.md) | 343 | `declaration-track:202989d6f77bb64f61d6e73aa6223ba04bfdd6525aea64dd642bcff092fb1bed` |
| 43 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/adjoin-rootset.md) | 347 | `result-track:cb6affab94380e742de315493d91f93be3bcad341549a8e9bab12f2f074d3a6f` |
| 44 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-3.md) | 362 | `declaration-track:19afa31445c805e6e1d28e48e3176a5e2ce4036d813709360944ae577ade9574` |
| 45 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance.md) | 365 | `declaration-track:07670db4d9dc07c68d5a02eac8476777fc6eba2380570ea5e4a21173a2c50432` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/instance-source-edition-2.md) | 368 | `declaration-track:0792a9ff183a2a2c72d9247378cbd14bef3dacd3d012177835343e53a8f9f758` |
| 47 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/algequiv.md) | 372 | `declaration-track:a042984b6836eef22d7d573c0f1bc6d2856f5a1e350af76ee25f98ab833ac6d8` |
| 48 | `instance` | [Polynomial.SplittingField.instNormal](../../../../FieldTheoryAndPolynomials/ConstructionNamespaced.lean/declarations/polynomial-splittingfield-instnormal.md) | 397 | `declaration-track:0644395636141932453c718b550f1e4fa582d518e969ac5e419d82d59118e616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0eff068123c27781fe4ee6c12cef4a898b5297f6c00c7d229d50cea8971ef38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant8f6e7bc4fd8387bf79c409fe04f94b225f678241aee719b50a9389059bbfd121.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Construction/Variant8f6e7bc4fd8387bf79c409fe04f94b225f678241aee719b50a9389059bbfd121.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
