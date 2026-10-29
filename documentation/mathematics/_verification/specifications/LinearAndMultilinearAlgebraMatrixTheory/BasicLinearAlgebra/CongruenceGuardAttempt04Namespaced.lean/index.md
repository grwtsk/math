# Verification target: Congruence Guard Attempt04 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d1ef8ece09f5950caf5deca7eee803fa32f15aa",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d1ef8ece09f5950caf5deca7eee803fa32f15aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/quadratic.md) | 24 | `declaration-track:5f9c4b6a2198ecf074090aee5c37e5ede35f239ddcee5ba4693a063e75498ce4` |
| 2 | `def` | [HasNegativeDirection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/hasnegativedirection.md) | 27 | `declaration-track:5e77099dceb0e8189da5a28d71cafcd54338e9eb20b5c088cad15b459597e055` |
| 3 | `def` | [pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/pullback.md) | 30 | `declaration-track:caaff4747cf42a7a2f5e47742ef954cbd7f3813b27f3eed4881d438fa88db780` |
| 4 | `theorem` | [quadratic_pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/quadratic-pullback.md) | 33 | `result-track:7225b420e7a2e3379acb9993e3f9525a4a603099d554e2dad9f4c80fd6b08acf` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/pullback-ishermitian.md) | 39 | `result-track:c991b970dd52801958b3eacafd435803de6e77488ae5c36f3a20ec01a1300e76` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/invertible-psd-iff.md) | 43 | `result-track:72936c33e7b9ec62cfcf81ea1a37558447511bd729a877a888cb4605c9fbac30` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/unitary-psd-iff.md) | 47 | `result-track:ebaf1c1bc46ee66bbf5147dabc7faafa861a036a78168488f5f9cb39352571e1` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/inverse-negative-witness.md) | 52 | `result-track:05732844c440c3fd6f2427660b5b4f6aebb566e270c4791a788a539ade2742c6` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/invertible-negative-iff.md) | 58 | `result-track:6cc784b15baf13a690b91ebd7a453a8908af8e3a354e56ef8133e8d205ca1374` |
| 10 | `theorem` | [negative_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/negative-not-psd.md) | 67 | `result-track:169e7d52ded526e3ed3a7fa46f5456c71ffc2b839cfdd3fc017b7a33ac92f784` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/hermitian-negative-iff-not-psd.md) | 74 | `result-track:27675b2cb60877c527bc9d78a711add676e185770c58cb1d7e9f3cfe7794ce8e` |
| 12 | `theorem` | [pullback_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/pullback-one.md) | 86 | `result-track:cb869be8e0c7f0011319a0fd20267373bb8e2e19b1555c4d579a28ac2b927fc5` |
| 13 | `theorem` | [pullback_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/pullback-mul.md) | 90 | `result-track:73f5c22bdc52e62398e8d05ac380ccb3202e5fb50af4d69d412d62f79c8eceac` |
| 14 | `def` | [groupTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/grouptransport.md) | 95 | `declaration-track:656f8bcaf548df785c1e5e384f5737ce3a2e6582440a46f2038289a7e688e815` |
| 15 | `theorem` | [groupTransport_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/grouptransport-one.md) | 98 | `result-track:5dc213e40c346d2d2ad176943d4cdee612a9b6f2d664e00da6d115bd7a3daa39` |
| 16 | `theorem` | [groupTransport_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/grouptransport-mul.md) | 102 | `result-track:41ab6c887324203495937f3bbb78c8885ba7a7fbe10e40b19506cfbbcd73d0ec` |
| 17 | `def` | [congruenceAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/congruenceaction.md) | 109 | `declaration-track:3aa338718023db73c0e8ba61490738e77f51bb73a093beec554cd01824110998` |
| 18 | `theorem` | [group_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/group-negative-iff.md) | 115 | `result-track:799be933c66cbb25b773567fca81e4a764100db55820c5c90df6584b2492f97a` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/group-orbit-not-psd.md) | 120 | `result-track:b0795618417f86ddef62d8b137e8bca3787244c7c6c8dcecb39a94d0dc1fa9e2` |
| 20 | `structure` | [SourcePreserving](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/sourcepreserving.md) | 126 | `declaration-track:376ad94bfc5a650bd87ede4a96f23d0d4d38033456ab4e566dcffec07798070b` |
| 21 | `structure` | [CorrectedSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/correctedsource.md) | 131 | `declaration-track:bd57b6ec3ae21f2accca560eac85fa3b518b97b6eb4c009a6763ff2876e4241f` |
| 22 | `structure` | [LossySource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/lossysource.md) | 137 | `declaration-track:5823ea3a9794a571b634b205d8e69a71afdc5d6808c4ed4de097bb5a2ce24ae6` |
| 23 | `theorem` | [LossySource.coordinates_not_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/lossysource-coordinates-not-isunit.md) | 142 | `result-track:d1384cab27b449e9dc1d6a6c1ed5cd53574e8e7d46a414eb547b2a5e5e72cc5b` |
| 24 | `theorem` | [SourcePreserving.psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/sourcepreserving-psd-iff.md) | 148 | `result-track:575aec9205ffe2f7a1f8d191f36b42df7200597164687a030f82b6aa38d84330` |
| 25 | `theorem` | [SourcePreserving.negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/sourcepreserving-negative-iff.md) | 153 | `result-track:aeca4199c9eee792520cb794b547bac860dc7acf5484e67e5a3b19074b7f8abc` |
| 26 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/correctedsource-quadratic-defect.md) | 158 | `result-track:fb813cf27599cc47ba91af9fb1859d6b2efe5fc3714b8ae4cd3497489de65981` |
| 27 | `def` | [indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/indefinite.md) | 168 | `declaration-track:584bdd3510193f064638835e8ca3ca05350a42b64f582c5defd24a1d8426807d` |
| 28 | `def` | [swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/swap.md) | 169 | `declaration-track:138de4fffc3c06d4415d03a9025072f2315419a1653a8818809aa26af75c0581` |
| 29 | `def` | [imaginaryShear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/imaginaryshear.md) | 174 | `declaration-track:676eed00f6f5343c02183f983610f2f8c60497705b92a788a5131603e840e2c2` |
| 30 | `def` | [projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/projection.md) | 180 | `declaration-track:cce75848470971677db9e798de993935005ad8681cd41ffa852e572cd4ab5ba4` |
| 31 | `theorem` | [indefinite_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/indefinite-hermitian.md) | 182 | `result-track:9c2debb711622f5ebbf090e556e5ff71c2c3288463677c4e40dd7b5e6a2e003e` |
| 32 | `theorem` | [indefinite_actual_values](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/indefinite-actual-values.md) | 185 | `result-track:89c8f16f8ac933944b3f43d857665f8bcaae8a529b37ec8edb835b7b6efa3cfc` |
| 33 | `theorem` | [indefinite_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/indefinite-negative.md) | 189 | `result-track:a56a87b5bb3f980f0dad45cb759e40b8a665d6b0adbed2e915c6685f3b9063f3` |
| 34 | `theorem` | [swap_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/swap-still-indefinite.md) | 193 | `result-track:950088f62cba4d64568ea967937d85771004189e47137f63f3ed140cfbd7a2e4` |
| 35 | `theorem` | [swap_actual_values](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/swap-actual-values.md) | 198 | `result-track:8fec39a35a28e2fd6fa6b821062067411ac5097b871c624f2c2305f37a7a0ec4` |
| 36 | `theorem` | [shear_actual_negative_value](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/shear-actual-negative-value.md) | 204 | `result-track:464cab82be170cb69d67e12df334fa73e2ca1b4820ee96e1391bcf85c30686d3` |
| 37 | `theorem` | [shear_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/shear-still-indefinite.md) | 209 | `result-track:13077cbca3d7e381920edda8b40c5a693566c30f09279215d2d055ed6ccf9d35` |
| 38 | `theorem` | [projected_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/projected-indefinite.md) | 215 | `result-track:639c7111153c7981bc8c4a4349e542d1f5052b726c3414e5ba89caea5e509e8d` |
| 39 | `theorem` | [projection_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/projection-psd.md) | 219 | `result-track:0efe4b41036973f2605ecc8286f906a6830df16ed1bbbbc446405a5919a9245d` |
| 40 | `def` | [lossy_projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/lossy-projection.md) | 226 | `declaration-track:3c2eaa732de93f853f4d09896aea283eb6168e2c316e9258428c154cc17bb432` |
| 41 | `theorem` | [singular_psd_does_not_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/singular-psd-does-not-reflect.md) | 231 | `result-track:cada073a8f7158ad45fa582997266f733abfce537c76ee86152b12062ccd3f57` |
| 42 | `theorem` | [correction_changes_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/correction-changes-sign.md) | 235 | `result-track:7ac12c539f1a8cbce545ff18b568364b7e259ea25b26b96f8df82efde0a16274` |
| 43 | `def` | [signCorrected](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/signcorrected.md) | 248 | `declaration-track:50a57bab23d22adf5c5672d1419ec4ef1a98b30de3efc46a9e27d877c6264444` |
| 44 | `theorem` | [lossy_not_source_preserving](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/lossy-not-source-preserving.md) | 254 | `result-track:6e30248cf911a87fcb4e60eedb41d494d3c9cb52ecb97eebf19462557b62f71a` |
| 45 | `theorem` | [correction_not_source_preserving](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt04Namespaced.lean/declarations/correction-not-source-preserving.md) | 258 | `result-track:26371b201faaf581d998928ed9eea3bc5ffb934892065c76196865f181b9a0d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a6159f0ec772f1872e8652ad6126ca8761d5d87055d9f39d0c4f703c921433a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
