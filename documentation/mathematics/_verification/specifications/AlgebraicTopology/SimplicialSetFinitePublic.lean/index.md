# Verification target: Simplicial Set Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37904ee54cd583ebb883a1f03c6f4c85afca8e66",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37904ee54cd583ebb883a1f03c6f4c85afca8e66`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a.lean.json)

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
| 1 | `class` | [Finite](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite.md) | 33 | `declaration-track:5747f1a8e31f2a272ff0526d82af0979e1ed52e6ce6b5e5720b3a599c7d80367` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/instance.md) | 38 | `declaration-track:67daa849aed2ea16f994923d2e4106f714c220002d28785d6e363691e90295b7` |
| 3 | `lemma` | [finite_of_hasDimensionLT](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-of-hasdimensionlt.md) | 43 | `result-track:d68ffaca42fa991ce1dabc03d49e7efa1f6e4e02d94920c1a8a3ec1156e43b81` |
| 4 | `lemma` | [hasDimensionLT_of_finite](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/hasdimensionlt-of-finite.md) | 56 | `result-track:0492ff1080c31c9b256c0572cfbf722ad80c4bfe2a0a57f94eda2803ee7f6af1` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:f21a167f61f128f02ca01904d1f9f9ef2302ff258909d969dd243289886c0222` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:689132ddb0c42ceab24156069e1b3746e09580f1f4ef24215874a8c14cdbe7c7` |
| 7 | `lemma` | [finite_of_mono](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-of-mono.md) | 96 | `result-track:dffeb6df5015c7e57e71dd5eeaaf48218ebf3c8777d9d147936db6956d6cec69` |
| 8 | `lemma` | [finite_of_epi](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-of-epi.md) | 103 | `result-track:e30e731c4bdaaf43ef13b84e1fc7703c7bbf7a93006921b461e8d738b7f4b666` |
| 9 | `lemma` | [finite_of_iso](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-of-iso.md) | 113 | `result-track:3d7a5082fbe6292a34b794ed00b0b65c7c85f8e52dadc92e99f2e01580beb454` |
| 10 | `lemma` | [finite_iff_of_iso](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-iff-of-iso.md) | 116 | `result-track:8c690e58ea78b87a0fcfc76b228730b09db195aada6d2ada454bc172c4524a72` |
| 11 | `lemma` | [finite_subcomplex_top_iff](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-subcomplex-top-iff.md) | 120 | `result-track:57ad4f6df63617a0748d969a48ea96db0c899115a3e05847f353e1762119a1ba` |
| 12 | `instance` | [finite_range](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-range.md) | 124 | `declaration-track:174936c07e5b4744007b526a01e622fea7d405b367e36b7b731712563ad7ef50` |
| 13 | `lemma` | [finite_iSup_iff](../../../../AlgebraicTopology/SimplicialSetFinitePublic.lean/declarations/finite-isup-iff.md) | 128 | `result-track:7405b8fd30464e17a375bdf8149248695518a48fa3e3b298ce126144e915e146` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b74232dc3a13635d4d392033b5271d7110e8c3736b164011c6113cd1697dd9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finite/Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
