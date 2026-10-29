# Verification target: Operator NNNorm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0b403cdc18734daf3436da63205a20f3e03e93",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0b403cdc18734daf3436da63205a20f3e03e93`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean.json)

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
| 1 | `theorem` | [nnnorm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/nnnorm-def.md) | 39 | `result-track:246bf0f8c960c70e6ce8a0ba6de57784126ecd0452a8775d1cea84c57109848f` |
| 2 | `theorem` | [opNNNorm_subsingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-subsingleton.md) | 46 | `result-track:077a09117d82726bce3d3af717d27e170d17bf4bd845ed0ed001dfd02c510500` |
| 3 | `theorem` | [opNNNorm_le_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-le-bound-source-edition-2.md) | 50 | `result-track:eaa4e7b273c7d58bd131b154561e472ef6befd76562a9ac3278c137646b4a86f` |
| 4 | `theorem` | [opNNNorm_le_bound'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-le-bound.md) | 54 | `result-track:b338298e85f4ed39d99f0097c2ae4dc35156e25e6920fde17244f081e0a3b3b2` |
| 5 | `theorem` | [opNNNorm_le_of_unit_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-le-of-unit-nnnorm.md) | 60 | `result-track:f5bf02f8e403b4fc59cc51e153a277a37f5ce62047e0685e8ae54593fe19e8f9` |
| 6 | `theorem` | [opNNNorm_le_of_lipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-le-of-lipschitz.md) | 64 | `result-track:720069bb18e6ee4c2942ea8bf3ac568397a985d8420b40a45cc69bacc0a77b9d` |
| 7 | `theorem` | [opNNNorm_eq_of_bounds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-eq-of-bounds.md) | 68 | `result-track:61eaec8f8e055f27567a890ef89ddfec490d735616d126abb3923086d30a58d9` |
| 8 | `theorem` | [opNNNorm_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-le-iff.md) | 72 | `result-track:21f56679415b31cbe6bdf34b491895f3ff3f5c6d823d994a284f4899520ff92c` |
| 9 | `theorem` | [isLeast_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/isleast-opnnnorm.md) | 75 | `result-track:4848e8f138763ae6f3be8b1bffd8d077d769e537cddfc6c9f669acb2eb75303c` |
| 10 | `theorem` | [opNNNorm_comp_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/opnnnorm-comp-le.md) | 78 | `result-track:3353b83293d7564e18864d088c87c9c9a963739ec63e35eb4525328d09afa69e` |
| 11 | `lemma` | [opENorm_comp_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/openorm-comp-le.md) | 81 | `result-track:1e32a303e75b0dbcd94fa1f3916808b2f5f0ea9071df97da34213628dac71e28` |
| 12 | `theorem` | [le_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/le-opnnnorm.md) | 84 | `result-track:759a01061981cc5cf24e2733a43a36aa9526c012863b0bfc8756531f793e165e` |
| 13 | `lemma` | [le_opENorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/le-openorm.md) | 87 | `result-track:07ef75e73bd10b277d57bf5aeb2d5987ae8b262fd354fa84afdf7caf465cc068` |
| 14 | `theorem` | [opENorm_le_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/openorm-le-bound.md) | 93 | `result-track:e57ac2f507ef21fd9a6249d46b538cd021bf836aa5a758c8ae921d62ee56c508` |
| 15 | `theorem` | [le_of_opENorm_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/le-of-openorm-le-of-le.md) | 104 | `result-track:47fe81ea235e22847c3d160d95a35c5c3910821f4d7dae3dafb76cc14ab4ee38` |
| 16 | `theorem` | [le_opENorm_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/le-openorm-of-le.md) | 108 | `result-track:350896dde3a7a58e6d4c76e4381bb89a8e2f033be9ad05c34bda675f3d3b335a` |
| 17 | `theorem` | [le_of_opENorm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/le-of-openorm-le.md) | 111 | `result-track:9176380b87b8bb2afc45f3671bd0a1401ae8499d1d374cf431969a8bd5836603` |
| 18 | `theorem` | [opENorm_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/openorm-le-iff.md) | 114 | `result-track:dac6199ba8849171a5c90c81ec4521fd82c96557de611f44fa78f750b9336ce4` |
| 19 | `theorem` | [nndist_le_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/nndist-le-opnnnorm.md) | 118 | `result-track:6e8836f8faa2e8ebedfa963127ab7d2222248bbc847fe0e6e7b2cbfb6d5b8618` |
| 20 | `theorem` | [lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/lipschitzwith-source-edition-2.md) | 122 | `result-track:e4e9354f9f68ce4802264dc545f000ccca6a36d5ba434f6e28fcf525d97d018b` |
| 21 | `theorem` | [lipschitzWith_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/lipschitzwith-apply.md) | 129 | `result-track:808f0c21d7aabe4e525a9c82030364abbca2146341f07fd73f6f7294e5c03dab` |
| 22 | `theorem` | [exists_mul_lt_apply_of_lt_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/exists-mul-lt-apply-of-lt-opnnnorm.md) | 135 | `result-track:080a798dbd8f3d118b38383415043751f3c5a25cf04810628af51df2efec4ab6` |
| 23 | `theorem` | [exists_mul_lt_of_lt_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/exists-mul-lt-of-lt-opnorm.md) | 141 | `result-track:e22532d3a06611ef145c74d27dea3fa10a7675c1e609eee3fa3a435225ec1838` |
| 24 | `theorem` | [lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/lipschitzwith.md) | 151 | `result-track:1cfbf8b14a2fa5e24cc9bbb335ca6fc80f7ac48802e6526d5d10d1adb3f0467f` |
| 25 | `theorem` | [exists_lt_apply_of_lt_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/exists-lt-apply-of-lt-opnnnorm.md) | 167 | `result-track:6cb91c357b7a7e26223d26fc744f4f0c815cc754ec079fd30a4502e451846026` |
| 26 | `theorem` | [exists_lt_apply_of_lt_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/exists-lt-apply-of-lt-opnorm.md) | 181 | `result-track:0727ae3a2c4a853b0b094cac8c1724bf4460fa418ded14f5cc455dbf382086be` |
| 27 | `theorem` | [sSup_unit_ball_eq_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-unit-ball-eq-nnnorm.md) | 188 | `result-track:be1157d8a13756401aae9338b33de754439b99f6c4a8818b0397a16c84dfb09a` |
| 28 | `theorem` | [sSup_unit_ball_eq_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-unit-ball-eq-norm.md) | 197 | `result-track:dccfdf9f2d4a861691cb71599fc649031b9f0b4b1f5973799302583878c3d87f` |
| 29 | `theorem` | [sSup_unitClosedBall_eq_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-unitclosedball-eq-nnnorm.md) | 201 | `result-track:bcb49282c937099b403fd5b2632a896f2b134b053d09b933af2a7cae55366b11` |
| 30 | `theorem` | [sSup_unitClosedBall_eq_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-unitclosedball-eq-norm.md) | 211 | `result-track:3cec38c966d5cf07359aba09f0cf23033d7e6f8373c66b10b621bfb774c8d0f9` |
| 31 | `theorem` | [exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/exists-nnnorm-eq-one-lt-apply-of-lt-opnnnorm.md) | 216 | `result-track:9138743b4a18c4f4dcbfd2860673b823a2a8db950733cef3403c42864fc882d3` |
| 32 | `theorem` | [sSup_sphere_eq_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-sphere-eq-nnnorm.md) | 230 | `result-track:e4868e947c31850bf030eacd08d8041302399b393c14fd63aee0c9788ce94f67` |
| 33 | `theorem` | [sSup_sphere_eq_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/declarations/ssup-sphere-eq-norm.md) | 244 | `result-track:976de69cf32cbbbfa19345a6c48ff10c1c4bade112234bb2805e00658dd33e48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=327f081bd6496610f653503af3830d4e9c9abc18463eceab31954e5b813675d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
