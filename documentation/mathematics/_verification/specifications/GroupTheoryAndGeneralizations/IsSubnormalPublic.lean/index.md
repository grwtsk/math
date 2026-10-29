# Verification target: Is Subnormal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "880d7813b14732058ff59505c84e821e6442eab9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `880d7813b14732058ff59505c84e821e6442eab9`.

Source path: `GRWTSK/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean.json)

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
| 1 | `inductive` | [IsSubnormal](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/issubnormal.md) | 64 | `declaration-track:8deda0abf8d5f1117331bfd1a9fc8fdce003b3181ef50601b44d2216e524d433` |
| 2 | `inductive` | [_root_.AddSubgroup.IsSubnormal](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/root-addsubgroup-issubnormal.md) | 85 | `declaration-track:81cc0b4c4109b704229d4724da7ed6bc64ce42ef76a6388b4458b28dceb712e0` |
| 3 | `lemma` | [Normal.isSubnormal](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/normal-issubnormal.md) | 97 | `result-track:3f793e7f6d7aa591eee7ae7afddbdcf41f8cac7e3c46df42c41221d78de05816` |
| 4 | `lemma` | [bot](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/bot.md) | 104 | `result-track:956dd18334526ffd76dada9bd25c10e827326b2f2eabd0c13c94686d531f14c5` |
| 5 | `lemma` | [normal_of_isSimpleGroup](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/normal-of-issimplegroup.md) | 108 | `result-track:e0e8c203518b61e11a8e7770f721dd39b35481426592480d0398cbca310d5b6f` |
| 6 | `lemma` | [eq_bot_or_top_of_isSimpleGroup](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/eq-bot-or-top-of-issimplegroup.md) | 120 | `result-track:960a014fc84a128e4b9724750c5447936c6d89d6218dcc84aff6096a48934f62` |
| 7 | `lemma` | [iff_eq_top_or_exists](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/iff-eq-top-or-exists.md) | 125 | `result-track:8a52f4877c5e291fdabb6ea82c938f4a77c895c5f19d6a4d570ca020487c3b86` |
| 8 | `lemma` | [exists_normal_and_le_and_lt_top_of_ne](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/exists-normal-and-le-and-lt-top-of-ne.md) | 147 | `result-track:d6fdc02177b40a1c757f4c5640cf89cf192c05c1928f7ccbcaf63f43178bbed6` |
| 9 | `lemma` | [lt_normal](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/lt-normal.md) | 162 | `result-track:7526e05d8ec4ae5f343582febb702d2336d7e740278b2b4652a18825c160ff0d` |
| 10 | `lemma` | [isSubnormal_iff](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/issubnormal-iff.md) | 177 | `result-track:2896b6bf957c0e4359bab91f94abc943217e86dc823b49d92f82e702751198ca` |
| 11 | `lemma` | [trans'](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/trans.md) | 215 | `result-track:28d5d0a7095df9db2539c98cfc314d9b38538369b79266ea25a3abd9a850f858` |
| 12 | `lemma` | [trans](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/trans-source-edition-2.md) | 233 | `result-track:d14599b802fada676a9193c80e2647cdd0e8254acfdc6c11efa6d8defd865a40` |
| 13 | `lemma` | [map](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/map.md) | 242 | `result-track:0f20e6f4e34bee29a92832bb886b628639a9bd28e3637128c7af03f4d1970826` |
| 14 | `lemma` | [quotient](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/quotient.md) | 256 | `result-track:5633313292dd731f4834bed62eb9dfc535333c3bd0ff1f858b6fb20877e16252` |
| 15 | `lemma` | [comap](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/comap.md) | 264 | `result-track:fe54a87ad642fc370b7a336b44d0488a8d8b047de147985582ddf130ee03f8b3` |
| 16 | `lemma` | [subgroupOf](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/subgroupof.md) | 275 | `result-track:d3792b838711d2f2d7570a9804b69f24b72d0d36dcc5d4b881fc68db4543a35b` |
| 17 | `lemma` | [inf](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/inf.md) | 279 | `result-track:47519f955b309b9872a77574eec04eb510cf050bc9d22a88d75c394574373502` |
| 18 | `lemma` | [smul](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/smul.md) | 287 | `result-track:9e2327d62f71f04b19a0154922045b8fe38a3cb1ff02f1d76e97f1676893bd4a` |
| 19 | `lemma` | [of_subsingleton](../../../../GroupTheoryAndGeneralizations/IsSubnormalPublic.lean/declarations/of-subsingleton.md) | 293 | `result-track:beee7f746b0ceed96746502b84114c93649b36336c9dc9341c6293b98f14f503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc287b2f34f265ede0647f382db444edfeea7ae834bd7ec065b3cd97aab0069d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
