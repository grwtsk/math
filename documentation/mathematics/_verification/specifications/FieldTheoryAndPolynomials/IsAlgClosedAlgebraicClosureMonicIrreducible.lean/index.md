# Verification target: Is Alg Closed Algebraic Closure Monic Irreducible

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d837f136c007b2ef9824adf04814fc056e174aac",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d837f136c007b2ef9824adf04814fc056e174aac`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonicIrreducible](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/monicirreducible.md) | 48 | `declaration-track:cc22ea7df7c2cab756259d0ac93fdef2feeb940a37602e85534c3a61c7371144` |
| 2 | `def` | [evalXSelf](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/evalxself.md) | 53 | `declaration-track:28b8c3bf3df4904b28443baa12cc2af60f79f32ac68ee1ce2a5b05bbd21f4e02` |
| 3 | `def` | [spanEval](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/spaneval.md) | 60 | `declaration-track:4024d7592ec12dadcd602375cb77b61d8c39a5b0483dd6fbd2ef2da66039f509` |
| 4 | `def` | [toSplittingField](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tosplittingfield.md) | 67 | `declaration-track:e82a75421c42562d3b9796c281c175bbd68e0dc54d38c581e45da99574143561` |
| 5 | `theorem` | [toSplittingField_evalXSelf](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tosplittingfield-evalxself.md) | 78 | `result-track:84363b121c334da9caad7fd05100c666928cdb6b555bfb47d9dba55fc38091f9` |
| 6 | `theorem` | [spanEval_ne_top](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/spaneval-ne-top.md) | 86 | `result-track:e7564077b3d5c3d59ed1382739e2283abb2023fa0e7b6c9a415fd4ab17bcd168` |
| 7 | `def` | [maxIdeal](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/maxideal.md) | 99 | `declaration-track:2f8897c5d8f7ecc10e3cb27d314d644bb8540b5f04732bcab9dfc861ac8b876b` |
| 8 | `instance` | [maxIdeal.isMaximal](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/maxideal-ismaximal.md) | 103 | `declaration-track:8c5488f15d068326442a8c8cbd91adf8bb668f64135e46d1227244a008c6b8dd` |
| 9 | `theorem` | [le_maxIdeal](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/le-maxideal.md) | 107 | `result-track:fb884b98a350fd0fd8c3266011dbe3cd60995da2b8ba01f2e69f663de487b5f4` |
| 10 | `def` | [AdjoinMonic](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic.md) | 112 | `declaration-track:83b5d1c273efb9a87bee8d93bfd285a039788138ed27c680882ece46a3448c68` |
| 11 | `instance` | [AdjoinMonic.field](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-field.md) | 116 | `declaration-track:df81e9c0eba6529f16985e09d1af1703a09f0a803affa697576d61d546c22510` |
| 12 | `instance` | [AdjoinMonic.inhabited](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-inhabited.md) | 120 | `declaration-track:b7a8050e36d44556943e6e16954ee28025ba2e646712e3ec004631a1daf86d6d` |
| 13 | `def` | [toAdjoinMonic](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/toadjoinmonic.md) | 125 | `declaration-track:df8450565d40fc98d51557ca48030ebdb50ccc037d1c152f1afee8ed8b72c009` |
| 14 | `instance` | [AdjoinMonic.algebra](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-algebra.md) | 129 | `declaration-track:ecebe5476a4f068c76b06bff8983a2ab254bb3f0aec7c42ed0836c037282557d` |
| 15 | `theorem` | [AdjoinMonic.algebraMap](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-algebramap.md) | 134 | `result-track:d8b30d91607db2f29268b983128993abb528bf416bfa51624bfb902e66ce38fa` |
| 16 | `theorem` | [AdjoinMonic.isIntegral](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-isintegral.md) | 138 | `result-track:e698993eab88543303023e3ce82f3ddbf7f7baf797821f963715c0951b558c58` |
| 17 | `theorem` | [AdjoinMonic.exists_root](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/adjoinmonic-exists-root.md) | 151 | `result-track:f2c4129c4329a5d66eee12694195f19253bd4045e197e4abd5d2b0e9a217eda7` |
| 18 | `def` | [stepAux](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/stepaux.md) | 159 | `declaration-track:dffbdcde016b72fa348f88394716546f43384ab9d8d9e2c4e872e65a07653ba4` |
| 19 | `def` | [Step](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step.md) | 164 | `declaration-track:a9c8e167dc6041169f6def71693b49fd09741277dac74474c1d2c5409a1374e9` |
| 20 | `theorem` | [Step.zero](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-zero.md) | 169 | `result-track:39f43dafbf8b796e3f353f33ebc83c454424c36030e8d27537f36efcc21dda34` |
| 21 | `instance` | [Step.field](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-field.md) | 171 | `declaration-track:a8aab7a529c7491b21289d1bc19f34dd37a66a5cf6b24ec4deb2abadf36f4883` |
| 22 | `theorem` | [Step.succ](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-succ.md) | 176 | `result-track:7114bdd44d4250372c00e455c8ad2ceba106a259f0fb54d598df218008dd4a9e` |
| 23 | `instance` | [Step.inhabited](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-inhabited.md) | 178 | `declaration-track:3681069f25915f7ace387075ac56fa657fd6fa1e9fea6877d3c731da55e4f1d1` |
| 24 | `def` | [toStepZero](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepzero.md) | 183 | `declaration-track:b9f26cfeb55c87acb682844cca67ffa37b4cbefa1515b55af482cee9a7c7f54f` |
| 25 | `def` | [toStepSucc](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepsucc.md) | 188 | `declaration-track:940e0772329a37a187891bf1c354704de38b63e3ca7c835e2b0e027dee353371` |
| 26 | `instance` | [Step.algebraSucc](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-algebrasucc.md) | 192 | `declaration-track:907c30f21088582ea7853285cafbcaaf72643e6cc8ee05cfa3e7568724351460` |
| 27 | `theorem` | [toStepSucc.exists_root](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepsucc-exists-root.md) | 196 | `result-track:220b352c05dbf29e6879cb56483dbf1c1fde7c76f8f9cf4814f0a632ccd4d94e` |
| 28 | `def` | [toStepOfLE'](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepofle.md) | 207 | `declaration-track:37ac8bb2e2d5f75a1e14fe9a065c9b11672fb6bad721f20658cfd3b62270725f` |
| 29 | `theorem` | [toStepOfLE'.succ](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepofle-succ-source-edition-2.md) | 210 | `result-track:e01b76bee270f8c3bdedfc4c8866adcb9e958657148ae7e7e5fa56db90978b34` |
| 30 | `def` | [toStepOfLE](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepofle-source-edition-2.md) | 218 | `declaration-track:fda0842b4d9d66ca9a0837652aa11aac45bb10257e5fb02a8a17b5cc8ba35477` |
| 31 | `theorem` | [coe_toStepOfLE](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/coe-tostepofle.md) | 247 | `result-track:08ff9c77338bcea2bfcc9bf2e089fd70d1ed0a1a088db431e0c5371d8af73ef3` |
| 32 | `instance` | [Step.algebra](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-algebra.md) | 252 | `declaration-track:6afeb19e8e2bbdf0ff39d221bcb0a5e8b913b4844366af77fc013072b8a6f360` |
| 33 | `instance` | [Step.scalar_tower](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-scalar-tower.md) | 256 | `declaration-track:09508e337165b1281e414e48ed134bf55cce90d8c03490eb6f87354a341bef39` |
| 34 | `theorem` | [toStepOfLE.succ](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepofle-succ.md) | 262 | `result-track:7cf6e9c7a9689a8c146e5f753973d19e4c20e54a7d9821d685cad6f4b6a88d58` |
| 35 | `theorem` | [Step.isIntegral](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/step-isintegral.md) | 271 | `result-track:d8615c0376aa76d7851c0bdac5d955cbb67a37d0f74f12f414c5064393a1d241` |
| 36 | `instance` | [toStepOfLE.directedSystem](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/tostepofle-directedsystem.md) | 294 | `declaration-track:e014b4cd6a506a64e63bdde5e8f6b4591abb4ccdd3581e24c1e33e2f6f64ec79` |
| 37 | `def` | [AlgebraicClosure](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/algebraicclosure.md) | 302 | `declaration-track:f098da41fceb234db09fc075a23edc7ddfde855637d04eea2aeb3664b499b5fc` |
| 38 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instance.md) | 308 | `declaration-track:9391f49102f9ba977eb0db545daa957a0d48e9d966287d6ca6c46edbb7a545c0` |
| 39 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instance-source-edition-3.md) | 311 | `declaration-track:bc8a0be7b4df24bb8609ffc1f4d6d4b29a9397ef9e41405c6c563384644e54c1` |
| 40 | `def` | [ofStep](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/ofstep.md) | 315 | `declaration-track:3313153481ba0e683cb7afdc2eccdd51e2ebfa90953b60376b252d6fe1c4b936` |
| 41 | `instance` | [algebraOfStep](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/algebraofstep.md) | 319 | `declaration-track:3af31084d16c7e02dce9d29f1df135ddb780254812f3fee45f19e0739af408f8` |
| 42 | `theorem` | [ofStep_succ](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/ofstep-succ.md) | 323 | `result-track:07b72bcb0037364e09a19004f3bb62881fd58481611c9b4d4db2a4d0e42f97d5` |
| 43 | `theorem` | [exists_ofStep](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/exists-ofstep.md) | 341 | `result-track:cba2cb9d6f999daf50327bd09d3c561567b7db43a192cf310638e4c03b5fcd3c` |
| 44 | `theorem` | [exists_root](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/exists-root.md) | 345 | `result-track:d10c9e4b5fa03ea1759ad7d307cbf03b48be3e65e4c192af0c3a9786c58bedc8` |
| 45 | `instance` | [instIsAlgClosed](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instisalgclosed.md) | 357 | `declaration-track:cc50b25989960c8d512ba539681d2c34a9ec6ef62f1a8931fdb32456b342f3d3` |
| 46 | `instance` | [instAlgebra](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instalgebra.md) | 361 | `declaration-track:884dd70e00f128b23dd430768eb6712d3e0f009db76402d8627fd6b32c54e792` |
| 47 | `theorem` | [algebraMap_def](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/algebramap-def.md) | 365 | `result-track:58cd3ebbbd37678bc9dc15ee9a925d99bad711aa8d58b62052123258f637065d` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instance-source-edition-4.md) | 371 | `declaration-track:d5b787e41204b3ce0e3198926a7425f64dbb1dc2a07b475e640b72f89d8cd2cf` |
| 49 | `def` | [ofStepHom](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/ofstephom.md) | 384 | `declaration-track:40cb403a0ed4ea9f6364d70bf375b4dc05d48087f5848d1d3d11814acb03b1b3` |
| 50 | `theorem` | [isAlgebraic](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/isalgebraic.md) | 396 | `result-track:3a55d95d3e4805a96358210027b2c5f0ab5e97792af218e93e12fee72a13a057` |
| 51 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/declarations/instance-source-edition-2.md) | 402 | `declaration-track:9ab77d202113c19480e26839d56e6e8497adc979dc3ce2dbee8079a3c01b5c57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59c3e6189f0b29ff968119aeb4ddc53f34bce09fb89baed96e754ec38aa17749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean","GRWTSK/_verification/specifications/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
