# Verification target: Invariant Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab2324421bdf1c8a6b05de569b4f305e92c668f5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfc45baab77d37abf6d4c4b3c87e00137b7575446e176be8b4e44684977b65398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InvariantBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InvariantBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab2324421bdf1c8a6b05de569b4f305e92c668f5`.

Source path: `GRWTSK/Algebra/Basic/Variantfc45baab77d37abf6d4c4b3c87e00137b7575446e176be8b4e44684977b65398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfc45baab77d37abf6d4c4b3c87e00137b7575446e176be8b4e44684977b65398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariant](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/isinvariant.md) | 48 | `declaration-track:ce65db64d2f5747067e205ddae7ef971a4570c3fdf597886530e18acc6f5eabd` |
| 2 | `def` | [IsIntegralClosure.MulSemiringAction](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/mulsemiringaction.md) | 61 | `declaration-track:57cf0b8a8e3ce984e5f1de361808898d63749babc3fcd1322d5a5e4b21f685bd` |
| 3 | `theorem` | [Algebra.isInvariant_of_isGalois](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/isinvariant-of-isgalois-source-line-66-occurrence-2.md) | 66 | `result-track:8136fbdff18addd3862afb82e0e1cd8bf650ee6e9d89fbb81b7f941dba533224` |
| 4 | `theorem` | [Algebra.isInvariant_of_isGalois'](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/isinvariant-of-isgalois.md) | 86 | `result-track:760c58c2fa844293b3299ea5e770025c11797be757b26215f8edac9c33bbc93a` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/anonymous-instance-source-line-97-occurrence-2.md) | 97 | `declaration-track:b30166275f3ff10c8dae2ea52b0eb7d0d6250a720c8d35d79c7dcc18fecc347b` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/anonymous-instance.md) | 111 | `declaration-track:0e40a59d9298d2a0070f51b8dd6dbb8c732149d5002672d1badbefd6c5681adb` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/anonymous-instance-source-line-115-occurrence-2.md) | 115 | `declaration-track:adc8423310910e50e181b048ce9a658aa85761aa55f39036fd6e879d57a10d69` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/anonymous-instance-source-line-119-occurrence-2.md) | 119 | `declaration-track:39c5f6b96aa81408307394eb1b779dc2b629810546153f6d2324e5a5e246d3fd` |
| 9 | `def` | [charpoly](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/charpoly.md) | 139 | `declaration-track:450012f6380bbb36451ddd2ff91b99050beccd0c489a11540d43f05ab5cc04ad` |
| 10 | `theorem` | [charpoly_eq](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/charpoly-eq.md) | 141 | `result-track:bc57e4ae98aef523fc4ab9806e55587153fcbe8d19f8d2714859ab7044a449cd` |
| 11 | `theorem` | [charpoly_eq_prod_smul](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/charpoly-eq-prod-smul.md) | 143 | `result-track:9b7883b979d5b6818de6011078cb7d36701e527e388ee8ba4c8af4ac9a89fa20` |
| 12 | `theorem` | [monic_charpoly](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/monic-charpoly.md) | 146 | `result-track:1a681e314f9994e9f45776ba41026225d92ea7236ea8a0222e4eeaa08d1e9461` |
| 13 | `theorem` | [eval_charpoly](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/eval-charpoly.md) | 149 | `result-track:9eb49441013586389a8158c604eee65e3bfe42d6549b0ed505a32c38f0d99b14` |
| 14 | `theorem` | [smul_charpoly](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/smul-charpoly.md) | 156 | `result-track:9dc4348337aa6e3bcf1dc4f82b24cf20092c7e10b440e6124e2dfc30a2e19043` |
| 15 | `theorem` | [smul_coeff_charpoly](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/smul-coeff-charpoly.md) | 159 | `result-track:3368c39a2cee9e50cd72f180c7400fdf32cc52c540f79f50b1cd13e35a92cfdc` |
| 16 | `theorem` | [charpoly_mem_lifts](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/charpoly-mem-lifts.md) | 171 | `result-track:2ac3d915703b28290c785e1a93592b9f49e82926495abdfa633f533c150f0313` |
| 17 | `theorem` | [isIntegral](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/isintegral.md) | 175 | `result-track:c16a41e64726e0e88b2268e0b0c455eb0cc3edd930cb48820051c81fa4808049` |
| 18 | `theorem` | [exists_smul_of_under_eq](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/exists-smul-of-under-eq.md) | 183 | `result-track:44d53312833f64dc77e175e3723ba34fa0a1b2c39ae26d0b10a85e4b76306552` |
| 19 | `theorem` | [fixed_of_fixed1_aux1](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/fixed-of-fixed1-aux1.md) | 223 | `result-track:3a81d984d972e8da6c1b715867013dfd55c4c0d6ff2261f0ac3fcfc5e485010e` |
| 20 | `theorem` | [fixed_of_fixed1_aux2](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/fixed-of-fixed1-aux2.md) | 279 | `result-track:e2d30cab98761c55696104e1e02be27b8d60461bfb6c580906f835afc4b8ea3e` |
| 21 | `theorem` | [fixed_of_fixed1_aux3](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/fixed-of-fixed1-aux3.md) | 293 | `result-track:69f0dbb8a1239cfbb6164d15fee90bd8c802f87b8487a9fe367dd43c12de1195` |
| 22 | `theorem` | [fixed_of_fixed1](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/fixed-of-fixed1.md) | 306 | `result-track:fc0cba96a78500034a52ef48d59131f7674e769f45cc94f67eca3e866e3879c7` |
| 23 | `def` | [IsFractionRing.stabilizerHom](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/stabilizerhom.md) | 343 | `declaration-track:4bbef470870c7443143cdba7baf1137e913a4bb59eb4b0221defd0e58d4bb350` |
| 24 | `theorem` | [fixed_of_fixed2](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/fixed-of-fixed2.md) | 347 | `result-track:d5cf168919dadc1c60604808b8ba72dc67aeaa3391d53e9c33519e20761af4b9` |
| 25 | `theorem` | [IsFractionRing.stabilizerHom_surjective](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/stabilizerhom-surjective-source-line-370-occurrence-2.md) | 370 | `result-track:ae802393f011cf951e3a6bb464d18d059244380de7bb0bc3ee6e936ba396783b` |
| 26 | `theorem` | [Ideal.Quotient.stabilizerHom_surjective](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/stabilizerhom-surjective.md) | 379 | `result-track:46e8803d7089eb7434de2257e61de55e94e3ad487eadece90a6671dfeb66ef68` |
| 27 | `lemma` | [Ideal.Quotient.exists_algHom_fixedPoint_quotient_under](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/exists-alghom-fixedpoint-quotient-under.md) | 406 | `result-track:2a87af23d817011023a8e3aba2b51c9776f500af5b0581a1979c8c31cffe88d2` |
| 28 | `lemma` | [Ideal.Quotient.exists_algEquiv_fixedPoint_quotient_under](../../../../CommutativeAlgebra/InvariantBasic.lean/declarations/exists-algequiv-fixedpoint-quotient-under.md) | 444 | `result-track:50c48eb5460d494329a05a354305f13c1ecef0683aada1bcd6f4bb59691fe366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=393a935a43c15296f5c08b51310e820eaeaae1c1233099793ccd9d8e4c616dab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantfc45baab77d37abf6d4c4b3c87e00137b7575446e176be8b4e44684977b65398.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantfc45baab77d37abf6d4c4b3c87e00137b7575446e176be8b4e44684977b65398.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
