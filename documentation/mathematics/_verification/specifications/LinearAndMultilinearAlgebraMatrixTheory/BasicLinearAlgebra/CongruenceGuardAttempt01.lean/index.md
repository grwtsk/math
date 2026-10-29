# Verification target: Congruence Guard Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3899cc132f6ec61dba1d57ab38320c29c222fda",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3899cc132f6ec61dba1d57ab38320c29c222fda`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/quadratic.md) | 16 | `declaration-track:d51728558977a69ada9a9c432ff823f65b1ff2e55b3e1b6d0257694305ce167e` |
| 2 | `def` | [HasNegativeDirection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/hasnegativedirection.md) | 19 | `declaration-track:f247f557225a5230ac4c6201949b974cd10f5634deadb96400065974378c2909` |
| 3 | `def` | [pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/pullback.md) | 22 | `declaration-track:0e7f2d8ceda057d873ea8a290939a17f0e6e02adeb0c0971163f7315fc56bb85` |
| 4 | `theorem` | [quadratic_pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/quadratic-pullback.md) | 24 | `result-track:b891de5bb3c18731f3a32d94c5bd81b15d9e11f52074839d3a950f20bee57100` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/pullback-ishermitian.md) | 29 | `result-track:2e0d3374bb617ab9d3b550521d6ff829ad0f9353ca37710a92b05e944a2cddaa` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/invertible-psd-iff.md) | 33 | `result-track:b9333e196534cae95be3bffb79f043371e54bf932d6b0c8482fdab027d227740` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/unitary-psd-iff.md) | 37 | `result-track:f9882dde3efa5000c65497c649485245f9dc80a723a54570a1fbce1727042b94` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/inverse-negative-witness.md) | 42 | `result-track:c163548d666ac706b149f6bfe0a23bf90b90f1ef9e94b9cec6452df0da15ba68` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/invertible-negative-iff.md) | 48 | `result-track:4691b7a8bd7d1d624e3c2cf487755b42f426b8835aa1346c2694ddf4d20eb773` |
| 10 | `theorem` | [negative_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/negative-not-psd.md) | 56 | `result-track:13415eabd71d8a111869609b649ede20d21e177ca5fbc256fd43f1e1f9f92fc7` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/hermitian-negative-iff-not-psd.md) | 62 | `result-track:a8bdb8265cd6ebd29f1f8941decade7c54b6185ccf190390a6b69ea922be5ae0` |
| 12 | `theorem` | [pullback_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/pullback-one.md) | 74 | `result-track:ea627ffbd091cb6222ea9d9903c7636a29eab73cd5b4bd3f559a8d0db57c0f54` |
| 13 | `theorem` | [pullback_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/pullback-mul.md) | 77 | `result-track:9a1303148aac1a8dfb0af1bddd451252fc5424468498855789fb7b6d477f69c3` |
| 14 | `def` | [groupTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/grouptransport.md) | 82 | `declaration-track:8cddfc5af069fa8e7e6d2eabf2cf73de0e325367e9f600c8c432cf9db20aa167` |
| 15 | `theorem` | [groupTransport_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/grouptransport-one.md) | 85 | `result-track:694ea76c8ff6d4fcf84cc2665fb4031b001cb5d41cf3b927ddb96b3d35c835e8` |
| 16 | `theorem` | [groupTransport_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/grouptransport-mul.md) | 89 | `result-track:fd77b491f91f300fae9aef62b78ee028073e48b553404a7147908acf41c4fbc5` |
| 17 | `def` | [congruenceAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/congruenceaction.md) | 95 | `declaration-track:79e35cc70b25e9e62d1cb799660e8a5f646a1b37c47e3005c00407a462dfdb4e` |
| 18 | `theorem` | [group_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/group-negative-iff.md) | 101 | `result-track:6989020c007f550500475038392549adbc9d8b4f45d61081e5b519858543202c` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/group-orbit-not-psd.md) | 106 | `result-track:c70957dea10a146635760f92f43a04b49644f6f219ae69c41bcaef732acd3167` |
| 20 | `structure` | [SourcePreserving](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/sourcepreserving.md) | 112 | `declaration-track:f3b9dea8910b6ad669cf32583c0118bc7dd6aa22da7a7ddc4c54c20ae697e0e1` |
| 21 | `structure` | [CorrectedSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/correctedsource.md) | 117 | `declaration-track:f2cc5e6689b35e775048e47c1e70505ecf6e120e76bd39faaec1efe31345236e` |
| 22 | `structure` | [LossySource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/lossysource.md) | 123 | `declaration-track:c765150dbbab043af9d71b08ea67cf1bbc64c3fbd9b148233f2083effa22f848` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/sourcepreserving-psd-iff.md) | 128 | `result-track:5c285be7abe28d12075cfe9c4280e8df27e3720907bfcc31560c40d41fa615d9` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/sourcepreserving-negative-iff.md) | 133 | `result-track:a17a0c84ed3270a9bed742ad1ed681175c883a32c106548c37c6a12a85decc77` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/correctedsource-quadratic-defect.md) | 138 | `result-track:3d98bcfc4640454623c6d75587e6a4b80c2a8fdd36199f9b57a86d1c98b9a5c0` |
| 26 | `def` | [indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/indefinite.md) | 148 | `declaration-track:7285b411973342a1921ce5ae3e75b26bd5f6ff293ee10a7713299fa1637f2b5d` |
| 27 | `def` | [swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/swap.md) | 149 | `declaration-track:591027786910b55759a080a390f97242fa296073bbe258f9f095e6b294964fd4` |
| 28 | `def` | [imaginaryShear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/imaginaryshear.md) | 154 | `declaration-track:d1f76fa94e59e5389506d0487129eb4fe788c639998215866b065cf0be54d0eb` |
| 29 | `def` | [projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/projection.md) | 160 | `declaration-track:12aa4e13cf569232be1e98d092fe3eff340985913036c2d1ae31f8d9972c7089` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/indefinite-hermitian.md) | 162 | `result-track:08650da97d40d50e0054f55c40b58dedb94b2f62e9478baedad100a8844b4f4a` |
| 31 | `theorem` | [indefinite_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/indefinite-negative.md) | 165 | `result-track:83c93213d307f52f8af42d91d693f4c74af17b62f429d52ee92a2a1cf25a34e7` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/swap-still-indefinite.md) | 169 | `result-track:a81cad325b7f8ae5faec5a0b178ac72bc75b6fc2a2239a62b31badd174757520` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/shear-actual-negative-value.md) | 174 | `result-track:4976e01414616d0b16626dfe463ecc952198a699ec468b864967ea260d4b1f3c` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/shear-still-indefinite.md) | 179 | `result-track:4d158470b9b101ce6ccf4bf4c638d712ddaf92dc03a13eda97c501585c8b047f` |
| 35 | `theorem` | [projected_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/projected-indefinite.md) | 185 | `result-track:b2b4dc38ecac05ac36285a7ce81d89b7e93fdab81a4c016109f010e7dc3422b2` |
| 36 | `theorem` | [projection_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/projection-psd.md) | 189 | `result-track:685d9ed8db014841ed5977ec7923469ce57b03bf825fcc61cab7f12ea7452e35` |
| 37 | `theorem` | [lossy_projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/lossy-projection.md) | 196 | `result-track:cf511ce443be43e1d57db2ab47450ba2600000bd239d056469c2db69f35c044c` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/singular-psd-does-not-reflect.md) | 201 | `result-track:dd1ecf7d32637017e24763e8d1cb5813c6c34f01bb151d682037ae2d23a91fee` |
| 39 | `theorem` | [correction_changes_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/declarations/correction-changes-sign.md) | 205 | `result-track:4c522beb01fe3cf10af8073cb27677a64d45429c396a93eea685a1c50c496af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e758264cc7276bbb6389e404e5fb3b6395e23d1d865056313e8f12ecf712ace5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
