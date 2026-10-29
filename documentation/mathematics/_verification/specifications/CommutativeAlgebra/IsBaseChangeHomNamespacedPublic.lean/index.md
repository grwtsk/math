# Verification target: Is Base Change Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82c736ffceafe9db3669ee732cfc32ea9cd007f9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82c736ffceafe9db3669ee732cfc32ea9cd007f9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearMapRightBaseChangeHom](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmaprightbasechangehom.md) | 57 | `declaration-track:78849b5889f0a936ed365e1dcf35f8227ba38ebbe69658419bc4dddbae25f518` |
| 2 | `def` | [linearMapRightBaseChangeEquiv](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmaprightbasechangeequiv.md) | 74 | `declaration-track:4de95c71fee54e3986ea7ee10bd4d15c41e4a6af6096f04d001303e82178f3c3` |
| 3 | `theorem` | [linearMapRight](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapright.md) | 101 | `result-track:dd81724b693f5034f67a365387ae46d2deb335e4b3062ddc67ca918f0bde2fc0` |
| 4 | `def` | [linearMapLeftRightHom](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftrighthom.md) | 117 | `declaration-track:fa2b685be6331af38e829bd30e81b9c579d94a84042ae3eb1333a9a1dfe4c694` |
| 5 | `theorem` | [linearMapLeftRightHom_apply](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftrighthom-apply.md) | 125 | `result-track:860e22d071c27494e71931d00359c12be5cdacd728ee924e9ea11d5378a87e97` |
| 6 | `theorem` | [linearMapLeftRightHom_comp_apply](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftrighthom-comp-apply.md) | 130 | `result-track:cbd97de11124084cc4d8ecec127d5821abd19884f8b0a95b11d889ac2a7401c1` |
| 7 | `theorem` | [linearMapLeftRightHom_comp](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftrighthom-comp.md) | 135 | `result-track:799e488abc87b33af9aff84d33fe59cd610ce161c6d9270e2eab6a32fb950288` |
| 8 | `theorem` | [linearMapLeftRight](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftright.md) | 142 | `result-track:4244cff4710db1249f985690f69f63d33ce851ff0721750c0960e90e58440446` |
| 9 | `def` | [endHom](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom.md) | 159 | `declaration-track:2ac8394b52211916b145d0b346d24b7e851c4e3985e535a24cc25ccdb596fe73` |
| 10 | `theorem` | [endHom_apply](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom-apply.md) | 166 | `result-track:a83ead8e4370d122b6953c02838fc5504a0b6768b857466d0ea046ff4eaab894` |
| 11 | `theorem` | [endHom_comp_apply](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom-comp-apply.md) | 171 | `result-track:3aedf60ca463cdc44da0b1a48399f0e58663410c95744b59049dcf442712b1ab` |
| 12 | `theorem` | [endHom_comp](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom-comp.md) | 176 | `result-track:71cd5a5301c02ef2f1a9344a8e07aedf7396a93cb4b783459a9fec9fd4a160c3` |
| 13 | `theorem` | [endHom_one](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom-one.md) | 181 | `result-track:dd809add8625734ec13e85fc9a5cedbeec077ee01f6f5abc9b330629d982474a` |
| 14 | `theorem` | [Is Base Change Hom Namespaced Public](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/end.md) | 191 | `result-track:3ee5df34570ff9d60cb78c21e65e2610e1ecbe2fdfdb5f0bc673d1f269a77dc3` |
| 15 | `theorem` | [linearMapLeftRightHom_toMatrix](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/linearmapleftrighthom-tomatrix.md) | 210 | `result-track:b89453510da51922f5c1ca0d2c75705df6e94f33f574ae42cefea8ef343d2cec` |
| 16 | `theorem` | [endHom_toMatrix](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/endhom-tomatrix.md) | 217 | `result-track:45513ebb92a79a919fff39658114f2a5f5decf110f44f83e712afc6a58477165` |
| 17 | `theorem` | [det_endHom](../../../../CommutativeAlgebra/IsBaseChangeHomNamespacedPublic.lean/declarations/det-endhom.md) | 236 | `result-track:2e4b71cf743a4487d62e986affe80a3e21169e96a41dc9025eab7f5eef2c01d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee9206f00d6a0f198c66f0c6bc1fc620ed1cf9e0d2b3077a8834267ef34e9cfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
