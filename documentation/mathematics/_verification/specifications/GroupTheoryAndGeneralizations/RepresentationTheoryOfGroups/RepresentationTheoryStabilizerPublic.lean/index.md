# Verification target: Representation Theory Stabilizer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb480d34be82e72e284b306b2116e1931035419",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb480d34be82e72e284b306b2116e1931035419`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean.json)

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
| 1 | `def` | [stabilizer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/stabilizer.md) | 27 | `declaration-track:25f1ac25237fc67345aa825a0fc19477861a09ad059417aa07c9f5f21c134d7f` |
| 2 | `lemma` | [mem_stabilizer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/mem-stabilizer.md) | 36 | `result-track:639e52264ea643c26c487dfe49bbaf7910c65ccc7093fa6eb34ccbaba69e523f` |
| 3 | `lemma` | [stabilizer_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/stabilizer-zero.md) | 40 | `result-track:bac243953f5f43070fff1257ca7383be2312803bb94504a3c4e7b7dc84e021c5` |
| 4 | `lemma` | [le_stabilizer_smul](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/le-stabilizer-smul.md) | 43 | `result-track:e3313f5f93e7b979a0aff81b4d508e280a09860e44848d69351ccbf51ed25fed` |
| 5 | `lemma` | [le_stabilizer_add](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/le-stabilizer-add.md) | 47 | `result-track:bc6fb13e85d835518df2a39fd5786dd41160da383a2e0b8d9dc5c0f496bb6197` |
| 6 | `lemma` | [le_stabilizer_sum](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/le-stabilizer-sum.md) | 51 | `result-track:a53c614dd206fe69a139afafa64729040e22bbde5551d3610564a45af58067b9` |
| 7 | `lemma` | [IntertwiningMap.stabilizer_le](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/intertwiningmap-stabilizer-le.md) | 55 | `result-track:3c9920ca8b8e5159a96521ad5422ef09267c45912f1dc67248f78d3aaa2d2cf5` |
| 8 | `lemma` | [stabilizer_conj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerPublic.lean/declarations/stabilizer-conj.md) | 60 | `result-track:b9ed794bdb226470f8d939ae31462f233d056813111ad89d272ad91421cb4c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9dd1ae1fdfbfe1a5e468e96fe62b3ed3c9607df912ace529b72ac51dc13b3ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
