# Verification target: Commute Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d98d8a0c23c1659dc0060484753a151f303c14c1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant918199b229d330abb71b642051ec9b3ada34c6fac25f1d1c8518785fe4cf61a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d98d8a0c23c1659dc0060484753a151f303c14c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant918199b229d330abb71b642051ec9b3ada34c6fac25f1d1c8518785fe4cf61a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant918199b229d330abb71b642051ec9b3ada34c6fac25f1d1c8518785fe4cf61a3.lean.json)

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
| 1 | `lemma` | [SemiconjBy.function_semiconj_mul_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/semiconjby-function-semiconj-mul-left.md) | 36 | `result-track:a615b7df5ae093843263d337c74c385c5c2950cd60c475dacfb2fbd0449232dd` |
| 2 | `lemma` | [Commute.function_commute_mul_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/commute-function-commute-mul-left.md) | 40 | `result-track:ea1149414c5c44d1840a32e778cf6bb093f205825436439e9d742a4195201b52` |
| 3 | `lemma` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/semiconjby-function-semiconj-mul-right-swap.md) | 44 | `result-track:fd0b8047f0d15c22731fcde2915e55cf46559c0fa2f0decb059a16f96d2a7e69` |
| 4 | `lemma` | [Commute.function_commute_mul_right](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/commute-function-commute-mul-right.md) | 48 | `result-track:9800964c1f73e63002c810b2476e5e6ebf3d3e332770c341c8a23f061515f2b5` |
| 5 | `theorem` | [inv_inv](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-inv.md) | 60 | `result-track:082e65e129524af186a802322280937e72bab26b474a7ca00884e5f018852278` |
| 6 | `theorem` | [inv_inv_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-inv-iff.md) | 64 | `result-track:c3eec139e38890ab74ed58b3eebf2479909826cce64e55ca1b2cd6507e222831` |
| 7 | `theorem` | [div_mul_div_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/div-mul-div-comm.md) | 68 | `result-track:8721ad6387fb49c3d19f0ff11a1f9579810ae4dce166ea24f98b4e31a67938d5` |
| 8 | `theorem` | [mul_div_mul_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/mul-div-mul-comm.md) | 73 | `result-track:d74552988b1defdb41f8552926c1d0765fe429b3ede3808b85eb769df473f22f` |
| 9 | `theorem` | [div_div_div_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/div-div-div-comm.md) | 78 | `result-track:9c62c8303bb04e7e20745643e67d2a411e9a3566def3063ae13ada976b93ac0e` |
| 10 | `lemma` | [inv_left_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-left-iff.md) | 89 | `result-track:ce93b04f732c64e1ef3d8a0deb52c7805ecace6bfc606375278b98a7ff13fa21` |
| 11 | `theorem` | [inv_left_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-left-self.md) | 94 | `result-track:de1c57bda13ad9a760b3fbb57665f41ac4ee97eff2e1e0ce35a0df8c2d5a0ad9` |
| 12 | `lemma` | [inv_right_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-right-iff.md) | 98 | `result-track:8e8a282d1de7b3c7c5e2b3bb0fc38e0832f04ae247db2d92b0c1ed123f2c1df1` |
| 13 | `theorem` | [inv_right_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-right-self.md) | 103 | `result-track:523dde752d2c8c00298270f6e1de690d95dc4337ef0366115c35274a705d30c2` |
| 14 | `lemma` | [inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-mul-cancel.md) | 107 | `result-track:94d42cb99fbb03ec4ac5a55d95a881f525ff4bc28f2547619915be9c519cf507` |
| 15 | `lemma` | [inv_mul_cancel_assoc](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/inv-mul-cancel-assoc.md) | 111 | `result-track:503b4c831155b5cbb3e84f77288a1dcb23d77ea7b104864d2cd613592ce77a49` |
| 16 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/conj-iff.md) | 115 | `result-track:bf4ee6a25ca66edab647e48a1d6073991691972a025dc51bbecde380b0bf0ba7` |
| 17 | `theorem` | [conj](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/conj.md) | 119 | `result-track:9377dbd485da97b6790927b882e7c75ef6a1a7a2d5aae5e9a12e3b9de101b944` |
| 18 | `lemma` | [zpow_right](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/zpow-right.md) | 123 | `result-track:20a71b89f755d2297985fdfd9bb989d52a05d57b562d528ea8e4a8b7c0f694b8` |
| 19 | `lemma` | [zpow_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/zpow-left.md) | 126 | `result-track:4fecbf1a9e4651c90a920fd1919a754cf4fad0570640bedd2c6e5a8b24053842` |
| 20 | `lemma` | [zpow_zpow](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/zpow-zpow.md) | 128 | `result-track:f4e1e76fded28c87db2eaa3a27ec30d1003b424cd3b8ada415cf57411a27e05c` |
| 21 | `lemma` | [self_zpow](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/self-zpow.md) | 133 | `result-track:cb4c1ae1f12881f0af44aa5e16a9e862387ce4f7328e09094cdd139b5d75d929` |
| 22 | `lemma` | [zpow_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/zpow-self.md) | 135 | `result-track:977846c5130312864cf26c1ac2fbe6162eda67935343f3a36f4e28d307464ef7` |
| 23 | `lemma` | [zpow_zpow_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/zpow-zpow-self.md) | 137 | `result-track:f66c11c550b4cc2aa80adf17c531894e4657f397a56367e5635bcf06ddc44009` |
| 24 | `lemma` | [pow_inv_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicNamespacedPublic.lean/declarations/pow-inv-comm.md) | 145 | `result-track:37d3a505f44206716b1d560efa4b5ee77516a7e3e5866cc41481d8a1b60ddaf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1268af8f97287263b44e6f317b6538c21222d2548961056affe0f6e70a9b0543 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant918199b229d330abb71b642051ec9b3ada34c6fac25f1d1c8518785fe4cf61a3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant918199b229d330abb71b642051ec9b3ada34c6fac25f1d1c8518785fe4cf61a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
