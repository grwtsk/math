# Verification target: Commute Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d34d98cc84b742a766aa55ae5c99b3f5c90e1b7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3d357b25c66eea28f70e5f5a8b03fbe22e7f31118aabb578043d180d33a95bde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d34d98cc84b742a766aa55ae5c99b3f5c90e1b7`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant3d357b25c66eea28f70e5f5a8b03fbe22e7f31118aabb578043d180d33a95bde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant3d357b25c66eea28f70e5f5a8b03fbe22e7f31118aabb578043d180d33a95bde.lean.json)

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
| 1 | `lemma` | [SemiconjBy.function_semiconj_mul_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/semiconjby-function-semiconj-mul-left.md) | 28 | `result-track:11645bf412da4537c9e51ffe3eb3291d1346962826abfb1d6e9d23e7ff04628f` |
| 2 | `lemma` | [Commute.function_commute_mul_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/commute-function-commute-mul-left.md) | 32 | `result-track:3f3e1340be638ee9ffcf74abc92803d935ee5e1946715b9c2d56bbb3cbc42eea` |
| 3 | `lemma` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/semiconjby-function-semiconj-mul-right-swap.md) | 36 | `result-track:3d30688173c19ece45e363aef3d83b2af98622a209a03b1e4ef1586b55c027dc` |
| 4 | `lemma` | [Commute.function_commute_mul_right](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/commute-function-commute-mul-right.md) | 40 | `result-track:2330f22c534c2c9e078394a0559788f5a845db0e7d568f575a7fcf875d322e23` |
| 5 | `theorem` | [inv_inv](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-inv.md) | 52 | `result-track:298432a9c9c4e67fdf43a7cd86f2cc2ddeaf389b758f79294b22c7e3f2ed6b51` |
| 6 | `theorem` | [inv_inv_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-inv-iff.md) | 56 | `result-track:b22357ceb4144fa750781c2ad4c36cbf1500fba5cb322497dfa4c9935f3f1048` |
| 7 | `theorem` | [div_mul_div_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/div-mul-div-comm.md) | 60 | `result-track:56cfa3b2c0a88faf34e032577ffc01c923a32d7bac482862133283dd56e11fd0` |
| 8 | `theorem` | [mul_div_mul_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/mul-div-mul-comm.md) | 65 | `result-track:f54329a53e3224c0bafd3766f4a9a259740f3e1c618fd1e3f0972efdc8508585` |
| 9 | `theorem` | [div_div_div_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/div-div-div-comm.md) | 70 | `result-track:ce90fddbd116be57978ad22c90ae4227dc25b9177ad75adff0c06ac3e2f1f0e3` |
| 10 | `lemma` | [inv_left_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-left-iff.md) | 81 | `result-track:48cce9f882c67ed430010b283bb9d07d1cc38b12bf82f1aa94cdc2ea26821d69` |
| 11 | `theorem` | [inv_left_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-left-self.md) | 86 | `result-track:061232bc1b74f0c91e93c70ea3302e6e39e8b85f4b983c7506ea192c47adaf70` |
| 12 | `lemma` | [inv_right_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-right-iff.md) | 90 | `result-track:3e1947017b22bdd6a77ec77731be14aac97bc091446b820596f6efd2ee217309` |
| 13 | `theorem` | [inv_right_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-right-self.md) | 95 | `result-track:fe2da91af5e20c1faf1978f071b99d4725c632d33847f557722b3ce777e8586c` |
| 14 | `lemma` | [inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-mul-cancel.md) | 99 | `result-track:fff6325868a3056c57a6bc8612d12ab6bcdb8ec4548a24563fb2f4fc97113083` |
| 15 | `lemma` | [inv_mul_cancel_assoc](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/inv-mul-cancel-assoc.md) | 103 | `result-track:5db22f4c1b978eb53fdc13936be8effc3dc61346f3e846db3d3e7a0d8efa3e80` |
| 16 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/conj-iff.md) | 107 | `result-track:6a8677bef84afa5ebddb5be91396e1e5a253a167aa0e86cf676ae5245bc4a9b9` |
| 17 | `theorem` | [conj](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/conj.md) | 111 | `result-track:1fd3710b358847b77d63b31434c0412fd3d5828a469d7be497c9db2d0bc800fa` |
| 18 | `lemma` | [zpow_right](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/zpow-right.md) | 115 | `result-track:951f963da0822a891427a35addd174a02989a262fe88475b1959fa54cfea9f7d` |
| 19 | `lemma` | [zpow_left](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/zpow-left.md) | 118 | `result-track:2e5015dd73466df800b810f987c7737372b15934d15ab2c80a63798babc43217` |
| 20 | `lemma` | [zpow_zpow](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/zpow-zpow.md) | 120 | `result-track:1651066eee62079eba63293b403953f3d802663656dfa7a58133d037abb39d4f` |
| 21 | `lemma` | [self_zpow](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/self-zpow.md) | 125 | `result-track:2ab3af498b22b892a85aecc33d9a2d7acaf8d639c77ec57b568f5f9462982df2` |
| 22 | `lemma` | [zpow_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/zpow-self.md) | 127 | `result-track:00b61902aa32a5d2f49376dbfac0327639c04ac8590a18da9055380be49bfe02` |
| 23 | `lemma` | [zpow_zpow_self](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/zpow-zpow-self.md) | 129 | `result-track:1ccb2dff7a3566f0896b444a0a85eec5c1d095b6dbbd85420f49c1dbb2019e1c` |
| 24 | `lemma` | [pow_inv_comm](../../../../GroupTheoryAndGeneralizations/CommuteBasicPublic.lean/declarations/pow-inv-comm.md) | 137 | `result-track:c240e3c9c89f508716278f72e09929cb58818c836ad4feda312e075c15c3636c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3450b3dade01df9a62fdc9919b325cd49131c09671f827bb70c7d6c6b3ed8a61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant3d357b25c66eea28f70e5f5a8b03fbe22e7f31118aabb578043d180d33a95bde.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant3d357b25c66eea28f70e5f5a8b03fbe22e7f31118aabb578043d180d33a95bde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
