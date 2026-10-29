# Verification target: Equidecomp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8761cf3245a42f909667f20edf3da1535b88ca8a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8761cf3245a42f909667f20edf3da1535b88ca8a`.

Source path: `GRWTSK/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean.json)

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
| 1 | `def` | [IsDecompOn](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon-source-edition-2.md) | 81 | `declaration-track:f0d59b29cc55cf13d71c7d699bea11fb31e39cdfc6ca4e8514a67511826be626` |
| 2 | `structure` | [Equidecomp Namespaced Public](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/equidecomp.md) | 93 | `declaration-track:42215b982f58d9f8b0946e93350c539fa0c429d948d9781edc0bab197d39f9a1` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/instance.md) | 99 | `declaration-track:75a1d85512411525c8889f12bf3abfd0ef5c2a077ec5020792f9596860140b84` |
| 4 | `def` | [witness](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/witness.md) | 103 | `declaration-track:8572799c3ab3fcb16183e395aa7e74002600887ce213e1ee90d4c2447cb696f0` |
| 5 | `theorem` | [isDecompOn](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon.md) | 105 | `result-track:919c321a3bf831ce6038ef2a8aa23ae50d08185744b368e5faecc4c08cf6c5b3` |
| 6 | `theorem` | [apply_mem_target](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/apply-mem-target.md) | 108 | `result-track:c839aa633e675643d6cb44fc043c25dd912b76700a55378cc0da42644744ef2a` |
| 7 | `theorem` | [toPartialEquiv_injective](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/topartialequiv-injective.md) | 111 | `result-track:4c47781f1bfa6458c5c406ba11b10224f8da0dea032e68a5d20bc11ed0dcba41` |
| 8 | `theorem` | [IsDecompOn.mono](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon-mono.md) | 115 | `result-track:be18ae471c7039c0b6df0f46ebd84b4de3dbc5717475ea3282a8604d4f784f0d` |
| 9 | `def` | [restr](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/restr.md) | 123 | `declaration-track:304f77b35de9e446203224ef786582bbc1da92b5b8643c3abd96f5cadc4f0c3c` |
| 10 | `theorem` | [toPartialEquiv_restr](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/topartialequiv-restr.md) | 129 | `result-track:6d2e9012d470a6c2a5c7033d1bd80eea2d8ec841c0cab7dfd7e4f1740e5576d5` |
| 11 | `theorem` | [source_restr](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/source-restr.md) | 132 | `result-track:49bcde78f484e412873e850410d474a5f6d04e53c7b6e369c60db1ceae479256` |
| 12 | `theorem` | [restr_of_source_subset](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/restr-of-source-subset.md) | 135 | `result-track:19bdf1798740bd71507e0ee3c1ae3a88b980aba8db54c8b00ca3c25cbcdbd885` |
| 13 | `theorem` | [restr_univ](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/restr-univ.md) | 141 | `result-track:b82e4ed4adb6f541536779e6d7155e695567e665d21964470a16fe7328229f7a` |
| 14 | `def` | [refl](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/refl.md) | 154 | `declaration-track:6c3f2d3d16d6f2d44c73b289e257fe443c8f7b8b712743c8fe7a71c536266bce` |
| 15 | `theorem` | [IsDecompOn.comp'](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon-comp.md) | 161 | `result-track:6c945b90bb1be5f7f56b1815890870bb0e5f3b0776d1619885e0a43b1f74fd2f` |
| 16 | `theorem` | [IsDecompOn.comp](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon-comp-source-edition-2.md) | 171 | `result-track:75b9d1bc3a73f3f9f931aca8b34eb3a6616026162abc8ccf90051550be4603bf` |
| 17 | `def` | [trans](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/trans.md) | 179 | `declaration-track:e1733707f13ea24c6364c2780cd5a4d4a16e814c5c9e84e5bdcbe03384221481` |
| 18 | `theorem` | [IsDecompOn.of_leftInvOn](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/isdecompon-of-leftinvon.md) | 190 | `result-track:d36c4c522f4eca8f979fccf4d9ef3d4571dabb91c9700a039edb3017b1cf4f0c` |
| 19 | `def` | [symm](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/symm.md) | 199 | `declaration-track:2acbc185008df884abc4c4327353aae39e9e3ba32671b7679a06cc5de5c88111` |
| 20 | `theorem` | [map_target](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/map-target.md) | 205 | `result-track:8fe67c34c044374d2fb31e4dddf95260ef7b61a0b7a2b2dd373eea4170e417ce` |
| 21 | `theorem` | [left_inv](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/left-inv.md) | 208 | `result-track:d2d08088f672c290e375c1f9f5aa130b9db499f801ba0b264610329df9a6b7c5` |
| 22 | `theorem` | [right_inv](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/right-inv.md) | 211 | `result-track:b4ff498adef2ae5fe21a6428d1797ea7ad2ce8e428258e141170f4101781bb82` |
| 23 | `theorem` | [symm_symm](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/symm-symm.md) | 215 | `result-track:7cd4b53027eccb383b84ac54c3e5ea8a3980e3c8361840635568462167cf9458` |
| 24 | `theorem` | [symm_apply_eq](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/symm-apply-eq.md) | 217 | `result-track:35570a4fd96a716c76f8e62267497ccd0e72b574d12ccc7a455ed93930ee6ae3` |
| 25 | `theorem` | [eq_symm_apply](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/eq-symm-apply.md) | 221 | `result-track:4a2d15cb233caa9d9c24ad42e2fc02c176e822e16fa7935487e4d4eccc62fdee` |
| 26 | `theorem` | [symm_involutive](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/symm-involutive.md) | 225 | `result-track:f42f8ef266623a4738c63d6dd2317850830bc7c861992d030e8559ecc67446db` |
| 27 | `theorem` | [symm_bijective](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/symm-bijective.md) | 227 | `result-track:2be71a16a90d0373d6cf29c17f5bfa37f6bf680fb87b3b7ac5d6ddd368b38142` |
| 28 | `theorem` | [refl_symm](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/refl-symm.md) | 230 | `result-track:918a475b87451dce4ffa3ccb731ea719d065748cce932e4d591c4326ef8f135f` |
| 29 | `theorem` | [restr_refl_symm](../../../../GroupTheoryAndGeneralizations/EquidecompNamespacedPublic.lean/declarations/restr-refl-symm.md) | 233 | `result-track:a91e141fc0b3a73e52712cd7b447a2ed3a0a616b0c216ffd6dec67c808459809` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fdaca57f44742649696c89e0d9bbaa80c1c4cdcd0024d1fab326f0d5106725e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
